; ModuleID = '/llk/IR/drivers/spi/spi-tegra20-sflash.c_pt.bc'
source_filename = "../drivers/spi/spi-tegra20-sflash.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type {}
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
%struct.tegra_sflash_data = type { ptr, ptr, %struct.spinlock, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.completion, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_spi_tegra20_sflash__227_605_tegra_sflash_driver_init6 = internal global ptr @tegra_sflash_driver_init, section ".initcall6.init", align 4
@tegra_sflash_driver = internal global %struct.platform_driver { ptr @tegra_sflash_probe, ptr @tegra_sflash_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_sflash_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @slink_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_tegra_sflash_driver_exit = internal global ptr @tegra_sflash_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias228 = internal constant [51 x i8] c"spi_tegra20_sflash.alias=platform:spi-tegra-sflash\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [77 x i8] c"spi_tegra20_sflash.description=NVIDIA Tegra20 Serial Flash Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author230 = internal constant [65 x i8] c"spi_tegra20_sflash.author=Laxman Dewangan <ldewangan@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [55 x i8] c"spi_tegra20_sflash.file=drivers/spi/spi-tegra20-sflash\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [34 x i8] c"spi_tegra20_sflash.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [17 x i8] c"spi-tegra-sflash\00", align 1
@tegra_sflash_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-sflash\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@slink_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @tegra_sflash_suspend, ptr @tegra_sflash_resume, ptr @tegra_sflash_suspend, ptr @tegra_sflash_resume, ptr @tegra_sflash_suspend, ptr @tegra_sflash_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_sflash_runtime_suspend, ptr @tegra_sflash_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Error: No device match found\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"master allocation failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"spi-max-frequency\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Failed to register ISR for IRQ %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"can not get clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"spi\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"can not get reset\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"pm runtime get failed, e = %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"can not register to master err %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"drivers/spi/spi-tegra20-sflash.c\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"spi transfer timeout, err %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"Error in Transfer\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"CpuXfer ERROR bit set 0x%x\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"CpuXfer 0x%08x:0x%08x\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"clk_prepare failed: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"pm runtime failed, e = %d\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias228, ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_tegra_sflash_driver_exit, ptr @__initcall__kmod_spi_tegra20_sflash__227_605_tegra_sflash_driver_init6, ptr @tegra_sflash_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tegra_sflash_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_sflash_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tegra_sflash_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_sflash_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_sflash_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_match_device(ptr noundef nonnull @tegra_sflash_of_match, ptr noundef %2) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  br label %127

6:                                                ; preds = %1
  %7 = tail call ptr @__spi_alloc_controller(ptr noundef %2, i32 noundef 108, i1 noundef zeroext false) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #6
  br label %127

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.spi_controller, ptr %7, i32 0, i32 5
  store i32 3, ptr %11, align 8
  %12 = getelementptr inbounds %struct.spi_controller, ptr %7, i32 0, i32 45
  store ptr @tegra_sflash_transfer_one_message, ptr %12, align 4
  %13 = getelementptr inbounds %struct.spi_controller, ptr %7, i32 0, i32 36
  store i8 1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.spi_controller, ptr %7, i32 0, i32 3
  store i16 4, ptr %14, align 2
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %15, align 8
  %16 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.tegra_sflash_data, ptr %17, i32 0, i32 1
  store ptr %7, ptr %18, align 4
  store ptr %2, ptr %17, align 4
  %19 = getelementptr inbounds %struct.tegra_sflash_data, ptr %17, i32 0, i32 2
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.spi_controller, ptr %7, i32 0, i32 9
  %23 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %21, ptr noundef nonnull @.str.3, ptr noundef %22, i32 noundef 1, i32 noundef 0) #5
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %26, label %25

25:                                               ; preds = %10
  store i32 25000000, ptr %22, align 8
  br label %26

26:                                               ; preds = %25, %10
  %27 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  %28 = getelementptr inbounds %struct.tegra_sflash_data, ptr %17, i32 0, i32 5
  store ptr %27, ptr %28, align 4
  %29 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = ptrtoint ptr %27 to i32
  br label %125

32:                                               ; preds = %26
  %33 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #5
  %34 = getelementptr inbounds %struct.tegra_sflash_data, ptr %17, i32 0, i32 6
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load ptr, ptr %2, align 4
  br label %40

40:                                               ; preds = %38, %32
  %41 = phi ptr [ %39, %38 ], [ %36, %32 ]
  %42 = tail call i32 @request_threaded_irq(i32 noundef %33, ptr noundef nonnull @tegra_sflash_isr, ptr noundef null, i32 noundef 0, ptr noundef %41, ptr noundef %17) #5
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, ptr %34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %45) #6
  br label %125

