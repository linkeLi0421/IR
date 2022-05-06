; ModuleID = '/llk/IR/drivers/spi/spi-bcm2835aux.c_pt.bc'
source_filename = "../drivers/spi/spi-bcm2835aux.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.60 }
%union.anon.60 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.bcm2835aux_spi = type { ptr, ptr, i32, [2 x i32], ptr, ptr, i32, i32, i32, i64, i64, i64, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }

@__param_str_polling_limit_us = internal constant [32 x i8] c"spi_bcm2835aux.polling_limit_us\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@polling_limit_us = internal global i32 30, align 4
@__param_polling_limit_us = internal constant %struct.kernel_param { ptr @__param_str_polling_limit_us, ptr null, ptr @param_ops_uint, i16 436, i8 -1, i8 0, %union.anon.60 { ptr @polling_limit_us } }, section "__param", align 4
@__UNIQUE_ID_polling_limit_ustype226 = internal constant [46 x i8] c"spi_bcm2835aux.parmtype=polling_limit_us:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_polling_limit_us227 = internal constant [112 x i8] c"spi_bcm2835aux.parm=polling_limit_us:time in us to run a transfer in polling mode - if zero no polling is used\0A\00", section ".modinfo", align 1
@__initcall__kmod_spi_bcm2835aux__232_614_bcm2835aux_spi_driver_init6 = internal global ptr @bcm2835aux_spi_driver_init, section ".initcall6.init", align 4
@bcm2835aux_spi_driver = internal global %struct.platform_driver { ptr @bcm2835aux_spi_probe, ptr @bcm2835aux_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm2835aux_spi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_bcm2835aux_spi_driver_exit = internal global ptr @bcm2835aux_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description233 = internal constant [74 x i8] c"spi_bcm2835aux.description=SPI controller driver for Broadcom BCM2835 aux\00", section ".modinfo", align 1
@__UNIQUE_ID_author234 = internal constant [61 x i8] c"spi_bcm2835aux.author=Martin Sperl <kernel@martin.sperl.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [47 x i8] c"spi_bcm2835aux.file=drivers/spi/spi-bcm2835aux\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [27 x i8] c"spi_bcm2835aux.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [15 x i8] c"spi-bcm2835aux\00", align 1
@bcm2835aux_spi_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-aux-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"could not get clk: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"could not prepare clock: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"clock returns 0 Hz\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"could not request IRQ: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"could not register SPI master: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"could not set gpio %i as output: %i\0A\00", align 1
@.str.7 = private unnamed_addr constant [70 x i8] c"Native CS is not supported - please configure cs-gpio in device-tree\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Native CS is not working for cs > 0\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.9 = private unnamed_addr constant [18 x i8] c"spi-bcm2835aux-%s\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"count_transfer_polling\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"count_transfer_irq\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"count_transfer_irq_after_poll\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__UNIQUE_ID_polling_limit_us227, ptr @__UNIQUE_ID_polling_limit_ustype226, ptr @__exitcall_bcm2835aux_spi_driver_exit, ptr @__initcall__kmod_spi_bcm2835aux__232_614_bcm2835aux_spi_driver_init6, ptr @__param_polling_limit_us, ptr @bcm2835aux_spi_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bcm2835aux_spi_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm2835aux_spi_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @bcm2835aux_spi_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm2835aux_spi_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835aux_spi_probe(ptr noundef %0) #2 {
  %2 = alloca [64 x i8], align 1
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call ptr @__devm_spi_alloc_controller(ptr noundef %3, i32 noundef 72, i1 noundef zeroext false) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %88, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %7, align 8
  %8 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 5
  store i32 70, ptr %8, align 8
  %9 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 7
  store i32 128, ptr %9, align 8
  %10 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 3
  store i16 1, ptr %10, align 2
  %11 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 20
  store ptr @bcm2835aux_spi_setup, ptr %11, align 4
  %12 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 51
  store ptr @bcm2835aux_spi_transfer_one, ptr %12, align 4
  %13 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 52
  store ptr @bcm2835aux_spi_handle_err, ptr %13, align 8
  %14 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 47
  store ptr @bcm2835aux_spi_prepare_message, ptr %14, align 4
  %15 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 48
  store ptr @bcm2835aux_spi_unprepare_message, ptr %15, align 8
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 25
  store ptr %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %20 = load ptr, ptr %19, align 8
  %21 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #8
  store ptr %21, ptr %20, align 8
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = ptrtoint ptr %21 to i32
  br label %88

25:                                               ; preds = %6
  %26 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #8
  %27 = getelementptr inbounds %struct.bcm2835aux_spi, ptr %20, i32 0, i32 1
  store ptr %26, ptr %27, align 4
  %28 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = ptrtoint ptr %26 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef %30) #9
  br label %88

