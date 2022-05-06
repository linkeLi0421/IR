; ModuleID = '/llk/IR/drivers/spi/spi-stm32-qspi.c_pt.bc'
source_filename = "../drivers/spi/spi-stm32-qspi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type {}
%struct.spi_controller_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.stm32_qspi = type { ptr, ptr, i32, ptr, ptr, i32, ptr, i32, [2 x %struct.stm32_qspi_flash], %struct.completion, %struct.completion, i32, ptr, ptr, %struct.completion, i32, i32, i32, %struct.mutex }
%struct.stm32_qspi_flash = type { i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_mem_op = type { %struct.anon.68, %struct.anon.69, %struct.anon.70, %struct.anon.71 }
%struct.anon.68 = type { i8, i8, i8, i16 }
%struct.anon.69 = type { i8, i8, i8, i64 }
%struct.anon.70 = type { i8, i8, i8 }
%struct.anon.71 = type { i8, i8, i32, i32, %union.anon.72 }
%union.anon.72 = type { ptr }
%struct.spi_mem_dirmap_desc = type { ptr, %struct.spi_mem_dirmap_info, i32, ptr }
%struct.spi_mem_dirmap_info = type { %struct.spi_mem_op, i64, i64 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__initcall__kmod_spi_stm32_qspi__271_890_stm32_qspi_driver_init6 = internal global ptr @stm32_qspi_driver_init, section ".initcall6.init", align 4
@stm32_qspi_driver = internal global %struct.platform_driver { ptr @stm32_qspi_probe, ptr @stm32_qspi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_qspi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_qspi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_stm32_qspi_driver_exit = internal global ptr @stm32_qspi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author272 = internal constant [59 x i8] c"spi_stm32_qspi.author=Ludovic Barre <ludovic.barre@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description273 = internal constant [68 x i8] c"spi_stm32_qspi.description=STMicroelectronics STM32 quad spi driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file274 = internal constant [47 x i8] c"spi_stm32_qspi.file=drivers/spi/spi-stm32-qspi\00", section ".modinfo", align 1
@__UNIQUE_ID_license275 = internal constant [30 x i8] c"spi_stm32_qspi.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"stm32-qspi\00", align 1
@stm32_qspi_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32f469-qspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@stm32_qspi_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_qspi_suspend, ptr @stm32_qspi_resume, ptr @stm32_qspi_suspend, ptr @stm32_qspi_resume, ptr @stm32_qspi_suspend, ptr @stm32_qspi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_qspi_runtime_suspend, ptr @stm32_qspi_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"qspi\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"qspi_mm\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"failed to request irq\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"can not enable the clock\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@stm32_qspi_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"&qspi->lock\00", align 1
@stm32_qspi_mem_ops = internal constant %struct.spi_controller_mem_ops { ptr null, ptr null, ptr @stm32_qspi_exec_op, ptr null, ptr @stm32_qspi_dirmap_create, ptr null, ptr @stm32_qspi_dirmap_read, ptr null, ptr @stm32_qspi_poll_status }, align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"dma rx config failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"dma tx config failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"%s err:%d err_poll_status:%d abort timeout:%d\0A\00", align 1
@__func__.stm32_qspi_send = private unnamed_addr constant [16 x i8] c"stm32_qspi_send\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"fifo timeout (len:%d stat:%#x)\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author272, ptr @__UNIQUE_ID_description273, ptr @__UNIQUE_ID_file274, ptr @__UNIQUE_ID_license275, ptr @__exitcall_stm32_qspi_driver_exit, ptr @__initcall__kmod_spi_stm32_qspi__271_890_stm32_qspi_driver_init6, ptr @stm32_qspi_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @stm32_qspi_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_qspi_driver, ptr noundef null) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @stm32_qspi_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_qspi_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_qspi_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @__devm_spi_alloc_controller(ptr noundef %2, i32 noundef 140, i1 noundef zeroext false) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %117, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.stm32_qspi, ptr %7, i32 0, i32 1
  store ptr %3, ptr %8, align 4
  %9 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.1) #10
  %10 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %9) #10
  %11 = getelementptr inbounds %struct.stm32_qspi, ptr %7, i32 0, i32 3
  store ptr %10, ptr %11, align 4
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = ptrtoint ptr %10 to i32
  br label %117

15:                                               ; preds = %5
  %16 = load i32, ptr %9, align 4
  %17 = getelementptr inbounds %struct.stm32_qspi, ptr %7, i32 0, i32 2
  store i32 %16, ptr %17, align 4
  %18 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.2) #10
  %19 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %18) #10
  %20 = getelementptr inbounds %struct.stm32_qspi, ptr %7, i32 0, i32 4
  store ptr %19, ptr %20, align 4
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = ptrtoint ptr %19 to i32
  br label %117

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.resource, ptr %18, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr %18, align 4
  %28 = add i32 %26, 1
  %29 = sub i32 %28, %27
  %30 = getelementptr inbounds %struct.stm32_qspi, ptr %7, i32 0, i32 5
  store i32 %29, ptr %30, align 4
  %31 = icmp ugt i32 %29, 268435456
  br i1 %31, label %117, label %32

32:                                               ; preds = %24
  %33 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #10
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %117, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load ptr, ptr %2, align 4
  br label %41

41:                                               ; preds = %39, %35
  %42 = phi ptr [ %40, %39 ], [ %37, %35 ]
  %43 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %33, ptr noundef nonnull @stm32_qspi_irq, ptr noundef null, i32 noundef 0, ptr noundef %42, ptr noundef %7) #10
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #11
  br label %117

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.stm32_qspi, ptr %7, i32 0, i32 9
  store i32 0, ptr %47, align 4
  %48 = getelementptr inbounds %struct.stm32_qspi, ptr %7, i32 0, i32 9, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %48, ptr noundef nonnull @.str.6, ptr noundef nonnull @init_completion.__key) #10
  %49 = getelementptr inbounds %struct.stm32_qspi, ptr %7, i32 0, i32 10
  store i32 0, ptr %49, align 4
  %50 = getelementptr inbounds %struct.stm32_qspi, ptr %7, i32 0, i32 10, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %50, ptr noundef nonnull @.str.6, ptr noundef nonnull @init_completion.__key) #10
  %51 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #10
  %52 = getelementptr inbounds %struct.stm32_qspi, ptr %7, i32 0, i32 6
  store ptr %51, ptr %52, align 4
  %53 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = ptrtoint ptr %51 to i32
  br label %117

