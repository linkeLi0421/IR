; ModuleID = '/llk/IR/drivers/spi/spi-cadence.c_pt.bc'
source_filename = "../drivers/spi/spi-cadence.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.cdns_spi = type { ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i8, i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_spi_cadence__227_724_cdns_spi_driver_init6 = internal global ptr @cdns_spi_driver_init, section ".initcall6.init", align 4
@cdns_spi_driver = internal global %struct.platform_driver { ptr @cdns_spi_probe, ptr @cdns_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cdns_spi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cdns_spi_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_cdns_spi_driver_exit = internal global ptr @cdns_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author228 = internal constant [32 x i8] c"spi_cadence.author=Xilinx, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [43 x i8] c"spi_cadence.description=Cadence SPI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [41 x i8] c"spi_cadence.file=drivers/spi/spi-cadence\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [24 x i8] c"spi_cadence.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"cdns-spi\00", align 1
@cdns_spi_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,zynq-spi-r1p6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,spi-r1p6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@cdns_spi_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @cdns_spi_suspend, ptr @cdns_spi_resume, ptr @cdns_spi_suspend, ptr @cdns_spi_resume, ptr @cdns_spi_suspend, ptr @cdns_spi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cnds_runtime_suspend, ptr @cnds_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"pclk clock not found.\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"ref_clk\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"ref_clk clock not found.\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Unable to enable APB clock.\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Unable to enable device clock.\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"num-cs\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"is-decoded-cs\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"request_irq failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"spi_register_master failed\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.11 = private unnamed_addr constant [26 x i8] c"Cannot enable APB clock.\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Cannot enable device clock.\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_cdns_spi_driver_exit, ptr @__initcall__kmod_spi_cadence__227_724_cdns_spi_driver_init6, ptr @cdns_spi_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @cdns_spi_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @cdns_spi_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @cdns_spi_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @cdns_spi_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdns_spi_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call ptr @__spi_alloc_controller(ptr noundef %3, i32 noundef 44, i1 noundef zeroext false) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %136, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 25
  store ptr %10, ptr %11, align 8
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %12, align 8
  %13 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  store ptr %13, ptr %8, align 4
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %6
  %16 = ptrtoint ptr %13 to i32
  br label %134

17:                                               ; preds = %6
  %18 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.1) #5
  %19 = getelementptr inbounds %struct.cdns_spi, ptr %8, i32 0, i32 2
  store ptr %18, ptr %19, align 4
  %20 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #6
  %22 = load ptr, ptr %19, align 4
  %23 = ptrtoint ptr %22 to i32
  br label %134

24:                                               ; preds = %17
  %25 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.3) #5
  %26 = getelementptr inbounds %struct.cdns_spi, ptr %8, i32 0, i32 1
  store ptr %25, ptr %26, align 4
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #6
  %29 = load ptr, ptr %26, align 4
  %30 = ptrtoint ptr %29 to i32
  br label %134

31:                                               ; preds = %24
  %32 = load ptr, ptr %19, align 4
  %33 = tail call i32 @clk_prepare(ptr noundef %32) #5
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = tail call i32 @clk_enable(ptr noundef %32) #5
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  tail call void @clk_unprepare(ptr noundef %32) #5
  br label %39

