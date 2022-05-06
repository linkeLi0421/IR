; ModuleID = '/llk/IR/drivers/dma/ti/cppi41.c_pt.bc'
source_filename = "../drivers/dma/ti/cppi41.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cppi_glue_infos = type { ptr, ptr, %struct.chan_queues, i16, i16 }
%struct.chan_queues = type { i16, i16 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_dma_filter_info = type { %struct.dma_cap_mask_t, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.cppi41_dd = type { %struct.dma_device, ptr, i32, ptr, i32, i32, [128 x ptr], ptr, ptr, ptr, i32, ptr, ptr, %struct.chan_queues, i16, i16, i32, i8, %struct.list_head, %struct.spinlock, i32, i8 }
%struct.cppi41_channel = type { %struct.dma_chan, %struct.dma_async_tx_descriptor, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i8, %struct.list_head }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.cppi41_desc = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dmaengine_result = type { i32, i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@cppi41_dma_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3359-cppi41\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am335x_usb_infos }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,da830-cppi41\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @da8xx_usb_infos }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_license235 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author236 = internal constant [57 x i8] c"author=Sebastian Andrzej Siewior <bigeasy@linutronix.de>\00", section ".modinfo", align 1
@am335x_usb_infos = internal constant %struct.cppi_glue_infos { ptr @am335x_usb_queues_rx, ptr @am335x_usb_queues_tx, %struct.chan_queues { i16 31, i16 0 }, i16 93, i16 5 }, align 4
@da8xx_usb_infos = internal constant %struct.cppi_glue_infos { ptr @da8xx_usb_queues_rx, ptr @da8xx_usb_queues_tx, %struct.chan_queues { i16 31, i16 0 }, i16 24, i16 2 }, align 4
@am335x_usb_queues_rx = internal constant [30 x %struct.chan_queues] [%struct.chan_queues { i16 1, i16 109 }, %struct.chan_queues { i16 2, i16 110 }, %struct.chan_queues { i16 3, i16 111 }, %struct.chan_queues { i16 4, i16 112 }, %struct.chan_queues { i16 5, i16 113 }, %struct.chan_queues { i16 6, i16 114 }, %struct.chan_queues { i16 7, i16 115 }, %struct.chan_queues { i16 8, i16 116 }, %struct.chan_queues { i16 9, i16 117 }, %struct.chan_queues { i16 10, i16 118 }, %struct.chan_queues { i16 11, i16 119 }, %struct.chan_queues { i16 12, i16 120 }, %struct.chan_queues { i16 13, i16 121 }, %struct.chan_queues { i16 14, i16 122 }, %struct.chan_queues { i16 15, i16 123 }, %struct.chan_queues { i16 16, i16 141 }, %struct.chan_queues { i16 17, i16 142 }, %struct.chan_queues { i16 18, i16 143 }, %struct.chan_queues { i16 19, i16 144 }, %struct.chan_queues { i16 20, i16 145 }, %struct.chan_queues { i16 21, i16 146 }, %struct.chan_queues { i16 22, i16 147 }, %struct.chan_queues { i16 23, i16 148 }, %struct.chan_queues { i16 24, i16 149 }, %struct.chan_queues { i16 25, i16 150 }, %struct.chan_queues { i16 26, i16 151 }, %struct.chan_queues { i16 27, i16 152 }, %struct.chan_queues { i16 28, i16 153 }, %struct.chan_queues { i16 29, i16 154 }, %struct.chan_queues { i16 30, i16 155 }], align 2
@am335x_usb_queues_tx = internal global [30 x %struct.chan_queues] [%struct.chan_queues { i16 32, i16 93 }, %struct.chan_queues { i16 34, i16 94 }, %struct.chan_queues { i16 36, i16 95 }, %struct.chan_queues { i16 38, i16 96 }, %struct.chan_queues { i16 40, i16 97 }, %struct.chan_queues { i16 42, i16 98 }, %struct.chan_queues { i16 44, i16 99 }, %struct.chan_queues { i16 46, i16 100 }, %struct.chan_queues { i16 48, i16 101 }, %struct.chan_queues { i16 50, i16 102 }, %struct.chan_queues { i16 52, i16 103 }, %struct.chan_queues { i16 54, i16 104 }, %struct.chan_queues { i16 56, i16 105 }, %struct.chan_queues { i16 58, i16 106 }, %struct.chan_queues { i16 60, i16 107 }, %struct.chan_queues { i16 62, i16 125 }, %struct.chan_queues { i16 64, i16 126 }, %struct.chan_queues { i16 66, i16 127 }, %struct.chan_queues { i16 68, i16 128 }, %struct.chan_queues { i16 70, i16 129 }, %struct.chan_queues { i16 72, i16 130 }, %struct.chan_queues { i16 74, i16 131 }, %struct.chan_queues { i16 76, i16 132 }, %struct.chan_queues { i16 78, i16 133 }, %struct.chan_queues { i16 80, i16 134 }, %struct.chan_queues { i16 82, i16 135 }, %struct.chan_queues { i16 84, i16 136 }, %struct.chan_queues { i16 86, i16 137 }, %struct.chan_queues { i16 88, i16 138 }, %struct.chan_queues { i16 90, i16 139 }], align 2
@da8xx_usb_queues_rx = internal constant [4 x %struct.chan_queues] [%struct.chan_queues { i16 1, i16 26 }, %struct.chan_queues { i16 3, i16 26 }, %struct.chan_queues { i16 5, i16 26 }, %struct.chan_queues { i16 7, i16 26 }], align 2
@da8xx_usb_queues_tx = internal constant [4 x %struct.chan_queues] [%struct.chan_queues { i16 16, i16 24 }, %struct.chan_queues { i16 18, i16 24 }, %struct.chan_queues { i16 20, i16 24 }, %struct.chan_queues { i16 22, i16 24 }], align 2
@cpp41_dma_driver = internal global %struct.platform_driver { ptr @cppi41_dma_probe, ptr @cppi41_dma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cppi41_dma_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cppi41_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [18 x i8] c"cppi41-dma-engine\00", align 1
@cppi41_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cppi41_suspend, ptr @cppi41_resume, ptr @cppi41_suspend, ptr @cppi41_resume, ptr @cppi41_suspend, ptr @cppi41_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cppi41_runtime_suspend, ptr @cppi41_runtime_resume, ptr null }, align 4
@cpp41_dma_info = internal global %struct.of_dma_filter_info { %struct.dma_cap_mask_t zeroinitializer, ptr @cpp41_dma_filter_fn }, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"reg-names\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"controller\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"#dma-channels\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"%s pm runtime get: %i\0A\00", align 1
@__func__.cppi41_dma_alloc_chan_resources = private unnamed_addr constant [32 x i8] c"cppi41_dma_alloc_chan_resources\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"drivers/dma/ti/cppi41.c\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Failed to pm_runtime_get: %i\0A\00", align 1
@cppi41_tear_down_chan.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"\013%s() q %d desc %08x\0A\00", align 1
@__func__.cppi41_irq = private unnamed_addr constant [11 x i8] c"cppi41_irq\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"%s could not pm_runtime_get: %i\0A\00", align 1
@__func__.cppi41_dma_remove = private unnamed_addr constant [18 x i8] c"cppi41_dma_remove\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_license235], section "llvm.metadata"

@__mod_of__cppi41_dma_ids_device_table = dso_local alias [3 x %struct.of_device_id], ptr @cppi41_dma_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @cpp41_dma_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @cpp41_dma_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cppi41_dma_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_match_node(ptr noundef nonnull @cppi41_dma_ids, ptr noundef %4) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %123, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.of_device_id, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %123, label %11

11:                                               ; preds = %7
  %12 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 844, i32 noundef 3520) #7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %123, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 11, ptr noundef %15) #7
  %16 = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 27
  store ptr @cppi41_dma_alloc_chan_resources, ptr %16, align 4
  %17 = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 29
  store ptr @cppi41_dma_free_chan_resources, ptr %17, align 4
  %18 = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 49
  store ptr @cppi41_dma_tx_status, ptr %18, align 4
  %19 = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 50
  store ptr @cppi41_dma_issue_pending, ptr %19, align 4
  %20 = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 39
  store ptr @cppi41_dma_prep_slave_sg, ptr %20, align 4
  %21 = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 47
  store ptr @cppi41_stop_chan, ptr %21, align 4
  %22 = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 21
  store i32 6, ptr %22, align 4
  %23 = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 19
  store i32 30, ptr %23, align 4
  %24 = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 20
  store i32 30, ptr %24, align 4
  %25 = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 26
  store i32 2, ptr %25, align 4
  %26 = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 15
  store ptr %2, ptr %26, align 4
  %27 = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 3
  store volatile ptr %27, ptr %27, align 4
  %28 = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 3, i32 1
  store ptr %27, ptr %28, align 4
  %29 = load i32, ptr %15, align 4
  store i32 %29, ptr @cpp41_dma_info, align 4
  %30 = load ptr, ptr %3, align 8
  %31 = tail call i32 @of_property_match_string(ptr noundef %30, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #7
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %123, label %33

33:                                               ; preds = %14
  %34 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef %31) #7
  %35 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %34) #7
  %36 = getelementptr inbounds %struct.cppi41_dd, ptr %12, i32 0, i32 7
  store ptr %35, ptr %36, align 4
  %37 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = ptrtoint ptr %35 to i32
  br label %123