46:                                               ; preds = %40
  %47 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #5
  %48 = getelementptr inbounds %struct.tegra_sflash_data, ptr %17, i32 0, i32 3
  store ptr %47, ptr %48, align 4
  %49 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #6
  %51 = load ptr, ptr %48, align 4
  %52 = ptrtoint ptr %51 to i32
  br label %121

53:                                               ; preds = %46
  %54 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #5
  %55 = getelementptr inbounds %struct.tegra_sflash_data, ptr %17, i32 0, i32 4
  store ptr %54, ptr %55, align 4
  %56 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7) #6
  %58 = load ptr, ptr %55, align 4
  %59 = ptrtoint ptr %58 to i32
  br label %121

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.tegra_sflash_data, ptr %17, i32 0, i32 22
  store i32 0, ptr %61, align 4
  %62 = getelementptr inbounds %struct.tegra_sflash_data, ptr %17, i32 0, i32 22, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %62, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_completion.__key) #5
  tail call void @pm_runtime_enable(ptr noundef %2) #5
  %63 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 15
  %64 = load i16, ptr %63, align 8
  %65 = and i16 %64, 7
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %84, label %67

67:                                               ; preds = %60
  %68 = load ptr, ptr %15, align 8
  %69 = getelementptr inbounds %struct.device, ptr %68, i32 0, i32 8
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %struct.tegra_sflash_data, ptr %70, i32 0, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = tail call i32 @clk_prepare(ptr noundef %72) #5
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = tail call i32 @clk_enable(ptr noundef %72) #5
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %75
  tail call void @clk_unprepare(ptr noundef %72) #5
  br label %79

79:                                               ; preds = %78, %67
  %80 = phi i32 [ %73, %67 ], [ %76, %78 ]
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load ptr, ptr %70, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.17, i32 noundef %80) #6
  br label %107

84:                                               ; preds = %79, %75, %60
  %85 = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #5
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %85) #6
  %88 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %88) #5, !srcloc !9
  %89 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %88, ptr %88, i32 0, i32 -1, ptr elementtype(i32) %88) #5, !srcloc !10
  %90 = extractvalue { i32, i32, i32 } %89, 0
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %107, label %92

92:                                               ; preds = %87
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  br label %107

93:                                               ; preds = %84
  %94 = load ptr, ptr %55, align 4
  %95 = tail call i32 @reset_control_assert(ptr noundef %94) #5
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %96(i32 noundef 429496) #5
  %97 = load ptr, ptr %55, align 4
  %98 = tail call i32 @reset_control_deassert(ptr noundef %97) #5
  %99 = getelementptr inbounds %struct.tegra_sflash_data, ptr %17, i32 0, i32 19
  store i32 268439552, ptr %99, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %100 = load ptr, ptr %28, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 268439552) #5, !srcloc !13
  %101 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 5) #5
  %102 = load ptr, ptr %20, align 8
  %103 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 25
  store ptr %102, ptr %103, align 8
  %104 = tail call i32 @devm_spi_register_controller(ptr noundef %2, ptr noundef nonnull %7) #5
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %127