39:                                               ; preds = %38, %31
  %40 = phi i32 [ %36, %38 ], [ %33, %31 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #6
  br label %134

41:                                               ; preds = %35
  %42 = load ptr, ptr %26, align 4
  %43 = tail call i32 @clk_prepare(ptr noundef %42) #5
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = tail call i32 @clk_enable(ptr noundef %42) #5
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  tail call void @clk_unprepare(ptr noundef %42) #5
  br label %49

49:                                               ; preds = %48, %41
  %50 = phi i32 [ %46, %48 ], [ %43, %41 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #6
  br label %131

51:                                               ; preds = %45
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %3, i1 noundef zeroext true) #5
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %3, i32 noundef 3000) #5
  %52 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %52) #5, !srcloc !9
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %52, ptr %52, i32 1, ptr elementtype(i32) %52) #5, !srcloc !10
  %54 = tail call i32 @__pm_runtime_set_status(ptr noundef %3, i32 noundef 0) #5
  tail call void @pm_runtime_enable(ptr noundef %3) #5
  %55 = load ptr, ptr %9, align 8
  %56 = call i32 @of_property_read_variable_u32_array(ptr noundef %55, ptr noundef nonnull @.str.7, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #5
  %57 = icmp slt i32 %56, 0
  %58 = load i32, ptr %2, align 4
  %59 = trunc i32 %58 to i16
  %60 = select i1 %57, i16 4, i16 %59
  %61 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 3
  store i16 %60, ptr %61, align 2
  %62 = load ptr, ptr %9, align 8
  %63 = getelementptr inbounds %struct.cdns_spi, ptr %8, i32 0, i32 10
  %64 = call i32 @of_property_read_variable_u32_array(ptr noundef %62, ptr noundef nonnull @.str.8, ptr noundef %63, i32 noundef 1, i32 noundef 0) #5
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %51
  %67 = load i32, ptr %63, align 4
  br label %69

68:                                               ; preds = %51
  store i32 0, ptr %63, align 4
  br label %69

69:                                               ; preds = %68, %66
  %70 = phi i32 [ %67, %66 ], [ 0, %68 ]
  %71 = load ptr, ptr %8, align 4
  %72 = getelementptr i8, ptr %71, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 0) #5, !srcloc !11
  %73 = load ptr, ptr %8, align 4
  %74 = getelementptr i8, ptr %73, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 127) #5, !srcloc !11
  %75 = load ptr, ptr %8, align 4
  %76 = getelementptr i8, ptr %75, i32 4
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #5, !srcloc !12
  %78 = and i32 %77, 16
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %80, %69
  %81 = load ptr, ptr %8, align 4
  %82 = getelementptr i8, ptr %81, i32 32
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #5, !srcloc !12
  %84 = load ptr, ptr %8, align 4
  %85 = getelementptr i8, ptr %84, i32 4
  %86 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #5, !srcloc !12
  %87 = and i32 %86, 16
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %80

89:                                               ; preds = %80, %69
  %90 = icmp eq i32 %70, 0
  %91 = select i1 %90, i32 31753, i32 32265
  %92 = load ptr, ptr %8, align 4
  %93 = getelementptr i8, ptr %92, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 127) #5, !srcloc !11
  %94 = load ptr, ptr %8, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %91) #5, !srcloc !11
  %95 = load ptr, ptr %8, align 4
  %96 = getelementptr i8, ptr %95, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 1) #5, !srcloc !11
  %97 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #5
  %98 = icmp slt i32 %97, 1
  br i1 %98, label %127, label %99

99:                                               ; preds = %89
  %100 = load ptr, ptr %0, align 8
  %101 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %97, ptr noundef nonnull @cdns_spi_irq, ptr noundef null, i32 noundef 0, ptr noundef %100, ptr noundef nonnull %4) #5
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %124

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 56
  store i8 1, ptr %104, align 8
  %105 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 44
  store ptr @cdns_prepare_transfer_hardware, ptr %105, align 8
  %106 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 47
  store ptr @cdns_prepare_message, ptr %106, align 4
  %107 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 51
  store ptr @cdns_transfer_one, ptr %107, align 4
  %108 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 46
  store ptr @cdns_unprepare_transfer_hardware, ptr %108, align 8
  %109 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 50
  store ptr @cdns_spi_chipselect, ptr %109, align 8
  %110 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 36
  store i8 1, ptr %110, align 4
  %111 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 5
  store i32 7, ptr %111, align 8
  %112 = load ptr, ptr %26, align 4
  %113 = call i32 @clk_get_rate(ptr noundef %112) #5
  %114 = getelementptr inbounds %struct.cdns_spi, ptr %8, i32 0, i32 3
  store i32 %113, ptr %114, align 4
  %115 = lshr i32 %113, 2
  %116 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 9
  store i32 %115, ptr %116, align 8
  %117 = getelementptr inbounds %struct.cdns_spi, ptr %8, i32 0, i32 4
  store i32 %115, ptr %117, align 4
  %118 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 7
  store i32 128, ptr %118, align 8
  %119 = call i64 @ktime_get_mono_fast_ns() #5
  %120 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 22
  store volatile i64 %119, ptr %120, align 8
  %121 = call i32 @__pm_runtime_suspend(ptr noundef %3, i32 noundef 13) #5
  %122 = call i32 @spi_register_controller(ptr noundef nonnull %4) #5
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %136, label %124

124:                                              ; preds = %103, %99
  %125 = phi ptr [ @.str.9, %99 ], [ @.str.10, %103 ]
  %126 = phi i32 [ -6, %99 ], [ %122, %103 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull %125) #6
  br label %127