56:                                               ; preds = %46
  %57 = tail call i32 @clk_get_rate(ptr noundef %51) #10
  %58 = getelementptr inbounds %struct.stm32_qspi, ptr %7, i32 0, i32 7
  store i32 %57, ptr %58, align 4
  %59 = icmp eq i32 %57, 0
  br i1 %59, label %117, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %52, align 4
  %62 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %61)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #11
  br label %117

65:                                               ; preds = %60
  %66 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %67 = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = icmp eq ptr %66, inttoptr (i32 -517 to ptr)
  br i1 %69, label %114, label %74

70:                                               ; preds = %65
  %71 = tail call i32 @reset_control_assert(ptr noundef %66) #10
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 429496) #10
  %73 = tail call i32 @reset_control_deassert(ptr noundef %66) #10
  br label %74

74:                                               ; preds = %70, %68
  store ptr %2, ptr %7, align 4
  %75 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %75, align 8
  %76 = tail call fastcc i32 @stm32_qspi_dma_setup(ptr noundef %7)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %112

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.stm32_qspi, ptr %7, i32 0, i32 18
  tail call void @__mutex_init(ptr noundef %79, ptr noundef nonnull @.str.5, ptr noundef nonnull @stm32_qspi_probe.__key) #10
  %80 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 5
  store i32 3840, ptr %80, align 8
  %81 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 20
  store ptr @stm32_qspi_setup, ptr %81, align 4
  %82 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 2
  store i16 -1, ptr %82, align 8
  %83 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 53
  store ptr @stm32_qspi_mem_ops, ptr %83, align 4
  %84 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 3
  store i16 2, ptr %84, align 2
  %85 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  store ptr %86, ptr %87, align 8
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %2, i32 noundef -1) #10
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %2, i1 noundef zeroext true) #10
  %88 = tail call i32 @__pm_runtime_set_status(ptr noundef %2, i32 noundef 0) #10
  tail call void @pm_runtime_enable(ptr noundef %2) #10
  %89 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %89) #10, !srcloc !8
  %90 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %89, ptr %89, i32 1, ptr elementtype(i32) %89) #10, !srcloc !9
  %91 = tail call i32 @spi_register_controller(ptr noundef nonnull %3) #10
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %78
  %94 = tail call i64 @ktime_get_mono_fast_ns() #10
  %95 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 22
  store volatile i64 %94, ptr %95, align 8
  %96 = tail call i32 @__pm_runtime_suspend(ptr noundef %2, i32 noundef 13) #10
  br label %117

97:                                               ; preds = %78
  %98 = load ptr, ptr %7, align 4
  %99 = tail call i32 @__pm_runtime_resume(ptr noundef %98, i32 noundef 4) #10
  %100 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 0) #10, !srcloc !10
  %101 = load ptr, ptr %7, align 4
  %102 = getelementptr inbounds %struct.device, ptr %101, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %102) #10, !srcloc !8
  %103 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %102, ptr %102, i32 0, i32 -1, ptr elementtype(i32) %102) #10, !srcloc !12
  %104 = extractvalue { i32, i32, i32 } %103, 0
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %97
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  br label %107

107:                                              ; preds = %106, %97
  %108 = load ptr, ptr %7, align 4
  tail call void @__pm_runtime_disable(ptr noundef %108, i1 noundef zeroext true) #10
  %109 = load ptr, ptr %7, align 4
  %110 = tail call i32 @__pm_runtime_set_status(ptr noundef %109, i32 noundef 2) #10
  %111 = load ptr, ptr %7, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %111, i1 noundef zeroext false) #10
  br label %112

112:                                              ; preds = %107, %74
  %113 = phi i32 [ %76, %74 ], [ %91, %107 ]
  tail call fastcc void @stm32_qspi_dma_free(ptr noundef %7)
  br label %114

114:                                              ; preds = %112, %68
  %115 = phi i32 [ -517, %68 ], [ %113, %112 ]
  %116 = load ptr, ptr %52, align 4
  tail call void @clk_disable(ptr noundef %116) #10
  tail call void @clk_unprepare(ptr noundef %116) #10
  br label %117

117:                                              ; preds = %114, %93, %64, %56, %54, %45, %32, %24, %22, %13, %1
  %118 = phi i32 [ %14, %13 ], [ %23, %22 ], [ %43, %45 ], [ %55, %54 ], [ %62, %64 ], [ %115, %114 ], [ 0, %93 ], [ -12, %1 ], [ -22, %24 ], [ %33, %32 ], [ -22, %56 ]
  ret i32 %118
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_qspi_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #10
  %6 = getelementptr inbounds %struct.stm32_qspi, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void @spi_unregister_controller(ptr noundef %7) #10
  %8 = getelementptr inbounds %struct.stm32_qspi, ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #10, !srcloc !10
  %10 = getelementptr inbounds %struct.stm32_qspi, ptr %3, i32 0, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  tail call void @dma_release_channel(ptr noundef nonnull %11) #10
  br label %14

14:                                               ; preds = %13, %1
  %15 = getelementptr inbounds %struct.stm32_qspi, ptr %3, i32 0, i32 13
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @dma_release_channel(ptr noundef nonnull %16) #10
  br label %19

19:                                               ; preds = %18, %14
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #10, !srcloc !8
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 0, i32 -1, ptr elementtype(i32) %21) #10, !srcloc !12
  %23 = extractvalue { i32, i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  br label %26

26:                                               ; preds = %25, %19
  %27 = load ptr, ptr %3, align 4
  tail call void @__pm_runtime_disable(ptr noundef %27, i1 noundef zeroext true) #10
  %28 = load ptr, ptr %3, align 4
  %29 = tail call i32 @__pm_runtime_set_status(ptr noundef %28, i32 noundef 2) #10
  %30 = load ptr, ptr %3, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %30, i1 noundef zeroext false) #10
  %31 = getelementptr inbounds %struct.stm32_qspi, ptr %3, i32 0, i32 6
  %32 = load ptr, ptr %31, align 4
  tail call void @clk_disable(ptr noundef %32) #10
  tail call void @clk_unprepare(ptr noundef %32) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_qspi_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.stm32_qspi, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #10, !srcloc !14
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr i8, ptr %6, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #10, !srcloc !14
  %9 = and i32 %5, 524288
  %10 = icmp eq i32 %9, 0
  %11 = and i32 %8, 8
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = and i32 %5, -524289
  %16 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %15) #10, !srcloc !10
  %17 = getelementptr inbounds %struct.stm32_qspi, ptr %1, i32 0, i32 10
  br label %25

