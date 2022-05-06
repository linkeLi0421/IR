; ModuleID = '/llk/IR/drivers/spi/spi-fsl-qspi.c_pt.bc'
source_filename = "../drivers/spi/spi-fsl-qspi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.fsl_qspi_devtype_data = type { i32, i32, i32, i32, i32, i8 }
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
%struct.lock_class_key = type {}
%struct.spi_controller_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.fsl_qspi = type { ptr, ptr, i32, ptr, ptr, ptr, %struct.completion, ptr, %struct.mutex, %struct.pm_qos_request, i32 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_mem_op = type { %struct.anon.66, %struct.anon.67, %struct.anon.68, %struct.anon.69 }
%struct.anon.66 = type { i8, i8, i8, i16 }
%struct.anon.67 = type { i8, i8, i8, i64 }
%struct.anon.68 = type { i8, i8, i8 }
%struct.anon.69 = type { i8, i8, i32, i32, %union.anon.70 }
%union.anon.70 = type { ptr }

@fsl_qspi_dt_ids = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,vf610-qspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vybrid_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sx-qspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6sx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7d-qspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx7d_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6ul-qspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6ul_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1021a-qspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ls1021a_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls2080a-qspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ls2080a_data }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description226 = internal constant [48 x i8] c"description=Freescale QuadSPI Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author227 = internal constant [36 x i8] c"author=Freescale Semiconductor Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_author228 = internal constant [47 x i8] c"author=Boris Brezillon <bbrezillon@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [54 x i8] c"author=Frieder Schrempf <frieder.schrempf@kontron.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_author230 = internal constant [48 x i8] c"author=Yogesh Gaur <yogeshnarayan.gaur@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author231 = internal constant [43 x i8] c"author=Suresh Gupta <suresh.gupta@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@vybrid_data = internal constant %struct.fsl_qspi_devtype_data { i32 128, i32 64, i32 14, i32 1024, i32 1, i8 1 }, align 4
@imx6sx_data = internal constant %struct.fsl_qspi_devtype_data { i32 128, i32 512, i32 14, i32 1024, i32 10, i8 1 }, align 4
@imx7d_data = internal constant %struct.fsl_qspi_devtype_data { i32 128, i32 512, i32 14, i32 1024, i32 38, i8 1 }, align 4
@imx6ul_data = internal constant %struct.fsl_qspi_devtype_data { i32 128, i32 512, i32 14, i32 1024, i32 38, i8 1 }, align 4
@ls1021a_data = internal constant %struct.fsl_qspi_devtype_data { i32 128, i32 64, i32 14, i32 1024, i32 0, i8 0 }, align 4
@ls2080a_data = internal constant %struct.fsl_qspi_devtype_data { i32 128, i32 64, i32 0, i32 1024, i32 20, i8 1 }, align 4
@fsl_qspi_driver = internal global %struct.platform_driver { ptr @fsl_qspi_probe, ptr @fsl_qspi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fsl_qspi_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_qspi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [12 x i8] c"fsl-quadspi\00", align 1
@fsl_qspi_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @fsl_qspi_suspend, ptr @fsl_qspi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"QuadSPI\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"QuadSPI-memory\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"qspi_en\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"qspi\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"can not enable the clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"failed to request irq: %d\0A\00", align 1
@fsl_qspi_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"&q->lock\00", align 1
@fsl_qspi_mem_ops = internal constant %struct.spi_controller_mem_ops { ptr @fsl_qspi_adjust_op_size, ptr @fsl_qspi_supports_op, ptr @fsl_qspi_exec_op, ptr @fsl_qspi_get_name, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"Freescale QuadSPI probe failed\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"failed to get memory for custom flash name\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description226, ptr @__UNIQUE_ID_license232], section "llvm.metadata"
@switch.table.fsl_qspi_supports_op.14 = private unnamed_addr constant [4 x i32] [i32 0, i32 0, i32 -524, i32 0], align 4

@__mod_of__fsl_qspi_dt_ids_device_table = dso_local alias [7 x %struct.of_device_id], ptr @fsl_qspi_dt_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @fsl_qspi_driver, ptr noundef nonnull @__this_module) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @fsl_qspi_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_qspi_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @__spi_alloc_controller(ptr noundef %2, i32 noundef 92, i1 noundef zeroext false) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %79, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.spi_controller, ptr %5, i32 0, i32 5
  store i32 3840, ptr %8, align 8
  %9 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.fsl_qspi, ptr %10, i32 0, i32 5
  store ptr %2, ptr %11, align 4
  %12 = tail call ptr @of_device_get_match_data(ptr noundef %2) #10
  %13 = getelementptr inbounds %struct.fsl_qspi, ptr %10, i32 0, i32 7
  store ptr %12, ptr %13, align 4
  %14 = icmp eq ptr %12, null
  br i1 %14, label %77, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %10, ptr %16, align 8
  %17 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.1) #10
  %18 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %17) #10
  store ptr %18, ptr %10, align 4
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = ptrtoint ptr %18 to i32
  br label %77

22:                                               ; preds = %15
  %23 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.2) #10
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.fsl_qspi, ptr %10, i32 0, i32 2
  store i32 %24, ptr %25, align 4
  %26 = load ptr, ptr %13, align 4
  %27 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %26, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = shl i32 %28, 2
  %30 = tail call ptr @devm_ioremap(ptr noundef %2, i32 noundef %24, i32 noundef %29) #10
  %31 = getelementptr inbounds %struct.fsl_qspi, ptr %10, i32 0, i32 1
  store ptr %30, ptr %31, align 4
  %32 = icmp eq ptr %30, null
  br i1 %32, label %77, label %33

33:                                               ; preds = %22
  %34 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.3) #10
  %35 = getelementptr inbounds %struct.fsl_qspi, ptr %10, i32 0, i32 4
  store ptr %34, ptr %35, align 4
  %36 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = ptrtoint ptr %34 to i32
  br label %77

39:                                               ; preds = %33
  %40 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.4) #10
  %41 = getelementptr inbounds %struct.fsl_qspi, ptr %10, i32 0, i32 3
  store ptr %40, ptr %41, align 4
  %42 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = ptrtoint ptr %40 to i32
  br label %77

45:                                               ; preds = %39
  %46 = tail call fastcc i32 @fsl_qspi_clk_prep_enable(ptr noundef %10)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #11
  br label %77

49:                                               ; preds = %45
  %50 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #10
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %65, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %0, align 8
  %54 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %50, ptr noundef nonnull @fsl_qspi_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %53, ptr noundef %10) #10
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %54) #11
  br label %65

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.fsl_qspi, ptr %10, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %58, ptr noundef nonnull @.str.7, ptr noundef nonnull @fsl_qspi_probe.__key) #10
  %59 = getelementptr inbounds %struct.spi_controller, ptr %5, i32 0, i32 2
  store i16 -1, ptr %59, align 8
  %60 = getelementptr inbounds %struct.spi_controller, ptr %5, i32 0, i32 3
  store i16 4, ptr %60, align 2
  %61 = getelementptr inbounds %struct.spi_controller, ptr %5, i32 0, i32 53
  store ptr @fsl_qspi_mem_ops, ptr %61, align 4
  tail call fastcc void @fsl_qspi_default_setup(ptr noundef %10)
  %62 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 25
  store ptr %4, ptr %62, align 8
  %63 = tail call i32 @devm_spi_register_controller(ptr noundef %2, ptr noundef nonnull %5) #10
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %79, label %65

65:                                               ; preds = %57, %56, %49
  %66 = phi i32 [ %50, %49 ], [ %54, %56 ], [ %63, %57 ]
  %67 = load ptr, ptr %13, align 4
  %68 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %67, i32 0, i32 4
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.fsl_qspi, ptr %10, i32 0, i32 9
  tail call void @cpu_latency_qos_remove_request(ptr noundef %73) #10
  br label %74