40:                                               ; preds = %33
  %41 = add nuw i32 %31, 1
  %42 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef %41) #7
  %43 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %42) #7
  %44 = getelementptr inbounds %struct.cppi41_dd, ptr %12, i32 0, i32 8
  store ptr %43, ptr %44, align 4
  %45 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = ptrtoint ptr %43 to i32
  br label %123

48:                                               ; preds = %40
  %49 = add nuw i32 %31, 2
  %50 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef %49) #7
  %51 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %50) #7
  %52 = getelementptr inbounds %struct.cppi41_dd, ptr %12, i32 0, i32 9
  store ptr %51, ptr %52, align 4
  %53 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = ptrtoint ptr %51 to i32
  br label %123

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.cppi41_dd, ptr %12, i32 0, i32 19
  store i32 0, ptr %57, align 4
  %58 = getelementptr inbounds %struct.cppi41_dd, ptr %12, i32 0, i32 18
  store volatile ptr %58, ptr %58, align 4
  %59 = getelementptr inbounds %struct.cppi41_dd, ptr %12, i32 0, i32 18, i32 1
  store ptr %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %12, ptr %60, align 8
  tail call void @pm_runtime_enable(ptr noundef %2) #7
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %2, i32 noundef 100) #7
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %2, i1 noundef zeroext true) #7
  %61 = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #7
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %120, label %63

63:                                               ; preds = %56
  %64 = load ptr, ptr %9, align 4
  %65 = getelementptr inbounds %struct.cppi41_dd, ptr %12, i32 0, i32 11
  store ptr %64, ptr %65, align 4
  %66 = getelementptr inbounds %struct.cppi_glue_infos, ptr %9, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.cppi41_dd, ptr %12, i32 0, i32 12
  store ptr %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.cppi41_dd, ptr %12, i32 0, i32 13
  %70 = getelementptr inbounds %struct.cppi_glue_infos, ptr %9, i32 0, i32 2
  %71 = load i32, ptr %70, align 4
  store i32 %71, ptr %69, align 4
  %72 = getelementptr inbounds %struct.cppi_glue_infos, ptr %9, i32 0, i32 4
  %73 = load i16, ptr %72, align 2
  %74 = getelementptr inbounds %struct.cppi41_dd, ptr %12, i32 0, i32 15
  store i16 %73, ptr %74, align 2
  %75 = getelementptr inbounds %struct.cppi_glue_infos, ptr %9, i32 0, i32 3
  %76 = load i16, ptr %75, align 4
  %77 = getelementptr inbounds %struct.cppi41_dd, ptr %12, i32 0, i32 14
  store i16 %76, ptr %77, align 4
  %78 = load ptr, ptr %3, align 8
  %79 = getelementptr inbounds %struct.cppi41_dd, ptr %12, i32 0, i32 16
  %80 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %78, ptr noundef nonnull @.str.3, ptr noundef %79, i32 noundef 1, i32 noundef 0) #7
  %81 = tail call i32 @llvm.smin.i32(i32 %80, i32 0) #7
  %82 = icmp sgt i32 %80, -1
  br i1 %82, label %83, label %120

83:                                               ; preds = %63
  %84 = tail call fastcc i32 @init_cppi41(ptr noundef %2, ptr noundef nonnull %12)
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %118

86:                                               ; preds = %83
  %87 = tail call fastcc i32 @cppi41_add_chans(ptr noundef %2, ptr noundef nonnull %12)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %116

89:                                               ; preds = %86
  %90 = load ptr, ptr %3, align 8
  %91 = tail call i32 @irq_of_parse_and_map(ptr noundef %90, i32 noundef 0) #7
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %116, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load ptr, ptr %2, align 4
  br label %99

99:                                               ; preds = %97, %93
  %100 = phi ptr [ %98, %97 ], [ %95, %93 ]
  %101 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %91, ptr noundef nonnull @cppi41_irq, ptr noundef null, i32 noundef 128, ptr noundef %100, ptr noundef nonnull %12) #7
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.cppi41_dd, ptr %12, i32 0, i32 10
  store i32 %91, ptr %104, align 4
  %105 = tail call i32 @dma_async_device_register(ptr noundef nonnull %12) #7
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %103
  %108 = load ptr, ptr %3, align 8
  %109 = tail call i32 @of_dma_controller_register(ptr noundef %108, ptr noundef nonnull @cppi41_dma_xlate, ptr noundef nonnull @cpp41_dma_info) #7
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = tail call i64 @ktime_get_mono_fast_ns() #7
  %113 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 22
  store volatile i64 %112, ptr %113, align 8
  %114 = tail call i32 @__pm_runtime_suspend(ptr noundef %2, i32 noundef 13) #7
  br label %123

115:                                              ; preds = %107
  tail call void @dma_async_device_unregister(ptr noundef nonnull %12) #7
  br label %116

116:                                              ; preds = %115, %103, %99, %89, %86
  %117 = phi i32 [ %87, %86 ], [ %101, %99 ], [ %105, %103 ], [ %109, %115 ], [ -22, %89 ]
  tail call fastcc void @deinit_cppi41(ptr noundef %2, ptr noundef nonnull %12)
  br label %118

118:                                              ; preds = %116, %83
  %119 = phi i32 [ %84, %83 ], [ %117, %116 ]
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %2, i1 noundef zeroext false) #7
  br label %120

120:                                              ; preds = %118, %63, %56
  %121 = phi i32 [ %61, %56 ], [ %81, %63 ], [ %119, %118 ]
  %122 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 4) #7
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #7
  br label %123

