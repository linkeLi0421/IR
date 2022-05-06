; ModuleID = '/llk/IR/drivers/spi/spi-rspi.c_pt.bc'
source_filename = "../drivers/spi/spi-rspi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type {}
%struct.spi_ops = type { ptr, ptr, i16, i16, i16, i16, i16, i8 }
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
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.rspi_plat_data = type { i32, i32, i16 }
%struct.rspi_data = type { ptr, i32, ptr, ptr, %struct.wait_queue_head, %struct.spinlock, ptr, i16, i8, i8, i32, i32, ptr, i8 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__initcall__kmod_spi_rspi__243_1450_rspi_driver_init6 = internal global ptr @rspi_driver_init, section ".initcall6.init", align 4
@rspi_driver = internal global %struct.platform_driver { ptr @rspi_probe, ptr @rspi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rspi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rspi_pm_ops, ptr null, ptr null }, ptr @spi_driver_ids, i8 0 }, align 4
@__exitcall_rspi_driver_exit = internal global ptr @rspi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description244 = internal constant [45 x i8] c"spi_rspi.description=Renesas RSPI bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file245 = internal constant [35 x i8] c"spi_rspi.file=drivers/spi/spi-rspi\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [24 x i8] c"spi_rspi.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author247 = internal constant [34 x i8] c"spi_rspi.author=Yoshihiro Shimoda\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"renesas_spi\00", align 1
@rspi_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rspi_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rspi-rz\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rspi_rz_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,qspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @qspi_ops }, %struct.of_device_id zeroinitializer], align 4
@rspi_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @rspi_suspend, ptr @rspi_resume, ptr @rspi_suspend, ptr @rspi_resume, ptr @rspi_suspend, ptr @rspi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@spi_driver_ids = internal constant [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"rspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @rspi_ops to i32) }, %struct.platform_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"cannot get clock\0A\00", align 1
@rspi_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"&rspi->wait\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"mux\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"request_irq error\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"DMA not available, using PIO\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"devm_spi_register_controller error.\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"probed\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"num-cs\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"of_property_read_u32 num-cs failed %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"failed to get reset ctrl\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"failed to deassert reset %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"failed to register assert devm action, %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"Too many different transfer modes\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"DMA available\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"dma_request_slave_channel_compat failed\0A\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"dmaengine_slave_config failed %d\0A\00", align 1
@rspi_ops = internal constant %struct.spi_ops { ptr @rspi_set_config_register, ptr @rspi_transfer_one, i16 0, i16 2, i16 4096, i16 16, i16 8, i8 2 }, align 4
@rspi_rz_ops = internal constant %struct.spi_ops { ptr @rspi_rz_set_config_register, ptr @rspi_rz_transfer_one, i16 0, i16 2, i16 4096, i16 24, i16 8, i8 1 }, align 4
@qspi_ops = internal constant %struct.spi_ops { ptr @qspi_set_config_register, ptr @qspi_transfer_one, i16 3840, i16 1, i16 4080, i16 24, i16 32, i8 1 }, align 4
@.str.20 = private unnamed_addr constant [13 x i8] c"DMA timeout\0A\00", align 1
@rspi_dma_transfer.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"DMA not available, falling back to PIO\0A\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"transmit timeout\0A\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"receive timeout\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__exitcall_rspi_driver_exit, ptr @__initcall__kmod_spi_rspi__243_1450_rspi_driver_init6, ptr @rspi_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rspi_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rspi_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rspi_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @rspi_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rspi_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call ptr @__spi_alloc_controller(ptr noundef %3, i32 noundef 56, i1 noundef zeroext false) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %168, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @of_device_get_match_data(ptr noundef %3) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = call i32 @of_property_read_variable_u32_array(ptr noundef %11, ptr noundef nonnull @.str.10, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #9
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.11, i32 noundef %12) #10
  br label %31

15:                                               ; preds = %9
  %16 = load i32, ptr %2, align 4
  %17 = trunc i32 %16 to i16
  %18 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 3
  store i16 %17, ptr %18, align 2
  %19 = call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #9
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %33, label %21

21:                                               ; preds = %15
  %22 = call i32 @reset_control_deassert(ptr noundef %19) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.13, i32 noundef %22) #10
  br label %31

25:                                               ; preds = %21
  %26 = call i32 @devm_add_action(ptr noundef %3, ptr noundef nonnull @rspi_reset_control_assert, ptr noundef %19) #9
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br label %54

29:                                               ; preds = %25
  %30 = call i32 @reset_control_assert(ptr noundef %19) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.14, i32 noundef %26) #10
  br label %31

31:                                               ; preds = %29, %24, %14
  %32 = phi i32 [ %26, %29 ], [ %22, %24 ], [ %12, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br label %166

33:                                               ; preds = %15
  %34 = ptrtoint ptr %19 to i32
  %35 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %3, i32 noundef %34, ptr noundef nonnull @.str.12) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %54, label %166

37:                                               ; preds = %6
  %38 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.platform_device_id, ptr %39, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = inttoptr i32 %41 to ptr
  %43 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.rspi_plat_data, ptr %44, i32 0, i32 2
  %48 = load i16, ptr %47, align 4
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 3
  store i16 %48, ptr %51, align 2
  br label %54

52:                                               ; preds = %46, %37
  %53 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 3
  store i16 2, ptr %53, align 2
  br label %54

54:                                               ; preds = %52, %50, %33, %28
  %55 = phi ptr [ %7, %33 ], [ %42, %50 ], [ %42, %52 ], [ %7, %28 ]
  %56 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %57, ptr %58, align 8
  %59 = getelementptr inbounds %struct.rspi_data, ptr %57, i32 0, i32 12
  store ptr %55, ptr %59, align 4
  %60 = getelementptr inbounds %struct.rspi_data, ptr %57, i32 0, i32 2
  store ptr %4, ptr %60, align 4
  %61 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #9
  %62 = call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef %61) #9
  store ptr %62, ptr %57, align 4
  %63 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = ptrtoint ptr %62 to i32
  br label %166

66:                                               ; preds = %54
  %67 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #9
  %68 = getelementptr inbounds %struct.rspi_data, ptr %57, i32 0, i32 6
  store ptr %67, ptr %68, align 4
  %69 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #10
  %71 = load ptr, ptr %68, align 4
  %72 = ptrtoint ptr %71 to i32
  br label %166

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.rspi_data, ptr %57, i32 0, i32 3
  store ptr %0, ptr %74, align 4
  call void @pm_runtime_enable(ptr noundef %3) #9
  %75 = getelementptr inbounds %struct.rspi_data, ptr %57, i32 0, i32 4
  call void @__init_waitqueue_head(ptr noundef %75, ptr noundef nonnull @.str.2, ptr noundef nonnull @rspi_probe.__key) #9
  %76 = getelementptr inbounds %struct.rspi_data, ptr %57, i32 0, i32 5
  store i32 0, ptr %76, align 4
  %77 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = trunc i32 %78 to i16
  %80 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 2
  store i16 %79, ptr %80, align 8
  %81 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 20
  store ptr @rspi_setup, ptr %81, align 4
  %82 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 36
  store i8 1, ptr %82, align 4
  %83 = getelementptr inbounds %struct.spi_ops, ptr %55, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 51
  store ptr %84, ptr %85, align 4
  %86 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 47
  store ptr @rspi_prepare_message, ptr %86, align 4
  %87 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 48
  store ptr @rspi_unprepare_message, ptr %87, align 8
  %88 = getelementptr inbounds %struct.spi_ops, ptr %55, i32 0, i32 2
  %89 = load i16, ptr %88, align 4
  %90 = or i16 %89, 47
  %91 = zext i16 %90 to i32
  %92 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 5
  store i32 %91, ptr %92, align 8
  %93 = load ptr, ptr %68, align 4
  %94 = call i32 @clk_get_rate(ptr noundef %93) #9
  %95 = getelementptr inbounds %struct.spi_ops, ptr %55, i32 0, i32 4
  %96 = load i16, ptr %95, align 4
  %97 = zext i16 %96 to i32
  %98 = add i32 %94, -1
  %99 = add i32 %98, %97
  %100 = udiv i32 %99, %97
  %101 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 8
  store i32 %100, ptr %101, align 4
  %102 = getelementptr inbounds %struct.spi_ops, ptr %55, i32 0, i32 3
  %103 = load i16, ptr %102, align 2
  %104 = zext i16 %103 to i32
  %105 = add i32 %98, %104
  %106 = udiv i32 %105, %104
  %107 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 9
  store i32 %106, ptr %107, align 8
  %108 = getelementptr inbounds %struct.spi_ops, ptr %55, i32 0, i32 5
  %109 = load i16, ptr %108, align 2
  %110 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 10
  store i16 %109, ptr %110, align 4
  %111 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %112 = load ptr, ptr %111, align 8
  %113 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 25
  store ptr %112, ptr %113, align 8
  %114 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 56
  store i8 1, ptr %114, align 8
  %115 = load ptr, ptr %59, align 4
  %116 = getelementptr inbounds %struct.spi_ops, ptr %115, i32 0, i32 7
  %117 = load i8, ptr %116, align 2
  %118 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 58
  store i8 %117, ptr %118, align 2
  %119 = call i32 @platform_get_irq_byname_optional(ptr noundef %0, ptr noundef nonnull @.str.3) #9
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %73
  %122 = call i32 @platform_get_irq_byname_optional(ptr noundef %0, ptr noundef nonnull @.str.4) #9
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #9
  %126 = icmp sgt i32 %125, -1
  br i1 %126, label %127, label %137