18:                                               ; preds = %2
  %19 = and i32 %8, 3
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = and i32 %5, -196609
  %23 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %22) #10, !srcloc !10
  %24 = getelementptr inbounds %struct.stm32_qspi, ptr %1, i32 0, i32 9
  br label %25

25:                                               ; preds = %21, %14
  %26 = phi ptr [ %24, %21 ], [ %17, %14 ]
  tail call void @complete(ptr noundef %26) #10
  br label %27

27:                                               ; preds = %25, %18
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #5 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #10
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #10
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_qspi_dma_setup(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.dma_slave_config, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #10
  %3 = load ptr, ptr %0, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %2, i8 0, i32 48, i1 false)
  %4 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 3
  store i32 1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 4
  store i32 1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.stm32_qspi, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 32
  %9 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 2
  store i32 %8, ptr %10, align 4
  %11 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 5
  store i32 4, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 6
  store i32 4, ptr %12, align 4
  %13 = tail call ptr @dma_request_chan(ptr noundef %3, ptr noundef nonnull @.str.7) #10
  %14 = getelementptr inbounds %struct.stm32_qspi, ptr %0, i32 0, i32 13
  store ptr %13, ptr %14, align 4
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = ptrtoint ptr %13 to i32
  store ptr null, ptr %14, align 4
  %18 = icmp eq ptr %13, inttoptr (i32 -517 to ptr)
  br i1 %18, label %48, label %29

19:                                               ; preds = %1
  %20 = load ptr, ptr %13, align 4
  %21 = getelementptr inbounds %struct.dma_device, ptr %20, i32 0, i32 44
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = call i32 %22(ptr noundef %13, ptr noundef nonnull %2) #10
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24, %19
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8) #11
  %28 = load ptr, ptr %14, align 4
  call void @dma_release_channel(ptr noundef %28) #10
  store ptr null, ptr %14, align 4
  br label %29

29:                                               ; preds = %27, %24, %16
  %30 = phi i32 [ %17, %16 ], [ 0, %27 ], [ 0, %24 ]
  %31 = call ptr @dma_request_chan(ptr noundef %3, ptr noundef nonnull @.str.9) #10
  %32 = getelementptr inbounds %struct.stm32_qspi, ptr %0, i32 0, i32 12
  store ptr %31, ptr %32, align 4
  %33 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = ptrtoint ptr %31 to i32
  br label %46

36:                                               ; preds = %29
  %37 = load ptr, ptr %31, align 4
  %38 = getelementptr inbounds %struct.dma_device, ptr %37, i32 0, i32 44
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = call i32 %39(ptr noundef %31, ptr noundef nonnull %2) #10
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41, %36
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10) #11
  %45 = load ptr, ptr %32, align 4
  call void @dma_release_channel(ptr noundef %45) #10
  br label %46

46:                                               ; preds = %44, %34
  %47 = phi i32 [ %30, %44 ], [ %35, %34 ]
  store ptr null, ptr %32, align 4
  br label %48

48:                                               ; preds = %46, %41, %16
  %49 = phi i32 [ -517, %16 ], [ %30, %41 ], [ %47, %46 ]
  %50 = getelementptr inbounds %struct.stm32_qspi, ptr %0, i32 0, i32 14
  store i32 0, ptr %50, align 4
  %51 = getelementptr inbounds %struct.stm32_qspi, ptr %0, i32 0, i32 14, i32 1
  call void @__init_swait_queue_head(ptr noundef %51, ptr noundef nonnull @.str.6, ptr noundef nonnull @init_completion.__key) #10
  %52 = icmp eq i32 %49, -517
  %53 = select i1 %52, i32 -517, i32 0
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #10
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_qspi_setup(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 33
  %7 = load i8, ptr %6, align 1, !range !15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %49

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %49, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 4
  %15 = tail call i32 @__pm_runtime_resume(ptr noundef %14, i32 noundef 4) #10
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #10, !srcloc !8
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 0, i32 -1, ptr elementtype(i32) %19) #10, !srcloc !12
  %21 = extractvalue { i32, i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %49, label %23

23:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  br label %49

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.stm32_qspi, ptr %5, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr %10, align 8
  %28 = add i32 %26, -1
  %29 = add i32 %28, %27
  %30 = udiv i32 %29, %27
  %31 = add i32 %30, -1
  %32 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 4
  %33 = load i8, ptr %32, align 4
  %34 = zext i8 %33 to i32
  %35 = getelementptr %struct.stm32_qspi, ptr %5, i32 0, i32 8, i32 %34
  store i32 %34, ptr %35, align 4
  %36 = getelementptr %struct.stm32_qspi, ptr %5, i32 0, i32 8, i32 %34, i32 1
  store i32 %31, ptr %36, align 4
  %37 = getelementptr inbounds %struct.stm32_qspi, ptr %5, i32 0, i32 18
  tail call void @mutex_lock(ptr noundef %37) #10
  %38 = getelementptr inbounds %struct.stm32_qspi, ptr %5, i32 0, i32 15
  store i32 4195089, ptr %38, align 4
  %39 = getelementptr inbounds %struct.stm32_qspi, ptr %5, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 4195089) #10, !srcloc !10
  %41 = getelementptr inbounds %struct.stm32_qspi, ptr %5, i32 0, i32 16
  store i32 2031616, ptr %41, align 4
  %42 = load ptr, ptr %39, align 4
  %43 = getelementptr i8, ptr %42, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 2031616) #10, !srcloc !10
  tail call void @mutex_unlock(ptr noundef %37) #10
  %44 = load ptr, ptr %5, align 4
  %45 = tail call i64 @ktime_get_mono_fast_ns() #10
  %46 = getelementptr inbounds %struct.device, ptr %44, i32 0, i32 11, i32 22
  store volatile i64 %45, ptr %46, align 8
  %47 = load ptr, ptr %5, align 4
  %48 = tail call i32 @__pm_runtime_suspend(ptr noundef %47, i32 noundef 13) #10
  br label %49