106:                                              ; preds = %93
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef %104) #6
  br label %107

107:                                              ; preds = %106, %92, %87, %82
  %108 = phi i32 [ %104, %106 ], [ %80, %82 ], [ %85, %87 ], [ %85, %92 ]
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #5
  %109 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 18
  %110 = load i32, ptr %109, align 4
  %111 = icmp eq i32 %110, 2
  br i1 %111, label %121, label %112

112:                                              ; preds = %107
  %113 = load ptr, ptr %15, align 8
  %114 = getelementptr inbounds %struct.device, ptr %113, i32 0, i32 8
  %115 = load ptr, ptr %114, align 8
  %116 = getelementptr inbounds %struct.tegra_sflash_data, ptr %115, i32 0, i32 5
  %117 = load ptr, ptr %116, align 4
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %117) #5, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  %119 = getelementptr inbounds %struct.tegra_sflash_data, ptr %115, i32 0, i32 3
  %120 = load ptr, ptr %119, align 4
  tail call void @clk_disable(ptr noundef %120) #5
  tail call void @clk_unprepare(ptr noundef %120) #5
  br label %121

121:                                              ; preds = %112, %107, %57, %50
  %122 = phi i32 [ %52, %50 ], [ %59, %57 ], [ %108, %107 ], [ %108, %112 ]
  %123 = load i32, ptr %34, align 4
  %124 = tail call ptr @free_irq(i32 noundef %123, ptr noundef %17) #5
  br label %125

125:                                              ; preds = %121, %44, %30
  %126 = phi i32 [ %31, %30 ], [ %42, %44 ], [ %122, %121 ]
  tail call void @put_device(ptr noundef nonnull %7) #5
  br label %127

127:                                              ; preds = %125, %93, %9, %5
  %128 = phi i32 [ %126, %125 ], [ -12, %9 ], [ -19, %5 ], [ %104, %93 ]
  ret i32 %128
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_sflash_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tegra_sflash_data, ptr %5, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %5) #5
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %9, i1 noundef zeroext true) #5
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 18
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %22, label %13

13:                                               ; preds = %1
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 8
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.tegra_sflash_data, ptr %16, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #5, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  %20 = getelementptr inbounds %struct.tegra_sflash_data, ptr %16, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  tail call void @clk_disable(ptr noundef %21) #5
  tail call void @clk_unprepare(ptr noundef %21) #5
  br label %22