127:                                              ; preds = %124, %121
  %128 = phi i32 [ %125, %124 ], [ %122, %121 ]
  %129 = getelementptr inbounds %struct.rspi_data, ptr %57, i32 0, i32 11
  store i32 %128, ptr %129, align 4
  %130 = getelementptr inbounds %struct.rspi_data, ptr %57, i32 0, i32 10
  store i32 %128, ptr %130, align 4
  br label %137

131:                                              ; preds = %73
  %132 = getelementptr inbounds %struct.rspi_data, ptr %57, i32 0, i32 10
  store i32 %119, ptr %132, align 4
  %133 = call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.5) #9
  %134 = icmp sgt i32 %133, -1
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.rspi_data, ptr %57, i32 0, i32 11
  store i32 %133, ptr %136, align 4
  br label %137

137:                                              ; preds = %135, %131, %127, %124
  %138 = getelementptr inbounds %struct.rspi_data, ptr %57, i32 0, i32 10
  %139 = load i32, ptr %138, align 4
  %140 = getelementptr inbounds %struct.rspi_data, ptr %57, i32 0, i32 11
  %141 = load i32, ptr %140, align 4
  %142 = icmp eq i32 %139, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  %144 = call fastcc i32 @rspi_request_irq(ptr noundef %3, i32 noundef %139, ptr noundef nonnull @rspi_irq_mux, ptr noundef nonnull @.str.4, ptr noundef %57)
  br label %151

145:                                              ; preds = %137
  %146 = call fastcc i32 @rspi_request_irq(ptr noundef %3, i32 noundef %139, ptr noundef nonnull @rspi_irq_rx, ptr noundef nonnull @.str.3, ptr noundef %57)
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load i32, ptr %140, align 4
  %150 = call fastcc i32 @rspi_request_irq(ptr noundef %3, i32 noundef %149, ptr noundef nonnull @rspi_irq_tx, ptr noundef nonnull @.str.5, ptr noundef %57)
  br label %151

151:                                              ; preds = %148, %145, %143
  %152 = phi i32 [ %144, %143 ], [ %146, %145 ], [ %150, %148 ]
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #10
  br label %164

155:                                              ; preds = %151
  %156 = call fastcc i32 @rspi_request_dma(ptr noundef %3, ptr noundef nonnull %4, ptr noundef %61)
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.7) #10
  br label %159

159:                                              ; preds = %158, %155
  %160 = call i32 @devm_spi_register_controller(ptr noundef %3, ptr noundef nonnull %4) #9
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %159
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8) #10
  call fastcc void @rspi_release_dma(ptr noundef nonnull %4)
  br label %164

163:                                              ; preds = %159
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.9) #10
  br label %168

164:                                              ; preds = %162, %154
  %165 = phi i32 [ %152, %154 ], [ %160, %162 ]
  call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #9
  br label %166

166:                                              ; preds = %164, %70, %64, %33, %31
  %167 = phi i32 [ %35, %33 ], [ %65, %64 ], [ %72, %70 ], [ %165, %164 ], [ %32, %31 ]
  call void @put_device(ptr noundef nonnull %4) #9
  br label %168

168:                                              ; preds = %166, %163, %1
  %169 = phi i32 [ %167, %166 ], [ 0, %163 ], [ -12, %1 ]
  ret i32 %169
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rspi_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rspi_data, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.spi_controller, ptr %5, i32 0, i32 60
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @dma_release_channel(ptr noundef nonnull %7) #9
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.spi_controller, ptr %5, i32 0, i32 61
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @dma_release_channel(ptr noundef nonnull %12) #9
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %16, i1 noundef zeroext true) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rspi_setup(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %38

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.rspi_data, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %13 = tail call i32 @__pm_runtime_resume(ptr noundef %12, i32 noundef 4) #9
  %14 = getelementptr inbounds %struct.rspi_data, ptr %9, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %14) #9
  %15 = load ptr, ptr %9, align 4
  %16 = getelementptr i8, ptr %15, i32 1
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %16) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %18 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 4
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 4
  %23 = load i8, ptr %22, align 4
  %24 = zext i8 %23 to i32
  %25 = shl nuw i32 1, %24
  %26 = trunc i32 %25 to i8
  %27 = or i8 %17, %26
  %28 = xor i8 %26, -1
  %29 = and i8 %17, %28
  %30 = select i1 %21, i8 %29, i8 %27
  %31 = load ptr, ptr %9, align 4
  %32 = getelementptr i8, ptr %31, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %32, i8 %30) #9, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  %33 = load i16, ptr %14, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !17
  %35 = load ptr, ptr %10, align 4
  %36 = getelementptr inbounds %struct.platform_device, ptr %35, i32 0, i32 3
  %37 = tail call i32 @__pm_runtime_idle(ptr noundef %36, i32 noundef 5) #9
  br label %38

38:                                               ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rspi_prepare_message(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.spi_device, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.rspi_data, ptr %4, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  %10 = load ptr, ptr %1, align 4
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %23, label %12

12:                                               ; preds = %19, %2
  %13 = phi i32 [ %20, %19 ], [ %8, %2 ]
  %14 = phi ptr [ %21, %19 ], [ %10, %2 ]
  %15 = getelementptr i8, ptr %14, i32 -24
  %16 = load i32, ptr %15, align 4
  %17 = icmp ult i32 %16, %13
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 %16, ptr %9, align 4
  br label %19

19:                                               ; preds = %18, %12
  %20 = phi i32 [ %13, %12 ], [ %16, %18 ]
  %21 = load ptr, ptr %14, align 4
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %23, label %12

23:                                               ; preds = %19, %2
  %24 = getelementptr inbounds %struct.rspi_data, ptr %4, i32 0, i32 7
  store i16 128, ptr %24, align 4
  %25 = getelementptr inbounds %struct.spi_device, ptr %6, i32 0, i32 7
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i16 128, i16 130
  store i16 %29, ptr %24, align 4
  %30 = load i32, ptr %25, align 8
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %23
  %34 = or i16 %29, 1
  store i16 %34, ptr %24, align 4
  %35 = load i32, ptr %25, align 8
  br label %36

36:                                               ; preds = %33, %23
  %37 = phi i16 [ %34, %33 ], [ %29, %23 ]
  %38 = phi i32 [ %35, %33 ], [ %30, %23 ]
  %39 = and i32 %38, 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = or i16 %37, 4096
  store i16 %42, ptr %24, align 4
  br label %43

43:                                               ; preds = %41, %36
  %44 = phi i16 [ %42, %41 ], [ %37, %36 ]
  %45 = getelementptr inbounds %struct.spi_device, ptr %6, i32 0, i32 14
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.rspi_data, ptr %4, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.spi_controller, ptr %50, i32 0, i32 57
  %52 = load i8, ptr %51, align 1
  %53 = sext i8 %52 to i16
  br label %58

54:                                               ; preds = %43
  %55 = getelementptr inbounds %struct.spi_device, ptr %6, i32 0, i32 4
  %56 = load i8, ptr %55, align 4
  %57 = zext i8 %56 to i16
  br label %58

58:                                               ; preds = %54, %48
  %59 = phi i16 [ %53, %48 ], [ %57, %54 ]
  %60 = shl nsw i16 %59, 4
  %61 = or i16 %60, %44
  store i16 %61, ptr %24, align 4
  %62 = getelementptr inbounds %struct.rspi_data, ptr %4, i32 0, i32 9
  store i8 0, ptr %62, align 1
  %63 = load i32, ptr %25, align 8
  %64 = trunc i32 %63 to i8
  %65 = lshr i8 %64, 5
  %66 = and i8 %65, 1
  store i8 %66, ptr %62, align 1
  %67 = getelementptr inbounds %struct.rspi_data, ptr %4, i32 0, i32 12
  %68 = load ptr, ptr %67, align 4
  %69 = load ptr, ptr %68, align 4
  %70 = tail call i32 %69(ptr noundef %4, i32 noundef 8) #9
  %71 = load ptr, ptr %5, align 4
  %72 = getelementptr inbounds %struct.spi_device, ptr %71, i32 0, i32 7
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 3840
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %155, label %76

76:                                               ; preds = %58
  %77 = load ptr, ptr %1, align 4
  %78 = icmp eq ptr %77, %1
  br i1 %78, label %155, label %79

79:                                               ; preds = %135, %76
  %80 = phi ptr [ %139, %135 ], [ %77, %76 ]
  %81 = phi i32 [ %138, %135 ], [ 0, %76 ]
  %82 = phi i32 [ %137, %135 ], [ 0, %76 ]
  %83 = phi i16 [ %136, %135 ], [ -1, %76 ]
  %84 = getelementptr i8, ptr %80, i32 -84
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %96, label %87

87:                                               ; preds = %79
  %88 = getelementptr i8, ptr %80, i32 -40
  %89 = load i8, ptr %88, align 4
  %90 = lshr i8 %89, 2
  %91 = and i8 %90, 7
  %92 = icmp eq i8 %91, 2
  %93 = select i1 %92, i16 32, i16 0
  %94 = icmp eq i8 %91, 4
  %95 = select i1 %94, i16 64, i16 %93
  br label %108

96:                                               ; preds = %79
  %97 = getelementptr i8, ptr %80, i32 -80
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %108, label %100

100:                                              ; preds = %96
  %101 = getelementptr i8, ptr %80, i32 -40
  %102 = load i8, ptr %101, align 4
  %103 = lshr i8 %102, 5
  %104 = icmp eq i8 %103, 2
  %105 = select i1 %104, i16 48, i16 0
  %106 = icmp eq i8 %103, 4
  %107 = select i1 %106, i16 80, i16 %105
  br label %108

108:                                              ; preds = %100, %96, %87
  %109 = phi i16 [ %95, %87 ], [ %107, %100 ], [ 0, %96 ]
  %110 = icmp eq i16 %109, %83
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = getelementptr i8, ptr %80, i32 -76
  %113 = load i32, ptr %112, align 4
  %114 = add i32 %113, %82
  br label %135

115:                                              ; preds = %108
  %116 = icmp eq i32 %81, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %115
  %118 = shl i32 %81, 2
  %119 = add i32 %118, 24
  %120 = load ptr, ptr %4, align 4
  %121 = and i32 %119, 65532
  %122 = getelementptr i8, ptr %120, i32 %121
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %82) #9, !srcloc !19
  %123 = icmp ugt i32 %81, 3
  br i1 %123, label %153, label %124