127:                                              ; preds = %124, %89
  %128 = phi i32 [ -6, %89 ], [ %126, %124 ]
  %129 = call i32 @__pm_runtime_set_status(ptr noundef %3, i32 noundef 2) #5
  call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #5
  %130 = load ptr, ptr %26, align 4
  call void @clk_disable(ptr noundef %130) #5
  call void @clk_unprepare(ptr noundef %130) #5
  br label %131

131:                                              ; preds = %127, %49
  %132 = phi i32 [ %50, %49 ], [ %128, %127 ]
  %133 = load ptr, ptr %19, align 4
  call void @clk_disable(ptr noundef %133) #5
  call void @clk_unprepare(ptr noundef %133) #5
  br label %134

134:                                              ; preds = %131, %39, %28, %21, %15
  %135 = phi i32 [ %16, %15 ], [ %23, %21 ], [ %30, %28 ], [ %40, %39 ], [ %132, %131 ]
  call void @put_device(ptr noundef nonnull %4) #5
  br label %136

136:                                              ; preds = %134, %103, %1
  %137 = phi i32 [ %135, %134 ], [ -12, %1 ], [ 0, %103 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret i32 %137
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdns_spi_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #5, !srcloc !11
  %8 = getelementptr inbounds %struct.cdns_spi, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %9) #5
  tail call void @clk_unprepare(ptr noundef %9) #5
  %10 = getelementptr inbounds %struct.cdns_spi, ptr %5, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %11) #5
  tail call void @clk_unprepare(ptr noundef %11) #5
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %13 = tail call i32 @__pm_runtime_set_status(ptr noundef %12, i32 noundef 2) #5
  tail call void @__pm_runtime_disable(ptr noundef %12, i1 noundef zeroext true) #5
  tail call void @spi_unregister_controller(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdns_spi_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !12
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #5, !srcloc !11
  %10 = and i32 %7, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %13, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 6) #5, !srcloc !11
  br label %81

15:                                               ; preds = %2
  %16 = and i32 %7, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %82, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.cdns_spi, ptr %4, i32 0, i32 8
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.cdns_spi, ptr %4, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = sub i32 %20, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %44, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.cdns_spi, ptr %4, i32 0, i32 6
  br label %27

27:                                               ; preds = %37, %25
  %28 = phi i32 [ %23, %25 ], [ %40, %37 ]
  %29 = load ptr, ptr %4, align 4
  %30 = getelementptr i8, ptr %29, i32 32
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #5, !srcloc !12
  %32 = load ptr, ptr %26, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = trunc i32 %31 to i8
  %36 = getelementptr i8, ptr %32, i32 1
  store ptr %36, ptr %26, align 4
  store i8 %35, ptr %32, align 1
  br label %37

37:                                               ; preds = %34, %27
  %38 = load i32, ptr %19, align 4
  %39 = add i32 %38, -1
  store i32 %39, ptr %19, align 4
  %40 = add i32 %28, -1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %27

42:                                               ; preds = %37
  %43 = load i32, ptr %21, align 4
  br label %44

44:                                               ; preds = %42, %18
  %45 = phi i32 [ %43, %42 ], [ %22, %18 ]
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %78, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.cdns_spi, ptr %4, i32 0, i32 5
  br label %49

49:                                               ; preds = %73, %47
  %50 = phi i32 [ %45, %47 ], [ %75, %73 ]
  %51 = phi i32 [ 0, %47 ], [ %76, %73 ]
  %52 = icmp sgt i32 %50, 0
  br i1 %52, label %53, label %82

53:                                               ; preds = %49
  %54 = load ptr, ptr %4, align 4
  %55 = getelementptr i8, ptr %54, i32 4
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #5, !srcloc !12
  %57 = and i32 %56, 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %53
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 2147480) #5
  br label %61

61:                                               ; preds = %59, %53
  %62 = load ptr, ptr %48, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %70, label %64

64:                                               ; preds = %61
  %65 = getelementptr i8, ptr %62, i32 1
  store ptr %65, ptr %48, align 4
  %66 = load i8, ptr %62, align 1
  %67 = zext i8 %66 to i32
  %68 = load ptr, ptr %4, align 4
  %69 = getelementptr i8, ptr %68, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #5, !srcloc !11
  br label %73

70:                                               ; preds = %61
  %71 = load ptr, ptr %4, align 4
  %72 = getelementptr i8, ptr %71, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 0) #5, !srcloc !11
  br label %73

73:                                               ; preds = %70, %64
  %74 = load i32, ptr %21, align 4
  %75 = add i32 %74, -1
  store i32 %75, ptr %21, align 4
  %76 = add nuw nsw i32 %51, 1
  %77 = icmp eq i32 %76, 128
  br i1 %77, label %82, label %49