22:                                               ; preds = %13, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_sflash_transfer_one_message(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 7
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 6
  store i32 0, ptr %8, align 4
  %9 = load volatile ptr, ptr %1, align 4
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %134, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.tegra_sflash_data, ptr %4, i32 0, i32 22
  %13 = getelementptr inbounds %struct.spi_device, ptr %6, i32 0, i32 2
  %14 = getelementptr inbounds %struct.spi_device, ptr %6, i32 0, i32 7
  %15 = getelementptr inbounds %struct.spi_device, ptr %6, i32 0, i32 4
  %16 = getelementptr inbounds %struct.tegra_sflash_data, ptr %4, i32 0, i32 16
  %17 = getelementptr inbounds %struct.tegra_sflash_data, ptr %4, i32 0, i32 17
  %18 = getelementptr inbounds %struct.tegra_sflash_data, ptr %4, i32 0, i32 19
  %19 = getelementptr inbounds %struct.tegra_sflash_data, ptr %4, i32 0, i32 5
  br label %20

20:                                               ; preds = %131, %11
  %21 = phi ptr [ %9, %11 ], [ %132, %131 ]
  %22 = phi i1 [ true, %11 ], [ false, %131 ]
  %23 = getelementptr i8, ptr %21, i32 -84
  store i32 0, ptr %12, align 4
  %24 = load ptr, ptr %13, align 4
  %25 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 8
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr i8, ptr %21, i32 -24
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.tegra_sflash_data, ptr %26, i32 0, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.tegra_sflash_data, ptr %26, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @clk_set_rate(ptr noundef %34, i32 noundef %28) #5
  store i32 %28, ptr %29, align 4
  br label %36

36:                                               ; preds = %32, %20
  %37 = getelementptr inbounds %struct.tegra_sflash_data, ptr %26, i32 0, i32 8
  store ptr %6, ptr %37, align 4
  %38 = getelementptr inbounds %struct.tegra_sflash_data, ptr %26, i32 0, i32 9
  store i32 0, ptr %38, align 4
  %39 = getelementptr inbounds %struct.tegra_sflash_data, ptr %26, i32 0, i32 14
  store i32 0, ptr %39, align 4
  %40 = getelementptr inbounds %struct.tegra_sflash_data, ptr %26, i32 0, i32 15
  store i32 0, ptr %40, align 4
  %41 = getelementptr inbounds %struct.tegra_sflash_data, ptr %26, i32 0, i32 23
  store ptr %23, ptr %41, align 4
  %42 = getelementptr i8, ptr %21, i32 -76
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr i8, ptr %21, i32 -39
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = add nuw nsw i32 %46, 7
  %48 = lshr i32 %47, 3
  %49 = getelementptr inbounds %struct.tegra_sflash_data, ptr %26, i32 0, i32 11
  store i32 %48, ptr %49, align 4
  %50 = udiv i32 %43, %48
  %51 = tail call i32 @llvm.umin.i32(i32 %50, i32 4) #5
  %52 = getelementptr inbounds %struct.tegra_sflash_data, ptr %26, i32 0, i32 13
  store i32 %51, ptr %52, align 4
  br i1 %22, label %53, label %74

53:                                               ; preds = %36
  %54 = getelementptr inbounds %struct.tegra_sflash_data, ptr %26, i32 0, i32 19
  %55 = load i32, ptr %54, align 4
  %56 = load i8, ptr %44, align 1
  %57 = add i8 %56, 31
  %58 = and i8 %57, 31
  %59 = zext i8 %58 to i32
  %60 = and i32 %55, -203431937
  %61 = or i32 %60, %59
  %62 = load i32, ptr %14, align 8
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %64, i32 8192, i32 2105344
  %66 = shl i32 %62, 25
  %67 = and i32 %66, 67108864
  %68 = load i8, ptr %15, align 4
  %69 = zext i8 %68 to i32
  %70 = shl i32 32, %69
  %71 = or i32 %61, %67
  %72 = or i32 %71, %65
  %73 = or i32 %72, %70
  br label %83

74:                                               ; preds = %36
  %75 = getelementptr inbounds %struct.tegra_sflash_data, ptr %26, i32 0, i32 20
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, -49184
  %78 = load i8, ptr %44, align 1
  %79 = add i8 %78, 31
  %80 = and i8 %79, 31
  %81 = zext i8 %80 to i32
  %82 = or i32 %77, %81
  br label %83

83:                                               ; preds = %74, %53
  %84 = phi i32 [ %73, %53 ], [ %82, %74 ]
  %85 = getelementptr inbounds %struct.tegra_sflash_data, ptr %26, i32 0, i32 12
  store i32 0, ptr %85, align 4
  %86 = getelementptr i8, ptr %21, i32 -80
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %83
  %90 = or i32 %84, 16384
  store i32 2, ptr %85, align 4
  br label %91

91:                                               ; preds = %89, %83
  %92 = phi i32 [ 3, %89 ], [ 1, %83 ]
  %93 = phi i32 [ %90, %89 ], [ %84, %83 ]
  %94 = load ptr, ptr %23, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %91
  %97 = or i32 %93, 32768
  store i32 %92, ptr %85, align 4
  br label %98

98:                                               ; preds = %96, %91
  %99 = phi i32 [ %97, %96 ], [ %93, %91 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %100 = getelementptr inbounds %struct.tegra_sflash_data, ptr %26, i32 0, i32 5
  %101 = load ptr, ptr %100, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %99) #5, !srcloc !13
  %102 = getelementptr inbounds %struct.tegra_sflash_data, ptr %26, i32 0, i32 20
  store i32 %99, ptr %102, align 4
  tail call fastcc void @tegra_sflash_start_cpu_based_transfer(ptr noundef %26, ptr noundef %23) #5
  %103 = tail call i32 @wait_for_completion_timeout(ptr noundef %12, i32 noundef 100) #5
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %107, !prof !16

105:                                              ; preds = %98
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 331, i32 noundef 9, ptr noundef null) #5
  %106 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.12, i32 noundef 0) #6
  br label %134