124:                                              ; preds = %117, %115
  %125 = load i16, ptr %24, align 4
  %126 = or i16 %125, %109
  %127 = shl nuw nsw i32 %81, 1
  %128 = add nuw nsw i32 %127, 16
  %129 = load ptr, ptr %4, align 4
  %130 = and i32 %128, 65534
  %131 = getelementptr i8, ptr %129, i32 %130
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !20
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %131, i16 %126) #9, !srcloc !21
  %132 = getelementptr i8, ptr %80, i32 -76
  %133 = load i32, ptr %132, align 4
  %134 = add nuw nsw i32 %81, 1
  br label %135

135:                                              ; preds = %124, %111
  %136 = phi i16 [ %83, %111 ], [ %109, %124 ]
  %137 = phi i32 [ %114, %111 ], [ %133, %124 ]
  %138 = phi i32 [ %81, %111 ], [ %134, %124 ]
  %139 = load ptr, ptr %80, align 4
  %140 = icmp eq ptr %139, %1
  br i1 %140, label %141, label %79

141:                                              ; preds = %135
  %142 = icmp eq i32 %138, 0
  br i1 %142, label %155, label %143

143:                                              ; preds = %141
  %144 = add i32 %138, -1
  %145 = shl i32 %144, 2
  %146 = add i32 %145, 28
  %147 = load ptr, ptr %4, align 4
  %148 = and i32 %146, 65532
  %149 = getelementptr i8, ptr %147, i32 %148
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 %137) #9, !srcloc !19
  %150 = trunc i32 %144 to i8
  %151 = load ptr, ptr %4, align 4
  %152 = getelementptr i8, ptr %151, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %152, i8 %150) #9, !srcloc !12
  br label %155

153:                                              ; preds = %117
  %154 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %154, ptr noundef nonnull @.str.15) #10
  br label %160

155:                                              ; preds = %143, %141, %76, %58
  %156 = load ptr, ptr %4, align 4
  %157 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %156) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %158 = or i8 %157, 64
  %159 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %159, i8 %158) #9, !srcloc !12
  br label %160

160:                                              ; preds = %155, %153
  %161 = phi i32 [ 0, %155 ], [ -22, %153 ]
  ret i32 %161
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rspi_unprepare_message(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %7 = and i8 %6, -65
  %8 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 %7) #9, !srcloc !12
  %9 = getelementptr inbounds %struct.rspi_data, ptr %4, i32 0, i32 7
  %10 = load i16, ptr %9, align 4
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !20
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %12, i16 %10) #9, !srcloc !21
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %14, i8 0) #9, !srcloc !12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rspi_request_irq(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 4
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi ptr [ %10, %9 ], [ %7, %5 ]
  %13 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %0, i32 noundef 3264, ptr noundef nonnull @.str.16, ptr noundef %12, ptr noundef %3) #9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @devm_request_threaded_irq(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef null, i32 noundef 0, ptr noundef nonnull %13, ptr noundef %4) #9
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i32 [ %16, %15 ], [ -12, %11 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rspi_irq_mux(i32 noundef %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 3
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %6 = getelementptr inbounds %struct.rspi_data, ptr %1, i32 0, i32 8
  store i8 %5, ptr %6, align 2
  %7 = and i8 %5, -96
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %1, align 4
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %10) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %12 = xor i8 %7, -1
  %13 = and i8 %11, %12
  %14 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %14, i8 %13) #9, !srcloc !12
  %15 = getelementptr inbounds %struct.rspi_data, ptr %1, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %15, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %16

16:                                               ; preds = %9, %2
  %17 = phi i32 [ 1, %9 ], [ 0, %2 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rspi_irq_rx(i32 noundef %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 3
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %6 = getelementptr inbounds %struct.rspi_data, ptr %1, i32 0, i32 8
  store i8 %5, ptr %6, align 2
  %7 = icmp sgt i8 %5, -1
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 4
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %11 = and i8 %10, 127
  %12 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %12, i8 %11) #9, !srcloc !12
  %13 = getelementptr inbounds %struct.rspi_data, ptr %1, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %13, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %14

14:                                               ; preds = %8, %2
  %15 = phi i32 [ 1, %8 ], [ 0, %2 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rspi_irq_tx(i32 noundef %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 3
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %6 = getelementptr inbounds %struct.rspi_data, ptr %1, i32 0, i32 8
  store i8 %5, ptr %6, align 2
  %7 = and i8 %5, 32
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %1, align 4
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %10) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %12 = and i8 %11, -33
  %13 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 %12) #9, !srcloc !12
  %14 = getelementptr inbounds %struct.rspi_data, ptr %1, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %14, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %15

15:                                               ; preds = %9, %2
  %16 = phi i32 [ 1, %9 ], [ 0, %2 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rspi_request_dma(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = icmp eq ptr %5, null
  br i1 %10, label %36, label %11

11:                                               ; preds = %9
  %12 = load i32, ptr %5, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %36, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.rspi_plat_data, ptr %5, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %36, label %18

18:                                               ; preds = %14, %3
  %19 = phi i32 [ 0, %3 ], [ %12, %14 ]
  %20 = phi i32 [ 0, %3 ], [ %16, %14 ]
  %21 = load i32, ptr %2, align 4
  %22 = add i32 %21, 4
  %23 = tail call fastcc ptr @rspi_request_dma_chan(ptr noundef %0, i32 noundef 1, i32 noundef %19, i32 noundef %22)
  %24 = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 60
  store ptr %23, ptr %24, align 8
  %25 = icmp eq ptr %23, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %18
  %27 = load i32, ptr %2, align 4
  %28 = add i32 %27, 4
  %29 = tail call fastcc ptr @rspi_request_dma_chan(ptr noundef %0, i32 noundef 2, i32 noundef %20, i32 noundef %28)
  %30 = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 61
  store ptr %29, ptr %30, align 4
  %31 = icmp eq ptr %29, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load ptr, ptr %24, align 8
  tail call void @dma_release_channel(ptr noundef %33) #9
  store ptr null, ptr %24, align 8
  br label %36

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 24
  store ptr @rspi_can_dma, ptr %35, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.17) #10
  br label %36

36:                                               ; preds = %34, %32, %18, %14, %11, %9
  %37 = phi i32 [ 0, %34 ], [ -19, %32 ], [ 0, %14 ], [ 0, %11 ], [ 0, %9 ], [ -19, %18 ]
  ret i32 %37
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rspi_release_dma(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 60
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @dma_release_channel(ptr noundef nonnull %3) #9
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 61
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @dma_release_channel(ptr noundef nonnull %8) #9
  br label %11

11:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rspi_reset_control_assert(ptr noundef %0) #2 {
  %2 = tail call i32 @reset_control_assert(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @rspi_request_dma_chan(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = alloca %struct.dma_cap_mask_t, align 4
  %6 = alloca %struct.dma_cap_mask_t, align 4
  %7 = alloca %struct.dma_slave_config, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #9
  store i32 0, ptr %6, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %6) #9
  %8 = inttoptr i32 %2 to ptr
  %9 = icmp eq i32 %1, 1
  %10 = select i1 %9, ptr @.str.5, ptr @.str.3
  %11 = load i32, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  store i32 %11, ptr %5, align 4
  %12 = call ptr @dma_request_chan(ptr noundef %0, ptr noundef nonnull %10) #9
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  %14 = icmp eq ptr %12, null
  %15 = or i1 %13, %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  br label %24

17:                                               ; preds = %4
  %18 = icmp eq i32 %2, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  br label %23

20:                                               ; preds = %17
  %21 = call ptr @__dma_request_channel(ptr noundef nonnull %5, ptr noundef nonnull @shdma_chan_filter, ptr noundef nonnull %8, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %19
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.18) #10
  br label %44

24:                                               ; preds = %20, %16
  %25 = phi ptr [ %12, %16 ], [ %21, %20 ]
  %26 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %26, i8 0, i32 44, i1 false)
  store i32 %1, ptr %7, align 4
  br i1 %9, label %27, label %30

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.dma_slave_config, ptr %7, i32 0, i32 2
  store i32 %3, ptr %28, align 4
  %29 = getelementptr inbounds %struct.dma_slave_config, ptr %7, i32 0, i32 4
  br label %33

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.dma_slave_config, ptr %7, i32 0, i32 1
  store i32 %3, ptr %31, align 4
  %32 = getelementptr inbounds %struct.dma_slave_config, ptr %7, i32 0, i32 3
  br label %33

33:                                               ; preds = %30, %27
  %34 = phi ptr [ %32, %30 ], [ %29, %27 ]
  store i32 1, ptr %34, align 4
  %35 = load ptr, ptr %25, align 4
  %36 = getelementptr inbounds %struct.dma_device, ptr %35, i32 0, i32 44
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = call i32 %37(ptr noundef nonnull %25, ptr noundef nonnull %7) #9
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39, %33
  %43 = phi i32 [ %40, %39 ], [ -38, %33 ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %43) #10
  call void @dma_release_channel(ptr noundef nonnull %25) #9
  br label %44

44:                                               ; preds = %42, %39, %23
  %45 = phi ptr [ null, %42 ], [ null, %23 ], [ %25, %39 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  ret ptr %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rspi_can_dma(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #5 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rspi_data, ptr %5, i32 0, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.spi_ops, ptr %9, i32 0, i32 6
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  %13 = icmp ugt i32 %7, %12
  ret i1 %13
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @shdma_chan_filter(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #7 {
  ret i1 false
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rspi_set_config_register(ptr nocapture noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 9
  %4 = load i8, ptr %3, align 1
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr i8, ptr %5, i32 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %6, i8 %4) #9, !srcloc !12
  %7 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @clk_get_rate(ptr noundef %8) #9
  %10 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = shl i32 %11, 1
  %13 = add i32 %9, -1
  %14 = add i32 %12, %13
  %15 = udiv i32 %14, %12
  %16 = add i32 %15, -1
  %17 = icmp sgt i32 %16, 255
  br i1 %17, label %18, label %33

18:                                               ; preds = %2
  %19 = add nuw i32 %15, 1
  %20 = sdiv i32 %19, 2
  %21 = icmp sgt i32 %19, 513
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = add nuw nsw i32 %20, 1
  %24 = sdiv i32 %23, 2
  %25 = icmp sgt i32 %19, 1025
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = add nuw nsw i32 %24, 1
  %28 = sdiv i32 %27, 2
  br label %29

29:                                               ; preds = %26, %22, %18
  %30 = phi i32 [ 1, %18 ], [ 2, %22 ], [ 3, %26 ]
  %31 = phi i32 [ %20, %18 ], [ %24, %22 ], [ %28, %26 ]
  %32 = add nsw i32 %31, -1
  br label %33

33:                                               ; preds = %29, %2
  %34 = phi i32 [ %15, %2 ], [ %31, %29 ]
  %35 = phi i32 [ 0, %2 ], [ %30, %29 ]
  %36 = phi i32 [ %16, %2 ], [ %32, %29 ]
  %37 = tail call i32 @llvm.smax.i32(i32 %36, i32 0) #9
  %38 = tail call i32 @llvm.umin.i32(i32 %37, i32 255) #9
  %39 = trunc i32 %38 to i8
  %40 = load ptr, ptr %0, align 4
  %41 = getelementptr i8, ptr %40, i32 10
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %41, i8 %39) #9, !srcloc !12
  %42 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 7
  %43 = load i16, ptr %42, align 4
  %44 = trunc i32 %35 to i16
  %45 = shl nuw nsw i16 %44, 2
  %46 = or i16 %43, %45
  store i16 %46, ptr %42, align 4
  %47 = shl nuw nsw i32 2, %35
  %48 = mul i32 %47, %34
  %49 = add i32 %48, %13
  %50 = udiv i32 %49, %48
  store i32 %50, ptr %10, align 4
  %51 = load ptr, ptr %0, align 4
  %52 = getelementptr i8, ptr %51, i32 11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %52, i8 0) #9, !srcloc !12
  %53 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 13
  %54 = load i8, ptr %53, align 4
  %55 = and i8 %54, -3
  store i8 %55, ptr %53, align 4
  %56 = load ptr, ptr %0, align 4
  %57 = getelementptr i8, ptr %56, i32 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %57, i8 0) #9, !srcloc !12
  %58 = load ptr, ptr %0, align 4
  %59 = getelementptr i8, ptr %58, i32 13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %59, i8 0) #9, !srcloc !12
  %60 = load ptr, ptr %0, align 4
  %61 = getelementptr i8, ptr %60, i32 14
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %61, i8 0) #9, !srcloc !12
  %62 = load ptr, ptr %0, align 4
  %63 = getelementptr i8, ptr %62, i32 15
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %63, i8 0) #9, !srcloc !12
  %64 = load ptr, ptr %0, align 4
  %65 = getelementptr i8, ptr %64, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %65, i8 0) #9, !srcloc !12
  %66 = load i16, ptr %42, align 4
  %67 = trunc i32 %1 to i16
  %68 = shl i16 %67, 8
  %69 = add i16 %68, 3840
  %70 = and i16 %69, 3840
  %71 = or i16 %66, %70
  store i16 %71, ptr %42, align 4
  %72 = load ptr, ptr %0, align 4
  %73 = getelementptr i8, ptr %72, i32 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !20
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %73, i16 %71) #9, !srcloc !21
  %74 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %74, i8 8) #9, !srcloc !12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rspi_transfer_one(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %6) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %8 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %41, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 3
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %13) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, 128
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.rspi_data, ptr %5, i32 0, i32 13
  %20 = load i8, ptr %19, align 4
  %21 = and i8 %20, 2
  %22 = icmp eq i8 %21, 0
  %23 = load ptr, ptr %5, align 4
  %24 = getelementptr i8, ptr %23, i32 4
  br i1 %22, label %27, label %25