123:                                              ; preds = %120, %111, %54, %46, %38, %14, %11, %7, %1
  %124 = phi i32 [ %39, %38 ], [ %47, %46 ], [ %55, %54 ], [ %121, %120 ], [ 0, %111 ], [ -22, %7 ], [ -12, %11 ], [ %31, %14 ], [ -22, %1 ]
  ret i32 %124
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cppi41_dma_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #7
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cppi41_dma_remove, i32 noundef %5) #8
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %10 = load ptr, ptr %9, align 8
  tail call void @of_dma_controller_free(ptr noundef %10) #7
  tail call void @dma_async_device_unregister(ptr noundef %3) #7
  %11 = getelementptr inbounds %struct.cppi41_dd, ptr %3, i32 0, i32 10
  %12 = load i32, ptr %11, align 4
  tail call void @devm_free_irq(ptr noundef %4, i32 noundef %12, ptr noundef %3) #7
  %13 = getelementptr inbounds %struct.cppi41_dd, ptr %3, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #7, !srcloc !8
  %15 = getelementptr inbounds %struct.cppi41_dd, ptr %3, i32 0, i32 9
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #7, !srcloc !8
  %18 = load ptr, ptr %15, align 4
  %19 = getelementptr i8, ptr %18, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #7, !srcloc !8
  %20 = getelementptr inbounds %struct.cppi41_dd, ptr %3, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.cppi41_dd, ptr %3, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  tail call void @dma_free_attrs(ptr noundef %4, i32 noundef 4096, ptr noundef %21, i32 noundef %23, i32 noundef 0) #7
  %24 = load ptr, ptr %15, align 4
  %25 = getelementptr i8, ptr %24, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 0) #7, !srcloc !8
  %26 = load ptr, ptr %15, align 4
  %27 = getelementptr i8, ptr %26, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 0) #7, !srcloc !8
  %28 = getelementptr inbounds %struct.cppi41_dd, ptr %3, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.cppi41_dd, ptr %3, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  tail call void @dma_free_attrs(ptr noundef %4, i32 noundef 512, ptr noundef %29, i32 noundef %31, i32 noundef 0) #7
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %4, i1 noundef zeroext false) #7
  %32 = tail call i32 @__pm_runtime_idle(ptr noundef %4, i32 noundef 4) #7
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cppi41_dma_alloc_chan_resources(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.cppi41_channel, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #7
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.cppi41_dma_alloc_chan_resources, i32 noundef %6) #8
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #7, !srcloc !10
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 0, i32 -1, ptr elementtype(i32) %11) #7, !srcloc !11
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %36, label %15

15:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  br label %36

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 2
  store i32 1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 3
  store i32 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.cppi41_channel, ptr %0, i32 0, i32 1
  tail call void @dma_async_tx_descriptor_init(ptr noundef %19, ptr noundef %0) #7
  %20 = getelementptr inbounds %struct.cppi41_channel, ptr %0, i32 0, i32 1, i32 4
  store ptr @cppi41_tx_submit, ptr %20, align 4
  %21 = getelementptr inbounds %struct.cppi41_channel, ptr %0, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.cppi41_channel, ptr %0, i32 0, i32 8
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.cppi41_channel, ptr %0, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %26) #7, !srcloc !8
  br label %30

30:                                               ; preds = %24, %16
  %31 = load ptr, ptr %4, align 4
  %32 = tail call i64 @ktime_get_mono_fast_ns() #7
  %33 = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 11, i32 22
  store volatile i64 %32, ptr %33, align 8
  %34 = load ptr, ptr %4, align 4
  %35 = tail call i32 @__pm_runtime_suspend(ptr noundef %34, i32 noundef 13) #7
  br label %36

36:                                               ; preds = %30, %15, %8
  %37 = phi i32 [ 0, %30 ], [ %6, %8 ], [ %6, %15 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cppi41_dma_free_chan_resources(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.cppi41_channel, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #7
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #7, !srcloc !10
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 0, i32 -1, ptr elementtype(i32) %10) #7, !srcloc !11
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  br label %26

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.cppi41_dd, ptr %3, i32 0, i32 18
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %20, label %19, !prof !13

19:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 412, i32 noundef 9, ptr noundef null) #7
  br label %20

20:                                               ; preds = %19, %15
  %21 = load ptr, ptr %4, align 4
  %22 = tail call i64 @ktime_get_mono_fast_ns() #7
  %23 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 11, i32 22
  store volatile i64 %22, ptr %23, align 8
  %24 = load ptr, ptr %4, align 4
  %25 = tail call i32 @__pm_runtime_suspend(ptr noundef %24, i32 noundef 13) #7
  br label %26

26:                                               ; preds = %20, %14, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cppi41_dma_tx_status(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
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
  br i1 %18, label %22, label %21

19:                                               ; preds = %13
  %20 = and i1 %16, %15
  br i1 %20, label %22, label %21

21:                                               ; preds = %19, %17
  br label %22

22:                                               ; preds = %21, %19, %17
  %23 = phi i32 [ 1, %21 ], [ 0, %17 ], [ 0, %19 ]
  br i1 %8, label %28, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.cppi41_channel, ptr %0, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 %26, ptr %27, align 4
  br label %28

28:                                               ; preds = %24, %22
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cppi41_dma_issue_pending(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.cppi41_channel, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 5) #7
  %7 = icmp ne i32 %6, -115
  %8 = icmp slt i32 %6, 0
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #7, !srcloc !10
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 0, i32 -1, ptr elementtype(i32) %12) #7, !srcloc !11
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  br label %17

17:                                               ; preds = %16, %10
  %18 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.6, i32 noundef %6) #8
  br label %37

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.cppi41_dd, ptr %3, i32 0, i32 19
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #7
  %22 = getelementptr inbounds %struct.cppi41_channel, ptr %0, i32 0, i32 13
  %23 = getelementptr inbounds %struct.cppi41_dd, ptr %3, i32 0, i32 18
  %24 = getelementptr inbounds %struct.cppi41_dd, ptr %3, i32 0, i32 18, i32 1
  %25 = load ptr, ptr %24, align 4
  store ptr %22, ptr %24, align 4
  store ptr %23, ptr %22, align 4
  %26 = getelementptr inbounds %struct.cppi41_channel, ptr %0, i32 0, i32 13, i32 1
  store ptr %25, ptr %26, align 4
  store volatile ptr %22, ptr %25, align 4
  %27 = getelementptr inbounds %struct.cppi41_dd, ptr %3, i32 0, i32 21
  %28 = load i8, ptr %27, align 4, !range !15
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  tail call fastcc void @cppi41_run_queue(ptr noundef %3)
  br label %31

31:                                               ; preds = %30, %19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %21) #7
  %32 = load ptr, ptr %4, align 4
  %33 = tail call i64 @ktime_get_mono_fast_ns() #7
  %34 = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 11, i32 22
  store volatile i64 %33, ptr %34, align 8
  %35 = load ptr, ptr %4, align 4
  %36 = tail call i32 @__pm_runtime_suspend(ptr noundef %35, i32 noundef 13) #7
  br label %37

37:                                               ; preds = %31, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @cppi41_dma_prep_slave_sg(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readnone %5) #2 {
  %7 = getelementptr inbounds %struct.cppi41_channel, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dma_device, ptr %8, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 5) #7
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %6
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #7, !srcloc !10
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 0, i32 -1, ptr elementtype(i32) %15) #7, !srcloc !11
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %61, label %19

19:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  br label %61

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.cppi41_dd, ptr %8, i32 0, i32 21
  %22 = load i8, ptr %21, align 4, !range !15
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %54