107:                                              ; preds = %98
  %108 = load i32, ptr %16, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32, ptr %17, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.13) #6
  br label %134

115:                                              ; preds = %110
  %116 = load i32, ptr %42, align 4
  %117 = load i32, ptr %8, align 4
  %118 = add i32 %117, %116
  store i32 %118, ptr %8, align 4
  %119 = getelementptr i8, ptr %21, i32 -40
  %120 = load i8, ptr %119, align 4
  %121 = and i8 %120, 2
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %115
  %124 = getelementptr i8, ptr %21, i32 -38
  %125 = load i16, ptr %124, align 2
  %126 = icmp eq i16 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = load i32, ptr %18, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %129 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 %128) #5, !srcloc !13
  %130 = tail call i32 @spi_delay_exec(ptr noundef %124, ptr noundef %23) #5
  br label %131

131:                                              ; preds = %127, %123, %115
  %132 = load ptr, ptr %21, align 4
  %133 = icmp eq ptr %132, %1
  br i1 %133, label %134, label %20

134:                                              ; preds = %131, %113, %105, %2
  %135 = phi i32 [ -5, %105 ], [ -5, %113 ], [ 0, %2 ], [ 0, %131 ]
  %136 = getelementptr inbounds %struct.tegra_sflash_data, ptr %4, i32 0, i32 19
  %137 = load i32, ptr %136, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %138 = getelementptr inbounds %struct.tegra_sflash_data, ptr %4, i32 0, i32 5
  %139 = load ptr, ptr %138, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %137) #5, !srcloc !13
  store i32 %135, ptr %7, align 4
  tail call void @spi_finalize_current_message(ptr noundef %0) #5
  ret i32 %135
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_sflash_isr(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.tegra_sflash_data, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  %7 = getelementptr inbounds %struct.tegra_sflash_data, ptr %1, i32 0, i32 18
  store i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.tegra_sflash_data, ptr %1, i32 0, i32 12
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = and i32 %6, 67108864
  %14 = getelementptr inbounds %struct.tegra_sflash_data, ptr %1, i32 0, i32 16
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %2
  %16 = and i32 %9, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = and i32 %6, 134217728
  %20 = getelementptr inbounds %struct.tegra_sflash_data, ptr %1, i32 0, i32 17
  store i32 %19, ptr %20, align 4
  br label %21

21:                                               ; preds = %18, %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 1275068416) #5, !srcloc !13
  %24 = getelementptr inbounds %struct.tegra_sflash_data, ptr %1, i32 0, i32 23
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.tegra_sflash_data, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %26) #5
  %27 = getelementptr inbounds %struct.tegra_sflash_data, ptr %1, i32 0, i32 16
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.tegra_sflash_data, ptr %1, i32 0, i32 17
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, ptr %7, align 4
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %52, label %37