49:                                               ; preds = %24, %23, %17, %9, %1
  %50 = phi i32 [ 0, %24 ], [ -16, %1 ], [ -22, %9 ], [ %15, %17 ], [ %15, %23 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_register_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stm32_qspi_dma_free(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.stm32_qspi, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @dma_release_channel(ptr noundef nonnull %3) #10
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.stm32_qspi, ptr %0, i32 0, i32 13
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @dma_release_channel(ptr noundef nonnull %8) #10
  br label %11

11:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_qspi_exec_op(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #10
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #10, !srcloc !8
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 0, i32 -1, ptr elementtype(i32) %13) #10, !srcloc !12
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %37, label %17

17:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  br label %37

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.stm32_qspi, ptr %7, i32 0, i32 18
  tail call void @mutex_lock(ptr noundef %19) #10
  %20 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %18
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi i32 [ 0, %27 ], [ 67108864, %23 ]
  %30 = getelementptr inbounds %struct.stm32_qspi, ptr %7, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = tail call fastcc i32 @stm32_qspi_send(ptr noundef %0, ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %19) #10
  %32 = load ptr, ptr %7, align 4
  %33 = tail call i64 @ktime_get_mono_fast_ns() #10
  %34 = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 11, i32 22
  store volatile i64 %33, ptr %34, align 8
  %35 = load ptr, ptr %7, align 4
  %36 = tail call i32 @__pm_runtime_suspend(ptr noundef %35, i32 noundef 13) #10
  br label %37

37:                                               ; preds = %28, %17, %11
  %38 = phi i32 [ %31, %28 ], [ %9, %11 ], [ %9, %17 ]
  ret i32 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @stm32_qspi_dirmap_create(ptr nocapture noundef readonly %0) #7 {
  %2 = load ptr, ptr %0, align 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %0, i32 0, i32 1, i32 0, i32 3, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %22, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.stm32_qspi, ptr %7, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  %15 = icmp eq i32 %9, 1
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.stm32_qspi, ptr %7, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 -95, i32 0
  br label %22

22:                                               ; preds = %17, %11, %1
  %23 = phi i32 [ -95, %1 ], [ -95, %11 ], [ %21, %17 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_qspi_dirmap_read(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) #2 {
  %5 = alloca %struct.spi_mem_op, align 8
  %6 = load ptr, ptr %0, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.spi_device, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #10
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @__pm_runtime_resume(ptr noundef %12, i32 noundef 4) #10
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %4
  %16 = load ptr, ptr %11, align 4
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #10, !srcloc !8
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 0, i32 -1, ptr elementtype(i32) %17) #10, !srcloc !12
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %52, label %21

21:                                               ; preds = %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  br label %52

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.stm32_qspi, ptr %11, i32 0, i32 18
  tail call void @mutex_lock(ptr noundef %23) #10
  %24 = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %0, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef align 8 dereferenceable(48) %24, i32 48, i1 false)
  %25 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 3, i32 3
  store i32 %2, ptr %25, align 4
  %26 = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %0, i32 0, i32 1, i32 1
  %27 = load i64, ptr %26, align 8
  %28 = add i64 %27, %1
  %29 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 1, i32 3
  store i64 %28, ptr %29, align 8
  %30 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 3, i32 4
  store ptr %3, ptr %30, align 8
  %31 = trunc i64 %28 to i32
  %32 = add i32 %2, 1
  %33 = add i32 %32, %31
  %34 = getelementptr inbounds %struct.stm32_qspi, ptr %11, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = icmp uge i32 %33, %35
  %37 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 1, i32 1
  %38 = load i8, ptr %37, align 1
  %39 = icmp eq i8 %38, 0
  %40 = select i1 %36, i1 true, i1 %39
  %41 = select i1 %40, i32 67108864, i32 201326592
  %42 = getelementptr inbounds %struct.stm32_qspi, ptr %11, i32 0, i32 11
  store i32 %41, ptr %42, align 4
  %43 = load ptr, ptr %0, align 8
  %44 = call fastcc i32 @stm32_qspi_send(ptr noundef %43, ptr noundef nonnull %5)
  call void @mutex_unlock(ptr noundef %23) #10
  %45 = load ptr, ptr %11, align 4
  %46 = call i64 @ktime_get_mono_fast_ns() #10
  %47 = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 11, i32 22
  store volatile i64 %46, ptr %47, align 8
  %48 = load ptr, ptr %11, align 4
  %49 = call i32 @__pm_runtime_suspend(ptr noundef %48, i32 noundef 13) #10
  %50 = icmp eq i32 %44, 0
  %51 = select i1 %50, i32 %2, i32 %44
  br label %52

52:                                               ; preds = %22, %21, %15
  %53 = phi i32 [ %51, %22 ], [ %13, %15 ], [ %13, %21 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #10
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_qspi_poll_status(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #2 {
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.spi_device, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = tail call zeroext i1 @spi_mem_supports_op(ptr noundef %0, ptr noundef %1) #10
  br i1 %13, label %14, label %42

14:                                               ; preds = %7
  %15 = load ptr, ptr %12, align 4
  %16 = tail call i32 @__pm_runtime_resume(ptr noundef %15, i32 noundef 4) #10
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load ptr, ptr %12, align 4
  %20 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #10, !srcloc !8
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 0, i32 -1, ptr elementtype(i32) %20) #10, !srcloc !12
  %22 = extractvalue { i32, i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %42, label %24

24:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  br label %42

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.stm32_qspi, ptr %12, i32 0, i32 18
  tail call void @mutex_lock(ptr noundef %26) #10
  %27 = zext i16 %2 to i32
  %28 = getelementptr inbounds %struct.stm32_qspi, ptr %12, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %27) #10, !srcloc !10
  %31 = zext i16 %3 to i32
  %32 = load ptr, ptr %28, align 4
  %33 = getelementptr i8, ptr %32, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #10, !srcloc !10
  %34 = getelementptr inbounds %struct.stm32_qspi, ptr %12, i32 0, i32 11
  store i32 134217728, ptr %34, align 4
  %35 = getelementptr inbounds %struct.stm32_qspi, ptr %12, i32 0, i32 17
  store i32 %6, ptr %35, align 4
  %36 = tail call fastcc i32 @stm32_qspi_send(ptr noundef %0, ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %26) #10
  %37 = load ptr, ptr %12, align 4
  %38 = tail call i64 @ktime_get_mono_fast_ns() #10
  %39 = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 11, i32 22
  store volatile i64 %38, ptr %39, align 8
  %40 = load ptr, ptr %12, align 4
  %41 = tail call i32 @__pm_runtime_suspend(ptr noundef %40, i32 noundef 13) #10
  br label %42

42:                                               ; preds = %25, %24, %18, %7
  %43 = phi i32 [ %36, %25 ], [ -95, %7 ], [ %16, %18 ], [ %16, %24 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_qspi_send(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.sg_table, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.spi_device, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.spi_device, ptr %4, i32 0, i32 4
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  %12 = getelementptr %struct.stm32_qspi, ptr %8, i32 0, i32 8, i32 %11
  %13 = tail call i64 @ktime_get() #10
  %14 = add i64 %13, 100000000
  %15 = getelementptr inbounds %struct.stm32_qspi, ptr %8, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #10, !srcloc !14
  %19 = and i32 %18, 32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %24, %2
  %22 = tail call i64 @ktime_get() #10
  %23 = icmp sgt i64 %22, %14
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748) #10
  %26 = load ptr, ptr %15, align 4
  %27 = getelementptr i8, ptr %26, i32 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #10, !srcloc !14
  %29 = and i32 %28, 32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %37, label %21

31:                                               ; preds = %21
  %32 = load ptr, ptr %15, align 4
  %33 = getelementptr i8, ptr %32, i32 8
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #10, !srcloc !14
  %35 = and i32 %34, 32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %352

37:                                               ; preds = %31, %24, %2
  %38 = load ptr, ptr %15, align 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #10, !srcloc !14
  %40 = getelementptr %struct.stm32_qspi, ptr %8, i32 0, i32 8, i32 %11, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = load i32, ptr %12, align 4
  %43 = and i32 %39, 16777087
  %44 = shl i32 %41, 24
  %45 = or i32 %44, %43
  %46 = shl i32 %42, 7
  %47 = and i32 %46, 128
  %48 = or i32 %47, %45
  %49 = load ptr, ptr %15, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %48) #10, !srcloc !10
  %50 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3
  %51 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %37
  %55 = add i32 %52, -1
  %56 = load ptr, ptr %15, align 4
  %57 = getelementptr i8, ptr %56, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #10, !srcloc !10
  br label %58

58:                                               ; preds = %54, %37
  %59 = getelementptr inbounds %struct.stm32_qspi, ptr %8, i32 0, i32 11
  %60 = getelementptr inbounds %struct.anon.68, ptr %1, i32 0, i32 3
  %61 = load i16, ptr %60, align 4
  %62 = load i32, ptr %59, align 4
  %63 = and i16 %61, 255
  %64 = zext i16 %63 to i32
  %65 = or i32 %62, %64
  %66 = getelementptr inbounds %struct.anon.68, ptr %1, i32 0, i32 1
  %67 = load i8, ptr %66, align 1
  %68 = icmp eq i8 %67, 4
  %69 = select i1 %68, i8 3, i8 %67
  %70 = zext i8 %69 to i32
  %71 = shl nuw nsw i32 %70, 8
  %72 = and i32 %71, 768
  %73 = or i32 %65, %72
  %74 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 1
  %75 = load i8, ptr %74, align 8
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %91, label %77

77:                                               ; preds = %58
  %78 = zext i8 %75 to i32
  %79 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 1, i32 1
  %80 = load i8, ptr %79, align 1
  %81 = icmp eq i8 %80, 4
  %82 = select i1 %81, i8 3, i8 %80
  %83 = zext i8 %82 to i32
  %84 = shl nuw nsw i32 %83, 10
  %85 = and i32 %84, 3072
  %86 = shl nuw nsw i32 %78, 12
  %87 = add nuw nsw i32 %86, 12288
  %88 = and i32 %87, 12288
  %89 = or i32 %73, %88
  %90 = or i32 %89, %85
  br label %91

91:                                               ; preds = %77, %58
  %92 = phi i32 [ %90, %77 ], [ %73, %58 ]
  %93 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 2
  %94 = load i8, ptr %93, align 8
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %107, label %96

96:                                               ; preds = %91
  %97 = zext i8 %94 to i16
  %98 = shl nuw nsw i16 %97, 3
  %99 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 2, i32 1
  %100 = load i8, ptr %99, align 1
  %101 = zext i8 %100 to i16
  %102 = udiv i16 %98, %101
  %103 = zext i16 %102 to i32
  %104 = shl nuw nsw i32 %103, 18
  %105 = and i32 %104, 8126464
  %106 = or i32 %105, %92
  br label %107

107:                                              ; preds = %96, %91
  %108 = phi i32 [ %106, %96 ], [ %92, %91 ]
  %109 = load i32, ptr %51, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %119, label %111

111:                                              ; preds = %107
  %112 = load i8, ptr %50, align 4
  %113 = icmp eq i8 %112, 4
  %114 = select i1 %113, i8 3, i8 %112
  %115 = zext i8 %114 to i32
  %116 = shl nuw i32 %115, 24
  %117 = and i32 %116, 50331648
  %118 = or i32 %117, %108
  br label %119

119:                                              ; preds = %111, %107
  %120 = phi i32 [ %118, %111 ], [ %108, %107 ]
  %121 = load ptr, ptr %15, align 4
  %122 = getelementptr i8, ptr %121, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %120) #10, !srcloc !10
  %123 = load i8, ptr %74, align 8
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %134, label %125

125:                                              ; preds = %119
  %126 = load i32, ptr %59, align 4
  %127 = icmp eq i32 %126, 201326592
  br i1 %127, label %151, label %128

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 1, i32 3
  %130 = load i64, ptr %129, align 8
  %131 = trunc i64 %130 to i32
  %132 = load ptr, ptr %15, align 4
  %133 = getelementptr i8, ptr %132, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %131) #10, !srcloc !10
  br label %134