74:                                               ; preds = %72, %65
  %75 = load ptr, ptr %41, align 4
  tail call void @clk_disable(ptr noundef %75) #10
  tail call void @clk_unprepare(ptr noundef %75) #10
  %76 = load ptr, ptr %35, align 4
  tail call void @clk_disable(ptr noundef %76) #10
  tail call void @clk_unprepare(ptr noundef %76) #10
  br label %77

77:                                               ; preds = %74, %48, %43, %37, %22, %20, %7
  %78 = phi i32 [ %21, %20 ], [ %38, %37 ], [ %44, %43 ], [ %46, %48 ], [ %66, %74 ], [ -19, %7 ], [ -12, %22 ]
  tail call void @put_device(ptr noundef nonnull %5) #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8) #11
  br label %79

79:                                               ; preds = %77, %57, %1
  %80 = phi i32 [ %78, %77 ], [ -12, %1 ], [ 0, %57 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_qspi_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fsl_qspi, ptr %3, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %6, i32 0, i32 5
  %8 = load i8, ptr %7, align 4, !range !8
  %9 = icmp eq i8 %8, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 16384) #10, !srcloc !9
  br label %12

11:                                               ; preds = %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 4194304) #10, !srcloc !9
  br label %12

12:                                               ; preds = %11, %10
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr i8, ptr %13, i32 356
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #10
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %15, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.fsl_qspi, ptr %3, i32 0, i32 9
  tail call void @cpu_latency_qos_remove_request(ptr noundef %21) #10
  br label %22

22:                                               ; preds = %20, %12
  %23 = getelementptr inbounds %struct.fsl_qspi, ptr %3, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  tail call void @clk_disable(ptr noundef %24) #10
  tail call void @clk_unprepare(ptr noundef %24) #10
  %25 = getelementptr inbounds %struct.fsl_qspi, ptr %3, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  tail call void @clk_disable(ptr noundef %26) #10
  tail call void @clk_unprepare(ptr noundef %26) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fsl_qspi_clk_prep_enable(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.fsl_qspi, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @clk_prepare(ptr noundef %3) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %31

6:                                                ; preds = %1
  %7 = tail call i32 @clk_enable(ptr noundef %3) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @clk_unprepare(ptr noundef %3) #10
  br label %31

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.fsl_qspi, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @clk_prepare(ptr noundef %12) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = tail call i32 @clk_enable(ptr noundef %12) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  tail call void @clk_unprepare(ptr noundef %12) #10
  br label %19

19:                                               ; preds = %18, %10
  %20 = phi i32 [ %16, %18 ], [ %13, %10 ]
  %21 = load ptr, ptr %2, align 4
  tail call void @clk_disable(ptr noundef %21) #10
  tail call void @clk_unprepare(ptr noundef %21) #10
  br label %31

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.fsl_qspi, ptr %0, i32 0, i32 7
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %24, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.fsl_qspi, ptr %0, i32 0, i32 9
  tail call void @cpu_latency_qos_add_request(ptr noundef %30, i32 noundef 0) #10
  br label %31

31:                                               ; preds = %29, %22, %19, %9, %1
  %32 = phi i32 [ %20, %19 ], [ 0, %29 ], [ 0, %22 ], [ %7, %9 ], [ %4, %1 ]
  ret i32 %32
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_qspi_irq_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 352
  %5 = getelementptr inbounds %struct.fsl_qspi, ptr %1, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %6, i32 0, i32 5
  %8 = load i8, ptr %7, align 4, !range !8
  %9 = icmp eq i8 %8, 0
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #10
  br i1 %9, label %12, label %11

11:                                               ; preds = %2
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  br label %14

12:                                               ; preds = %2
  %13 = tail call i32 @llvm.bswap.i32(i32 %10) #10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !11
  br label %14

14:                                               ; preds = %12, %11
  %15 = phi i32 [ %10, %11 ], [ %13, %12 ]
  %16 = load ptr, ptr %1, align 4
  %17 = getelementptr i8, ptr %16, i32 352
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %18, i32 0, i32 5
  %20 = load i8, ptr %19, align 4, !range !8
  %21 = icmp eq i8 %20, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #10, !srcloc !9
  br label %25

23:                                               ; preds = %14
  %24 = tail call i32 @llvm.bswap.i32(i32 %15) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %24) #10, !srcloc !9
  br label %25

25:                                               ; preds = %23, %22
  %26 = and i32 %15, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.fsl_qspi, ptr %1, i32 0, i32 6
  tail call void @complete(ptr noundef %29) #10
  br label %30

30:                                               ; preds = %28, %25
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fsl_qspi_default_setup(ptr noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.fsl_qspi, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.fsl_qspi, ptr %0, i32 0, i32 9
  tail call void @cpu_latency_qos_remove_request(ptr noundef %10) #10
  br label %11

11:                                               ; preds = %9, %1
  %12 = getelementptr inbounds %struct.fsl_qspi, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %13) #10
  tail call void @clk_unprepare(ptr noundef %13) #10
  %14 = getelementptr inbounds %struct.fsl_qspi, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %15) #10
  tail call void @clk_unprepare(ptr noundef %15) #10
  %16 = load ptr, ptr %12, align 4
  %17 = tail call i32 @clk_set_rate(ptr noundef %16, i32 noundef 66000000) #10
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %195

19:                                               ; preds = %11
  %20 = tail call fastcc i32 @fsl_qspi_clk_prep_enable(ptr noundef %0)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %195

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %23, i32 0, i32 5
  %25 = load i8, ptr %24, align 4, !range !8
  %26 = icmp eq i8 %25, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 3) #10, !srcloc !9
  br label %29

28:                                               ; preds = %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 50331648) #10, !srcloc !9
  br label %29

29:                                               ; preds = %28, %27
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #10
  %31 = load ptr, ptr %3, align 4
  %32 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %31, i32 0, i32 5
  %33 = load i8, ptr %32, align 4, !range !8
  %34 = icmp eq i8 %33, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 999424) #10, !srcloc !9
  br label %37

36:                                               ; preds = %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 4198144) #10, !srcloc !9
  br label %37

37:                                               ; preds = %36, %35
  %38 = load ptr, ptr %3, align 4
  %39 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %38, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %62, label %43

43:                                               ; preds = %37
  %44 = getelementptr i8, ptr %2, i32 12
  %45 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %38, i32 0, i32 5
  %46 = load i8, ptr %45, align 4, !range !8
  %47 = icmp eq i8 %46, 0
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #10
  br i1 %47, label %50, label %49

49:                                               ; preds = %43
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  br label %52

50:                                               ; preds = %43
  %51 = tail call i32 @llvm.bswap.i32(i32 %48) #10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !11
  br label %52

52:                                               ; preds = %50, %49
  %53 = phi i32 [ %48, %49 ], [ %51, %50 ]
  %54 = and i32 %53, -196609
  %55 = load ptr, ptr %3, align 4
  %56 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %55, i32 0, i32 5
  %57 = load i8, ptr %56, align 4, !range !8
  %58 = icmp eq i8 %57, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  br i1 %58, label %60, label %59

59:                                               ; preds = %52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %54) #10, !srcloc !9
  br label %62

60:                                               ; preds = %52
  %61 = tail call i32 @llvm.bswap.i32(i32 %54) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %61) #10, !srcloc !9
  br label %62

62:                                               ; preds = %60, %59, %37
  %63 = getelementptr i8, ptr %2, i32 264
  %64 = load ptr, ptr %3, align 4
  %65 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %64, i32 0, i32 5
  %66 = load i8, ptr %65, align 4, !range !8
  %67 = icmp eq i8 %66, 0
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #10
  br i1 %67, label %70, label %69