24:                                               ; preds = %20
  %25 = icmp eq i32 %2, 0
  br i1 %25, label %52, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.cppi41_channel, ptr %0, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.cppi41_channel, ptr %0, i32 0, i32 9
  br label %30

30:                                               ; preds = %30, %26
  %31 = phi i32 [ 0, %26 ], [ %49, %30 ]
  %32 = phi ptr [ %1, %26 ], [ %50, %30 ]
  %33 = phi ptr [ %28, %26 ], [ %48, %30 ]
  %34 = getelementptr inbounds %struct.scatterlist, ptr %32, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.scatterlist, ptr %32, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = or i32 %37, -2147483648
  store i32 %38, ptr %33, align 32
  %39 = getelementptr inbounds %struct.cppi41_desc, ptr %33, i32 0, i32 1
  store i32 0, ptr %39, align 4
  %40 = load i32, ptr %29, align 4
  %41 = or i32 %40, 335544320
  %42 = getelementptr inbounds %struct.cppi41_desc, ptr %33, i32 0, i32 2
  store i32 %41, ptr %42, align 8
  %43 = getelementptr inbounds %struct.cppi41_desc, ptr %33, i32 0, i32 3
  store i32 %37, ptr %43, align 4
  %44 = getelementptr inbounds %struct.cppi41_desc, ptr %33, i32 0, i32 4
  store i32 %35, ptr %44, align 16
  %45 = getelementptr inbounds %struct.cppi41_desc, ptr %33, i32 0, i32 5
  store i32 0, ptr %45, align 4
  %46 = getelementptr inbounds %struct.cppi41_desc, ptr %33, i32 0, i32 6
  store i32 %38, ptr %46, align 8
  %47 = getelementptr inbounds %struct.cppi41_desc, ptr %33, i32 0, i32 7
  store i32 %35, ptr %47, align 4
  %48 = getelementptr %struct.cppi41_desc, ptr %33, i32 1
  %49 = add nuw i32 %31, 1
  %50 = tail call ptr @sg_next(ptr noundef %32) #7
  %51 = icmp eq i32 %49, %2
  br i1 %51, label %52, label %30

52:                                               ; preds = %30, %24
  %53 = getelementptr inbounds %struct.cppi41_channel, ptr %0, i32 0, i32 1
  br label %54

54:                                               ; preds = %52, %20
  %55 = phi ptr [ null, %20 ], [ %53, %52 ]
  %56 = load ptr, ptr %9, align 4
  %57 = tail call i64 @ktime_get_mono_fast_ns() #7
  %58 = getelementptr inbounds %struct.device, ptr %56, i32 0, i32 11, i32 22
  store volatile i64 %57, ptr %58, align 8
  %59 = load ptr, ptr %9, align 4
  %60 = tail call i32 @__pm_runtime_suspend(ptr noundef %59, i32 noundef 13) #7
  br label %61

61:                                               ; preds = %54, %19, %13
  %62 = phi ptr [ %55, %54 ], [ null, %13 ], [ null, %19 ]
  ret ptr %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cppi41_stop_chan(ptr noundef %0) #2 {
  %2 = alloca %struct.dmaengine_result, align 8
  %3 = getelementptr inbounds %struct.cppi41_channel, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cppi41_channel, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cppi41_dd, ptr %4, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = sub i32 %6, %8
  %10 = lshr i32 %9, 5
  %11 = getelementptr %struct.cppi41_dd, ptr %4, i32 0, i32 6, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.cppi41_dd, ptr %4, i32 0, i32 18
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %20, %14
  %18 = phi ptr [ %16, %14 ], [ %21, %20 ]
  %19 = icmp eq ptr %18, %15
  br i1 %19, label %201, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %18, align 4
  %22 = getelementptr i8, ptr %18, i32 -168
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %24, label %17

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %26, ptr %27, align 4
  store volatile ptr %21, ptr %26, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %18, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %25, align 4
  br label %201

28:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  store i64 0, ptr %2, align 8, !annotation !16
  %29 = getelementptr inbounds %struct.cppi41_dd, ptr %4, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.cppi41_dd, ptr %4, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr %struct.cppi41_desc, ptr %30, i32 %32
  %34 = shl i32 %32, 5
  %35 = add i32 %34, %8
  %36 = getelementptr inbounds %struct.cppi41_channel, ptr %0, i32 0, i32 12
  %37 = load i8, ptr %36, align 4
  %38 = and i8 %37, 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %66

40:                                               ; preds = %28
  store i32 -1744830464, ptr %33, align 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !17
  tail call void @arm_heavy_mb() #7
  %41 = or i32 %35, 2
  %42 = getelementptr inbounds %struct.cppi41_dd, ptr %4, i32 0, i32 9
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.cppi41_dd, ptr %4, i32 0, i32 13
  %45 = load i16, ptr %44, align 4
  %46 = zext i16 %45 to i32
  %47 = shl nuw nsw i32 %46, 4
  %48 = add nuw nsw i32 %47, 8204
  %49 = getelementptr i8, ptr %43, i32 %48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %41) #7, !srcloc !8
  %50 = getelementptr inbounds %struct.cppi41_channel, ptr %0, i32 0, i32 6
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %40
  %54 = getelementptr inbounds %struct.cppi41_dd, ptr %4, i32 0, i32 13, i32 1
  %55 = load i16, ptr %54, align 2
  %56 = zext i16 %55 to i32
  %57 = or i32 %56, -2130690048
  br label %58

58:                                               ; preds = %53, %40
  %59 = phi i32 [ -2147483648, %40 ], [ %57, %53 ]
  %60 = or i32 %59, 1073741824
  %61 = getelementptr inbounds %struct.cppi41_channel, ptr %0, i32 0, i32 5
  %62 = load ptr, ptr %61, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %60) #7, !srcloc !8
  %63 = load i8, ptr %36, align 4
  %64 = or i8 %63, 1
  store i8 %64, ptr %36, align 4
  %65 = getelementptr inbounds %struct.cppi41_channel, ptr %0, i32 0, i32 11
  store i32 500, ptr %65, align 4
  br label %66

66:                                               ; preds = %58, %28
  %67 = phi i8 [ %64, %58 ], [ %37, %28 ]
  %68 = and i8 %67, 6
  %69 = icmp eq i8 %68, 6
  br i1 %69, label %131, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.cppi41_dd, ptr %4, i32 0, i32 13, i32 1
  %72 = load i16, ptr %71, align 2
  %73 = zext i16 %72 to i32
  %74 = getelementptr inbounds %struct.cppi41_dd, ptr %4, i32 0, i32 9
  %75 = load ptr, ptr %74, align 4
  %76 = shl nuw nsw i32 %73, 4
  %77 = add nuw nsw i32 %76, 8204
  %78 = getelementptr i8, ptr %75, i32 %77
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #7, !srcloc !18
  %80 = and i32 %79, -32
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %70
  %83 = getelementptr inbounds %struct.cppi41_channel, ptr %0, i32 0, i32 6
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.cppi41_channel, ptr %0, i32 0, i32 9
  %88 = load i32, ptr %87, align 4
  %89 = load ptr, ptr %74, align 4
  %90 = shl i32 %88, 4
  %91 = add i32 %90, 8204
  %92 = getelementptr i8, ptr %89, i32 %91
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #7, !srcloc !18
  %94 = and i32 %93, -32
  br label %95

95:                                               ; preds = %86, %82, %70
  %96 = phi i32 [ %80, %70 ], [ %94, %86 ], [ 0, %82 ]
  %97 = load i32, ptr %5, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i8, ptr %36, align 4
  %101 = or i8 %100, 4
  store i8 %101, ptr %36, align 4
  br label %131