134:                                              ; preds = %128, %119
  %135 = load i32, ptr %59, align 4
  %136 = icmp eq i32 %135, 134217728
  br i1 %136, label %137, label %151

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.stm32_qspi, ptr %8, i32 0, i32 10
  store i32 0, ptr %138, align 4
  %139 = load ptr, ptr %15, align 4
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #10, !srcloc !14
  %141 = or i32 %140, 524288
  %142 = load ptr, ptr %15, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 %141) #10, !srcloc !10
  %143 = getelementptr inbounds %struct.stm32_qspi, ptr %8, i32 0, i32 17
  %144 = load i32, ptr %143, align 4
  %145 = tail call i32 @__msecs_to_jiffies(i32 noundef %144) #10
  %146 = tail call i32 @wait_for_completion_timeout(ptr noundef %138, i32 noundef %145) #10
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %137
  %149 = load ptr, ptr %15, align 4
  %150 = getelementptr i8, ptr %149, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 8) #10, !srcloc !10
  br label %151

151:                                              ; preds = %148, %137, %134, %125
  %152 = phi i1 [ false, %125 ], [ false, %148 ], [ true, %137 ], [ false, %134 ]
  %153 = phi i32 [ 0, %125 ], [ 0, %148 ], [ -110, %137 ], [ 0, %134 ]
  %154 = load i32, ptr %51, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %294, label %156