69:                                               ; preds = %62
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  br label %72

70:                                               ; preds = %62
  %71 = tail call i32 @llvm.bswap.i32(i32 %68) #10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !11
  br label %72

72:                                               ; preds = %70, %69
  %73 = phi i32 [ %68, %69 ], [ %71, %70 ]
  %74 = and i32 %73, -458850
  %75 = load ptr, ptr %3, align 4
  %76 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %75, i32 0, i32 5
  %77 = load i8, ptr %76, align 4, !range !8
  %78 = icmp eq i8 %77, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  br i1 %78, label %80, label %79

79:                                               ; preds = %72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %74) #10, !srcloc !9
  br label %82

80:                                               ; preds = %72
  %81 = tail call i32 @llvm.bswap.i32(i32 %74) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %81) #10, !srcloc !9
  br label %82

82:                                               ; preds = %80, %79
  %83 = getelementptr i8, ptr %2, i32 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 0) #10
  %84 = getelementptr i8, ptr %2, i32 52
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 0) #10
  %85 = getelementptr i8, ptr %2, i32 56
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 0) #10
  %86 = load ptr, ptr %0, align 4
  %87 = getelementptr i8, ptr %86, i32 32
  %88 = load ptr, ptr %3, align 4
  %89 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %88, i32 0, i32 5
  %90 = load i8, ptr %89, align 4, !range !8
  %91 = icmp eq i8 %90, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  br i1 %91, label %93, label %92

92:                                               ; preds = %82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 61440) #10, !srcloc !9
  br label %94

93:                                               ; preds = %82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 15728640) #10, !srcloc !9
  br label %94

94:                                               ; preds = %93, %92
  %95 = getelementptr i8, ptr %2, i32 272
  %96 = load ptr, ptr %3, align 4
  %97 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %96, i32 0, i32 5
  %98 = load i8, ptr %97, align 4, !range !8
  %99 = icmp eq i8 %98, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  br i1 %99, label %101, label %100

100:                                              ; preds = %94
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 31) #10, !srcloc !9
  br label %102

101:                                              ; preds = %94
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 520093696) #10, !srcloc !9
  br label %102

102:                                              ; preds = %101, %100
  %103 = load ptr, ptr %3, align 4
  %104 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %103, i32 0, i32 3
  %105 = load i32, ptr %104, align 4
  %106 = shl i32 %105, 5
  %107 = and i32 %106, 2147483392
  %108 = or i32 %107, -2147483648
  %109 = getelementptr i8, ptr %2, i32 28
  %110 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %103, i32 0, i32 5
  %111 = load i8, ptr %110, align 4, !range !8
  %112 = icmp eq i8 %111, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  br i1 %112, label %114, label %113

113:                                              ; preds = %102
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %108) #10, !srcloc !9
  br label %116

114:                                              ; preds = %102
  %115 = tail call i32 @llvm.bswap.i32(i32 %108) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %115) #10, !srcloc !9
  br label %116

116:                                              ; preds = %114, %113
  %117 = load ptr, ptr %3, align 4
  %118 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %117, i32 0, i32 4
  %119 = load i32, ptr %118, align 4
  %120 = and i32 %119, 16
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.fsl_qspi, ptr %0, i32 0, i32 2
  %124 = load i32, ptr %123, align 4
  br label %125

125:                                              ; preds = %122, %116
  %126 = phi i32 [ %124, %122 ], [ 0, %116 ]
  %127 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %117, i32 0, i32 3
  %128 = load i32, ptr %127, align 4
  %129 = add i32 %128, %126
  %130 = getelementptr i8, ptr %2, i32 384
  %131 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %117, i32 0, i32 5
  %132 = load i8, ptr %131, align 4, !range !8
  %133 = icmp eq i8 %132, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  br i1 %133, label %135, label %134

134:                                              ; preds = %125
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %129) #10, !srcloc !9
  br label %137

135:                                              ; preds = %125
  %136 = tail call i32 @llvm.bswap.i32(i32 %129) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %136) #10, !srcloc !9
  br label %137

137:                                              ; preds = %135, %134
  %138 = load ptr, ptr %3, align 4
  %139 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %138, i32 0, i32 3
  %140 = load i32, ptr %139, align 4
  %141 = shl i32 %140, 1
  %142 = add i32 %141, %126
  %143 = getelementptr i8, ptr %2, i32 388
  %144 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %138, i32 0, i32 5
  %145 = load i8, ptr %144, align 4, !range !8
  %146 = icmp eq i8 %145, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  br i1 %146, label %148, label %147

147:                                              ; preds = %137
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %142) #10, !srcloc !9
  br label %150

148:                                              ; preds = %137
  %149 = tail call i32 @llvm.bswap.i32(i32 %142) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %149) #10, !srcloc !9
  br label %150

150:                                              ; preds = %148, %147
  %151 = load ptr, ptr %3, align 4
  %152 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %151, i32 0, i32 3
  %153 = load i32, ptr %152, align 4
  %154 = mul i32 %153, 3
  %155 = add i32 %154, %126
  %156 = getelementptr i8, ptr %2, i32 392
  %157 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %151, i32 0, i32 5
  %158 = load i8, ptr %157, align 4, !range !8
  %159 = icmp eq i8 %158, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  br i1 %159, label %161, label %160

160:                                              ; preds = %150
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %156, i32 %155) #10, !srcloc !9
  br label %163

161:                                              ; preds = %150
  %162 = tail call i32 @llvm.bswap.i32(i32 %155) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %156, i32 %162) #10, !srcloc !9
  br label %163

163:                                              ; preds = %161, %160
  %164 = load ptr, ptr %3, align 4
  %165 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %164, i32 0, i32 3
  %166 = load i32, ptr %165, align 4
  %167 = shl i32 %166, 2
  %168 = add i32 %167, %126
  %169 = getelementptr i8, ptr %2, i32 396
  %170 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %164, i32 0, i32 5
  %171 = load i8, ptr %170, align 4, !range !8
  %172 = icmp eq i8 %171, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  br i1 %172, label %174, label %173

173:                                              ; preds = %163
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %169, i32 %168) #10, !srcloc !9
  br label %176

174:                                              ; preds = %163
  %175 = tail call i32 @llvm.bswap.i32(i32 %168) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %169, i32 %175) #10, !srcloc !9
  br label %176

176:                                              ; preds = %174, %173
  %177 = getelementptr inbounds %struct.fsl_qspi, ptr %0, i32 0, i32 10
  store i32 -1, ptr %177, align 4
  %178 = load ptr, ptr %3, align 4
  %179 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %178, i32 0, i32 5
  %180 = load i8, ptr %179, align 4, !range !8
  %181 = icmp eq i8 %180, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  br i1 %181, label %183, label %182

182:                                              ; preds = %176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 983052) #10, !srcloc !9
  br label %184

183:                                              ; preds = %176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 201330432) #10, !srcloc !9
  br label %184

184:                                              ; preds = %183, %182
  %185 = load ptr, ptr %0, align 4
  %186 = getelementptr i8, ptr %185, i32 352
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %186, i32 -1) #10
  %187 = load ptr, ptr %0, align 4
  %188 = getelementptr i8, ptr %187, i32 356
  %189 = load ptr, ptr %3, align 4
  %190 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %189, i32 0, i32 5
  %191 = load i8, ptr %190, align 4, !range !8
  %192 = icmp eq i8 %191, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  br i1 %192, label %194, label %193

193:                                              ; preds = %184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %188, i32 1) #10, !srcloc !9
  br label %195

194:                                              ; preds = %184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %188, i32 16777216) #10, !srcloc !9
  br label %195