25:                                               ; preds = %18
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %24) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %29

27:                                               ; preds = %18
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %24) #9, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !23
  br label %29

29:                                               ; preds = %27, %25, %11
  %30 = and i32 %15, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %5, align 4
  %34 = getelementptr i8, ptr %33, i32 3
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %34) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %36 = and i8 %35, -2
  %37 = load ptr, ptr %5, align 4
  %38 = getelementptr i8, ptr %37, i32 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %38, i8 %36) #9, !srcloc !12
  br label %39

39:                                               ; preds = %32, %29
  %40 = and i8 %7, -3
  br label %43

41:                                               ; preds = %3
  %42 = or i8 %7, 2
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i8 [ %40, %39 ], [ %42, %41 ]
  %45 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %45, i8 %44) #9, !srcloc !12
  %46 = tail call fastcc i32 @rspi_common_transfer(ptr noundef %5, ptr noundef %2)
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rspi_common_transfer(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 13
  store i32 %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.spi_controller, ptr %7, i32 0, i32 24
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %29, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 12
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.spi_ops, ptr %15, i32 0, i32 6
  %17 = load i16, ptr %16, align 4
  %18 = zext i16 %17 to i32
  %19 = icmp ugt i32 %13, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 5
  %22 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  %25 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 6
  %26 = select i1 %24, ptr null, ptr %25
  %27 = tail call fastcc i32 @rspi_dma_transfer(ptr noundef %0, ptr noundef %21, ptr noundef %26) #9
  %28 = icmp eq i32 %27, -11
  br i1 %28, label %29, label %89

29:                                               ; preds = %20, %11, %2
  %30 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %87, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %1, align 4
  %37 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 13
  br label %38

38:                                               ; preds = %80, %33
  %39 = phi i32 [ %31, %33 ], [ %42, %80 ]
  %40 = phi ptr [ %35, %33 ], [ %81, %80 ]
  %41 = phi ptr [ %36, %33 ], [ %61, %80 ]
  %42 = add i32 %39, -1
  %43 = icmp eq ptr %41, null
  br i1 %43, label %60, label %44

44:                                               ; preds = %38
  %45 = getelementptr i8, ptr %41, i32 1
  %46 = load i8, ptr %41, align 1
  %47 = tail call fastcc i32 @rspi_wait_for_interrupt(ptr noundef %0, i8 noundef zeroext 32, i8 noundef zeroext 32) #9
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %83, label %49

49:                                               ; preds = %44
  %50 = load i8, ptr %37, align 4
  %51 = and i8 %50, 2
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %0, align 4
  %55 = getelementptr i8, ptr %54, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %55, i8 %46) #9, !srcloc !12
  br label %60

56:                                               ; preds = %49
  %57 = zext i8 %46 to i16
  %58 = load ptr, ptr %0, align 4
  %59 = getelementptr i8, ptr %58, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !20
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %59, i16 %57) #9, !srcloc !21
  br label %60

60:                                               ; preds = %56, %53, %38
  %61 = phi ptr [ null, %38 ], [ %45, %53 ], [ %45, %56 ]
  %62 = icmp eq ptr %40, null
  br i1 %62, label %80, label %63

63:                                               ; preds = %60
  %64 = tail call fastcc i32 @rspi_wait_for_interrupt(ptr noundef %0, i8 noundef zeroext -128, i8 noundef zeroext -128) #9
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %83, label %66

66:                                               ; preds = %63
  %67 = load i8, ptr %37, align 4
  %68 = and i8 %67, 2
  %69 = icmp eq i8 %68, 0
  %70 = load ptr, ptr %0, align 4
  %71 = getelementptr i8, ptr %70, i32 4
  br i1 %69, label %74, label %72

72:                                               ; preds = %66
  %73 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %71) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %77

74:                                               ; preds = %66
  %75 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %71) #9, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !23
  %76 = trunc i16 %75 to i8
  br label %77

77:                                               ; preds = %74, %72
  %78 = phi i8 [ %73, %72 ], [ %76, %74 ]
  %79 = getelementptr i8, ptr %40, i32 1
  store i8 %78, ptr %40, align 1
  br label %80

80:                                               ; preds = %77, %60
  %81 = phi ptr [ null, %60 ], [ %79, %77 ]
  %82 = icmp eq i32 %42, 0
  br i1 %82, label %87, label %38

83:                                               ; preds = %63, %44
  %84 = phi ptr [ @.str.22, %44 ], [ @.str.23, %63 ]
  %85 = phi i32 [ %47, %44 ], [ %64, %63 ]
  %86 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull %84) #10
  br label %89

87:                                               ; preds = %80, %29
  %88 = tail call fastcc i32 @rspi_wait_for_interrupt(ptr noundef %0, i8 noundef zeroext 32, i8 noundef zeroext 32) #9
  br label %89