156:                                              ; preds = %151
  %157 = load i32, ptr %59, align 4
  %158 = icmp eq i32 %157, 201326592
  br i1 %158, label %159, label %168

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 4
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.stm32_qspi, ptr %8, i32 0, i32 4
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 1, i32 3
  %165 = load i64, ptr %164, align 8
  %166 = trunc i64 %165 to i32
  %167 = getelementptr i8, ptr %163, i32 %166
  tail call void @mmiocpy(ptr noundef %161, ptr noundef %167, i32 noundef %154) #10
  br label %294

168:                                              ; preds = %156
  %169 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 2
  %170 = load i32, ptr %169, align 4
  %171 = icmp eq i32 %170, 1
  br i1 %171, label %172, label %178

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.stm32_qspi, ptr %8, i32 0, i32 13
  %174 = load ptr, ptr %173, align 4
  %175 = icmp ne ptr %174, null
  %176 = icmp ugt i32 %154, 4
  %177 = select i1 %175, i1 %176, i1 false
  br i1 %177, label %186, label %249

178:                                              ; preds = %168
  %179 = icmp eq i32 %170, 2
  br i1 %179, label %180, label %249

180:                                              ; preds = %178
  %181 = getelementptr inbounds %struct.stm32_qspi, ptr %8, i32 0, i32 12
  %182 = load ptr, ptr %181, align 4
  %183 = icmp ne ptr %182, null
  %184 = icmp ugt i32 %154, 4
  %185 = select i1 %183, i1 %184, i1 false
  br i1 %185, label %186, label %249

186:                                              ; preds = %180, %172
  %187 = phi i32 [ 2, %172 ], [ 1, %180 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false) #10, !annotation !16
  %188 = getelementptr inbounds %struct.stm32_qspi, ptr %8, i32 0, i32 13
  %189 = getelementptr inbounds %struct.stm32_qspi, ptr %8, i32 0, i32 12
  %190 = select i1 %171, ptr %188, ptr %189
  %191 = load ptr, ptr %190, align 4
  %192 = getelementptr inbounds %struct.stm32_qspi, ptr %8, i32 0, i32 1
  %193 = load ptr, ptr %192, align 4
  %194 = call i32 @spi_controller_dma_map_mem_op_data(ptr noundef %193, ptr noundef %1, ptr noundef nonnull %3) #10
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %186
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  br label %249

197:                                              ; preds = %186
  %198 = load ptr, ptr %3, align 4
  %199 = getelementptr inbounds %struct.sg_table, ptr %3, i32 0, i32 1
  %200 = load i32, ptr %199, align 4
  %201 = icmp eq ptr %191, null
  br i1 %201, label %241, label %202

202:                                              ; preds = %197
  %203 = load ptr, ptr %191, align 4
  %204 = icmp eq ptr %203, null
  br i1 %204, label %241, label %205

205:                                              ; preds = %202
  %206 = getelementptr inbounds %struct.dma_device, ptr %203, i32 0, i32 39
  %207 = load ptr, ptr %206, align 4
  %208 = icmp eq ptr %207, null
  br i1 %208, label %241, label %209

209:                                              ; preds = %205
  %210 = call ptr %207(ptr noundef nonnull %191, ptr noundef %198, i32 noundef %200, i32 noundef %187, i32 noundef 1, ptr noundef null) #10
  %211 = icmp eq ptr %210, null
  br i1 %211, label %241, label %212

212:                                              ; preds = %209
  %213 = load ptr, ptr %15, align 4
  %214 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %213) #10, !srcloc !14
  %215 = getelementptr inbounds %struct.stm32_qspi, ptr %8, i32 0, i32 14
  store i32 0, ptr %215, align 4
  %216 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %210, i32 0, i32 6
  store ptr @stm32_qspi_dma_callback, ptr %216, align 4
  %217 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %210, i32 0, i32 8
  store ptr %215, ptr %217, align 4
  %218 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %210, i32 0, i32 4
  %219 = load ptr, ptr %218, align 4
  %220 = call i32 %219(ptr noundef nonnull %210) #10
  %221 = call i32 @llvm.smin.i32(i32 %220, i32 0) #10
  %222 = icmp sgt i32 %220, -1
  br i1 %222, label %223, label %243