195:                                              ; preds = %194, %193, %19, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_add_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @fsl_qspi_adjust_op_size(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #6 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2
  %11 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.fsl_qspi, ptr %7, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  br i1 %10, label %15, label %19

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %14, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp ugt i32 %12, %17
  br i1 %18, label %29, label %31

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %14, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp ugt i32 %12, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %14, align 4
  %25 = add i32 %24, -4
  %26 = icmp ugt i32 %12, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = and i32 %12, -8
  br label %29

29:                                               ; preds = %27, %19, %15
  %30 = phi i32 [ %28, %27 ], [ %17, %15 ], [ %21, %19 ]
  store i32 %30, ptr %11, align 4
  br label %31

31:                                               ; preds = %29, %23, %15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @fsl_qspi_supports_op(ptr noundef %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.anon.66, ptr %1, i32 0, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = add i8 %9, -1
  %11 = icmp ult i8 %10, 4
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = sext i8 %10 to i32
  %14 = getelementptr inbounds [4 x i32], ptr @switch.table.fsl_qspi_supports_op.14, i32 0, i32 %13
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %12, %2
  %17 = phi i32 [ %15, %12 ], [ -524, %2 ]
  %18 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 1
  %19 = load i8, ptr %18, align 8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 1, i32 1
  %23 = load i8, ptr %22, align 1
  %24 = add i8 %23, -1
  %25 = icmp ult i8 %24, 4
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = sext i8 %24 to i32
  %28 = getelementptr inbounds [4 x i32], ptr @switch.table.fsl_qspi_supports_op.14, i32 0, i32 %27
  %29 = load i32, ptr %28, align 4
  br label %30

30:                                               ; preds = %26, %21
  %31 = phi i32 [ %29, %26 ], [ -524, %21 ]
  %32 = or i32 %31, %17
  br label %33

33:                                               ; preds = %30, %16
  %34 = phi i32 [ %32, %30 ], [ %17, %16 ]
  %35 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 2
  %36 = load i8, ptr %35, align 8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 2, i32 1
  %40 = load i8, ptr %39, align 1
  %41 = add i8 %40, -1
  %42 = icmp ult i8 %41, 4
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = sext i8 %41 to i32
  %45 = getelementptr inbounds [4 x i32], ptr @switch.table.fsl_qspi_supports_op.14, i32 0, i32 %44
  %46 = load i32, ptr %45, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = phi i32 [ %46, %43 ], [ -524, %38 ]
  %49 = or i32 %48, %34
  br label %50

50:                                               ; preds = %47, %33
  %51 = phi i32 [ %49, %47 ], [ %34, %33 ]
  %52 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3
  %57 = load i8, ptr %56, align 4
  %58 = add i8 %57, -1
  %59 = icmp ult i8 %58, 4
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = sext i8 %58 to i32
  %62 = getelementptr inbounds [4 x i32], ptr @switch.table.fsl_qspi_supports_op.14, i32 0, i32 %61
  %63 = load i32, ptr %62, align 4
  br label %64

64:                                               ; preds = %60, %55
  %65 = phi i32 [ %63, %60 ], [ -524, %55 ]
  %66 = or i32 %65, %51
  br label %67

67:                                               ; preds = %64, %50
  %68 = phi i32 [ %66, %64 ], [ %51, %50 ]
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %112

70:                                               ; preds = %67
  %71 = zext i8 %19 to i32
  %72 = zext i8 %36 to i16
  %73 = xor i1 %37, true
  %74 = zext i1 %73 to i32
  %75 = add nuw nsw i32 %74, %71
  %76 = icmp ne i32 %53, 0
  %77 = zext i1 %76 to i32
  %78 = add nuw nsw i32 %75, %77
  %79 = icmp ugt i32 %78, 6
  br i1 %79, label %112, label %80

80:                                               ; preds = %70
  br i1 %37, label %88, label %81

81:                                               ; preds = %80
  %82 = shl nuw nsw i16 %72, 3
  %83 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 2, i32 1
  %84 = load i8, ptr %83, align 1
  %85 = zext i8 %84 to i16
  %86 = udiv i16 %82, %85
  %87 = icmp ugt i16 %86, 64
  br i1 %87, label %112, label %88

88:                                               ; preds = %81, %80
  %89 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 2
  %90 = load i32, ptr %89, align 4
  switch i32 %90, label %110 [
    i32 1, label %91
    i32 2, label %104
  ]

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.fsl_qspi, ptr %7, i32 0, i32 7
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %93, i32 0, i32 3
  %95 = load i32, ptr %94, align 4
  %96 = icmp ugt i32 %53, %95
  br i1 %96, label %112, label %97

97:                                               ; preds = %91
  %98 = load i32, ptr %93, align 4
  %99 = add i32 %98, -4
  %100 = icmp ule i32 %53, %99
  %101 = and i32 %53, 7
  %102 = icmp eq i32 %101, 0
  %103 = or i1 %102, %100
  br i1 %103, label %110, label %112

104:                                              ; preds = %88
  %105 = getelementptr inbounds %struct.fsl_qspi, ptr %7, i32 0, i32 7
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %106, i32 0, i32 1
  %108 = load i32, ptr %107, align 4
  %109 = icmp ugt i32 %53, %108
  br i1 %109, label %112, label %110

110:                                              ; preds = %104, %97, %88
  %111 = tail call zeroext i1 @spi_mem_default_supports_op(ptr noundef %0, ptr noundef %1) #10
  br label %112

112:                                              ; preds = %110, %104, %97, %91, %81, %70, %67
  %113 = phi i1 [ %111, %110 ], [ false, %67 ], [ false, %70 ], [ false, %81 ], [ false, %97 ], [ false, %91 ], [ false, %104 ]
  ret i1 %113
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_qspi_exec_op(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.spi_device, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.fsl_qspi, ptr %10, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.fsl_qspi, ptr %10, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %16) #10
  %17 = getelementptr i8, ptr %11, i32 348
  %18 = load ptr, ptr %12, align 4
  %19 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %18, i32 0, i32 5
  %20 = load i8, ptr %19, align 4, !range !8
  %21 = icmp eq i8 %20, 0
  %22 = select i1 %21, i32 100663296, i32 6
  %23 = tail call i64 @ktime_get() #10
  %24 = add i64 %23, 1000000
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !13
  %26 = and i32 %25, %22
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %33, %2
  %29 = tail call i64 @ktime_get() #10
  %30 = icmp sgt i64 %29, %24
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  br label %37

33:                                               ; preds = %28
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #10
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !13
  %35 = and i32 %34, %22
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %28

37:                                               ; preds = %33, %31, %2
  %38 = load ptr, ptr %0, align 4
  %39 = getelementptr inbounds %struct.fsl_qspi, ptr %10, i32 0, i32 10
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.spi_device, ptr %38, i32 0, i32 4
  %42 = load i8, ptr %41, align 4
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %73, label %45

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.spi_device, ptr %38, i32 0, i32 3
  %47 = load i32, ptr %46, align 8
  %48 = load ptr, ptr %12, align 4
  %49 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %48, i32 0, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 2
  %52 = icmp eq i32 %51, 0
  %53 = shl i32 %47, 2
  %54 = select i1 %52, i32 %47, i32 %53
  %55 = and i32 %50, 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %45
  %58 = getelementptr inbounds %struct.fsl_qspi, ptr %10, i32 0, i32 9
  tail call void @cpu_latency_qos_remove_request(ptr noundef %58) #10
  br label %59

59:                                               ; preds = %57, %45
  %60 = getelementptr inbounds %struct.fsl_qspi, ptr %10, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  tail call void @clk_disable(ptr noundef %61) #10
  tail call void @clk_unprepare(ptr noundef %61) #10
  %62 = getelementptr inbounds %struct.fsl_qspi, ptr %10, i32 0, i32 4
  %63 = load ptr, ptr %62, align 4
  tail call void @clk_disable(ptr noundef %63) #10
  tail call void @clk_unprepare(ptr noundef %63) #10
  %64 = load ptr, ptr %60, align 4
  %65 = tail call i32 @clk_set_rate(ptr noundef %64, i32 noundef %54) #10
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %59
  %68 = tail call fastcc i32 @fsl_qspi_clk_prep_enable(ptr noundef %10) #10
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i8, ptr %41, align 4
  %72 = zext i8 %71 to i32
  store i32 %72, ptr %39, align 4
  tail call fastcc void @fsl_qspi_invalidate(ptr noundef %10) #10
  br label %73

73:                                               ; preds = %70, %67, %59, %37
  %74 = load ptr, ptr %12, align 4
  %75 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %74, i32 0, i32 4
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, 16
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.fsl_qspi, ptr %10, i32 0, i32 2
  %81 = load i32, ptr %80, align 4
  br label %82

82:                                               ; preds = %79, %73
  %83 = phi i32 [ %81, %79 ], [ 0, %73 ]
  %84 = load i32, ptr %39, align 4
  %85 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %74, i32 0, i32 3
  %86 = load i32, ptr %85, align 4
  %87 = mul i32 %86, %84
  %88 = add i32 %87, %83
  %89 = getelementptr i8, ptr %11, i32 256
  %90 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %74, i32 0, i32 5
  %91 = load i8, ptr %90, align 4, !range !8
  %92 = icmp eq i8 %91, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  br i1 %92, label %94, label %93

93:                                               ; preds = %82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %88) #10, !srcloc !9
  br label %96

94:                                               ; preds = %82
  %95 = tail call i32 @llvm.bswap.i32(i32 %88) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %95) #10, !srcloc !9
  br label %96