102:                                              ; preds = %95
  %103 = icmp eq i32 %96, %35
  br i1 %103, label %104, label %126

104:                                              ; preds = %102
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !19
  %105 = load i32, ptr %33, align 32
  %106 = and i32 %105, -134217728
  %107 = icmp eq i32 %106, -1744830464
  br i1 %107, label %109, label %108, !prof !13

108:                                              ; preds = %104
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 691, i32 noundef 9, ptr noundef null) #7
  br label %109

109:                                              ; preds = %108, %104
  %110 = getelementptr inbounds %struct.cppi41_channel, ptr %0, i32 0, i32 6
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 0
  %113 = and i32 %105, 65536
  %114 = icmp eq i32 %113, 0
  %115 = select i1 %112, i1 %114, i1 false
  br i1 %115, label %116, label %117, !prof !20

116:                                              ; preds = %109
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 692, i32 noundef 9, ptr noundef null) #7
  br label %117

117:                                              ; preds = %116, %109
  %118 = and i32 %105, 31
  %119 = getelementptr inbounds %struct.cppi41_channel, ptr %0, i32 0, i32 10
  %120 = load i32, ptr %119, align 4
  %121 = icmp eq i32 %118, %120
  br i1 %121, label %123, label %122, !prof !13

122:                                              ; preds = %117
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 693, i32 noundef 9, ptr noundef null) #7
  br label %123

123:                                              ; preds = %122, %117
  %124 = load i8, ptr %36, align 4
  %125 = or i8 %124, 2
  store i8 %125, ptr %36, align 4
  br label %131

126:                                              ; preds = %102
  %127 = icmp eq i32 %96, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %126
  %129 = load i1, ptr @cppi41_tear_down_chan.__already_done, align 1
  br i1 %129, label %131, label %130, !prof !13

130:                                              ; preds = %128
  store i1 true, ptr @cppi41_tear_down_chan.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 696, i32 noundef 9, ptr noundef null) #7
  br label %131

131:                                              ; preds = %130, %128, %126, %123, %99, %66
  %132 = getelementptr inbounds %struct.cppi41_channel, ptr %0, i32 0, i32 11
  %133 = load i32, ptr %132, align 4
  %134 = add i32 %133, -1
  store i32 %134, ptr %132, align 4
  %135 = load i8, ptr %36, align 4
  %136 = and i8 %135, 2
  %137 = icmp ne i8 %136, 0
  %138 = icmp eq i32 %134, 0
  %139 = select i1 %137, i1 true, i1 %138
  br i1 %139, label %140, label %191

140:                                              ; preds = %131
  br i1 %138, label %141, label %143, !prof !20

141:                                              ; preds = %140
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 714, i32 noundef 9, ptr noundef null) #7
  %142 = load i8, ptr %36, align 4
  br label %143

143:                                              ; preds = %141, %140
  %144 = phi i8 [ %142, %141 ], [ %135, %140 ]
  %145 = and i8 %144, 4
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %167

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.cppi41_channel, ptr %0, i32 0, i32 8
  %149 = load i32, ptr %148, align 4
  %150 = getelementptr inbounds %struct.cppi41_dd, ptr %4, i32 0, i32 9
  %151 = load ptr, ptr %150, align 4
  %152 = shl i32 %149, 4
  %153 = add i32 %152, 8204
  %154 = getelementptr i8, ptr %151, i32 %153
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %154) #7, !srcloc !18
  %156 = icmp ult i32 %155, 32
  br i1 %156, label %157, label %167

157:                                              ; preds = %147
  %158 = getelementptr inbounds %struct.cppi41_channel, ptr %0, i32 0, i32 9
  %159 = load i32, ptr %158, align 4
  %160 = load ptr, ptr %150, align 4
  %161 = shl i32 %159, 4
  %162 = add i32 %161, 8204
  %163 = getelementptr i8, ptr %160, i32 %162
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %163) #7, !srcloc !18
  %165 = icmp ult i32 %164, 32
  br i1 %165, label %166, label %167, !prof !20

166:                                              ; preds = %157
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 720, i32 noundef 9, ptr noundef null) #7
  br label %167

167:                                              ; preds = %166, %157, %147, %143
  %168 = load i8, ptr %36, align 4
  %169 = and i8 %168, -8
  store i8 %169, ptr %36, align 4
  %170 = getelementptr inbounds %struct.cppi41_channel, ptr %0, i32 0, i32 5
  %171 = load ptr, ptr %170, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %171, i32 0) #7, !srcloc !8
  store i32 3, ptr %2, align 8
  %172 = getelementptr inbounds %struct.cppi41_channel, ptr %0, i32 0, i32 1
  %173 = load i32, ptr %172, align 4
  %174 = icmp slt i32 %173, 1
  br i1 %174, label %175, label %176, !prof !20

175:                                              ; preds = %167
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/ti/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #7, !srcloc !21
  unreachable

176:                                              ; preds = %167
  %177 = getelementptr inbounds %struct.cppi41_channel, ptr %0, i32 0, i32 1, i32 3
  %178 = load ptr, ptr %177, align 4
  %179 = getelementptr inbounds %struct.dma_chan, ptr %178, i32 0, i32 3
  store i32 %173, ptr %179, align 4
  store i32 0, ptr %172, align 4
  %180 = getelementptr inbounds %struct.cppi41_channel, ptr %0, i32 0, i32 1, i32 6
  %181 = load ptr, ptr %180, align 4
  %182 = getelementptr inbounds %struct.cppi41_channel, ptr %0, i32 0, i32 1, i32 7
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr inbounds %struct.cppi41_channel, ptr %0, i32 0, i32 1, i32 8
  %185 = load ptr, ptr %184, align 4
  %186 = icmp eq ptr %183, null
  br i1 %186, label %188, label %187

187:                                              ; preds = %176
  call void %183(ptr noundef %185, ptr noundef nonnull %2) #7
  br label %193

188:                                              ; preds = %176
  %189 = icmp eq ptr %181, null
  br i1 %189, label %193, label %190

190:                                              ; preds = %188
  tail call void %181(ptr noundef %185) #7
  br label %193

191:                                              ; preds = %131
  %192 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %192(i32 noundef 214748) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  br label %201

193:                                              ; preds = %190, %188, %187
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  %194 = load ptr, ptr %11, align 4
  %195 = icmp eq ptr %194, null
  br i1 %195, label %196, label %197, !prof !20

196:                                              ; preds = %193
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 767, i32 noundef 9, ptr noundef null) #7
  br label %197

197:                                              ; preds = %196, %193
  store ptr null, ptr %11, align 4
  %198 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 15
  %199 = load ptr, ptr %198, align 4
  %200 = call i32 @__pm_runtime_idle(ptr noundef %199, i32 noundef 5) #7
  br label %201

201:                                              ; preds = %197, %191, %24, %17
  %202 = phi i32 [ 0, %197 ], [ 0, %24 ], [ -11, %191 ], [ 0, %17 ]
  ret i32 %202
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @init_cppi41(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 2
  %4 = tail call ptr @dma_alloc_attrs(ptr noundef %0, i32 noundef 512, ptr noundef %3, i32 noundef 3264, i32 noundef 0) #7
  %5 = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 1
  store ptr %4, ptr %5, align 4
  %6 = icmp eq ptr %4, null
  br i1 %6, label %78, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr %3, align 4
  %9 = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %8) #7, !srcloc !8
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr i8, ptr %12, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 128) #7, !srcloc !8
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr i8, ptr %14, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #7, !srcloc !8
  %16 = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 4
  %17 = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 3
  %18 = tail call ptr @dma_alloc_attrs(ptr noundef %0, i32 noundef 4096, ptr noundef %16, i32 noundef 3264, i32 noundef 0) #7
  store ptr %18, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %63, label %20