223:                                              ; preds = %212
  %224 = load ptr, ptr %191, align 4
  %225 = getelementptr inbounds %struct.dma_device, ptr %224, i32 0, i32 50
  %226 = load ptr, ptr %225, align 4
  call void %226(ptr noundef nonnull %191) #10
  %227 = or i32 %214, 4
  %228 = load ptr, ptr %15, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %228, i32 %227) #10, !srcloc !10
  %229 = load i32, ptr %199, align 4
  %230 = mul i32 %229, 1000
  %231 = call i32 @__msecs_to_jiffies(i32 noundef %230) #10
  %232 = call i32 @wait_for_completion_timeout(ptr noundef %215, i32 noundef %231) #10
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %243

234:                                              ; preds = %223
  %235 = load ptr, ptr %191, align 4
  %236 = getelementptr inbounds %struct.dma_device, ptr %235, i32 0, i32 47
  %237 = load ptr, ptr %236, align 4
  %238 = icmp eq ptr %237, null
  br i1 %238, label %243, label %239

239:                                              ; preds = %234
  %240 = call i32 %237(ptr noundef nonnull %191) #10
  br label %243

241:                                              ; preds = %209, %205, %202, %197
  %242 = load ptr, ptr %192, align 4
  call void @spi_controller_dma_unmap_mem_op_data(ptr noundef %242, ptr noundef %1, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  br label %249

243:                                              ; preds = %239, %234, %223, %212
  %244 = phi i32 [ %221, %212 ], [ 0, %223 ], [ -110, %234 ], [ -110, %239 ]
  %245 = and i32 %214, -5
  %246 = load ptr, ptr %15, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %246, i32 %245) #10, !srcloc !10
  %247 = load ptr, ptr %192, align 4
  call void @spi_controller_dma_unmap_mem_op_data(ptr noundef %247, ptr noundef %1, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  %248 = icmp eq i32 %244, 0
  br i1 %248, label %294, label %249

249:                                              ; preds = %243, %241, %196, %180, %178, %172
  %250 = load i32, ptr %51, align 4
  %251 = load i32, ptr %169, align 4
  %252 = icmp eq i32 %251, 1
  %253 = select i1 %252, ptr @stm32_qspi_read_fifo, ptr @stm32_qspi_write_fifo
  %254 = icmp eq i32 %250, 0
  br i1 %254, label %294, label %255

255:                                              ; preds = %249
  %256 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 4
  %257 = load ptr, ptr %256, align 4
  br label %258

258:                                              ; preds = %289, %255
  %259 = phi i32 [ %250, %255 ], [ %261, %289 ]
  %260 = phi ptr [ %257, %255 ], [ %290, %289 ]
  %261 = add i32 %259, -1
  %262 = call i64 @ktime_get() #10
  %263 = add i64 %262, 30000000
  %264 = load ptr, ptr %15, align 4
  %265 = getelementptr i8, ptr %264, i32 8
  %266 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %265) #10, !srcloc !14
  %267 = and i32 %266, 4
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %283

269:                                              ; preds = %276, %258
  %270 = call i64 @ktime_get() #10
  %271 = icmp sgt i64 %270, %263
  br i1 %271, label %272, label %276

272:                                              ; preds = %269
  %273 = load ptr, ptr %15, align 4
  %274 = getelementptr i8, ptr %273, i32 8
  %275 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %274) #10, !srcloc !14
  br label %283

276:                                              ; preds = %269
  %277 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %277(i32 noundef 214748) #10
  %278 = load ptr, ptr %15, align 4
  %279 = getelementptr i8, ptr %278, i32 8
  %280 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %279) #10, !srcloc !14
  %281 = and i32 %280, 4
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %269, label %283

283:                                              ; preds = %276, %272, %258
  %284 = phi i32 [ %275, %272 ], [ %266, %258 ], [ %280, %276 ]
  %285 = and i32 %284, 4
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %283
  %288 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %288, ptr noundef nonnull @.str.12, i32 noundef %261, i32 noundef %284) #11
  br label %352

289:                                              ; preds = %283
  %290 = getelementptr i8, ptr %260, i32 1
  %291 = load ptr, ptr %15, align 4
  %292 = getelementptr i8, ptr %291, i32 32
  call void %253(ptr noundef %260, ptr noundef %292) #10, !callees !17
  %293 = icmp eq i32 %261, 0
  br i1 %293, label %294, label %258

294:                                              ; preds = %289, %249, %243, %159, %151
  br i1 %152, label %352, label %295

295:                                              ; preds = %294
  %296 = load i32, ptr %59, align 4
  %297 = icmp eq i32 %296, 201326592
  br i1 %297, label %352, label %298

298:                                              ; preds = %295
  %299 = load i32, ptr %51, align 4
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %328, label %301

301:                                              ; preds = %298
  %302 = load ptr, ptr %15, align 4
  %303 = getelementptr i8, ptr %302, i32 8
  %304 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %303) #10, !srcloc !14
  %305 = and i32 %304, 2
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %321

307:                                              ; preds = %301
  %308 = getelementptr inbounds %struct.stm32_qspi, ptr %8, i32 0, i32 9
  store i32 0, ptr %308, align 4
  %309 = load ptr, ptr %15, align 4
  %310 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %309) #10, !srcloc !14
  %311 = or i32 %310, 196608
  %312 = load ptr, ptr %15, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %312, i32 %311) #10, !srcloc !10
  %313 = call i32 @wait_for_completion_timeout(ptr noundef %308, i32 noundef 100) #10
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %324, label %315

315:                                              ; preds = %307
  %316 = load ptr, ptr %15, align 4
  %317 = getelementptr i8, ptr %316, i32 8
  %318 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %317) #10, !srcloc !14
  %319 = and i32 %318, 1
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %324

321:                                              ; preds = %315, %301
  %322 = load ptr, ptr %15, align 4
  %323 = getelementptr i8, ptr %322, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %323, i32 3) #10, !srcloc !10
  br label %328

324:                                              ; preds = %315, %307
  %325 = phi i32 [ -110, %307 ], [ -5, %315 ]
  %326 = load ptr, ptr %15, align 4
  %327 = getelementptr i8, ptr %326, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %327, i32 3) #10, !srcloc !10
  br label %352