96:                                               ; preds = %94, %93
  %97 = load ptr, ptr %12, align 4
  %98 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %97, i32 0, i32 5
  %99 = load i8, ptr %98, align 4, !range !8
  %100 = icmp eq i8 %99, 0
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #10
  br i1 %100, label %103, label %102

102:                                              ; preds = %96
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  br label %105

103:                                              ; preds = %96
  %104 = tail call i32 @llvm.bswap.i32(i32 %101) #10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !11
  br label %105

105:                                              ; preds = %103, %102
  %106 = phi i32 [ %101, %102 ], [ %104, %103 ]
  %107 = or i32 %106, 3072
  %108 = load ptr, ptr %12, align 4
  %109 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %108, i32 0, i32 5
  %110 = load i8, ptr %109, align 4, !range !8
  %111 = icmp eq i8 %110, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  br i1 %111, label %113, label %112

112:                                              ; preds = %105
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %107) #10, !srcloc !9
  br label %115

113:                                              ; preds = %105
  %114 = tail call i32 @llvm.bswap.i32(i32 %107) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %114) #10, !srcloc !9
  br label %115

115:                                              ; preds = %113, %112
  %116 = getelementptr i8, ptr %11, i32 364
  %117 = load ptr, ptr %12, align 4
  %118 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %117, i32 0, i32 5
  %119 = load i8, ptr %118, align 4, !range !8
  %120 = icmp eq i8 %119, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  br i1 %120, label %122, label %121

121:                                              ; preds = %115
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 257) #10, !srcloc !9
  br label %123

122:                                              ; preds = %115
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 16842752) #10, !srcloc !9
  br label %123

123:                                              ; preds = %122, %121
  %124 = getelementptr i8, ptr %11, i32 16
  %125 = load ptr, ptr %12, align 4
  %126 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %125, i32 0, i32 5
  %127 = load i8, ptr %126, align 4, !range !8
  %128 = icmp eq i8 %127, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  br i1 %128, label %130, label %129

129:                                              ; preds = %123
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 %15) #10, !srcloc !9
  br label %132

130:                                              ; preds = %123
  %131 = tail call i32 @llvm.bswap.i32(i32 %15) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 %131) #10, !srcloc !9
  br label %132

132:                                              ; preds = %130, %129
  %133 = getelementptr i8, ptr %11, i32 20
  %134 = load ptr, ptr %12, align 4
  %135 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %134, i32 0, i32 5
  %136 = load i8, ptr %135, align 4, !range !8
  %137 = icmp eq i8 %136, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  br i1 %137, label %139, label %138

138:                                              ; preds = %132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %15) #10, !srcloc !9
  br label %141

139:                                              ; preds = %132
  %140 = tail call i32 @llvm.bswap.i32(i32 %15) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %140) #10, !srcloc !9
  br label %141

141:                                              ; preds = %139, %138
  %142 = getelementptr i8, ptr %11, i32 24
  %143 = load ptr, ptr %12, align 4
  %144 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %143, i32 0, i32 5
  %145 = load i8, ptr %144, align 4, !range !8
  %146 = icmp eq i8 %145, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  br i1 %146, label %148, label %147

147:                                              ; preds = %141
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 %15) #10, !srcloc !9
  br label %150

148:                                              ; preds = %141
  %149 = tail call i32 @llvm.bswap.i32(i32 %15) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 %149) #10, !srcloc !9
  br label %150

150:                                              ; preds = %148, %147
  %151 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  %152 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %152, i8 0, i32 12, i1 false) #10
  %153 = getelementptr inbounds %struct.anon.66, ptr %1, i32 0, i32 1
  %154 = load i8, ptr %153, align 1
  %155 = zext i8 %154 to i32
  %156 = icmp eq i8 %154, 0
  %157 = tail call i32 @llvm.ctlz.i32(i32 %155, i1 false) #10, !range !15
  %158 = mul nsw i32 %157, -256
  %159 = add nsw i32 %158, 7936
  %160 = select i1 %156, i32 -1280, i32 %159
  %161 = getelementptr inbounds %struct.anon.66, ptr %1, i32 0, i32 3
  %162 = load i16, ptr %161, align 4
  %163 = or i16 %162, 1024
  %164 = zext i16 %163 to i32
  %165 = or i32 %160, %164
  store i32 %165, ptr %5, align 4
  %166 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 1
  %167 = load i8, ptr %166, align 8
  %168 = zext i8 %167 to i32
  %169 = icmp eq i8 %167, 0
  br i1 %169, label %203, label %170

170:                                              ; preds = %150
  %171 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 1, i32 3
  %172 = load i64, ptr %171, align 8
  %173 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 1, i32 1
  %174 = load i8, ptr %173, align 1
  %175 = zext i8 %174 to i32
  %176 = icmp eq i8 %174, 0
  %177 = tail call i32 @llvm.ctlz.i32(i32 %175, i1 false) #10, !range !15
  %178 = mul nsw i32 %177, -256
  %179 = add nsw i32 %178, 7936
  %180 = or i32 %179, 4096
  %181 = select i1 %176, i32 -256, i32 %180
  br label %182

182:                                              ; preds = %182, %170
  %183 = phi i32 [ 0, %170 ], [ %201, %182 ]
  %184 = phi i32 [ 1, %170 ], [ %200, %182 ]
  %185 = xor i32 %183, -1
  %186 = add nsw i32 %185, %168
  %187 = shl i32 %186, 3
  %188 = zext i32 %187 to i64
  %189 = lshr i64 %172, %188
  %190 = trunc i64 %189 to i32
  %191 = and i32 %190, 255
  %192 = or i32 %191, %181
  %193 = shl i32 %184, 4
  %194 = and i32 %193, 16
  %195 = shl i32 %192, %194
  %196 = lshr i32 %184, 1
  %197 = getelementptr [4 x i32], ptr %5, i32 0, i32 %196
  %198 = load i32, ptr %197, align 4
  %199 = or i32 %195, %198
  store i32 %199, ptr %197, align 4
  %200 = add nuw nsw i32 %184, 1
  %201 = add nuw nsw i32 %183, 1
  %202 = icmp eq i32 %201, %168
  br i1 %202, label %203, label %182