20:                                               ; preds = %7
  %21 = load i32, ptr %16, align 4
  %22 = load ptr, ptr %9, align 4
  %23 = getelementptr i8, ptr %22, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #7, !srcloc !8
  %24 = load ptr, ptr %9, align 4
  %25 = getelementptr i8, ptr %24, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 2) #7, !srcloc !8
  %26 = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 13
  %27 = load i16, ptr %26, align 4
  %28 = zext i16 %27 to i32
  %29 = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 7
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %28) #7, !srcloc !8
  %32 = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 8
  %33 = load ptr, ptr %32, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 0) #7, !srcloc !8
  %34 = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 16
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %60, label %37

37:                                               ; preds = %37, %20
  %38 = phi i32 [ %52, %37 ], [ 0, %20 ]
  %39 = phi i32 [ %53, %37 ], [ 0, %20 ]
  %40 = shl i32 %39, 8
  %41 = or i32 %39, 1
  %42 = shl i32 %41, 16
  %43 = shl i32 %41, 24
  %44 = or i32 %39, %40
  %45 = or i32 %44, %43
  %46 = or i32 %45, %42
  %47 = or i32 %46, -2147450880
  %48 = load ptr, ptr %32, align 4
  %49 = shl i32 %38, 2
  %50 = add i32 %49, 2048
  %51 = getelementptr i8, ptr %48, i32 %50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %47) #7, !srcloc !8
  %52 = add i32 %38, 1
  %53 = add i32 %39, 2
  %54 = load i32, ptr %34, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %37, label %56

56:                                               ; preds = %37
  %57 = shl i32 %54, 1
  %58 = add i32 %57, 2147483647
  %59 = or i32 %58, -2147483648
  br label %60

60:                                               ; preds = %56, %20
  %61 = phi i32 [ -1, %20 ], [ %59, %56 ]
  %62 = load ptr, ptr %32, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %61) #7, !srcloc !8
  br label %78

63:                                               ; preds = %7
  %64 = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 8
  %65 = load ptr, ptr %64, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 0) #7, !srcloc !8
  %66 = load ptr, ptr %9, align 4
  %67 = getelementptr i8, ptr %66, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 0) #7, !srcloc !8
  %68 = load ptr, ptr %9, align 4
  %69 = getelementptr i8, ptr %68, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 0) #7, !srcloc !8
  %70 = load ptr, ptr %17, align 4
  %71 = load i32, ptr %16, align 4
  tail call void @dma_free_attrs(ptr noundef %0, i32 noundef 4096, ptr noundef %70, i32 noundef %71, i32 noundef 0) #7
  %72 = load ptr, ptr %9, align 4
  %73 = getelementptr i8, ptr %72, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 0) #7, !srcloc !8
  %74 = load ptr, ptr %9, align 4
  %75 = getelementptr i8, ptr %74, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 0) #7, !srcloc !8
  %76 = load ptr, ptr %5, align 4
  %77 = load i32, ptr %3, align 4
  tail call void @dma_free_attrs(ptr noundef %0, i32 noundef 512, ptr noundef %76, i32 noundef %77, i32 noundef 0) #7
  br label %78

78:                                               ; preds = %63, %60, %2
  %79 = phi i32 [ -12, %63 ], [ 0, %60 ], [ -12, %2 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cppi41_add_chans(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 16
  %4 = load i32, ptr %3, align 4
  %5 = shl i32 %4, 1
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 176) #7
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %54, label %8, !prof !20

8:                                                ; preds = %2
  %9 = extractvalue { i32, i1 } %6, 0
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef %9, i32 noundef 3520) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %54, label %12

12:                                               ; preds = %8
  %13 = icmp eq i32 %5, 0
  br i1 %13, label %52, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 7
  %16 = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 3
  %17 = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 4
  %18 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 3
  %19 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 3, i32 1
  br label %20

20:                                               ; preds = %20, %14
  %21 = phi i32 [ 0, %14 ], [ %50, %20 ]
  %22 = getelementptr %struct.cppi41_channel, ptr %10, i32 %21
  %23 = getelementptr %struct.cppi41_channel, ptr %10, i32 %21, i32 2
  store ptr %1, ptr %23, align 4
  %24 = and i32 %21, 1
  %25 = icmp eq i32 %24, 0
  %26 = load ptr, ptr %15, align 4
  %27 = shl i32 %21, 4
  %28 = and i32 %27, -32
  %29 = add i32 %28, 2056
  %30 = add i32 %27, 2048
  %31 = and i32 %30, -32
  %32 = select i1 %25, i32 %29, i32 %31
  %33 = xor i1 %25, true
  %34 = zext i1 %33 to i32
  %35 = getelementptr i8, ptr %26, i32 %32
  %36 = getelementptr %struct.cppi41_channel, ptr %10, i32 %21, i32 5
  store ptr %35, ptr %36, align 4
  %37 = getelementptr %struct.cppi41_channel, ptr %10, i32 %21, i32 6
  store i32 %34, ptr %37, align 4
  %38 = ashr i32 %21, 1
  %39 = getelementptr %struct.cppi41_channel, ptr %10, i32 %21, i32 10
  store i32 %38, ptr %39, align 4
  %40 = load ptr, ptr %16, align 4
  %41 = getelementptr %struct.cppi41_desc, ptr %40, i32 %21
  %42 = getelementptr %struct.cppi41_channel, ptr %10, i32 %21, i32 3
  store ptr %41, ptr %42, align 4
  %43 = load i32, ptr %17, align 4
  %44 = getelementptr %struct.cppi41_channel, ptr %10, i32 %21, i32 4
  %45 = shl i32 %21, 5
  %46 = add i32 %43, %45
  store i32 %46, ptr %44, align 4
  store ptr %1, ptr %22, align 4
  %47 = getelementptr inbounds %struct.dma_chan, ptr %22, i32 0, i32 8
  %48 = load ptr, ptr %19, align 4
  store ptr %47, ptr %19, align 4
  store ptr %18, ptr %47, align 4
  %49 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  store ptr %48, ptr %49, align 4
  store volatile ptr %47, ptr %48, align 4
  %50 = add nuw i32 %21, 1
  %51 = icmp eq i32 %50, %5
  br i1 %51, label %52, label %20

52:                                               ; preds = %20, %12
  %53 = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 5
  store i32 %5, ptr %53, align 4
  br label %54