37:                                               ; preds = %34, %30, %21
  %38 = load ptr, ptr %1, align 4
  %39 = load i32, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.14, i32 noundef %39) #6
  %40 = load ptr, ptr %1, align 4
  %41 = getelementptr inbounds %struct.tegra_sflash_data, ptr %1, i32 0, i32 20
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.tegra_sflash_data, ptr %1, i32 0, i32 21
  %44 = load i32, ptr %43, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.15, i32 noundef %42, i32 noundef %44) #6
  %45 = getelementptr inbounds %struct.tegra_sflash_data, ptr %1, i32 0, i32 4
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 @reset_control_assert(ptr noundef %46) #5
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 429496) #5
  %49 = load ptr, ptr %45, align 4
  %50 = tail call i32 @reset_control_deassert(ptr noundef %49) #5
  %51 = getelementptr inbounds %struct.tegra_sflash_data, ptr %1, i32 0, i32 22
  tail call void @complete(ptr noundef %51) #5
  br label %128

52:                                               ; preds = %34
  %53 = load i32, ptr %8, align 4
  %54 = and i32 %53, 2
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %103, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.spi_transfer, ptr %25, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.tegra_sflash_data, ptr %1, i32 0, i32 14
  %60 = load i32, ptr %59, align 4
  %61 = load ptr, ptr %3, align 4
  %62 = getelementptr i8, ptr %61, i32 4
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #5, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  %64 = and i32 %63, 33554432
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %95

66:                                               ; preds = %56
  %67 = getelementptr i8, ptr %58, i32 %60
  %68 = getelementptr inbounds %struct.tegra_sflash_data, ptr %1, i32 0, i32 11
  br label %69

69:                                               ; preds = %87, %66
  %70 = phi ptr [ %67, %66 ], [ %88, %87 ]
  %71 = phi i32 [ 0, %66 ], [ %89, %87 ]
  %72 = load ptr, ptr %3, align 4
  %73 = getelementptr i8, ptr %72, i32 32
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #5, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  %75 = load i32, ptr %68, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %77, %69
  %78 = phi i32 [ %84, %77 ], [ 0, %69 ]
  %79 = phi ptr [ %83, %77 ], [ %70, %69 ]
  %80 = shl i32 %78, 3
  %81 = lshr i32 %74, %80
  %82 = trunc i32 %81 to i8
  %83 = getelementptr i8, ptr %79, i32 1
  store i8 %82, ptr %79, align 1
  %84 = add nuw i32 %78, 1
  %85 = load i32, ptr %68, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %77, label %87

87:                                               ; preds = %77, %69
  %88 = phi ptr [ %70, %69 ], [ %83, %77 ]
  %89 = add i32 %71, 1
  %90 = load ptr, ptr %3, align 4
  %91 = getelementptr i8, ptr %90, i32 4
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #5, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  %93 = and i32 %92, 33554432
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %69, label %95

95:                                               ; preds = %87, %56
  %96 = phi i32 [ 0, %56 ], [ %89, %87 ]
  %97 = getelementptr inbounds %struct.tegra_sflash_data, ptr %1, i32 0, i32 11
  %98 = load i32, ptr %97, align 4
  %99 = mul i32 %98, %96
  %100 = load i32, ptr %59, align 4
  %101 = add i32 %100, %99
  store i32 %101, ptr %59, align 4
  %102 = load i32, ptr %8, align 4
  br label %103

103:                                              ; preds = %95, %52
  %104 = phi i32 [ %102, %95 ], [ %53, %52 ]
  %105 = and i32 %104, 1
  %106 = icmp eq i32 %105, 0
  %107 = getelementptr inbounds %struct.tegra_sflash_data, ptr %1, i32 0, i32 14
  %108 = getelementptr inbounds %struct.tegra_sflash_data, ptr %1, i32 0, i32 15
  %109 = select i1 %106, ptr %107, ptr %108
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr inbounds %struct.tegra_sflash_data, ptr %1, i32 0, i32 9
  store i32 %110, ptr %111, align 4
  %112 = getelementptr inbounds %struct.spi_transfer, ptr %25, i32 0, i32 2
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, %110
  br i1 %114, label %115, label %117