203:                                              ; preds = %182, %150
  %204 = phi i32 [ 1, %150 ], [ %200, %182 ]
  %205 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 2
  %206 = load i8, ptr %205, align 8
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %234, label %208

208:                                              ; preds = %203
  %209 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 2, i32 1
  %210 = load i8, ptr %209, align 1
  %211 = zext i8 %210 to i32
  %212 = icmp eq i8 %210, 0
  %213 = tail call i32 @llvm.ctlz.i32(i32 %211, i1 false) #10, !range !15
  %214 = mul nsw i32 %213, -256
  %215 = add nsw i32 %214, 7936
  %216 = select i1 %212, i32 -3328, i32 %215
  %217 = zext i8 %206 to i16
  %218 = shl nuw nsw i16 %217, 3
  %219 = zext i8 %210 to i16
  %220 = udiv i16 %218, %219
  %221 = or i16 %220, 3072
  %222 = zext i16 %221 to i32
  %223 = or i32 %216, %222
  %224 = freeze i32 %204
  %225 = sdiv i32 %224, 2
  %226 = mul i32 %225, 2
  %227 = sub i32 %224, %226
  %228 = shl nsw i32 %227, 4
  %229 = shl i32 %223, %228
  %230 = getelementptr [4 x i32], ptr %5, i32 0, i32 %225
  %231 = load i32, ptr %230, align 4
  %232 = or i32 %229, %231
  store i32 %232, ptr %230, align 4
  %233 = add i32 %204, 1
  br label %234

234:                                              ; preds = %208, %203
  %235 = phi i32 [ %233, %208 ], [ %204, %203 ]
  %236 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 3
  %237 = load i32, ptr %236, align 4
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %262, label %239

239:                                              ; preds = %234
  %240 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3
  %241 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 2
  %242 = load i32, ptr %241, align 4
  %243 = icmp eq i32 %242, 1
  %244 = select i1 %243, i32 7168, i32 8192
  %245 = load i8, ptr %240, align 4
  %246 = zext i8 %245 to i32
  %247 = icmp eq i8 %245, 0
  %248 = tail call i32 @llvm.ctlz.i32(i32 %246, i1 false) #10, !range !15
  %249 = mul nsw i32 %248, -256
  %250 = add nsw i32 %249, 7936
  %251 = select i1 %247, i32 -256, i32 %250
  %252 = or i32 %251, %244
  %253 = freeze i32 %235
  %254 = sdiv i32 %253, 2
  %255 = mul i32 %254, 2
  %256 = sub i32 %253, %255
  %257 = shl nsw i32 %256, 4
  %258 = shl i32 %252, %257
  %259 = getelementptr [4 x i32], ptr %5, i32 0, i32 %254
  %260 = load i32, ptr %259, align 4
  %261 = or i32 %258, %260
  store i32 %261, ptr %259, align 4
  br label %262

262:                                              ; preds = %239, %234
  %263 = getelementptr i8, ptr %151, i32 768
  %264 = load ptr, ptr %12, align 4
  %265 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %264, i32 0, i32 5
  %266 = load i8, ptr %265, align 4, !range !8
  %267 = icmp eq i8 %266, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  br i1 %267, label %269, label %268

268:                                              ; preds = %262
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %263, i32 1525701360) #10, !srcloc !9
  br label %270

269:                                              ; preds = %262
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %263, i32 -262475686) #10, !srcloc !9
  br label %270

270:                                              ; preds = %269, %268
  %271 = load ptr, ptr %10, align 4
  %272 = getelementptr i8, ptr %271, i32 772
  %273 = load ptr, ptr %12, align 4
  %274 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %273, i32 0, i32 5
  %275 = load i8, ptr %274, align 4, !range !8
  %276 = icmp eq i8 %275, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  br i1 %276, label %278, label %277

277:                                              ; preds = %270
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %272, i32 2) #10, !srcloc !9
  br label %279

278:                                              ; preds = %270
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %272, i32 33554432) #10, !srcloc !9
  br label %279

279:                                              ; preds = %278, %277
  %280 = load i32, ptr %5, align 4
  %281 = getelementptr i8, ptr %151, i32 1024
  %282 = load ptr, ptr %12, align 4
  %283 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %282, i32 0, i32 5
  %284 = load i8, ptr %283, align 4, !range !8
  %285 = icmp eq i8 %284, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  br i1 %285, label %287, label %286

286:                                              ; preds = %279
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %281, i32 %280) #10, !srcloc !9
  br label %289

287:                                              ; preds = %279
  %288 = tail call i32 @llvm.bswap.i32(i32 %280) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %281, i32 %288) #10, !srcloc !9
  br label %289

289:                                              ; preds = %287, %286
  %290 = load i32, ptr %152, align 4
  %291 = getelementptr i8, ptr %151, i32 1028
  %292 = load ptr, ptr %12, align 4
  %293 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %292, i32 0, i32 5
  %294 = load i8, ptr %293, align 4, !range !8
  %295 = icmp eq i8 %294, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  br i1 %295, label %297, label %296

296:                                              ; preds = %289
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %291, i32 %290) #10, !srcloc !9
  br label %299

297:                                              ; preds = %289
  %298 = tail call i32 @llvm.bswap.i32(i32 %290) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %291, i32 %298) #10, !srcloc !9
  br label %299

299:                                              ; preds = %297, %296
  %300 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 2
  %301 = load i32, ptr %300, align 4
  %302 = getelementptr i8, ptr %151, i32 1032
  %303 = load ptr, ptr %12, align 4
  %304 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %303, i32 0, i32 5
  %305 = load i8, ptr %304, align 4, !range !8
  %306 = icmp eq i8 %305, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  br i1 %306, label %308, label %307

307:                                              ; preds = %299
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %302, i32 %301) #10, !srcloc !9
  br label %310

308:                                              ; preds = %299
  %309 = tail call i32 @llvm.bswap.i32(i32 %301) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %302, i32 %309) #10, !srcloc !9
  br label %310

310:                                              ; preds = %308, %307
  %311 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 3
  %312 = load i32, ptr %311, align 4
  %313 = getelementptr i8, ptr %151, i32 1036
  %314 = load ptr, ptr %12, align 4
  %315 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %314, i32 0, i32 5
  %316 = load i8, ptr %315, align 4, !range !8
  %317 = icmp eq i8 %316, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  br i1 %317, label %319, label %318

318:                                              ; preds = %310
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %313, i32 %312) #10, !srcloc !9
  br label %321

319:                                              ; preds = %310
  %320 = tail call i32 @llvm.bswap.i32(i32 %312) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %313, i32 %320) #10, !srcloc !9
  br label %321

321:                                              ; preds = %319, %318
  %322 = load ptr, ptr %10, align 4
  %323 = getelementptr i8, ptr %322, i32 768
  %324 = load ptr, ptr %12, align 4
  %325 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %324, i32 0, i32 5
  %326 = load i8, ptr %325, align 4, !range !8
  %327 = icmp eq i8 %326, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  br i1 %327, label %329, label %328

328:                                              ; preds = %321
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %323, i32 1525701360) #10, !srcloc !9
  br label %330

329:                                              ; preds = %321
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %323, i32 -262475686) #10, !srcloc !9
  br label %330

330:                                              ; preds = %329, %328
  %331 = load ptr, ptr %10, align 4
  %332 = getelementptr i8, ptr %331, i32 772
  %333 = load ptr, ptr %12, align 4
  %334 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %333, i32 0, i32 5
  %335 = load i8, ptr %334, align 4, !range !8
  %336 = icmp eq i8 %335, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  br i1 %336, label %338, label %337