31:                                               ; preds = %25
  %32 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  %33 = getelementptr inbounds %struct.bcm2835aux_spi, ptr %20, i32 0, i32 2
  store i32 %32, ptr %33, align 8
  %34 = icmp slt i32 %32, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = icmp eq i32 %32, 0
  %37 = select i1 %36, i32 -19, i32 %32
  br label %88

38:                                               ; preds = %31
  %39 = load ptr, ptr %27, align 4
  %40 = tail call i32 @clk_prepare(ptr noundef %39) #8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = tail call i32 @clk_enable(ptr noundef %39) #8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  tail call void @clk_unprepare(ptr noundef %39) #8
  br label %46

46:                                               ; preds = %45, %38
  %47 = phi i32 [ %43, %45 ], [ %40, %38 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef %47) #9
  br label %88

48:                                               ; preds = %42
  %49 = load ptr, ptr %27, align 4
  %50 = tail call i32 @clk_get_rate(ptr noundef %49) #8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #9
  br label %85

53:                                               ; preds = %48
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %54 = load ptr, ptr %20, align 8
  %55 = getelementptr i8, ptr %54, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 0) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %56 = load ptr, ptr %20, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 512) #8, !srcloc !9
  %57 = load i32, ptr %33, align 8
  %58 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load ptr, ptr %3, align 4
  br label %63

63:                                               ; preds = %61, %53
  %64 = phi ptr [ %62, %61 ], [ %59, %53 ]
  %65 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %57, ptr noundef nonnull @bcm2835aux_spi_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %64, ptr noundef nonnull %4) #8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %65) #9
  br label %85

68:                                               ; preds = %63
  %69 = tail call i32 @spi_register_controller(ptr noundef nonnull %4) #8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %69) #9
  br label %85

72:                                               ; preds = %68
  %73 = load ptr, ptr %58, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load ptr, ptr %3, align 4
  br label %77

77:                                               ; preds = %75, %72
  %78 = phi ptr [ %76, %75 ], [ %73, %72 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %2, i8 0, i32 64, i1 false) #8, !annotation !10
  %79 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 64, ptr noundef nonnull @.str.9, ptr noundef %78) #8
  %80 = call ptr @debugfs_create_dir(ptr noundef nonnull %2, ptr noundef null) #8
  %81 = getelementptr inbounds %struct.bcm2835aux_spi, ptr %20, i32 0, i32 12
  store ptr %80, ptr %81, align 8
  %82 = getelementptr inbounds %struct.bcm2835aux_spi, ptr %20, i32 0, i32 9
  call void @debugfs_create_u64(ptr noundef nonnull @.str.10, i16 noundef zeroext 292, ptr noundef %80, ptr noundef %82) #8
  %83 = getelementptr inbounds %struct.bcm2835aux_spi, ptr %20, i32 0, i32 10
  call void @debugfs_create_u64(ptr noundef nonnull @.str.11, i16 noundef zeroext 292, ptr noundef %80, ptr noundef %83) #8
  %84 = getelementptr inbounds %struct.bcm2835aux_spi, ptr %20, i32 0, i32 11
  call void @debugfs_create_u64(ptr noundef nonnull @.str.12, i16 noundef zeroext 292, ptr noundef %80, ptr noundef %84) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #8
  br label %88

85:                                               ; preds = %71, %67, %52
  %86 = phi i32 [ %65, %67 ], [ %69, %71 ], [ -19, %52 ]
  %87 = load ptr, ptr %27, align 4
  tail call void @clk_disable(ptr noundef %87) #8
  tail call void @clk_unprepare(ptr noundef %87) #8
  br label %88