89:                                               ; preds = %87, %83, %20
  %90 = phi i32 [ 0, %87 ], [ %27, %20 ], [ %85, %83 ]
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rspi_dma_transfer(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) unnamed_addr #2 {
  %4 = alloca %struct.wait_queue_entry, align 4
  %5 = icmp eq ptr %2, null
  br i1 %5, label %32, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.spi_controller, ptr %8, i32 0, i32 61
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr inbounds %struct.sg_table, ptr %2, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq ptr %10, null
  br i1 %14, label %218, label %15

15:                                               ; preds = %6
  %16 = load ptr, ptr %10, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %218, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 39
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %218, label %22

22:                                               ; preds = %18
  %23 = tail call ptr %20(ptr noundef nonnull %10, ptr noundef %11, i32 noundef %13, i32 noundef 2, i32 noundef 3, ptr noundef null) #9
  %24 = icmp eq ptr %23, null
  br i1 %24, label %218, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %23, i32 0, i32 6
  store ptr @rspi_dma_complete, ptr %26, align 4
  %27 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %23, i32 0, i32 8
  store ptr %0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %23, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 %29(ptr noundef nonnull %23) #9
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %32, label %215

32:                                               ; preds = %25, %3
  %33 = phi i8 [ 0, %3 ], [ -128, %25 ]
  %34 = icmp eq ptr %1, null
  br i1 %34, label %68, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.spi_controller, ptr %37, i32 0, i32 60
  %39 = load ptr, ptr %38, align 8
  %40 = load ptr, ptr %1, align 4
  %41 = getelementptr inbounds %struct.sg_table, ptr %1, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq ptr %39, null
  br i1 %43, label %196, label %44

44:                                               ; preds = %35
  %45 = load ptr, ptr %39, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %196, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.dma_device, ptr %45, i32 0, i32 39
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %196, label %51

51:                                               ; preds = %47
  %52 = tail call ptr %49(ptr noundef nonnull %39, ptr noundef %40, i32 noundef %42, i32 noundef 1, i32 noundef 3, ptr noundef null) #9
  %53 = icmp eq ptr %52, null
  br i1 %53, label %196, label %54

54:                                               ; preds = %51
  br i1 %5, label %55, label %57

55:                                               ; preds = %54
  %56 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %52, i32 0, i32 8
  store ptr %0, ptr %56, align 4
  br label %57

57:                                               ; preds = %55, %54
  %58 = phi ptr [ @rspi_dma_complete, %55 ], [ null, %54 ]
  %59 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %52, i32 0, i32 6
  store ptr %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %52, i32 0, i32 4
  %61 = load ptr, ptr %60, align 4
  %62 = tail call i32 %61(ptr noundef nonnull %52) #9
  %63 = icmp sgt i32 %62, -1
  br i1 %63, label %64, label %196

64:                                               ; preds = %57
  %65 = or i8 %33, 32
  %66 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 11
  %67 = load i32, ptr %66, align 4
  tail call void @disable_irq(i32 noundef %67) #9
  br label %68

68:                                               ; preds = %64, %32
  %69 = phi i8 [ %65, %64 ], [ %33, %32 ]
  %70 = phi i32 [ %67, %64 ], [ 0, %32 ]
  br i1 %5, label %76, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 10
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, %70
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  tail call void @disable_irq(i32 noundef %73) #9
  br label %76

76:                                               ; preds = %75, %71, %68
  %77 = load ptr, ptr %0, align 4
  %78 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %77) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %79 = or i8 %78, %69
  %80 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %80, i8 %79) #9, !srcloc !12
  %81 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 13
  %82 = load i8, ptr %81, align 4
  %83 = and i8 %82, -2
  store i8 %83, ptr %81, align 4
  br i1 %5, label %92, label %84

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 2
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.spi_controller, ptr %86, i32 0, i32 61
  %88 = load ptr, ptr %87, align 4
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.dma_device, ptr %89, i32 0, i32 50
  %91 = load ptr, ptr %90, align 4
  tail call void %91(ptr noundef %88) #9
  br label %92

92:                                               ; preds = %84, %76
  br i1 %34, label %101, label %93

93:                                               ; preds = %92
  %94 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 2
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.spi_controller, ptr %95, i32 0, i32 60
  %97 = load ptr, ptr %96, align 8
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.dma_device, ptr %98, i32 0, i32 50
  %100 = load ptr, ptr %99, align 4
  tail call void %100(ptr noundef %97) #9
  br label %101

101:                                              ; preds = %93, %92
  %102 = load i8, ptr %81, align 4
  %103 = and i8 %102, 1
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %180

105:                                              ; preds = %101
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %4, i32 noundef 0) #9
  %106 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 4
  %107 = call i32 @prepare_to_wait_event(ptr noundef %106, ptr noundef nonnull %4, i32 noundef 1) #9
  %108 = load i8, ptr %81, align 4
  %109 = and i8 %108, 1
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %115, %105
  %112 = phi i32 [ %124, %115 ], [ 100, %105 ]
  %113 = phi i32 [ %117, %115 ], [ %107, %105 ]
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %111
  %116 = call i32 @schedule_timeout(i32 noundef %112) #9
  %117 = call i32 @prepare_to_wait_event(ptr noundef %106, ptr noundef nonnull %4, i32 noundef 1) #9
  %118 = load i8, ptr %81, align 4
  %119 = and i8 %118, 1
  %120 = icmp ne i8 %119, 0
  %121 = xor i1 %120, true
  %122 = icmp ne i32 %116, 0
  %123 = select i1 %121, i1 true, i1 %122
  %124 = select i1 %123, i32 %116, i32 1
  %125 = icmp eq i32 %124, 0
  %126 = select i1 %120, i1 true, i1 %125
  br i1 %126, label %127, label %111

127:                                              ; preds = %115, %105
  %128 = phi i32 [ 100, %105 ], [ %124, %115 ]
  call void @finish_wait(ptr noundef %106, ptr noundef nonnull %4) #9
  br label %129

129:                                              ; preds = %127, %111
  %130 = phi i32 [ %128, %127 ], [ %113, %111 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #9
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = load i8, ptr %81, align 4
  %134 = and i8 %133, 1
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %141, label %180

136:                                              ; preds = %129
  %137 = icmp eq i32 %130, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %136
  %139 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 2
  %140 = load ptr, ptr %139, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %140, ptr noundef nonnull @.str.20) #10
  br label %141

141:                                              ; preds = %138, %136, %132
  %142 = phi i32 [ %130, %136 ], [ -110, %138 ], [ %130, %132 ]
  br i1 %34, label %161, label %143

143:                                              ; preds = %141
  %144 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 2
  %145 = load ptr, ptr %144, align 4
  %146 = getelementptr inbounds %struct.spi_controller, ptr %145, i32 0, i32 60
  %147 = load ptr, ptr %146, align 8
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr inbounds %struct.dma_device, ptr %148, i32 0, i32 47
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %161, label %152

152:                                              ; preds = %143
  %153 = call i32 %150(ptr noundef %147) #9
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %152
  %156 = load ptr, ptr %147, align 4
  %157 = getelementptr inbounds %struct.dma_device, ptr %156, i32 0, i32 48
  %158 = load ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %161, label %160

160:                                              ; preds = %155
  call void %158(ptr noundef %147) #9
  br label %161

161:                                              ; preds = %160, %155, %152, %143, %141
  br i1 %5, label %180, label %162

162:                                              ; preds = %161
  %163 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 2
  %164 = load ptr, ptr %163, align 4
  %165 = getelementptr inbounds %struct.spi_controller, ptr %164, i32 0, i32 61
  %166 = load ptr, ptr %165, align 4
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr inbounds %struct.dma_device, ptr %167, i32 0, i32 47
  %169 = load ptr, ptr %168, align 4
  %170 = icmp eq ptr %169, null
  br i1 %170, label %180, label %171

171:                                              ; preds = %162
  %172 = call i32 %169(ptr noundef %166) #9
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %171
  %175 = load ptr, ptr %166, align 4
  %176 = getelementptr inbounds %struct.dma_device, ptr %175, i32 0, i32 48
  %177 = load ptr, ptr %176, align 4
  %178 = icmp eq ptr %177, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %174
  call void %177(ptr noundef %166) #9
  br label %180

180:                                              ; preds = %179, %174, %171, %162, %161, %132, %101
  %181 = phi i32 [ %142, %161 ], [ 0, %132 ], [ %142, %162 ], [ %142, %171 ], [ %142, %174 ], [ %142, %179 ], [ 0, %101 ]
  %182 = load ptr, ptr %0, align 4
  %183 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %182) #9, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %184 = xor i8 %69, -1
  %185 = and i8 %183, %184
  %186 = load ptr, ptr %0, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %186, i8 %185) #9, !srcloc !12
  br i1 %34, label %190, label %187

187:                                              ; preds = %180
  %188 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 11
  %189 = load i32, ptr %188, align 4
  call void @enable_irq(i32 noundef %189) #9
  br label %190

190:                                              ; preds = %187, %180
  br i1 %5, label %223, label %191

191:                                              ; preds = %190
  %192 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 10
  %193 = load i32, ptr %192, align 4
  %194 = icmp eq i32 %193, %70
  br i1 %194, label %223, label %195

195:                                              ; preds = %191
  call void @enable_irq(i32 noundef %193) #9
  br label %223

196:                                              ; preds = %57, %51, %47, %44, %35
  %197 = phi i32 [ -11, %51 ], [ %62, %57 ], [ -11, %47 ], [ -11, %44 ], [ -11, %35 ]
  br i1 %5, label %215, label %198