337:                                              ; preds = %330
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %332, i32 1) #10, !srcloc !9
  br label %339

338:                                              ; preds = %330
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %332, i32 16777216) #10, !srcloc !9
  br label %339

339:                                              ; preds = %338, %337
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  %340 = load i32, ptr %236, align 4
  %341 = load ptr, ptr %12, align 4
  %342 = load i32, ptr %341, align 4
  %343 = add i32 %342, -4
  %344 = icmp ugt i32 %340, %343
  br i1 %344, label %345, label %359

345:                                              ; preds = %339
  %346 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 2
  %347 = load i32, ptr %346, align 4
  %348 = icmp eq i32 %347, 1
  br i1 %348, label %349, label %359

349:                                              ; preds = %345
  %350 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 4
  %351 = load ptr, ptr %350, align 4
  %352 = getelementptr inbounds %struct.fsl_qspi, ptr %10, i32 0, i32 1
  %353 = load ptr, ptr %352, align 4
  %354 = load i32, ptr %39, align 4
  %355 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %341, i32 0, i32 3
  %356 = load i32, ptr %355, align 4
  %357 = mul i32 %356, %354
  %358 = getelementptr i8, ptr %353, i32 %357
  tail call void @mmiocpy(ptr noundef %351, ptr noundef %358, i32 noundef %340) #10
  br label %530

359:                                              ; preds = %345, %339
  %360 = getelementptr i8, ptr %11, i32 272
  %361 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %341, i32 0, i32 5
  %362 = load i8, ptr %361, align 4, !range !8
  %363 = icmp eq i8 %362, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  br i1 %363, label %365, label %364

364:                                              ; preds = %359
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %360, i32 287) #10, !srcloc !9
  br label %366

365:                                              ; preds = %359
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %360, i32 520159232) #10, !srcloc !9
  br label %366

366:                                              ; preds = %365, %364
  %367 = load i32, ptr %236, align 4
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %443, label %369

369:                                              ; preds = %366
  %370 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 2
  %371 = load i32, ptr %370, align 4
  %372 = icmp eq i32 %371, 2
  br i1 %372, label %373, label %443

373:                                              ; preds = %369
  %374 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  %375 = icmp ult i32 %367, 4
  br i1 %375, label %376, label %377

376:                                              ; preds = %373
  store i32 0, ptr %4, align 4
  br label %405

377:                                              ; preds = %373
  %378 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 4
  %379 = getelementptr i8, ptr %374, i32 340
  br label %380

380:                                              ; preds = %398, %377
  %381 = phi i32 [ 0, %377 ], [ %399, %398 ]
  %382 = load ptr, ptr %378, align 4
  %383 = getelementptr i8, ptr %382, i32 %381
  %384 = load i32, ptr %383, align 1
  %385 = load ptr, ptr %12, align 4
  %386 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %385, i32 0, i32 4
  %387 = load i32, ptr %386, align 4
  %388 = and i32 %387, 1
  %389 = icmp eq i32 %388, 0
  %390 = tail call i32 @llvm.bswap.i32(i32 %384) #10
  %391 = select i1 %389, i32 %384, i32 %390
  %392 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %385, i32 0, i32 5
  %393 = load i8, ptr %392, align 4, !range !8
  %394 = icmp eq i8 %393, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  br i1 %394, label %396, label %395

395:                                              ; preds = %380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %379, i32 %391) #10, !srcloc !9
  br label %398

396:                                              ; preds = %380
  %397 = tail call i32 @llvm.bswap.i32(i32 %391) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %379, i32 %397) #10, !srcloc !9
  br label %398

398:                                              ; preds = %396, %395
  %399 = add nuw i32 %381, 4
  %400 = load i32, ptr %236, align 4
  %401 = and i32 %400, -4
  %402 = icmp ult i32 %399, %401
  br i1 %402, label %380, label %403

403:                                              ; preds = %398
  store i32 %391, ptr %4, align 4
  %404 = icmp ugt i32 %400, %399
  br i1 %404, label %405, label %427

405:                                              ; preds = %403, %376
  %406 = phi i32 [ %367, %376 ], [ %400, %403 ]
  %407 = phi i32 [ 0, %376 ], [ %399, %403 ]
  %408 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 4
  %409 = load ptr, ptr %408, align 4
  %410 = getelementptr i8, ptr %409, i32 %407
  %411 = sub i32 %406, %407
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %4, ptr align 1 %410, i32 %411, i1 false) #10
  %412 = load i32, ptr %4, align 4
  %413 = load ptr, ptr %12, align 4
  %414 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %413, i32 0, i32 4
  %415 = load i32, ptr %414, align 4
  %416 = and i32 %415, 1
  %417 = icmp eq i32 %416, 0
  %418 = tail call i32 @llvm.bswap.i32(i32 %412) #10
  %419 = select i1 %417, i32 %412, i32 %418
  %420 = getelementptr i8, ptr %374, i32 340
  %421 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %413, i32 0, i32 5
  %422 = load i8, ptr %421, align 4, !range !8
  %423 = icmp eq i8 %422, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  br i1 %423, label %425, label %424

424:                                              ; preds = %405
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %420, i32 %419) #10, !srcloc !9
  br label %427

425:                                              ; preds = %405
  %426 = tail call i32 @llvm.bswap.i32(i32 %419) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %420, i32 %426) #10, !srcloc !9
  br label %427

427:                                              ; preds = %425, %424, %403
  %428 = load ptr, ptr %12, align 4
  %429 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %428, i32 0, i32 4
  %430 = load i32, ptr %429, align 4
  %431 = and i32 %430, 4
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %442, label %433

433:                                              ; preds = %427
  %434 = load i32, ptr %236, align 4
  %435 = icmp slt i32 %434, 16
  br i1 %435, label %436, label %442

436:                                              ; preds = %433
  %437 = getelementptr i8, ptr %374, i32 340
  br label %438

438:                                              ; preds = %438, %436
  %439 = phi i32 [ %434, %436 ], [ %441, %438 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %437, i32 0) #10
  %440 = icmp slt i32 %439, 12
  %441 = add nsw i32 %439, 4
  br i1 %440, label %438, label %442

442:                                              ; preds = %438, %433, %427
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br label %443

443:                                              ; preds = %442, %369, %366
  %444 = load ptr, ptr %10, align 4
  %445 = getelementptr inbounds %struct.fsl_qspi, ptr %10, i32 0, i32 6
  store i32 0, ptr %445, align 4
  %446 = getelementptr inbounds %struct.fsl_qspi, ptr %10, i32 0, i32 6, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %446, ptr noundef nonnull @.str.9, ptr noundef nonnull @init_completion.__key) #10
  %447 = load i32, ptr %236, align 4
  %448 = or i32 %447, 251658240
  %449 = getelementptr i8, ptr %444, i32 8
  %450 = load ptr, ptr %12, align 4
  %451 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %450, i32 0, i32 5
  %452 = load i8, ptr %451, align 4, !range !8
  %453 = icmp eq i8 %452, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  br i1 %453, label %455, label %454

454:                                              ; preds = %443
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %449, i32 %448) #10, !srcloc !9
  br label %457

455:                                              ; preds = %443
  %456 = tail call i32 @llvm.bswap.i32(i32 %448) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %449, i32 %456) #10, !srcloc !9
  br label %457

457:                                              ; preds = %455, %454
  %458 = tail call i32 @wait_for_completion_timeout(ptr noundef %445, i32 noundef 100) #10
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %530, label %460

460:                                              ; preds = %457
  %461 = load i32, ptr %236, align 4
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %530, label %463