88:                                               ; preds = %85, %77, %46, %35, %29, %23, %1
  %89 = phi i32 [ %24, %23 ], [ %30, %29 ], [ %37, %35 ], [ %47, %46 ], [ %86, %85 ], [ 0, %77 ], [ -12, %1 ]
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835aux_spi_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.bcm2835aux_spi, ptr %5, i32 0, i32 12
  %7 = load ptr, ptr %6, align 8
  tail call void @debugfs_remove(ptr noundef %7) #8
  store ptr null, ptr %6, align 8
  tail call void @spi_unregister_controller(ptr noundef %3) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %8 = load ptr, ptr %5, align 8
  %9 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %10 = load ptr, ptr %5, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 512) #8, !srcloc !9
  %11 = getelementptr inbounds %struct.bcm2835aux_spi, ptr %5, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void @clk_disable(ptr noundef %12) #8
  tail call void @clk_unprepare(ptr noundef %12) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835aux_spi_setup(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 64
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 13
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %8, 2048
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = lshr i32 %3, 2
  %12 = and i32 %11, 1
  %13 = xor i32 %12, 1
  %14 = tail call ptr @gpio_to_desc(i32 noundef %8) #8
  %15 = tail call i32 @gpiod_direction_output_raw(ptr noundef %14, i32 noundef %13) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %10
  %18 = load i32, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %18, i32 noundef %15) #9
  br label %24

19:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.7) #9
  %20 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 4
  %21 = load i8, ptr %20, align 4
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.8) #9
  br label %24

24:                                               ; preds = %23, %19, %17, %10, %1
  %25 = phi i32 [ -22, %23 ], [ 0, %1 ], [ %15, %17 ], [ 0, %10 ], [ 0, %19 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835aux_spi_transfer_one(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 12
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.bcm2835aux_spi, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @clk_get_rate(ptr noundef %9) #8
  %11 = lshr i32 %10, 1
  %12 = icmp ult i32 %7, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = icmp eq i32 %7, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %13
  %16 = shl i32 %7, 1
  %17 = add i32 %16, -1
  %18 = add i32 %17, %10
  %19 = udiv i32 %18, %16
  %20 = add i32 %19, -1
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 4095)
  br label %22

22:                                               ; preds = %15, %13, %3
  %23 = phi i32 [ %21, %15 ], [ 0, %3 ], [ 4095, %13 ]
  %24 = getelementptr inbounds %struct.bcm2835aux_spi, ptr %5, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 1048575
  %27 = shl nuw i32 %23, 20
  %28 = or i32 %26, %27
  store i32 %28, ptr %24, align 4
  %29 = shl nuw nsw i32 %23, 1
  %30 = add nuw nsw i32 %29, 2
  %31 = udiv i32 %10, %30
  %32 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = load ptr, ptr %2, align 4
  %34 = getelementptr inbounds %struct.bcm2835aux_spi, ptr %5, i32 0, i32 4
  store ptr %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.bcm2835aux_spi, ptr %5, i32 0, i32 5
  store ptr %36, ptr %37, align 8
  %38 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.bcm2835aux_spi, ptr %5, i32 0, i32 6
  store i32 %39, ptr %40, align 4
  %41 = load i32, ptr %38, align 4
  %42 = getelementptr inbounds %struct.bcm2835aux_spi, ptr %5, i32 0, i32 7
  store i32 %41, ptr %42, align 8
  %43 = getelementptr inbounds %struct.bcm2835aux_spi, ptr %5, i32 0, i32 8
  store i32 0, ptr %43, align 4
  %44 = load i32, ptr @polling_limit_us, align 4
  %45 = add i32 %44, -9000001
  %46 = icmp ult i32 %45, -9000000
  br i1 %46, label %51, label %47

47:                                               ; preds = %22
  %48 = udiv i32 9000000, %44
  %49 = load i32, ptr %32, align 4
  %50 = udiv i32 %49, %48
  br label %51

51:                                               ; preds = %47, %22
  %52 = phi i32 [ %50, %47 ], [ 1, %22 ]
  %53 = load i32, ptr %38, align 4
  %54 = icmp ult i32 %53, %52
  %55 = load ptr, ptr %4, align 8
  br i1 %54, label %56, label %93

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.bcm2835aux_spi, ptr %55, i32 0, i32 9
  %58 = load i64, ptr %57, align 8
  %59 = add i64 %58, 1
  store i64 %59, ptr %57, align 8
  %60 = getelementptr inbounds %struct.bcm2835aux_spi, ptr %55, i32 0, i32 3
  %61 = getelementptr %struct.bcm2835aux_spi, ptr %55, i32 0, i32 3, i32 1
  %62 = load i32, ptr %61, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %63 = load ptr, ptr %55, align 8
  %64 = getelementptr i8, ptr %63, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %62) #8, !srcloc !9
  %65 = load i32, ptr %60, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %66 = load ptr, ptr %55, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %65) #8, !srcloc !9
  %67 = load volatile i32, ptr @jiffies, align 64
  %68 = add i32 %67, 2
  %69 = load i32, ptr @polling_limit_us, align 4
  %70 = mul i32 %69, 100
  %71 = udiv i32 %70, 1000000
  %72 = add i32 %68, %71
  %73 = getelementptr inbounds %struct.bcm2835aux_spi, ptr %55, i32 0, i32 7
  %74 = load i32, ptr %73, align 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %180, label %76