78:                                               ; preds = %44
  %79 = load ptr, ptr %4, align 4
  %80 = getelementptr i8, ptr %79, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 6) #5, !srcloc !11
  br label %81

81:                                               ; preds = %78, %12
  tail call void @spi_finalize_current_transfer(ptr noundef %1) #5
  br label %82

82:                                               ; preds = %81, %73, %49, %15
  %83 = phi i32 [ 0, %15 ], [ 1, %81 ], [ 1, %49 ], [ 1, %73 ]
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdns_prepare_transfer_hardware(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 1) #5, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdns_prepare_message(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.spi_device, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !12
  %11 = and i32 %10, -7
  %12 = getelementptr inbounds %struct.spi_device, ptr %4, i32 0, i32 7
  %13 = load i32, ptr %12, align 8
  %14 = shl i32 %13, 2
  %15 = and i32 %14, 4
  %16 = and i32 %13, 2
  %17 = or i32 %16, %11
  %18 = or i32 %17, %15
  %19 = icmp eq i32 %18, %10
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %8, align 4
  %22 = getelementptr i8, ptr %21, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 0) #5, !srcloc !11
  %23 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %18) #5, !srcloc !11
  %24 = load ptr, ptr %8, align 4
  %25 = getelementptr i8, ptr %24, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 1) #5, !srcloc !11
  br label %26

26:                                               ; preds = %20, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdns_transfer_one(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr inbounds %struct.cdns_spi, ptr %5, i32 0, i32 5
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.cdns_spi, ptr %5, i32 0, i32 6
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.cdns_spi, ptr %5, i32 0, i32 7
  store i32 %12, ptr %13, align 4
  %14 = load i32, ptr %11, align 4
  %15 = getelementptr inbounds %struct.cdns_spi, ptr %5, i32 0, i32 8
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 8
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.cdns_spi, ptr %19, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = load ptr, ptr %19, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !12
  %24 = getelementptr inbounds %struct.cdns_spi, ptr %19, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 12
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %55, label %29

29:                                               ; preds = %3
  %30 = lshr i32 %21, 2
  %31 = icmp ugt i32 %30, %27
  br i1 %31, label %32, label %48

32:                                               ; preds = %29
  %33 = lshr i32 %21, 3
  %34 = icmp ugt i32 %33, %27
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = lshr i32 %21, 4
  %37 = icmp ugt i32 %36, %27
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = lshr i32 %21, 5
  %40 = icmp ugt i32 %39, %27
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = lshr i32 %21, 6
  %43 = icmp ugt i32 %42, %27
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = lshr i32 %21, 7
  %46 = icmp ugt i32 %45, %27
  %47 = select i1 %46, i32 7, i32 6
  br label %48

48:                                               ; preds = %44, %41, %38, %35, %32, %29
  %49 = phi i32 [ 1, %29 ], [ 2, %32 ], [ 3, %35 ], [ 4, %38 ], [ 5, %41 ], [ %47, %44 ]
  %50 = and i32 %23, -57
  %51 = shl nuw nsw i32 %49, 3
  %52 = or i32 %51, %50
  %53 = add nuw nsw i32 %49, 1
  %54 = lshr i32 %21, %53
  store i32 %54, ptr %24, align 4
  br label %55

55:                                               ; preds = %48, %3
  %56 = phi i32 [ %52, %48 ], [ %23, %3 ]
  %57 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %56) #5, !srcloc !11
  %58 = load i32, ptr %13, align 4
  br label %59

59:                                               ; preds = %83, %55
  %60 = phi i32 [ %58, %55 ], [ %85, %83 ]
  %61 = phi i32 [ 0, %55 ], [ %86, %83 ]
  %62 = icmp sgt i32 %60, 0
  br i1 %62, label %63, label %88

63:                                               ; preds = %59
  %64 = load ptr, ptr %5, align 4
  %65 = getelementptr i8, ptr %64, i32 4
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #5, !srcloc !12
  %67 = and i32 %66, 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %63
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 2147480) #5
  br label %71

71:                                               ; preds = %69, %63
  %72 = load ptr, ptr %7, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %80, label %74

74:                                               ; preds = %71
  %75 = getelementptr i8, ptr %72, i32 1
  store ptr %75, ptr %7, align 4
  %76 = load i8, ptr %72, align 1
  %77 = zext i8 %76 to i32
  %78 = load ptr, ptr %5, align 4
  %79 = getelementptr i8, ptr %78, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %77) #5, !srcloc !11
  br label %83