463:                                              ; preds = %460
  %464 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 2
  %465 = load i32, ptr %464, align 4
  %466 = icmp eq i32 %465, 1
  br i1 %466, label %467, label %530

467:                                              ; preds = %463
  %468 = load ptr, ptr %10, align 4
  %469 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 4
  %470 = load ptr, ptr %469, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %471 = icmp ult i32 %461, 4
  br i1 %471, label %500, label %472

472:                                              ; preds = %486, %467
  %473 = phi i32 [ %496, %486 ], [ 0, %467 ]
  %474 = sdiv i32 %473, 4
  %475 = shl nsw i32 %474, 2
  %476 = add i32 %475, 512
  %477 = getelementptr i8, ptr %468, i32 %476
  %478 = load ptr, ptr %12, align 4
  %479 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %478, i32 0, i32 5
  %480 = load i8, ptr %479, align 4, !range !8
  %481 = icmp eq i8 %480, 0
  %482 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %477) #10
  br i1 %481, label %484, label %483

483:                                              ; preds = %472
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  br label %486

484:                                              ; preds = %472
  %485 = tail call i32 @llvm.bswap.i32(i32 %482) #10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !11
  br label %486

486:                                              ; preds = %484, %483
  %487 = phi i32 [ %482, %483 ], [ %485, %484 ]
  %488 = load ptr, ptr %12, align 4
  %489 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %488, i32 0, i32 4
  %490 = load i32, ptr %489, align 4
  %491 = and i32 %490, 1
  %492 = icmp eq i32 %491, 0
  %493 = tail call i32 @llvm.bswap.i32(i32 %487) #10
  %494 = select i1 %492, i32 %487, i32 %493
  %495 = getelementptr i8, ptr %470, i32 %473
  store i32 %494, ptr %495, align 1
  %496 = add nuw i32 %473, 4
  %497 = load i32, ptr %236, align 4
  %498 = and i32 %497, -4
  %499 = icmp ult i32 %496, %498
  br i1 %499, label %472, label %500

500:                                              ; preds = %486, %467
  %501 = phi i32 [ 0, %467 ], [ %496, %486 ]
  %502 = phi i32 [ %461, %467 ], [ %497, %486 ]
  %503 = icmp ult i32 %501, %502
  br i1 %503, label %504, label %529

504:                                              ; preds = %500
  %505 = sdiv i32 %501, 4
  %506 = shl nsw i32 %505, 2
  %507 = add i32 %506, 512
  %508 = getelementptr i8, ptr %468, i32 %507
  %509 = load ptr, ptr %12, align 4
  %510 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %509, i32 0, i32 5
  %511 = load i8, ptr %510, align 4, !range !8
  %512 = icmp eq i8 %511, 0
  %513 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %508) #10
  br i1 %512, label %515, label %514

514:                                              ; preds = %504
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  br label %517

515:                                              ; preds = %504
  %516 = tail call i32 @llvm.bswap.i32(i32 %513) #10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !11
  br label %517

517:                                              ; preds = %515, %514
  %518 = phi i32 [ %513, %514 ], [ %516, %515 ]
  %519 = load ptr, ptr %12, align 4
  %520 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %519, i32 0, i32 4
  %521 = load i32, ptr %520, align 4
  %522 = and i32 %521, 1
  %523 = icmp eq i32 %522, 0
  %524 = tail call i32 @llvm.bswap.i32(i32 %518) #10
  %525 = select i1 %523, i32 %518, i32 %524
  store i32 %525, ptr %3, align 4
  %526 = getelementptr i8, ptr %470, i32 %501
  %527 = load i32, ptr %236, align 4
  %528 = sub i32 %527, %501
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %526, ptr nonnull align 4 %3, i32 %528, i1 false) #10
  br label %529

529:                                              ; preds = %517, %500
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br label %530

530:                                              ; preds = %529, %463, %460, %457, %349
  %531 = phi i32 [ 0, %349 ], [ 0, %529 ], [ 0, %463 ], [ 0, %460 ], [ -110, %457 ]
  tail call fastcc void @fsl_qspi_invalidate(ptr noundef %10)
  tail call void @mutex_unlock(ptr noundef %16) #10
  ret i32 %531
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @fsl_qspi_get_name(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.spi_device, ptr %2, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.fsl_qspi, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = tail call ptr @of_get_next_available_child(ptr noundef %10, ptr noundef null) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %13, %1
  %14 = phi i32 [ %16, %13 ], [ 0, %1 ]
  %15 = phi ptr [ %17, %13 ], [ %11, %1 ]
  %16 = add i32 %14, 1
  %17 = tail call ptr @of_get_next_available_child(ptr noundef %10, ptr noundef nonnull %15) #10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %13

19:                                               ; preds = %13
  %20 = icmp eq i32 %14, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %19
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %44

26:                                               ; preds = %21
  %27 = load ptr, ptr %22, align 4
  br label %44

28:                                               ; preds = %19, %1
  %29 = load ptr, ptr %7, align 4
  %30 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load ptr, ptr %29, align 4
  br label %35

35:                                               ; preds = %33, %28
  %36 = phi ptr [ %34, %33 ], [ %31, %28 ]
  %37 = load ptr, ptr %0, align 4
  %38 = getelementptr inbounds %struct.spi_device, ptr %37, i32 0, i32 4
  %39 = load i8, ptr %38, align 4
  %40 = zext i8 %39 to i32
  %41 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %2, i32 noundef 3264, ptr noundef nonnull @.str.10, ptr noundef %36, i32 noundef %40) #10
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.11) #11
  br label %44

44:                                               ; preds = %43, %35, %26, %21
  %45 = phi ptr [ inttoptr (i32 -12 to ptr), %43 ], [ %41, %35 ], [ %27, %26 ], [ %24, %21 ]
  ret ptr %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @spi_mem_default_supports_op(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fsl_qspi_invalidate(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.fsl_qspi, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %4, i32 0, i32 5
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = icmp eq i8 %6, 0
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #10
  br i1 %7, label %10, label %9

9:                                                ; preds = %1
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  br label %12

10:                                               ; preds = %1
  %11 = tail call i32 @llvm.bswap.i32(i32 %8) #10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !11
  br label %12

12:                                               ; preds = %10, %9
  %13 = phi i32 [ %8, %9 ], [ %11, %10 ]
  %14 = or i32 %13, 3
  %15 = load ptr, ptr %0, align 4
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %16, i32 0, i32 5
  %18 = load i8, ptr %17, align 4, !range !8
  %19 = icmp eq i8 %18, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %14) #10, !srcloc !9
  br label %23

21:                                               ; preds = %12
  %22 = tail call i32 @llvm.bswap.i32(i32 %14) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %22) #10, !srcloc !9
  br label %23

23:                                               ; preds = %21, %20
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #10
  %25 = and i32 %13, -4
  %26 = load ptr, ptr %0, align 4
  %27 = load ptr, ptr %3, align 4
  %28 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %27, i32 0, i32 5
  %29 = load i8, ptr %28, align 4, !range !8
  %30 = icmp eq i8 %29, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %25) #10, !srcloc !9
  br label %34

32:                                               ; preds = %23
  %33 = tail call i32 @llvm.bswap.i32(i32 %25) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %33) #10, !srcloc !9
  br label %34

34:                                               ; preds = %32, %31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_remove_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @fsl_qspi_suspend(ptr nocapture noundef readnone %0) #9 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_qspi_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @fsl_qspi_default_setup(ptr noundef %3)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!9 = !{i64 3113637}
!10 = !{i64 2150653508}
!11 = !{i64 2153132383}
!12 = !{i64 3114055}
!13 = !{i64 2153137706}
!14 = !{i64 2153138001}
!15 = !{i32 0, i32 33}