198:                                              ; preds = %196
  %199 = load ptr, ptr %36, align 4
  %200 = getelementptr inbounds %struct.spi_controller, ptr %199, i32 0, i32 61
  %201 = load ptr, ptr %200, align 4
  %202 = load ptr, ptr %201, align 4
  %203 = getelementptr inbounds %struct.dma_device, ptr %202, i32 0, i32 47
  %204 = load ptr, ptr %203, align 4
  %205 = icmp eq ptr %204, null
  br i1 %205, label %215, label %206

206:                                              ; preds = %198
  %207 = tail call i32 %204(ptr noundef %201) #9
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %206
  %210 = load ptr, ptr %201, align 4
  %211 = getelementptr inbounds %struct.dma_device, ptr %210, i32 0, i32 48
  %212 = load ptr, ptr %211, align 4
  %213 = icmp eq ptr %212, null
  br i1 %213, label %215, label %214

214:                                              ; preds = %209
  tail call void %212(ptr noundef %201) #9
  br label %215

215:                                              ; preds = %214, %209, %206, %198, %196, %25
  %216 = phi i32 [ %197, %196 ], [ %30, %25 ], [ %197, %198 ], [ %197, %206 ], [ %197, %209 ], [ %197, %214 ]
  %217 = icmp eq i32 %216, -11
  br i1 %217, label %218, label %223

218:                                              ; preds = %215, %22, %18, %15, %6
  %219 = load i1, ptr @rspi_dma_transfer.__print_once, align 1
  br i1 %219, label %223, label %220

220:                                              ; preds = %218
  store i1 true, ptr @rspi_dma_transfer.__print_once, align 1
  %221 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 2
  %222 = load ptr, ptr %221, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %222, ptr noundef nonnull @.str.21) #10
  br label %223

223:                                              ; preds = %220, %218, %215, %195, %191, %190
  %224 = phi i32 [ %181, %195 ], [ %181, %191 ], [ %181, %190 ], [ -11, %218 ], [ -11, %220 ], [ %216, %215 ]
  ret i32 %224
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rspi_dma_complete(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 13
  %3 = load i8, ptr %2, align 4
  %4 = or i8 %3, 1
  store i8 %4, ptr %2, align 4
  %5 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %5, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rspi_wait_for_interrupt(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #2 {
  %4 = alloca %struct.wait_queue_entry, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr i8, ptr %5, i32 3
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %6) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %8 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 8
  store i8 %7, ptr %8, align 2
  %9 = and i8 %7, %1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %46

11:                                               ; preds = %3
  %12 = load ptr, ptr %0, align 4
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %12) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %14 = or i8 %13, %2
  %15 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %15, i8 %14) #9, !srcloc !12
  %16 = load i8, ptr %8, align 2
  %17 = and i8 %16, %1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %4, i32 noundef 0) #9
  %20 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 4
  %21 = call i32 @prepare_to_wait_event(ptr noundef %20, ptr noundef nonnull %4, i32 noundef 2) #9
  %22 = load i8, ptr %8, align 2
  %23 = and i8 %22, %1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  call void @finish_wait(ptr noundef %20, ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #9
  br label %45

26:                                               ; preds = %26, %19
  %27 = phi i32 [ %36, %26 ], [ 100, %19 ]
  %28 = call i32 @schedule_timeout(i32 noundef %27) #9
  %29 = call i32 @prepare_to_wait_event(ptr noundef %20, ptr noundef nonnull %4, i32 noundef 2) #9
  %30 = load i8, ptr %8, align 2
  %31 = and i8 %30, %1
  %32 = icmp ne i8 %31, 0
  %33 = xor i1 %32, true
  %34 = icmp ne i32 %28, 0
  %35 = select i1 %33, i1 true, i1 %34
  %36 = select i1 %35, i32 %28, i32 1
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %32, i1 true, i1 %37
  br i1 %38, label %39, label %26

39:                                               ; preds = %26
  %40 = icmp eq i32 %36, 0
  call void @finish_wait(ptr noundef %20, ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #9
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  %42 = load i8, ptr %8, align 2
  %43 = and i8 %42, %1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %39, %25, %11
  br label %46

46:                                               ; preds = %45, %41, %3
  %47 = phi i32 [ 0, %45 ], [ 0, %3 ], [ -110, %41 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rspi_rz_set_config_register(ptr nocapture noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 9
  %4 = load i8, ptr %3, align 1
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr i8, ptr %5, i32 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %6, i8 %4) #9, !srcloc !12
  %7 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @clk_get_rate(ptr noundef %8) #9
  %10 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = shl i32 %11, 1
  %13 = add i32 %9, -1
  %14 = add i32 %12, %13
  %15 = udiv i32 %14, %12
  %16 = add i32 %15, -1
  %17 = icmp sgt i32 %16, 255
  br i1 %17, label %18, label %33

18:                                               ; preds = %2
  %19 = add nuw i32 %15, 1
  %20 = sdiv i32 %19, 2
  %21 = icmp sgt i32 %19, 513
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = add nuw nsw i32 %20, 1
  %24 = sdiv i32 %23, 2
  %25 = icmp sgt i32 %19, 1025
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = add nuw nsw i32 %24, 1
  %28 = sdiv i32 %27, 2
  br label %29

29:                                               ; preds = %26, %22, %18
  %30 = phi i32 [ 1, %18 ], [ 2, %22 ], [ 3, %26 ]
  %31 = phi i32 [ %20, %18 ], [ %24, %22 ], [ %28, %26 ]
  %32 = add nsw i32 %31, -1
  br label %33

33:                                               ; preds = %29, %2
  %34 = phi i32 [ %15, %2 ], [ %31, %29 ]
  %35 = phi i32 [ 0, %2 ], [ %30, %29 ]
  %36 = phi i32 [ %16, %2 ], [ %32, %29 ]
  %37 = tail call i32 @llvm.smax.i32(i32 %36, i32 0) #9
  %38 = tail call i32 @llvm.umin.i32(i32 %37, i32 255) #9
  %39 = trunc i32 %38 to i8
  %40 = load ptr, ptr %0, align 4
  %41 = getelementptr i8, ptr %40, i32 10
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %41, i8 %39) #9, !srcloc !12
  %42 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 7
  %43 = load i16, ptr %42, align 4
  %44 = trunc i32 %35 to i16
  %45 = shl nuw nsw i16 %44, 2
  %46 = or i16 %43, %45
  store i16 %46, ptr %42, align 4
  %47 = shl nuw nsw i32 2, %35
  %48 = mul i32 %47, %34
  %49 = add i32 %48, %13
  %50 = udiv i32 %49, %48
  store i32 %50, ptr %10, align 4
  %51 = load ptr, ptr %0, align 4
  %52 = getelementptr i8, ptr %51, i32 11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %52, i8 32) #9, !srcloc !12
  %53 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 13
  %54 = load i8, ptr %53, align 4
  %55 = or i8 %54, 2
  store i8 %55, ptr %53, align 4
  %56 = load ptr, ptr %0, align 4
  %57 = getelementptr i8, ptr %56, i32 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %57, i8 0) #9, !srcloc !12
  %58 = load ptr, ptr %0, align 4
  %59 = getelementptr i8, ptr %58, i32 13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %59, i8 0) #9, !srcloc !12
  %60 = load ptr, ptr %0, align 4
  %61 = getelementptr i8, ptr %60, i32 14
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %61, i8 0) #9, !srcloc !12
  %62 = load ptr, ptr %0, align 4
  %63 = getelementptr i8, ptr %62, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %63, i8 0) #9, !srcloc !12
  %64 = load i16, ptr %42, align 4
  %65 = trunc i32 %1 to i16
  %66 = shl i16 %65, 8
  %67 = add i16 %66, 3840
  %68 = and i16 %67, 3840
  %69 = or i16 %64, %68
  store i16 %69, ptr %42, align 4
  %70 = load ptr, ptr %0, align 4
  %71 = getelementptr i8, ptr %70, i32 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !20
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %71, i16 %69) #9, !srcloc !21
  %72 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %72, i8 8) #9, !srcloc !12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rspi_rz_transfer_one(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 3
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %7) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %9 = zext i8 %8 to i32
  %10 = and i32 %9, 128
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.rspi_data, ptr %5, i32 0, i32 13
  %14 = load i8, ptr %13, align 4
  %15 = and i8 %14, 2
  %16 = icmp eq i8 %15, 0
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr i8, ptr %17, i32 4
  br i1 %16, label %21, label %19

19:                                               ; preds = %12
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %18) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %23

21:                                               ; preds = %12
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %18) #9, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !23
  br label %23

23:                                               ; preds = %21, %19, %3
  %24 = and i32 %9, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %5, align 4
  %28 = getelementptr i8, ptr %27, i32 3
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %28) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %30 = and i8 %29, -2
  %31 = load ptr, ptr %5, align 4
  %32 = getelementptr i8, ptr %31, i32 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %32, i8 %30) #9, !srcloc !12
  br label %33

33:                                               ; preds = %26, %23
  %34 = load ptr, ptr %5, align 4
  %35 = getelementptr i8, ptr %34, i32 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %35, i8 -64) #9, !srcloc !12
  %36 = load ptr, ptr %5, align 4
  %37 = getelementptr i8, ptr %36, i32 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %37, i8 0) #9, !srcloc !12
  %38 = tail call fastcc i32 @rspi_common_transfer(ptr noundef %5, ptr noundef %2)
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qspi_set_config_register(ptr nocapture noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 9
  %4 = load i8, ptr %3, align 1
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr i8, ptr %5, i32 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %6, i8 %4) #9, !srcloc !12
  %7 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @clk_get_rate(ptr noundef %8) #9
  %10 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, %9
  br i1 %12, label %13, label %40