115:                                              ; preds = %103
  %116 = getelementptr inbounds %struct.tegra_sflash_data, ptr %1, i32 0, i32 22
  tail call void @complete(ptr noundef %116) #5
  br label %128

117:                                              ; preds = %103
  %118 = sub i32 %113, %110
  %119 = getelementptr inbounds %struct.spi_transfer, ptr %25, i32 0, i32 8
  %120 = load i8, ptr %119, align 1
  %121 = zext i8 %120 to i32
  %122 = add nuw nsw i32 %121, 7
  %123 = lshr i32 %122, 3
  %124 = getelementptr inbounds %struct.tegra_sflash_data, ptr %1, i32 0, i32 11
  store i32 %123, ptr %124, align 4
  %125 = udiv i32 %118, %123
  %126 = tail call i32 @llvm.umin.i32(i32 %125, i32 4) #5
  %127 = getelementptr inbounds %struct.tegra_sflash_data, ptr %1, i32 0, i32 13
  store i32 %126, ptr %127, align 4
  tail call fastcc void @tegra_sflash_start_cpu_based_transfer(ptr noundef %1, ptr noundef %25) #5
  br label %128

128:                                              ; preds = %117, %115, %37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !17
  %129 = load i16, ptr %26, align 4
  %130 = add i16 %129, 1
  store i16 %130, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !20
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_sflash_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tegra_sflash_data, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_prepare(ptr noundef %7) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = tail call i32 @clk_enable(ptr noundef %7) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  tail call void @clk_unprepare(ptr noundef %7) #5
  br label %14

14:                                               ; preds = %13, %1
  %15 = phi i32 [ %8, %1 ], [ %11, %13 ]
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.17, i32 noundef %15) #6
  br label %19