328:                                              ; preds = %321, %298
  %329 = call i64 @ktime_get() #10
  %330 = add i64 %329, 100000000
  %331 = load ptr, ptr %15, align 4
  %332 = getelementptr i8, ptr %331, i32 8
  %333 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %332) #10, !srcloc !14
  %334 = and i32 %333, 32
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %389, label %336

336:                                              ; preds = %339, %328
  %337 = call i64 @ktime_get() #10
  %338 = icmp sgt i64 %337, %330
  br i1 %338, label %346, label %339

339:                                              ; preds = %336
  %340 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %340(i32 noundef 214748) #10
  %341 = load ptr, ptr %15, align 4
  %342 = getelementptr i8, ptr %341, i32 8
  %343 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %342) #10, !srcloc !14
  %344 = and i32 %343, 32
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %389, label %336

346:                                              ; preds = %336
  %347 = load ptr, ptr %15, align 4
  %348 = getelementptr i8, ptr %347, i32 8
  %349 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %348) #10, !srcloc !14
  %350 = and i32 %349, 32
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %389, label %352

352:                                              ; preds = %346, %324, %295, %294, %287, %31
  %353 = phi i32 [ %153, %294 ], [ 0, %295 ], [ 0, %31 ], [ %153, %287 ], [ 0, %324 ], [ 0, %346 ]
  %354 = phi i32 [ 0, %294 ], [ 0, %295 ], [ -110, %31 ], [ -110, %287 ], [ %325, %324 ], [ -110, %346 ]
  %355 = load ptr, ptr %15, align 4
  %356 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %355) #10, !srcloc !14
  %357 = or i32 %356, 2
  %358 = load ptr, ptr %15, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %358, i32 %357) #10, !srcloc !10
  %359 = call i64 @ktime_get() #10
  %360 = add i64 %359, 100000000
  %361 = load ptr, ptr %15, align 4
  %362 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %361) #10, !srcloc !14
  %363 = and i32 %362, 2
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %379, label %365

365:                                              ; preds = %373, %352
  %366 = call i64 @ktime_get() #10
  %367 = icmp sgt i64 %366, %360
  br i1 %367, label %368, label %373

368:                                              ; preds = %365
  %369 = load ptr, ptr %15, align 4
  %370 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %369) #10, !srcloc !14
  %371 = and i32 %370, 2
  %372 = icmp ne i32 %371, 0
  br label %379

373:                                              ; preds = %365
  %374 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %374(i32 noundef 214748) #10
  %375 = load ptr, ptr %15, align 4
  %376 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %375) #10, !srcloc !14
  %377 = and i32 %376, 2
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %365

379:                                              ; preds = %373, %368, %352
  %380 = phi i1 [ false, %352 ], [ %372, %368 ], [ false, %373 ]
  %381 = load ptr, ptr %15, align 4
  %382 = getelementptr i8, ptr %381, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %382, i32 10) #10, !srcloc !10
  %383 = or i32 %354, %353
  %384 = icmp ne i32 %383, 0
  %385 = select i1 %384, i1 true, i1 %380
  br i1 %385, label %386, label %389

386:                                              ; preds = %379
  %387 = select i1 %380, i32 -110, i32 0
  %388 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %388, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.stm32_qspi_send, i32 noundef %354, i32 noundef %353, i32 noundef %387) #11
  br label %389

389:                                              ; preds = %386, %379, %346, %339, %328
  %390 = phi i32 [ 0, %379 ], [ %354, %386 ], [ 0, %328 ], [ 0, %346 ], [ 0, %339 ]
  ret i32 %390
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_dma_map_mem_op_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_qspi_dma_callback(ptr noundef %0) #2 {
  tail call void @complete(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_controller_dma_unmap_mem_op_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_qspi_read_fifo(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #2 {
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1) #10, !srcloc !18
  store i8 %3, ptr %0, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_qspi_write_fifo(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #2 {
  %3 = load i8, ptr %0, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 %3) #10, !srcloc !19
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @spi_mem_supports_op(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unregister_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_qspi_suspend(ptr noundef %0) #2 {
  %2 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #10
  %3 = tail call i32 @pm_runtime_force_suspend(ptr noundef %0) #10
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_qspi_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @pm_runtime_force_resume(ptr noundef %0) #10
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %28, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #10
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #10
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #10, !srcloc !8
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 0, i32 -1, ptr elementtype(i32) %11) #10, !srcloc !12
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  br label %28

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.stm32_qspi, ptr %3, i32 0, i32 15
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.stm32_qspi, ptr %3, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #10, !srcloc !10
  %21 = getelementptr inbounds %struct.stm32_qspi, ptr %3, i32 0, i32 16
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %19, align 4
  %24 = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #10, !srcloc !10
  %25 = tail call i64 @ktime_get_mono_fast_ns() #10
  %26 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 22
  store volatile i64 %25, ptr %26, align 8
  %27 = tail call i32 @__pm_runtime_suspend(ptr noundef %0, i32 noundef 13) #10
  br label %28

28:                                               ; preds = %16, %15, %10, %1
  %29 = phi i32 [ 0, %16 ], [ %4, %1 ], [ %8, %10 ], [ %8, %15 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_qspi_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_qspi, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #10
  tail call void @clk_unprepare(ptr noundef %5) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_qspi_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_qspi, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #10
  br label %12

12:                                               ; preds = %11, %8, %1
  %13 = phi i32 [ %6, %1 ], [ %9, %11 ], [ 0, %8 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 519571, i64 2148009542, i64 2148009568, i64 2148009615, i64 2148009637, i64 2148009665, i64 2148009685}
!9 = !{i64 2148021754, i64 2148021780, i64 2148021809, i64 2148021843, i64 2148021874, i64 2148021897}
!10 = !{i64 5086103}
!11 = !{i64 2148021261}
!12 = !{i64 506140, i64 506165, i64 506187, i64 506203, i64 506215, i64 506235, i64 506259, i64 506275, i64 506287}
!13 = !{i64 2148021387}
!14 = !{i64 5086521}
!15 = !{i8 0, i8 2}
!16 = !{!"auto-init"}
!17 = !{ptr @stm32_qspi_read_fifo, ptr @stm32_qspi_write_fifo}
!18 = !{i64 5086301}
!19 = !{i64 5085906}