54:                                               ; preds = %52, %8, %2
  %55 = phi i32 [ 0, %52 ], [ -12, %8 ], [ -12, %2 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cppi41_irq(i32 noundef %0, ptr nocapture noundef %1) #2 {
  %3 = alloca %struct.dmaengine_result, align 8
  %4 = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 14
  %5 = load i16, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 15
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %5 to i32
  %9 = lshr i32 %8, 5
  %10 = zext i16 %7 to i32
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %112

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 9
  %14 = and i32 %8, 31
  %15 = shl nsw i32 -1, %14
  %16 = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 21
  %17 = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 4
  %18 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  br label %19

19:                                               ; preds = %109, %12
  %20 = phi i32 [ %9, %12 ], [ %110, %109 ]
  %21 = load ptr, ptr %13, align 4
  %22 = shl i32 %20, 2
  %23 = add nuw nsw i32 %22, 144
  %24 = getelementptr i8, ptr %21, i32 %23
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #7, !srcloc !18
  %26 = icmp eq i32 %20, %9
  %27 = icmp ne i32 %25, 0
  %28 = select i1 %26, i1 %27, i1 false
  %29 = select i1 %28, i32 %15, i32 -1
  %30 = and i32 %29, %25
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %109, label %32

32:                                               ; preds = %19
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !22
  %33 = shl i32 %20, 5
  br label %34

34:                                               ; preds = %107, %32
  %35 = phi i32 [ %30, %32 ], [ %44, %107 ]
  %36 = load i8, ptr %16, align 4, !range !15
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %39, label %38, !prof !13

38:                                               ; preds = %34
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 336, i32 noundef 9, ptr noundef null) #7
  br label %39

39:                                               ; preds = %38, %34
  %40 = call i32 @llvm.ctlz.i32(i32 %35, i1 true) #7, !range !23
  %41 = xor i32 %40, 31
  %42 = shl nuw i32 1, %41
  %43 = xor i32 %42, -1
  %44 = and i32 %35, %43
  %45 = or i32 %41, %33
  %46 = load ptr, ptr %13, align 4
  %47 = shl i32 %45, 4
  %48 = add i32 %47, 8204
  %49 = getelementptr i8, ptr %46, i32 %48
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #7, !srcloc !18
  %51 = and i32 %50, -32
  %52 = load i32, ptr %17, align 4
  %53 = icmp uge i32 %51, %52
  %54 = add i32 %52, 4096
  %55 = icmp ugt i32 %54, %51
  %56 = and i1 %53, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %39
  %58 = sub i32 %51, %52
  %59 = icmp ugt i32 %58, 4095
  br i1 %59, label %60, label %61, !prof !20

60:                                               ; preds = %57
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/ti/cppi41.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 268, 0\0A.popsection", ""() #7, !srcloc !24
  unreachable

61:                                               ; preds = %57
  %62 = lshr i32 %58, 5
  %63 = getelementptr %struct.cppi41_dd, ptr %1, i32 0, i32 6, i32 %62
  %64 = load ptr, ptr %63, align 4
  store ptr null, ptr %63, align 4
  %65 = load ptr, ptr %18, align 4
  %66 = call i32 @__pm_runtime_idle(ptr noundef %65, i32 noundef 5) #7
  %67 = icmp eq ptr %64, null
  br i1 %67, label %68, label %70, !prof !20

68:                                               ; preds = %61, %39
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 343, i32 noundef 9, ptr noundef null) #7
  %69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.cppi41_irq, i32 noundef %45, i32 noundef %51) #8
  br label %107

70:                                               ; preds = %61
  %71 = getelementptr inbounds %struct.cppi41_channel, ptr %64, i32 0, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.cppi41_desc, ptr %72, i32 0, i32 2
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 524288
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i32, ptr %72, align 32
  %79 = and i32 %78, 4194303
  br label %80

80:                                               ; preds = %77, %70
  %81 = phi i32 [ %79, %77 ], [ 0, %70 ]
  %82 = getelementptr inbounds %struct.cppi41_desc, ptr %72, i32 0, i32 6
  %83 = load i32, ptr %82, align 8
  %84 = and i32 %83, 4194303
  %85 = sub nsw i32 %84, %81
  %86 = getelementptr inbounds %struct.cppi41_channel, ptr %64, i32 0, i32 7
  store i32 %85, ptr %86, align 4
  %87 = getelementptr inbounds %struct.cppi41_channel, ptr %64, i32 0, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = icmp slt i32 %88, 1
  br i1 %89, label %90, label %91, !prof !20

90:                                               ; preds = %80
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/ti/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #7, !srcloc !21
  unreachable

91:                                               ; preds = %80
  %92 = getelementptr inbounds %struct.cppi41_channel, ptr %64, i32 0, i32 1, i32 3
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.dma_chan, ptr %93, i32 0, i32 3
  store i32 %88, ptr %94, align 4
  store i32 0, ptr %87, align 4
  %95 = getelementptr inbounds %struct.cppi41_channel, ptr %64, i32 0, i32 1, i32 6
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.cppi41_channel, ptr %64, i32 0, i32 1, i32 7
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.cppi41_channel, ptr %64, i32 0, i32 1, i32 8
  %100 = load ptr, ptr %99, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store i64 0, ptr %3, align 8
  %101 = icmp eq ptr %98, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %91
  call void %98(ptr noundef %100, ptr noundef nonnull %3) #7
  br label %106

103:                                              ; preds = %91
  %104 = icmp eq ptr %96, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %103
  call void %96(ptr noundef %100) #7
  br label %106

106:                                              ; preds = %105, %103, %102
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  br label %107

107:                                              ; preds = %106, %68
  %108 = icmp eq i32 %44, 0
  br i1 %108, label %109, label %34

109:                                              ; preds = %107, %19
  %110 = add nuw nsw i32 %20, 1
  %111 = icmp eq i32 %110, %10
  br i1 %111, label %112, label %19