76:                                               ; preds = %79, %56
  tail call fastcc void @bcm2835aux_spi_transfer_helper(ptr noundef %55) #8
  %77 = load i32, ptr %73, align 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %180, label %79

79:                                               ; preds = %76
  %80 = load volatile i32, ptr @jiffies, align 64
  %81 = sub i32 %72, %80
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %76

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.bcm2835aux_spi, ptr %55, i32 0, i32 11
  %85 = load i64, ptr %84, align 8
  %86 = add i64 %85, 1
  store i64 %86, ptr %84, align 8
  %87 = load ptr, ptr %4, align 8
  %88 = getelementptr %struct.bcm2835aux_spi, ptr %87, i32 0, i32 3, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = or i32 %89, 192
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %91 = load ptr, ptr %87, align 8
  %92 = getelementptr i8, ptr %91, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %90) #8, !srcloc !9
  br label %180

93:                                               ; preds = %51
  %94 = getelementptr inbounds %struct.bcm2835aux_spi, ptr %55, i32 0, i32 10
  %95 = load i64, ptr %94, align 8
  %96 = add i64 %95, 1
  store i64 %96, ptr %94, align 8
  %97 = getelementptr inbounds %struct.bcm2835aux_spi, ptr %55, i32 0, i32 3
  %98 = getelementptr %struct.bcm2835aux_spi, ptr %55, i32 0, i32 3, i32 1
  %99 = load i32, ptr %98, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %100 = load ptr, ptr %55, align 8
  %101 = getelementptr i8, ptr %100, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %99) #8, !srcloc !9
  %102 = load i32, ptr %97, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %103 = load ptr, ptr %55, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %102) #8, !srcloc !9
  %104 = getelementptr inbounds %struct.bcm2835aux_spi, ptr %55, i32 0, i32 8
  %105 = getelementptr inbounds %struct.bcm2835aux_spi, ptr %55, i32 0, i32 6
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %173, label %108

108:                                              ; preds = %93
  %109 = getelementptr inbounds %struct.bcm2835aux_spi, ptr %55, i32 0, i32 4
  br label %110

110:                                              ; preds = %170, %108
  %111 = load i32, ptr %104, align 4
  %112 = icmp slt i32 %111, 12
  br i1 %112, label %113, label %173

113:                                              ; preds = %110
  %114 = load ptr, ptr %55, align 8
  %115 = getelementptr i8, ptr %114, i32 8
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %117 = and i32 %116, 1024
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %173

119:                                              ; preds = %113
  %120 = load i32, ptr %105, align 4
  %121 = tail call i32 @llvm.smin.i32(i32 %120, i32 3) #8
  %122 = icmp sgt i32 %120, 0
  br i1 %122, label %123, label %157