19:                                               ; preds = %17, %14, %10
  %20 = phi i32 [ %15, %17 ], [ 0, %14 ], [ 0, %10 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_sflash_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tegra_sflash_data, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  %9 = getelementptr inbounds %struct.tegra_sflash_data, ptr %5, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %10) #5
  tail call void @clk_unprepare(ptr noundef %10) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_message(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_sflash_start_cpu_based_transfer(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.tegra_sflash_data, ptr %0, i32 0, i32 12
  %4 = load i32, ptr %3, align 4
  %5 = shl i32 %4, 26
  %6 = and i32 %5, 201326592
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %7 = getelementptr inbounds %struct.tegra_sflash_data, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %6) #5, !srcloc !13
  %10 = getelementptr inbounds %struct.tegra_sflash_data, ptr %0, i32 0, i32 21
  store i32 %6, ptr %10, align 4
  %11 = load i32, ptr %3, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.tegra_sflash_data, ptr %0, i32 0, i32 13
  %15 = load i32, ptr %14, align 4
  br i1 %13, label %74, label %16

16:                                               ; preds = %2
  %17 = load ptr, ptr %1, align 4
  %18 = getelementptr inbounds %struct.tegra_sflash_data, ptr %0, i32 0, i32 15
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @llvm.umin.i32(i32 %15, i32 4) #5
  %21 = getelementptr inbounds %struct.tegra_sflash_data, ptr %0, i32 0, i32 11
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %7, align 4
  %24 = getelementptr i8, ptr %23, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #5, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  %26 = and i32 %25, 4194304
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %69

28:                                               ; preds = %16
  %29 = mul i32 %22, %20
  %30 = getelementptr i8, ptr %17, i32 %19
  br label %31

31:                                               ; preds = %61, %28
  %32 = phi ptr [ %39, %61 ], [ %30, %28 ]
  %33 = phi i32 [ %40, %61 ], [ %29, %28 ]
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %57, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr %21, align 4
  %37 = add i32 %33, -1
  %38 = tail call i32 @llvm.umin.i32(i32 %36, i32 %37) #5
  %39 = getelementptr i8, ptr %32, i32 %38
  %40 = sub i32 %33, %38
  br label %41

41:                                               ; preds = %47, %35
  %42 = phi i32 [ 0, %35 ], [ %53, %47 ]
  %43 = phi i32 [ 0, %35 ], [ %54, %47 ]
  %44 = phi ptr [ %32, %35 ], [ %48, %47 ]
  %45 = phi i32 [ %33, %35 ], [ %55, %47 ]
  %46 = icmp eq i32 %43, %36
  br i1 %46, label %61, label %47

47:                                               ; preds = %41
  %48 = getelementptr i8, ptr %44, i32 1
  %49 = load i8, ptr %44, align 1
  %50 = zext i8 %49 to i32
  %51 = shl i32 %43, 3
  %52 = shl i32 %50, %51
  %53 = or i32 %52, %42
  %54 = add nuw i32 %43, 1
  %55 = add i32 %45, -1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %41

57:                                               ; preds = %47, %31
  %58 = phi i32 [ %53, %47 ], [ 0, %31 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %59 = load ptr, ptr %7, align 4
  %60 = getelementptr i8, ptr %59, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #5, !srcloc !13
  br label %69

61:                                               ; preds = %41
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %62 = load ptr, ptr %7, align 4
  %63 = getelementptr i8, ptr %62, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %42) #5, !srcloc !13
  %64 = load ptr, ptr %7, align 4
  %65 = getelementptr i8, ptr %64, i32 4
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #5, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  %67 = and i32 %66, 4194304
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %31, label %69

69:                                               ; preds = %61, %57, %16
  %70 = load i32, ptr %21, align 4
  %71 = mul i32 %70, %20
  %72 = load i32, ptr %18, align 4
  %73 = add i32 %72, %71
  store i32 %73, ptr %18, align 4
  br label %74

74:                                               ; preds = %69, %2
  %75 = phi i32 [ %20, %69 ], [ %15, %2 ]
  %76 = add i32 %75, 65535
  %77 = and i32 %76, 65535
  %78 = or i32 %77, %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %79 = load ptr, ptr %7, align 4
  %80 = getelementptr i8, ptr %79, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %78) #5, !srcloc !13
  store i32 %78, ptr %10, align 4
  %81 = or i32 %78, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %82 = load ptr, ptr %7, align 4
  %83 = getelementptr i8, ptr %82, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %81) #5, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_delay_exec(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_sflash_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @spi_controller_suspend(ptr noundef %3) #5
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_sflash_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #5
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #5, !srcloc !9
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 0, i32 -1, ptr elementtype(i32) %9) #5, !srcloc !10
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  br label %14

14:                                               ; preds = %13, %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %6) #6
  br label %22

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.tegra_sflash_data, ptr %5, i32 0, i32 20
  %17 = load i32, ptr %16, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %18 = getelementptr inbounds %struct.tegra_sflash_data, ptr %5, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #5, !srcloc !13
  %20 = tail call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 5) #5
  %21 = tail call i32 @spi_controller_resume(ptr noundef %3) #5
  br label %22

22:                                               ; preds = %15, %14
  %23 = phi i32 [ %6, %14 ], [ %21, %15 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 2147956538}
!9 = !{i64 454848, i64 2147944819, i64 2147944845, i64 2147944892, i64 2147944914, i64 2147944942, i64 2147944962}
!10 = !{i64 441417, i64 441442, i64 441464, i64 441480, i64 441492, i64 441512, i64 441536, i64 441552, i64 441564}
!11 = !{i64 2147956664}
!12 = !{i64 2153154437}
!13 = !{i64 3103737}
!14 = !{i64 3104155}
!15 = !{i64 2153154085}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2148893400}
!18 = !{i64 2148889224}
!19 = !{i64 2148889299, i64 2148889326, i64 2148889373, i64 2148889395, i64 2148889423, i64 2148889443}
!20 = !{i64 2148916403}