80:                                               ; preds = %71
  %81 = load ptr, ptr %5, align 4
  %82 = getelementptr i8, ptr %81, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 0) #5, !srcloc !11
  br label %83

83:                                               ; preds = %80, %74
  %84 = load i32, ptr %13, align 4
  %85 = add i32 %84, -1
  store i32 %85, ptr %13, align 4
  %86 = add nuw nsw i32 %61, 1
  %87 = icmp eq i32 %86, 128
  br i1 %87, label %88, label %59

88:                                               ; preds = %83, %59
  %89 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 9
  %90 = tail call i32 @spi_delay_exec(ptr noundef %89, ptr noundef %2) #5
  %91 = load ptr, ptr %5, align 4
  %92 = getelementptr i8, ptr %91, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 6) #5, !srcloc !11
  %93 = load i32, ptr %11, align 4
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdns_unprepare_transfer_hardware(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #5, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cdns_spi_chipselect(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !12
  br i1 %1, label %9, label %11

9:                                                ; preds = %2
  %10 = or i32 %8, 15360
  br label %29

11:                                               ; preds = %2
  %12 = and i32 %8, -15361
  %13 = getelementptr inbounds %struct.cdns_spi, ptr %6, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 4
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i32
  br i1 %15, label %19, label %25

19:                                               ; preds = %11
  %20 = shl nuw i32 1, %18
  %21 = xor i32 %20, -1
  %22 = shl i32 %21, 10
  %23 = and i32 %22, 15360
  %24 = or i32 %23, %12
  br label %29

25:                                               ; preds = %11
  %26 = shl nuw nsw i32 %18, 10
  %27 = and i32 %26, 15360
  %28 = or i32 %27, %12
  br label %29

29:                                               ; preds = %25, %19, %9
  %30 = phi i32 [ %10, %9 ], [ %28, %25 ], [ %24, %19 ]
  %31 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %30) #5, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_register_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_transfer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_delay_exec(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unregister_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdns_spi_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @spi_controller_suspend(ptr noundef %3) #5
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdns_spi_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cdns_spi, ptr %5, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr i8, ptr %8, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #5, !srcloc !11
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr i8, ptr %10, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 127) #5, !srcloc !11
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5, !srcloc !12
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %17, %1
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr i8, ptr %18, i32 32
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !12
  %21 = load ptr, ptr %5, align 4
  %22 = getelementptr i8, ptr %21, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !12
  %24 = and i32 %23, 16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %17

26:                                               ; preds = %17, %1
  %27 = icmp eq i32 %7, 0
  %28 = select i1 %27, i32 31753, i32 32265
  %29 = load ptr, ptr %5, align 4
  %30 = getelementptr i8, ptr %29, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 127) #5, !srcloc !11
  %31 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %28) #5, !srcloc !11
  %32 = load ptr, ptr %5, align 4
  %33 = getelementptr i8, ptr %32, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 1) #5, !srcloc !11
  %34 = tail call i32 @spi_controller_resume(ptr noundef %3) #5
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cnds_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cdns_spi, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  %8 = getelementptr inbounds %struct.cdns_spi, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %9) #5
  tail call void @clk_unprepare(ptr noundef %9) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cnds_runtime_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cdns_spi, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_prepare(ptr noundef %7) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = tail call i32 @clk_enable(ptr noundef %7) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  tail call void @clk_unprepare(ptr noundef %7) #5
  br label %14

14:                                               ; preds = %13, %1
  %15 = phi i32 [ %11, %13 ], [ %8, %1 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.11) #6
  br label %28

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.cdns_spi, ptr %5, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @clk_prepare(ptr noundef %18) #5
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = tail call i32 @clk_enable(ptr noundef %18) #5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  tail call void @clk_unprepare(ptr noundef %18) #5
  br label %25

25:                                               ; preds = %24, %16
  %26 = phi i32 [ %22, %24 ], [ %19, %16 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.12) #6
  %27 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %27) #5
  tail call void @clk_unprepare(ptr noundef %27) #5
  br label %28

28:                                               ; preds = %25, %21, %14
  %29 = phi i32 [ %15, %14 ], [ %26, %25 ], [ 0, %21 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!9 = !{i64 460135, i64 2147950106, i64 2147950132, i64 2147950179, i64 2147950201, i64 2147950229, i64 2147950249}
!10 = !{i64 2147962318, i64 2147962344, i64 2147962373, i64 2147962407, i64 2147962438, i64 2147962461}
!11 = !{i64 3136045}
!12 = !{i64 3136463}