123:                                              ; preds = %119
  %124 = tail call i32 @llvm.smax.i32(i32 %121, i32 1) #8
  %125 = load ptr, ptr %109, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %123
  %128 = getelementptr i8, ptr %125, i32 1
  store ptr %128, ptr %109, align 4
  %129 = load i8, ptr %125, align 1
  br label %130

130:                                              ; preds = %127, %123
  %131 = phi ptr [ %128, %127 ], [ null, %123 ]
  %132 = phi i8 [ %129, %127 ], [ 0, %123 ]
  %133 = zext i8 %132 to i32
  %134 = shl nuw nsw i32 %133, 16
  %135 = icmp slt i32 %121, 2
  br i1 %135, label %157, label %136

136:                                              ; preds = %130
  %137 = icmp eq ptr %131, null
  br i1 %137, label %141, label %138

138:                                              ; preds = %136
  %139 = getelementptr i8, ptr %131, i32 1
  store ptr %139, ptr %109, align 4
  %140 = load i8, ptr %131, align 1
  br label %141

141:                                              ; preds = %138, %136
  %142 = phi ptr [ %139, %138 ], [ null, %136 ]
  %143 = phi i8 [ %140, %138 ], [ 0, %136 ]
  %144 = zext i8 %143 to i32
  %145 = shl nuw nsw i32 %144, 8
  %146 = or i32 %145, %134
  %147 = icmp eq i32 %124, 2
  br i1 %147, label %157, label %148

148:                                              ; preds = %141
  %149 = icmp eq ptr %142, null
  br i1 %149, label %153, label %150

150:                                              ; preds = %148
  %151 = getelementptr i8, ptr %142, i32 1
  store ptr %151, ptr %109, align 4
  %152 = load i8, ptr %142, align 1
  br label %153

153:                                              ; preds = %150, %148
  %154 = phi i8 [ %152, %150 ], [ 0, %148 ]
  %155 = zext i8 %154 to i32
  %156 = or i32 %146, %155
  br label %157

157:                                              ; preds = %153, %141, %130, %119
  %158 = phi i32 [ 0, %119 ], [ %134, %130 ], [ %146, %141 ], [ %156, %153 ]
  %159 = shl i32 %121, 27
  %160 = or i32 %158, %159
  %161 = sub i32 %120, %121
  store i32 %161, ptr %105, align 4
  %162 = load i32, ptr %104, align 4
  %163 = add i32 %162, %121
  store i32 %163, ptr %104, align 4
  %164 = icmp slt i32 %120, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8
  tail call void @arm_heavy_mb() #8
  %165 = load ptr, ptr %55, align 8
  br i1 %164, label %168, label %166

166:                                              ; preds = %157
  %167 = getelementptr i8, ptr %165, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 %160) #8, !srcloc !9
  br label %170

168:                                              ; preds = %157
  %169 = getelementptr i8, ptr %165, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %169, i32 %160) #8, !srcloc !9
  br label %170

170:                                              ; preds = %168, %166
  %171 = load i32, ptr %105, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %110

173:                                              ; preds = %170, %113, %110, %93
  %174 = load ptr, ptr %4, align 8
  %175 = getelementptr %struct.bcm2835aux_spi, ptr %174, i32 0, i32 3, i32 1
  %176 = load i32, ptr %175, align 4
  %177 = or i32 %176, 192
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %178 = load ptr, ptr %174, align 8
  %179 = getelementptr i8, ptr %178, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %179, i32 %177) #8, !srcloc !9
  br label %180