112:                                              ; preds = %109, %2
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @cppi41_dma_xlate(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.of_dma, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.of_dma_filter_info, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ne ptr %10, null
  %12 = icmp eq i32 %8, 2
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %17

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %16 = tail call ptr @__dma_request_channel(ptr noundef nonnull %4, ptr noundef nonnull %10, ptr noundef %15, ptr noundef null) #7
  br label %17

17:                                               ; preds = %14, %6, %2
  %18 = phi ptr [ %16, %14 ], [ null, %6 ], [ null, %2 ]
  ret ptr %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @deinit_cppi41(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #7, !srcloc !8
  %5 = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #7, !srcloc !8
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr i8, ptr %8, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #7, !srcloc !8
  %10 = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  tail call void @dma_free_attrs(ptr noundef %0, i32 noundef 4096, ptr noundef %11, i32 noundef %13, i32 noundef 0) #7
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr i8, ptr %14, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #7, !srcloc !8
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr i8, ptr %16, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #7, !srcloc !8
  %18 = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  tail call void @dma_free_attrs(ptr noundef %0, i32 noundef 512, ptr noundef %19, i32 noundef %21, i32 noundef 0) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @cppi41_tx_submit(ptr nocapture noundef %0) #5 {
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
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cppi41_run_queue(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.cppi41_dd, ptr %0, i32 0, i32 18
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %50, label %5

5:                                                ; preds = %36, %1
  %6 = phi ptr [ %8, %36 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -168
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr i8, ptr %6, i32 -44
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %6, i32 -24
  store i32 0, ptr %11, align 4
  %12 = getelementptr i8, ptr %6, i32 -28
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  %16 = getelementptr i8, ptr %6, i32 -16
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, -2130690048
  br label %19

19:                                               ; preds = %15, %5
  %20 = phi i32 [ -2147483648, %5 ], [ %18, %15 ]
  %21 = getelementptr i8, ptr %6, i32 -32
  %22 = load ptr, ptr %21, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #7, !srcloc !8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %23 = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 15
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @__pm_runtime_resume(ptr noundef %24, i32 noundef 5) #7
  %26 = getelementptr i8, ptr %6, i32 -36
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.cppi41_dd, ptr %10, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = sub i32 %27, %29
  %31 = lshr i32 %30, 5
  %32 = getelementptr %struct.cppi41_dd, ptr %10, i32 0, i32 6, i32 %31
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35, !prof !13

35:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 467, i32 noundef 9, ptr noundef null) #7
  br label %36

36:                                               ; preds = %35, %19
  store ptr %7, ptr %32, align 4
  %37 = or i32 %27, 2
  %38 = getelementptr inbounds %struct.cppi41_dd, ptr %10, i32 0, i32 9
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %6, i32 -20
  %41 = load i32, ptr %40, align 4
  %42 = shl i32 %41, 4
  %43 = add i32 %42, 8204
  %44 = getelementptr i8, ptr %39, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %37) #7, !srcloc !8
  %45 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = load ptr, ptr %6, align 4
  %48 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  store ptr %46, ptr %48, align 4
  store volatile ptr %47, ptr %46, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %45, align 4
  %49 = icmp eq ptr %8, %2
  br i1 %49, label %50, label %5

50:                                               ; preds = %36, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @cpp41_dma_filter_fn(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, getelementptr inbounds (%struct.platform_driver, ptr @cpp41_dma_driver, i32 0, i32 5)
  br i1 %8, label %9, label %40

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.cppi41_channel, ptr %0, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = load i32, ptr %1, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.cppi41_channel, ptr %0, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr i32, ptr %1, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %18, %14
  %23 = icmp ugt i32 %11, 29
  br i1 %23, label %24, label %25, !prof !20

24:                                               ; preds = %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 971, i32 noundef 9, ptr noundef null) #7
  br label %40

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.cppi41_channel, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.cppi41_dd, ptr %27, i32 0, i32 11
  %29 = getelementptr inbounds %struct.cppi41_dd, ptr %27, i32 0, i32 12
  %30 = select i1 %17, ptr %28, ptr %29
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr %struct.chan_queues, ptr %31, i32 %11
  %33 = load i16, ptr %32, align 2
  %34 = zext i16 %33 to i32
  %35 = getelementptr inbounds %struct.cppi41_channel, ptr %0, i32 0, i32 8
  store i32 %34, ptr %35, align 4
  %36 = getelementptr %struct.chan_queues, ptr %31, i32 %11, i32 1
  %37 = load i16, ptr %36, align 2
  %38 = zext i16 %37 to i32
  %39 = getelementptr inbounds %struct.cppi41_channel, ptr %0, i32 0, i32 9
  store i32 %38, ptr %39, align 4
  br label %40

40:                                               ; preds = %25, %24, %18, %9, %2
  %41 = phi i1 [ false, %24 ], [ true, %25 ], [ false, %2 ], [ false, %9 ], [ false, %18 ]
  ret i1 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cppi41_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cppi41_dd, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !18
  %8 = getelementptr inbounds %struct.cppi41_dd, ptr %3, i32 0, i32 20
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.cppi41_dd, ptr %3, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #7, !srcloc !8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cppi41_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cppi41_dd, ptr %3, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cppi41_dd, ptr %3, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %5) #7, !srcloc !8
  %9 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %26, label %12

12:                                               ; preds = %23, %1
  %13 = phi ptr [ %24, %23 ], [ %10, %1 ]
  %14 = getelementptr i8, ptr %13, i32 108
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = getelementptr i8, ptr %13, i32 116
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %13, i32 104
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %19) #7, !srcloc !8
  br label %23

23:                                               ; preds = %17, %12
  %24 = load ptr, ptr %13, align 4
  %25 = icmp eq ptr %24, %9
  br i1 %25, label %26, label %12

26:                                               ; preds = %23, %1
  %27 = getelementptr inbounds %struct.cppi41_dd, ptr %3, i32 0, i32 8
  %28 = load ptr, ptr %27, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 0) #7, !srcloc !8
  %29 = getelementptr inbounds %struct.cppi41_dd, ptr %3, i32 0, i32 16
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %55, label %32

32:                                               ; preds = %32, %26
  %33 = phi i32 [ %47, %32 ], [ 0, %26 ]
  %34 = phi i32 [ %48, %32 ], [ 0, %26 ]
  %35 = shl i32 %34, 8
  %36 = or i32 %34, 1
  %37 = shl i32 %36, 16
  %38 = shl i32 %36, 24
  %39 = or i32 %34, %35
  %40 = or i32 %39, %38
  %41 = or i32 %40, %37
  %42 = or i32 %41, -2147450880
  %43 = load ptr, ptr %27, align 4
  %44 = shl i32 %33, 2
  %45 = add i32 %44, 2048
  %46 = getelementptr i8, ptr %43, i32 %45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %42) #7, !srcloc !8
  %47 = add i32 %33, 1
  %48 = add i32 %34, 2
  %49 = load i32, ptr %29, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %32, label %51

51:                                               ; preds = %32
  %52 = shl i32 %49, 1
  %53 = add i32 %52, 2147483647
  %54 = or i32 %53, -2147483648
  br label %55

55:                                               ; preds = %51, %26
  %56 = phi i32 [ -1, %26 ], [ %54, %51 ]
  %57 = load ptr, ptr %27, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %56) #7, !srcloc !8
  %58 = getelementptr inbounds %struct.cppi41_dd, ptr %3, i32 0, i32 20
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.cppi41_dd, ptr %3, i32 0, i32 7
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr i8, ptr %61, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %59) #7, !srcloc !8
  %63 = getelementptr inbounds %struct.cppi41_dd, ptr %3, i32 0, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = load ptr, ptr %6, align 4
  %66 = getelementptr i8, ptr %65, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #7, !srcloc !8
  %67 = load ptr, ptr %6, align 4
  %68 = getelementptr i8, ptr %67, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 512) #7, !srcloc !8
  %69 = load ptr, ptr %6, align 4
  %70 = getelementptr i8, ptr %69, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 0) #7, !srcloc !8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cppi41_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cppi41_dd, ptr %3, i32 0, i32 19
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #7
  %6 = getelementptr inbounds %struct.cppi41_dd, ptr %3, i32 0, i32 21
  store i8 1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.cppi41_dd, ptr %3, i32 0, i32 18
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %11, label %10, !prof !13

10:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1219, i32 noundef 9, ptr noundef null) #7
  br label %11

11:                                               ; preds = %10, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cppi41_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cppi41_dd, ptr %3, i32 0, i32 19
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #7
  %6 = getelementptr inbounds %struct.cppi41_dd, ptr %3, i32 0, i32 21
  store i8 0, ptr %6, align 4
  tail call fastcc void @cppi41_run_queue(ptr noundef %3)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!8 = !{i64 5039122}
!9 = !{i64 2147919851}
!10 = !{i64 418161, i64 2147908132, i64 2147908158, i64 2147908205, i64 2147908227, i64 2147908255, i64 2147908275}
!11 = !{i64 404730, i64 404755, i64 404777, i64 404793, i64 404805, i64 404825, i64 404849, i64 404865, i64 404877}
!12 = !{i64 2147919977}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2153107043}
!15 = !{i8 0, i8 2}
!16 = !{!"auto-init"}
!17 = !{i64 2153153288}
!18 = !{i64 5039540}
!19 = !{i64 2153153441}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i64 2153106101, i64 2153106594, i64 2153106138, i64 2153106194, i64 2153106228, i64 2153106252, i64 2153106293, i64 2153106314, i64 2153106342, i64 2153106376}
!22 = !{i64 2153144014}
!23 = !{i32 0, i32 33}
!24 = !{i64 2153143046, i64 2153143534, i64 2153143083, i64 2153143139, i64 2153143173, i64 2153143197, i64 2153143238, i64 2153143259, i64 2153143287, i64 2153143321}
!25 = !{i64 2153146753}