13:                                               ; preds = %2
  %14 = shl i32 %11, 1
  %15 = add i32 %9, -1
  %16 = add i32 %15, %14
  %17 = udiv i32 %16, %14
  %18 = icmp sgt i32 %17, 255
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  %20 = add nuw i32 %17, 1
  %21 = sdiv i32 %20, 2
  %22 = icmp sgt i32 %20, 511
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = add nuw nsw i32 %21, 1
  %25 = sdiv i32 %24, 2
  %26 = icmp sgt i32 %20, 1021
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = add nuw nsw i32 %25, 1
  %29 = sdiv i32 %28, 2
  br label %30

30:                                               ; preds = %27, %23, %19, %13
  %31 = phi i32 [ %17, %13 ], [ %21, %19 ], [ %25, %23 ], [ %29, %27 ]
  %32 = phi i32 [ 0, %13 ], [ 1, %19 ], [ 2, %23 ], [ 3, %27 ]
  %33 = tail call i32 @llvm.smax.i32(i32 %31, i32 0)
  %34 = tail call i32 @llvm.umin.i32(i32 %33, i32 255)
  %35 = shl nuw nsw i32 2, %32
  %36 = mul nuw nsw i32 %35, %34
  %37 = add i32 %15, %36
  %38 = udiv i32 %37, %36
  %39 = trunc i32 %34 to i8
  br label %40

40:                                               ; preds = %30, %2
  %41 = phi i32 [ %38, %30 ], [ %9, %2 ]
  %42 = phi i8 [ %39, %30 ], [ 0, %2 ]
  %43 = phi i32 [ %32, %30 ], [ 0, %2 ]
  store i32 %41, ptr %10, align 4
  %44 = load ptr, ptr %0, align 4
  %45 = getelementptr i8, ptr %44, i32 10
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %45, i8 %42) #9, !srcloc !12
  %46 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 7
  %47 = load i16, ptr %46, align 4
  %48 = trunc i32 %43 to i16
  %49 = shl nuw nsw i16 %48, 2
  %50 = or i16 %47, %49
  store i16 %50, ptr %46, align 4
  %51 = load ptr, ptr %0, align 4
  %52 = getelementptr i8, ptr %51, i32 11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %52, i8 0) #9, !srcloc !12
  %53 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 13
  %54 = load i8, ptr %53, align 4
  %55 = or i8 %54, 2
  store i8 %55, ptr %53, align 4
  %56 = load ptr, ptr %0, align 4
  %57 = getelementptr i8, ptr %56, i32 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %57, i8 0) #9, !srcloc !12
  %58 = load ptr, ptr %0, align 4
  %59 = getelementptr i8, ptr %58, i32 13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %59, i8 0) #9, !srcloc !12
  %60 = load ptr, ptr %0, align 4
  %61 = getelementptr i8, ptr %60, i32 14
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %61, i8 0) #9, !srcloc !12
  switch i32 %1, label %67 [
    i32 8, label %62
    i32 16, label %64
  ]

62:                                               ; preds = %40
  %63 = load i16, ptr %46, align 4
  br label %70

64:                                               ; preds = %40
  %65 = load i16, ptr %46, align 4
  %66 = or i16 %65, 256
  br label %70

67:                                               ; preds = %40
  %68 = load i16, ptr %46, align 4
  %69 = or i16 %68, 512
  br label %70

70:                                               ; preds = %67, %64, %62
  %71 = phi i16 [ %63, %62 ], [ %66, %64 ], [ %69, %67 ]
  %72 = or i16 %71, -8192
  store i16 %72, ptr %46, align 4
  %73 = load ptr, ptr %0, align 4
  %74 = getelementptr i8, ptr %73, i32 28
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 0) #9, !srcloc !19
  %75 = load ptr, ptr %0, align 4
  %76 = getelementptr i8, ptr %75, i32 24
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %76, i8 -64) #9, !srcloc !12
  %77 = load ptr, ptr %0, align 4
  %78 = getelementptr i8, ptr %77, i32 24
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %78, i8 0) #9, !srcloc !12
  %79 = load ptr, ptr %0, align 4
  %80 = getelementptr i8, ptr %79, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %80, i8 0) #9, !srcloc !12
  %81 = load i16, ptr %46, align 4
  %82 = load ptr, ptr %0, align 4
  %83 = getelementptr i8, ptr %82, i32 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !20
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %83, i16 %81) #9, !srcloc !21
  %84 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %84, i8 8) #9, !srcloc !12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qspi_transfer_one(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rspi_data, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 13
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 7
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = tail call fastcc i32 @qspi_transfer_out_in(ptr noundef %5, ptr noundef %2)
  br label %159

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 7
  %17 = load i8, ptr %16, align 4
  %18 = and i8 %17, 24
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %88, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %2, align 4
  %22 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.rspi_data, ptr %5, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.spi_controller, ptr %25, i32 0, i32 24
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.rspi_data, ptr %5, i32 0, i32 12
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.spi_ops, ptr %31, i32 0, i32 6
  %33 = load i16, ptr %32, align 4
  %34 = zext i16 %33 to i32
  %35 = icmp ugt i32 %23, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 5
  %38 = tail call fastcc i32 @rspi_dma_transfer(ptr noundef %5, ptr noundef %37, ptr noundef null) #9
  %39 = icmp eq i32 %38, -11
  br i1 %39, label %42, label %159

40:                                               ; preds = %29, %20
  %41 = icmp eq i32 %23, 0
  br i1 %41, label %86, label %42

42:                                               ; preds = %40, %36
  %43 = getelementptr inbounds %struct.rspi_data, ptr %5, i32 0, i32 13
  br label %44

44:                                               ; preds = %83, %42
  %45 = phi i32 [ %23, %42 ], [ %84, %83 ]
  %46 = phi ptr [ %21, %42 ], [ %68, %83 ]
  %47 = icmp ugt i32 %45, 31
  %48 = load ptr, ptr %5, align 4
  %49 = getelementptr i8, ptr %48, i32 24
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %49) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9
  br i1 %47, label %51, label %55

51:                                               ; preds = %44
  %52 = or i8 %50, 48
  %53 = load ptr, ptr %5, align 4
  %54 = getelementptr i8, ptr %53, i32 24
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %54, i8 %52) #9, !srcloc !12
  br label %59

55:                                               ; preds = %44
  %56 = and i8 %50, -49
  %57 = load ptr, ptr %5, align 4
  %58 = getelementptr i8, ptr %57, i32 24
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %58, i8 %56) #9, !srcloc !12
  br label %59

59:                                               ; preds = %55, %51
  %60 = tail call i32 @llvm.umin.i32(i32 %45, i32 32) #9
  %61 = tail call fastcc i32 @rspi_wait_for_interrupt(ptr noundef %5, i8 noundef zeroext 32, i8 noundef zeroext 32) #9
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.22) #10
  br label %159

65:                                               ; preds = %80, %59
  %66 = phi i32 [ %81, %80 ], [ 0, %59 ]
  %67 = phi ptr [ %68, %80 ], [ %46, %59 ]
  %68 = getelementptr i8, ptr %67, i32 1
  %69 = load i8, ptr %67, align 1
  %70 = load i8, ptr %43, align 4
  %71 = and i8 %70, 2
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %65
  %74 = load ptr, ptr %5, align 4
  %75 = getelementptr i8, ptr %74, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %75, i8 %69) #9, !srcloc !12
  br label %80

76:                                               ; preds = %65
  %77 = zext i8 %69 to i16
  %78 = load ptr, ptr %5, align 4
  %79 = getelementptr i8, ptr %78, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !20
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %79, i16 %77) #9, !srcloc !21
  br label %80

80:                                               ; preds = %76, %73
  %81 = add nuw nsw i32 %66, 1
  %82 = icmp eq i32 %81, %60
  br i1 %82, label %83, label %65

83:                                               ; preds = %80
  %84 = sub i32 %45, %60
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %44

86:                                               ; preds = %83, %40
  %87 = tail call fastcc i32 @rspi_wait_for_interrupt(ptr noundef %5, i8 noundef zeroext 32, i8 noundef zeroext 32) #9
  br label %159

88:                                               ; preds = %15
  %89 = icmp ugt i8 %17, 63
  br i1 %89, label %90, label %157

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 2
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr inbounds %struct.rspi_data, ptr %5, i32 0, i32 2
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.spi_controller, ptr %96, i32 0, i32 24
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %111, label %100

100:                                              ; preds = %90
  %101 = getelementptr inbounds %struct.rspi_data, ptr %5, i32 0, i32 12
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.spi_ops, ptr %102, i32 0, i32 6
  %104 = load i16, ptr %103, align 4
  %105 = zext i16 %104 to i32
  %106 = icmp ugt i32 %94, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 6
  %109 = tail call fastcc i32 @rspi_dma_transfer(ptr noundef %5, ptr noundef null, ptr noundef %108) #9
  %110 = icmp eq i32 %109, -11
  br i1 %110, label %113, label %159

111:                                              ; preds = %100, %90
  %112 = icmp eq i32 %94, 0
  br i1 %112, label %159, label %113

113:                                              ; preds = %111, %107
  %114 = getelementptr inbounds %struct.rspi_data, ptr %5, i32 0, i32 13
  br label %115

115:                                              ; preds = %154, %113
  %116 = phi i32 [ %94, %113 ], [ %155, %154 ]
  %117 = phi ptr [ %92, %113 ], [ %151, %154 ]
  %118 = icmp ugt i32 %116, 31
  %119 = load ptr, ptr %5, align 4
  %120 = getelementptr i8, ptr %119, i32 24
  %121 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %120) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9
  br i1 %118, label %122, label %126