180:                                              ; preds = %173, %83, %76, %56
  %181 = phi i32 [ 1, %173 ], [ 1, %83 ], [ 0, %56 ], [ 0, %76 ]
  ret i32 %181
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2835aux_spi_handle_err(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %7 = load ptr, ptr %4, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 512) #8, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835aux_spi_prepare_message(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.bcm2835aux_spi, ptr %6, i32 0, i32 3
  store i32 18496, ptr %7, align 4
  %8 = getelementptr %struct.bcm2835aux_spi, ptr %6, i32 0, i32 3, i32 1
  store i32 2, ptr %8, align 4
  %9 = getelementptr inbounds %struct.spi_device, ptr %4, i32 0, i32 7
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 19520, i32 18880
  store i32 %13, ptr %7, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 2) #8, !srcloc !9
  %16 = load i32, ptr %7, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %17 = load ptr, ptr %6, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %16) #8, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835aux_spi_unprepare_message(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %7 = load ptr, ptr %4, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 512) #8, !srcloc !9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835aux_spi_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %8 = and i32 %7, 192
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %2
  tail call fastcc void @bcm2835aux_spi_transfer_helper(ptr noundef %4)
  %11 = getelementptr inbounds %struct.bcm2835aux_spi, ptr %4, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = getelementptr %struct.bcm2835aux_spi, ptr %4, i32 0, i32 3, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %16, 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #8, !srcloc !9
  br label %20

20:                                               ; preds = %14, %10
  %21 = getelementptr inbounds %struct.bcm2835aux_spi, ptr %4, i32 0, i32 7
  %22 = load i32, ptr %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = getelementptr %struct.bcm2835aux_spi, ptr %4, i32 0, i32 3, i32 1
  %26 = load i32, ptr %25, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %27 = load ptr, ptr %4, align 8
  %28 = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #8, !srcloc !9
  tail call void @spi_finalize_current_transfer(ptr noundef %1) #8
  br label %29

29:                                               ; preds = %24, %20, %2
  %30 = phi i32 [ 0, %2 ], [ 1, %24 ], [ 1, %20 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_register_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm2835aux_spi_transfer_helper(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %5 = getelementptr inbounds %struct.bcm2835aux_spi, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 8
  %7 = icmp ne i32 %6, 0
  %8 = and i32 %4, 16711680
  %9 = icmp ne i32 %8, 0
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.bcm2835aux_spi, ptr %0, i32 0, i32 5
  %13 = getelementptr inbounds %struct.bcm2835aux_spi, ptr %0, i32 0, i32 8
  br label %21

14:                                               ; preds = %45, %1
  %15 = getelementptr inbounds %struct.bcm2835aux_spi, ptr %0, i32 0, i32 8
  %16 = getelementptr inbounds %struct.bcm2835aux_spi, ptr %0, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %121, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.bcm2835aux_spi, ptr %0, i32 0, i32 4
  br label %58

21:                                               ; preds = %45, %11
  %22 = phi i32 [ %6, %11 ], [ %53, %45 ]
  %23 = tail call i32 @llvm.smin.i32(i32 %22, i32 3) #8
  %24 = load ptr, ptr %0, align 8
  %25 = getelementptr i8, ptr %24, i32 32
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %27 = load ptr, ptr %12, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %45, label %29

29:                                               ; preds = %21
  switch i32 %23, label %45 [
    i32 3, label %30
    i32 2, label %35
    i32 1, label %41
  ]

30:                                               ; preds = %29
  %31 = lshr i32 %26, 16
  %32 = trunc i32 %31 to i8
  %33 = getelementptr i8, ptr %27, i32 1
  store ptr %33, ptr %12, align 8
  store i8 %32, ptr %27, align 1
  %34 = load ptr, ptr %12, align 8
  br label %35

35:                                               ; preds = %30, %29
  %36 = phi ptr [ %27, %29 ], [ %34, %30 ]
  %37 = lshr i32 %26, 8
  %38 = trunc i32 %37 to i8
  %39 = getelementptr i8, ptr %36, i32 1
  store ptr %39, ptr %12, align 8
  store i8 %38, ptr %36, align 1
  %40 = load ptr, ptr %12, align 8
  br label %41

41:                                               ; preds = %35, %29
  %42 = phi ptr [ %27, %29 ], [ %40, %35 ]
  %43 = trunc i32 %26 to i8
  %44 = getelementptr i8, ptr %42, i32 1
  store ptr %44, ptr %12, align 8
  store i8 %43, ptr %42, align 1
  br label %45

45:                                               ; preds = %41, %29, %21
  %46 = load i32, ptr %5, align 8
  %47 = sub i32 %46, %23
  store i32 %47, ptr %5, align 8
  %48 = load i32, ptr %13, align 4
  %49 = sub i32 %48, %23
  store i32 %49, ptr %13, align 4
  %50 = load ptr, ptr %0, align 8
  %51 = getelementptr i8, ptr %50, i32 8
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %53 = load i32, ptr %5, align 8
  %54 = icmp ne i32 %53, 0
  %55 = and i32 %52, 16711680
  %56 = icmp ne i32 %55, 0
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %21, label %14

58:                                               ; preds = %118, %19
  %59 = load i32, ptr %15, align 4
  %60 = icmp slt i32 %59, 12
  br i1 %60, label %61, label %121

61:                                               ; preds = %58
  %62 = load ptr, ptr %0, align 8
  %63 = getelementptr i8, ptr %62, i32 8
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %65 = and i32 %64, 1024
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %121

67:                                               ; preds = %61
  %68 = load i32, ptr %16, align 4
  %69 = tail call i32 @llvm.smin.i32(i32 %68, i32 3) #8
  %70 = icmp sgt i32 %68, 0
  br i1 %70, label %71, label %105

71:                                               ; preds = %67
  %72 = tail call i32 @llvm.smax.i32(i32 %69, i32 1) #8
  %73 = load ptr, ptr %20, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = getelementptr i8, ptr %73, i32 1
  store ptr %76, ptr %20, align 4
  %77 = load i8, ptr %73, align 1
  br label %78

78:                                               ; preds = %75, %71
  %79 = phi ptr [ %76, %75 ], [ null, %71 ]
  %80 = phi i8 [ %77, %75 ], [ 0, %71 ]
  %81 = zext i8 %80 to i32
  %82 = shl nuw nsw i32 %81, 16
  %83 = icmp slt i32 %69, 2
  br i1 %83, label %105, label %84

84:                                               ; preds = %78
  %85 = icmp eq ptr %79, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %84
  %87 = getelementptr i8, ptr %79, i32 1
  store ptr %87, ptr %20, align 4
  %88 = load i8, ptr %79, align 1
  br label %89

89:                                               ; preds = %86, %84
  %90 = phi ptr [ %87, %86 ], [ null, %84 ]
  %91 = phi i8 [ %88, %86 ], [ 0, %84 ]
  %92 = zext i8 %91 to i32
  %93 = shl nuw nsw i32 %92, 8
  %94 = or i32 %93, %82
  %95 = icmp eq i32 %72, 2
  br i1 %95, label %105, label %96

96:                                               ; preds = %89
  %97 = icmp eq ptr %90, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %96
  %99 = getelementptr i8, ptr %90, i32 1
  store ptr %99, ptr %20, align 4
  %100 = load i8, ptr %90, align 1
  br label %101

101:                                              ; preds = %98, %96
  %102 = phi i8 [ %100, %98 ], [ 0, %96 ]
  %103 = zext i8 %102 to i32
  %104 = or i32 %94, %103
  br label %105

105:                                              ; preds = %101, %89, %78, %67
  %106 = phi i32 [ 0, %67 ], [ %82, %78 ], [ %94, %89 ], [ %104, %101 ]
  %107 = shl i32 %69, 27
  %108 = or i32 %106, %107
  %109 = sub i32 %68, %69
  store i32 %109, ptr %16, align 4
  %110 = load i32, ptr %15, align 4
  %111 = add i32 %110, %69
  store i32 %111, ptr %15, align 4
  %112 = icmp slt i32 %68, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8
  tail call void @arm_heavy_mb() #8
  %113 = load ptr, ptr %0, align 8
  br i1 %112, label %116, label %114

114:                                              ; preds = %105
  %115 = getelementptr i8, ptr %113, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %108) #8, !srcloc !9
  br label %118

116:                                              ; preds = %105
  %117 = getelementptr i8, ptr %113, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %108) #8, !srcloc !9
  br label %118

118:                                              ; preds = %116, %114
  %119 = load i32, ptr %16, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %58

121:                                              ; preds = %118, %61, %58, %14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_transfer(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u64(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unregister_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

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
!8 = !{i64 2153315419}
!9 = !{i64 4047501}
!10 = !{!"auto-init"}
!11 = !{i64 4047919}
!12 = !{i64 2153315068}