122:                                              ; preds = %115
  %123 = or i8 %121, 7
  %124 = load ptr, ptr %5, align 4
  %125 = getelementptr i8, ptr %124, i32 24
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %125, i8 %123) #9, !srcloc !12
  br label %130

126:                                              ; preds = %115
  %127 = and i8 %121, -8
  %128 = load ptr, ptr %5, align 4
  %129 = getelementptr i8, ptr %128, i32 24
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %129, i8 %127) #9, !srcloc !12
  br label %130

130:                                              ; preds = %126, %122
  %131 = tail call i32 @llvm.umin.i32(i32 %116, i32 32) #9
  %132 = tail call fastcc i32 @rspi_wait_for_interrupt(ptr noundef %5, i8 noundef zeroext -128, i8 noundef zeroext -128) #9
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load ptr, ptr %95, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %135, ptr noundef nonnull @.str.23) #10
  br label %159

136:                                              ; preds = %149, %130
  %137 = phi i32 [ %152, %149 ], [ 0, %130 ]
  %138 = phi ptr [ %151, %149 ], [ %117, %130 ]
  %139 = load i8, ptr %114, align 4
  %140 = and i8 %139, 2
  %141 = icmp eq i8 %140, 0
  %142 = load ptr, ptr %5, align 4
  %143 = getelementptr i8, ptr %142, i32 4
  br i1 %141, label %146, label %144

144:                                              ; preds = %136
  %145 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %143) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %149

146:                                              ; preds = %136
  %147 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %143) #9, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !23
  %148 = trunc i16 %147 to i8
  br label %149

149:                                              ; preds = %146, %144
  %150 = phi i8 [ %145, %144 ], [ %148, %146 ]
  %151 = getelementptr i8, ptr %138, i32 1
  store i8 %150, ptr %138, align 1
  %152 = add nuw nsw i32 %137, 1
  %153 = icmp eq i32 %152, %131
  br i1 %153, label %154, label %136

154:                                              ; preds = %149
  %155 = sub i32 %116, %131
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %159, label %115

157:                                              ; preds = %88
  %158 = tail call fastcc i32 @qspi_transfer_out_in(ptr noundef %5, ptr noundef %2)
  br label %159

159:                                              ; preds = %157, %154, %134, %111, %107, %86, %63, %36, %13
  %160 = phi i32 [ %14, %13 ], [ %158, %157 ], [ %61, %63 ], [ 0, %86 ], [ %38, %36 ], [ %132, %134 ], [ %109, %107 ], [ 0, %111 ], [ 0, %154 ]
  ret i32 %160
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @qspi_transfer_out_in(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr i8, ptr %3, i32 3
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %6 = icmp sgt i8 %5, -1
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 13
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 2
  %11 = icmp eq i8 %10, 0
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr i8, ptr %12, i32 4
  br i1 %11, label %16, label %14

14:                                               ; preds = %7
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %13) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %18

16:                                               ; preds = %7
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %13) #9, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !23
  br label %18

18:                                               ; preds = %16, %14, %2
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr i8, ptr %19, i32 24
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %20, i8 -64) #9, !srcloc !12
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr i8, ptr %21, i32 24
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %22, i8 0) #9, !srcloc !12
  %23 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.spi_controller, ptr %24, i32 0, i32 24
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %46, label %28

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 12
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.spi_ops, ptr %32, i32 0, i32 6
  %34 = load i16, ptr %33, align 4
  %35 = zext i16 %34 to i32
  %36 = icmp ugt i32 %30, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 5
  %39 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  %42 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 6
  %43 = select i1 %41, ptr null, ptr %42
  %44 = tail call fastcc i32 @rspi_dma_transfer(ptr noundef %0, ptr noundef %38, ptr noundef %43) #9
  %45 = icmp eq i32 %44, -11
  br i1 %45, label %46, label %133

46:                                               ; preds = %37, %28, %18
  %47 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %133, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = load ptr, ptr %1, align 4
  %54 = getelementptr inbounds %struct.rspi_data, ptr %0, i32 0, i32 13
  br label %55

55:                                               ; preds = %126, %50
  %56 = phi i32 [ %48, %50 ], [ %127, %126 ]
  %57 = phi ptr [ %52, %50 ], [ %123, %126 ]
  %58 = phi ptr [ %53, %50 ], [ %90, %126 ]
  %59 = icmp ugt i32 %56, 31
  %60 = load ptr, ptr %0, align 4
  %61 = getelementptr i8, ptr %60, i32 24
  %62 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %61) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9
  br i1 %59, label %63, label %67

63:                                               ; preds = %55
  %64 = or i8 %62, 48
  %65 = load ptr, ptr %0, align 4
  %66 = getelementptr i8, ptr %65, i32 24
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %66, i8 %64) #9, !srcloc !12
  br label %71

67:                                               ; preds = %55
  %68 = and i8 %62, -49
  %69 = load ptr, ptr %0, align 4
  %70 = getelementptr i8, ptr %69, i32 24
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %70, i8 %68) #9, !srcloc !12
  br label %71

71:                                               ; preds = %67, %63
  %72 = tail call i32 @llvm.umin.i32(i32 %56, i32 32) #9
  %73 = load ptr, ptr %0, align 4
  %74 = getelementptr i8, ptr %73, i32 24
  %75 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %74) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9
  br i1 %59, label %76, label %80

76:                                               ; preds = %71
  %77 = or i8 %75, 7
  %78 = load ptr, ptr %0, align 4
  %79 = getelementptr i8, ptr %78, i32 24
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %79, i8 %77) #9, !srcloc !12
  br label %84

80:                                               ; preds = %71
  %81 = and i8 %75, -8
  %82 = load ptr, ptr %0, align 4
  %83 = getelementptr i8, ptr %82, i32 24
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %83, i8 %81) #9, !srcloc !12
  br label %84

84:                                               ; preds = %80, %76
  %85 = tail call fastcc i32 @rspi_wait_for_interrupt(ptr noundef %0, i8 noundef zeroext 32, i8 noundef zeroext 32) #9
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %129, label %87

87:                                               ; preds = %102, %84
  %88 = phi i32 [ %103, %102 ], [ 0, %84 ]
  %89 = phi ptr [ %90, %102 ], [ %58, %84 ]
  %90 = getelementptr i8, ptr %89, i32 1
  %91 = load i8, ptr %89, align 1
  %92 = load i8, ptr %54, align 4
  %93 = and i8 %92, 2
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %87
  %96 = load ptr, ptr %0, align 4
  %97 = getelementptr i8, ptr %96, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %97, i8 %91) #9, !srcloc !12
  br label %102

98:                                               ; preds = %87
  %99 = zext i8 %91 to i16
  %100 = load ptr, ptr %0, align 4
  %101 = getelementptr i8, ptr %100, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !20
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %101, i16 %99) #9, !srcloc !21
  br label %102

102:                                              ; preds = %98, %95
  %103 = add nuw nsw i32 %88, 1
  %104 = icmp eq i32 %103, %72
  br i1 %104, label %105, label %87

105:                                              ; preds = %102
  %106 = tail call fastcc i32 @rspi_wait_for_interrupt(ptr noundef %0, i8 noundef zeroext -128, i8 noundef zeroext -128) #9
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %129, label %108

108:                                              ; preds = %121, %105
  %109 = phi i32 [ %124, %121 ], [ 0, %105 ]
  %110 = phi ptr [ %123, %121 ], [ %57, %105 ]
  %111 = load i8, ptr %54, align 4
  %112 = and i8 %111, 2
  %113 = icmp eq i8 %112, 0
  %114 = load ptr, ptr %0, align 4
  %115 = getelementptr i8, ptr %114, i32 4
  br i1 %113, label %118, label %116

116:                                              ; preds = %108
  %117 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %115) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %121

118:                                              ; preds = %108
  %119 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %115) #9, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !23
  %120 = trunc i16 %119 to i8
  br label %121

121:                                              ; preds = %118, %116
  %122 = phi i8 [ %117, %116 ], [ %120, %118 ]
  %123 = getelementptr i8, ptr %110, i32 1
  store i8 %122, ptr %110, align 1
  %124 = add nuw nsw i32 %109, 1
  %125 = icmp eq i32 %124, %72
  br i1 %125, label %126, label %108

126:                                              ; preds = %121
  %127 = sub i32 %56, %72
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %133, label %55

129:                                              ; preds = %105, %84
  %130 = phi ptr [ @.str.22, %84 ], [ @.str.23, %105 ]
  %131 = phi i32 [ %85, %84 ], [ %106, %105 ]
  %132 = load ptr, ptr %23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %132, ptr noundef nonnull %130) #10
  br label %133

133:                                              ; preds = %129, %126, %46, %37
  %134 = phi i32 [ %44, %37 ], [ 0, %46 ], [ %131, %129 ], [ 0, %126 ]
  ret i32 %134
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rspi_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rspi_data, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @spi_controller_suspend(ptr noundef %5) #9
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rspi_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rspi_data, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @spi_controller_resume(ptr noundef %5) #9
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"auto-init"}
!9 = !{i64 3494833}
!10 = !{i64 2151033560}
!11 = !{i64 2151034858}
!12 = !{i64 3494438}
!13 = !{i64 2148962347}
!14 = !{i64 2148958171}
!15 = !{i64 2148958246, i64 2148958273, i64 2148958320, i64 2148958342, i64 2148958370, i64 2148958390}
!16 = !{i64 483745}
!17 = !{i64 2148986491}
!18 = !{i64 2151035728}
!19 = !{i64 3494635}
!20 = !{i64 2151035255}
!21 = !{i64 3494015}
!22 = !{i64 3494215}
!23 = !{i64 2151034033}
