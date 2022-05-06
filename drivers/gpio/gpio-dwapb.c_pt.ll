; ModuleID = '/llk/IR/drivers/gpio/gpio-dwapb.c_pt.bc'
source_filename = "../drivers/gpio/gpio-dwapb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.dwapb_platform_data = type { ptr, i32 }
%struct.dwapb_port_property = type { ptr, i32, i32, i32, [32 x i32] }
%struct.dwapb_gpio = type { ptr, ptr, ptr, i32, i32, ptr, [2 x %struct.clk_bulk_data] }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.dwapb_gpio_port = type { %struct.gpio_chip, ptr, ptr, ptr, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.62, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.62 = type { ptr }
%struct.dwapb_gpio_port_irqchip = type { %struct.irq_chip, i32, [32 x i32] }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.callback_head = type { ptr, ptr }
%struct.dwapb_context = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_gpio_dwapb__210_834_dwapb_gpio_driver_init6 = internal global ptr @dwapb_gpio_driver_init, section ".initcall6.init", align 4
@dwapb_gpio_driver = internal global %struct.platform_driver { ptr @dwapb_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dwapb_of_match, ptr @dwapb_acpi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dwapb_gpio_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_dwapb_gpio_driver_exit = internal global ptr @dwapb_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file211 = internal constant [40 x i8] c"gpio_dwapb.file=drivers/gpio/gpio-dwapb\00", section ".modinfo", align 1
@__UNIQUE_ID_license212 = internal constant [23 x i8] c"gpio_dwapb.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author213 = internal constant [29 x i8] c"gpio_dwapb.author=Jamie Iles\00", section ".modinfo", align 1
@__UNIQUE_ID_description214 = internal constant [59 x i8] c"gpio_dwapb.description=Synopsys DesignWare APB GPIO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias215 = internal constant [37 x i8] c"gpio_dwapb.alias=platform:gpio-dwapb\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"gpio-dwapb\00", align 1
@dwapb_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,dw-apb-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"apm,xgene-gpio-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@dwapb_acpi_match = internal constant [4 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"HISI0181\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"APMC0D07\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"APMC0D81\00", i32 1, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 4
@dwapb_gpio_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @dwapb_gpio_suspend, ptr @dwapb_gpio_resume, ptr @dwapb_gpio_suspend, ptr @dwapb_gpio_resume, ptr @dwapb_gpio_suspend, ptr @dwapb_gpio_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"missing/invalid port index for port%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ngpios\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"snps,nr-gpios\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"failed to get number of gpios for port%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"gpio-base\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Cannot get reset descriptor\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Cannot deassert reset lane\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"db\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Cannot get APB/Debounce clocks\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"Cannot enable APB/Debounce clocks\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"failed to init gpio chip for port%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"failed to register gpiochip for port%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"no IRQ for port%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"Cannot reenable APB/Debounce clocks\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias215, ptr @__UNIQUE_ID_author213, ptr @__UNIQUE_ID_description214, ptr @__UNIQUE_ID_file211, ptr @__UNIQUE_ID_license212, ptr @__exitcall_dwapb_gpio_driver_exit, ptr @__initcall__kmod_gpio_dwapb__210_834_dwapb_gpio_driver_init6, ptr @dwapb_gpio_driver_exit], section "llvm.metadata"
@switch.table.dwapb_gpio_resume.21 = private unnamed_addr constant [7 x i32] [i32 68, i32 52, i32 56, i32 60, i32 68, i32 68, i32 64], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dwapb_gpio_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @dwapb_gpio_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @dwapb_gpio_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @dwapb_gpio_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwapb_gpio_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 @device_get_child_node_count(ptr noundef %2) #7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %66, label %5

5:                                                ; preds = %1
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 8, i32 noundef 3520) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %66, label %8

8:                                                ; preds = %5
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 144) #7
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %8
  store ptr null, ptr %6, align 4
  br label %66

12:                                               ; preds = %8
  %13 = extractvalue { i32, i1 } %9, 0
  %14 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %13, i32 noundef 3520) #7
  store ptr %14, ptr %6, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %66, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.dwapb_platform_data, ptr %6, i32 0, i32 1
  store i32 %3, ptr %17, align 4
  %18 = tail call ptr @device_get_next_child_node(ptr noundef %2, ptr noundef null) #7
  %19 = icmp eq ptr %18, null
  br i1 %19, label %64, label %20

20:                                               ; preds = %61, %16
  %21 = phi i32 [ %23, %61 ], [ 0, %16 ]
  %22 = phi ptr [ %62, %61 ], [ %18, %16 ]
  %23 = add i32 %21, 1
  %24 = getelementptr %struct.dwapb_port_property, ptr %14, i32 %21
  store ptr %22, ptr %24, align 4
  %25 = getelementptr %struct.dwapb_port_property, ptr %14, i32 %21, i32 1
  %26 = tail call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %22, ptr noundef nonnull @.str.1, ptr noundef %25, i32 noundef 1) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32, ptr %25, align 4
  %30 = icmp ugt i32 %29, 3
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %23) #8
  tail call void @fwnode_handle_put(ptr noundef nonnull %22) #7
  br label %66

32:                                               ; preds = %28
  %33 = getelementptr %struct.dwapb_port_property, ptr %14, i32 %21, i32 2
  %34 = tail call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %22, ptr noundef nonnull @.str.3, ptr noundef %33, i32 noundef 1) #7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = tail call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %22, ptr noundef nonnull @.str.4, ptr noundef %33, i32 noundef 1) #7
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %23) #8
  store i32 32, ptr %33, align 4
  br label %40

40:                                               ; preds = %39, %36, %32
  %41 = getelementptr %struct.dwapb_port_property, ptr %14, i32 %21, i32 3
  store i32 -1, ptr %41, align 4
  %42 = tail call zeroext i1 @is_software_node(ptr noundef nonnull %22) #7
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = tail call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %22, ptr noundef nonnull @.str.6, ptr noundef %41, i32 noundef 1) #7
  br label %45

45:                                               ; preds = %43, %40
  %46 = load i32, ptr %25, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load i32, ptr %33, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %57, %48
  %52 = phi i32 [ %58, %57 ], [ 0, %48 ]
  %53 = tail call i32 @fwnode_irq_get(ptr noundef nonnull %22, i32 noundef %52) #7
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = getelementptr %struct.dwapb_port_property, ptr %14, i32 %21, i32 4, i32 %52
  store i32 %53, ptr %56, align 4
  br label %57

57:                                               ; preds = %55, %51
  %58 = add nuw i32 %52, 1
  %59 = load i32, ptr %33, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %51, label %61

61:                                               ; preds = %57, %48, %45
  %62 = tail call ptr @device_get_next_child_node(ptr noundef %2, ptr noundef nonnull %22) #7
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %20

64:                                               ; preds = %61, %16
  %65 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %66, label %69

66:                                               ; preds = %64, %31, %12, %11, %5, %1
  %67 = phi ptr [ %6, %64 ], [ inttoptr (i32 -12 to ptr), %12 ], [ inttoptr (i32 -12 to ptr), %11 ], [ inttoptr (i32 -12 to ptr), %5 ], [ inttoptr (i32 -19 to ptr), %1 ], [ inttoptr (i32 -22 to ptr), %31 ]
  %68 = ptrtoint ptr %67 to i32
  br label %245

69:                                               ; preds = %64
  %70 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 40, i32 noundef 3520) #7
  %71 = icmp eq ptr %70, null
  br i1 %71, label %245, label %72

72:                                               ; preds = %69
  store ptr %2, ptr %70, align 4
  %73 = load i32, ptr %17, align 4
  %74 = getelementptr inbounds %struct.dwapb_gpio, ptr %70, i32 0, i32 3
  store i32 %73, ptr %74, align 4
  %75 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef null, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #7
  %76 = getelementptr inbounds %struct.dwapb_gpio, ptr %70, i32 0, i32 5
  store ptr %75, ptr %76, align 4
  %77 = icmp ugt ptr %75, inttoptr (i32 -4096 to ptr)
  br i1 %77, label %89, label %78

78:                                               ; preds = %72
  %79 = tail call i32 @reset_control_deassert(ptr noundef %75) #7
  %80 = icmp eq i32 %79, 0
  %81 = load ptr, ptr %70, align 4
  br i1 %80, label %83, label %82

82:                                               ; preds = %78
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.8) #8
  br label %245

83:                                               ; preds = %78
  %84 = tail call i32 @devm_add_action(ptr noundef %81, ptr noundef nonnull @dwapb_assert_reset, ptr noundef nonnull %70) #7
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %76, align 4
  %88 = tail call i32 @reset_control_assert(ptr noundef %87) #7
  br label %245

89:                                               ; preds = %72
  %90 = load ptr, ptr %70, align 4
  %91 = ptrtoint ptr %75 to i32
  %92 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %90, i32 noundef %91, ptr noundef nonnull @.str.7) #7
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %245

94:                                               ; preds = %89, %83
  %95 = load i32, ptr %74, align 4
  %96 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %95, i32 320) #7
  %97 = extractvalue { i32, i1 } %96, 1
  br i1 %97, label %98, label %100, !prof !8

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.dwapb_gpio, ptr %70, i32 0, i32 2
  store ptr null, ptr %99, align 4
  br label %245

100:                                              ; preds = %94
  %101 = extractvalue { i32, i1 } %96, 0
  %102 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %101, i32 noundef 3520) #7
  %103 = getelementptr inbounds %struct.dwapb_gpio, ptr %70, i32 0, i32 2
  store ptr %102, ptr %103, align 4
  %104 = icmp eq ptr %102, null
  br i1 %104, label %245, label %105

105:                                              ; preds = %100
  %106 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #7
  %107 = getelementptr inbounds %struct.dwapb_gpio, ptr %70, i32 0, i32 1
  store ptr %106, ptr %107, align 4
  %108 = icmp ugt ptr %106, inttoptr (i32 -4096 to ptr)
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = ptrtoint ptr %106 to i32
  br label %245

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.dwapb_gpio, ptr %70, i32 0, i32 6
  store ptr @.str.9, ptr %112, align 4
  %113 = getelementptr %struct.dwapb_gpio, ptr %70, i32 0, i32 6, i32 1
  store ptr @.str.10, ptr %113, align 4
  %114 = load ptr, ptr %70, align 4
  %115 = tail call i32 @devm_clk_bulk_get_optional(ptr noundef %114, i32 noundef 2, ptr noundef %112) #7
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %111
  %118 = load ptr, ptr %70, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.11) #8
  br label %245

119:                                              ; preds = %111
  %120 = tail call i32 @clk_bulk_prepare(i32 noundef 2, ptr noundef %112) #7
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = tail call i32 @clk_bulk_enable(i32 noundef 2, ptr noundef %112) #7
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %122
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %112) #7
  br label %126

126:                                              ; preds = %125, %119
  %127 = phi i32 [ %123, %125 ], [ %120, %119 ]
  %128 = load ptr, ptr %70, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %128, ptr noundef nonnull @.str.12) #8
  br label %245

129:                                              ; preds = %122
  %130 = load ptr, ptr %70, align 4
  %131 = tail call i32 @devm_add_action(ptr noundef %130, ptr noundef nonnull @dwapb_disable_clks, ptr noundef nonnull %70) #7
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %129
  tail call void @clk_bulk_disable(i32 noundef 2, ptr noundef %112) #7
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %112) #7
  br label %245

134:                                              ; preds = %129
  %135 = tail call ptr @device_get_match_data(ptr noundef %2) #7
  %136 = ptrtoint ptr %135 to i32
  %137 = getelementptr inbounds %struct.dwapb_gpio, ptr %70, i32 0, i32 4
  store i32 %136, ptr %137, align 4
  %138 = load i32, ptr %74, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %243, label %144

140:                                              ; preds = %234
  %141 = add nuw i32 %145, 1
  %142 = load i32, ptr %74, align 4
  %143 = icmp ult i32 %141, %142
  br i1 %143, label %144, label %243

144:                                              ; preds = %140, %134
  %145 = phi i32 [ %141, %140 ], [ 0, %134 ]
  %146 = load ptr, ptr %6, align 4
  %147 = getelementptr %struct.dwapb_port_property, ptr %146, i32 %145
  %148 = load ptr, ptr %103, align 4
  %149 = getelementptr %struct.dwapb_gpio_port, ptr %148, i32 %145
  %150 = getelementptr %struct.dwapb_gpio_port, ptr %148, i32 %145, i32 2
  store ptr %70, ptr %150, align 4
  %151 = getelementptr %struct.dwapb_port_property, ptr %146, i32 %145, i32 1
  %152 = load i32, ptr %151, align 4
  %153 = getelementptr %struct.dwapb_gpio_port, ptr %148, i32 %145, i32 4
  store i32 %152, ptr %153, align 4
  %154 = load ptr, ptr %70, align 4
  %155 = tail call noalias ptr @devm_kmalloc(ptr noundef %154, i32 noundef 36, i32 noundef 3520) #7
  %156 = getelementptr %struct.dwapb_gpio_port, ptr %148, i32 %145, i32 3
  store ptr %155, ptr %156, align 4
  %157 = icmp eq ptr %155, null
  br i1 %157, label %245, label %158

158:                                              ; preds = %144
  %159 = load ptr, ptr %107, align 4
  %160 = getelementptr i8, ptr %159, i32 80
  %161 = load i32, ptr %151, align 4
  %162 = shl i32 %161, 2
  %163 = getelementptr i8, ptr %160, i32 %162
  %164 = mul i32 %161, 12
  %165 = getelementptr i8, ptr %159, i32 %164
  %166 = getelementptr i8, ptr %159, i32 4
  %167 = getelementptr i8, ptr %166, i32 %164
  %168 = load ptr, ptr %70, align 4
  %169 = tail call i32 @bgpio_init(ptr noundef %149, ptr noundef %168, i32 noundef 4, ptr noundef %163, ptr noundef %165, ptr noundef null, ptr noundef %167, ptr noundef null, i32 noundef 0) #7
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %238

171:                                              ; preds = %158
  %172 = load ptr, ptr %147, align 4
  %173 = getelementptr inbounds %struct.gpio_chip, ptr %149, i32 0, i32 3
  store ptr %172, ptr %173, align 4
  %174 = getelementptr %struct.dwapb_port_property, ptr %146, i32 %145, i32 2
  %175 = load i32, ptr %174, align 4
  %176 = trunc i32 %175 to i16
  %177 = getelementptr inbounds %struct.gpio_chip, ptr %149, i32 0, i32 20
  store i16 %176, ptr %177, align 4
  %178 = getelementptr %struct.dwapb_port_property, ptr %146, i32 %145, i32 3
  %179 = load i32, ptr %178, align 4
  %180 = getelementptr inbounds %struct.gpio_chip, ptr %149, i32 0, i32 19
  store i32 %179, ptr %180, align 4
  %181 = load i32, ptr %151, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %234

183:                                              ; preds = %171
  %184 = getelementptr inbounds %struct.gpio_chip, ptr %149, i32 0, i32 14
  store ptr @dwapb_gpio_set_config, ptr %184, align 4
  %185 = load i32, ptr %151, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %234

187:                                              ; preds = %183
  %188 = load ptr, ptr %70, align 4
  %189 = tail call noalias ptr @devm_kmalloc(ptr noundef %188, i32 noundef 268, i32 noundef 3520) #7
  %190 = icmp eq ptr %189, null
  br i1 %190, label %234, label %191

191:                                              ; preds = %187
  %192 = load i32, ptr %174, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %208, label %194

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.dwapb_gpio_port_irqchip, ptr %189, i32 0, i32 1
  br label %196

196:                                              ; preds = %205, %194
  %197 = phi i32 [ 0, %194 ], [ %206, %205 ]
  %198 = getelementptr %struct.dwapb_port_property, ptr %146, i32 %145, i32 4, i32 %197
  %199 = load i32, ptr %198, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %205, label %201

201:                                              ; preds = %196
  %202 = load i32, ptr %195, align 4
  %203 = add i32 %202, 1
  store i32 %203, ptr %195, align 4
  %204 = getelementptr %struct.dwapb_gpio_port_irqchip, ptr %189, i32 0, i32 2, i32 %202
  store i32 %199, ptr %204, align 4
  br label %205

205:                                              ; preds = %201, %196
  %206 = add nuw i32 %197, 1
  %207 = icmp eq i32 %206, %192
  br i1 %207, label %208, label %196

208:                                              ; preds = %205, %191
  %209 = getelementptr inbounds %struct.dwapb_gpio_port_irqchip, ptr %189, i32 0, i32 1
  %210 = load i32, ptr %209, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %208
  %213 = load ptr, ptr %70, align 4
  %214 = load i32, ptr %151, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %213, ptr noundef nonnull @.str.15, i32 noundef %214) #8
  %215 = load ptr, ptr %70, align 4
  tail call void @devm_kfree(ptr noundef %215, ptr noundef nonnull %189) #7
  br label %234

216:                                              ; preds = %208
  %217 = getelementptr inbounds %struct.gpio_chip, ptr %149, i32 0, i32 37
  %218 = getelementptr inbounds %struct.gpio_chip, ptr %149, i32 0, i32 37, i32 9
  store ptr @handle_bad_irq, ptr %218, align 4
  %219 = getelementptr inbounds %struct.gpio_chip, ptr %149, i32 0, i32 37, i32 10
  store i32 0, ptr %219, align 4
  %220 = getelementptr %struct.dwapb_gpio_port, ptr %148, i32 %145, i32 1
  store ptr %189, ptr %220, align 4
  %221 = getelementptr inbounds %struct.irq_chip, ptr %189, i32 0, i32 1
  store ptr @.str, ptr %221, align 4
  %222 = getelementptr inbounds %struct.irq_chip, ptr %189, i32 0, i32 6
  store ptr @dwapb_irq_ack, ptr %222, align 4
  %223 = getelementptr inbounds %struct.irq_chip, ptr %189, i32 0, i32 7
  store ptr @dwapb_irq_mask, ptr %223, align 4
  %224 = getelementptr inbounds %struct.irq_chip, ptr %189, i32 0, i32 9
  store ptr @dwapb_irq_unmask, ptr %224, align 4
  %225 = getelementptr inbounds %struct.irq_chip, ptr %189, i32 0, i32 13
  store ptr @dwapb_irq_set_type, ptr %225, align 4
  %226 = getelementptr inbounds %struct.irq_chip, ptr %189, i32 0, i32 4
  store ptr @dwapb_irq_enable, ptr %226, align 4
  %227 = getelementptr inbounds %struct.irq_chip, ptr %189, i32 0, i32 5
  store ptr @dwapb_irq_disable, ptr %227, align 4
  %228 = getelementptr inbounds %struct.irq_chip, ptr %189, i32 0, i32 14
  store ptr @dwapb_irq_set_wake, ptr %228, align 4
  %229 = getelementptr inbounds %struct.gpio_chip, ptr %149, i32 0, i32 37, i32 15
  store i32 %210, ptr %229, align 4
  %230 = getelementptr inbounds %struct.dwapb_gpio_port_irqchip, ptr %189, i32 0, i32 2
  %231 = getelementptr inbounds %struct.gpio_chip, ptr %149, i32 0, i32 37, i32 16
  store ptr %230, ptr %231, align 4
  %232 = getelementptr inbounds %struct.gpio_chip, ptr %149, i32 0, i32 37, i32 14
  store ptr %70, ptr %232, align 4
  %233 = getelementptr inbounds %struct.gpio_chip, ptr %149, i32 0, i32 37, i32 13
  store ptr @dwapb_irq_handler, ptr %233, align 4
  store ptr %189, ptr %217, align 4
  br label %234

234:                                              ; preds = %216, %212, %187, %183, %171
  %235 = load ptr, ptr %70, align 4
  %236 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %235, ptr noundef %149, ptr noundef %149, ptr noundef null, ptr noundef null) #7
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %140, label %238

238:                                              ; preds = %234, %158
  %239 = phi ptr [ @.str.13, %158 ], [ @.str.14, %234 ]
  %240 = phi i32 [ %169, %158 ], [ %236, %234 ]
  %241 = load ptr, ptr %70, align 4
  %242 = load i32, ptr %153, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %241, ptr noundef nonnull %239, i32 noundef %242) #8
  br label %245

243:                                              ; preds = %140, %134
  %244 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %70, ptr %244, align 8
  br label %245

245:                                              ; preds = %243, %238, %144, %133, %126, %117, %109, %100, %98, %89, %86, %82, %69, %66
  %246 = phi i32 [ %68, %66 ], [ %110, %109 ], [ 0, %243 ], [ -12, %69 ], [ %92, %89 ], [ -12, %100 ], [ -12, %98 ], [ %84, %86 ], [ %79, %82 ], [ %131, %133 ], [ %127, %126 ], [ %115, %117 ], [ %240, %238 ], [ -12, %144 ]
  ret i32 %246
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_child_node_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_software_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwapb_assert_reset(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dwapb_gpio, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @reset_control_assert(ptr noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get_optional(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwapb_disable_clks(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.dwapb_gpio, ptr %0, i32 0, i32 6
  tail call void @clk_bulk_disable(i32 noundef 2, ptr noundef %2) #7
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bgpio_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwapb_gpio_set_config(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = and i32 %2, 255
  %5 = icmp eq i32 %4, 11
  br i1 %5, label %6, label %31

6:                                                ; preds = %3
  %7 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %8 = getelementptr inbounds %struct.dwapb_gpio_port, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = shl nuw i32 1, %1
  %11 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 34
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #7
  %13 = getelementptr inbounds %struct.dwapb_gpio, ptr %9, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dwapb_gpio, ptr %9, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.gpio_chip, ptr %14, i32 0, i32 24
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %16, i32 72
  %20 = tail call i32 %18(ptr noundef %19) #7
  %21 = icmp ult i32 %2, 256
  %22 = or i32 %20, %10
  %23 = xor i32 %10, -1
  %24 = and i32 %20, %23
  %25 = select i1 %21, i32 %24, i32 %22
  %26 = load ptr, ptr %13, align 4
  %27 = load ptr, ptr %15, align 4
  %28 = getelementptr inbounds %struct.gpio_chip, ptr %26, i32 0, i32 25
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %27, i32 72
  tail call void %29(ptr noundef %30, i32 noundef %25) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #7
  br label %31

31:                                               ; preds = %6, %3
  %32 = phi i32 [ 0, %6 ], [ -524, %3 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwapb_irq_ack(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dwapb_gpio_port, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = shl nuw i32 1, %7
  %9 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 34
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #7
  %11 = getelementptr inbounds %struct.dwapb_gpio, ptr %5, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dwapb_gpio, ptr %5, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.gpio_chip, ptr %12, i32 0, i32 25
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dwapb_gpio, ptr %5, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 76, i32 64
  %22 = getelementptr i8, ptr %14, i32 %21
  tail call void %16(ptr noundef %22, i32 noundef %8) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwapb_irq_mask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dwapb_gpio_port, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 34
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #7
  %8 = getelementptr inbounds %struct.dwapb_gpio, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dwapb_gpio, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.gpio_chip, ptr %9, i32 0, i32 24
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dwapb_gpio, ptr %5, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 52, i32 68
  %19 = getelementptr i8, ptr %11, i32 %18
  %20 = tail call i32 %13(ptr noundef %19) #7
  %21 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = shl nuw i32 1, %22
  %24 = or i32 %23, %20
  %25 = load ptr, ptr %8, align 4
  %26 = load ptr, ptr %10, align 4
  %27 = getelementptr inbounds %struct.gpio_chip, ptr %25, i32 0, i32 25
  %28 = load ptr, ptr %27, align 4
  %29 = load i32, ptr %14, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 52, i32 68
  %33 = getelementptr i8, ptr %26, i32 %32
  tail call void %28(ptr noundef %33, i32 noundef %24) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwapb_irq_unmask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dwapb_gpio_port, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 34
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #7
  %8 = getelementptr inbounds %struct.dwapb_gpio, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dwapb_gpio, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.gpio_chip, ptr %9, i32 0, i32 24
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dwapb_gpio, ptr %5, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 52, i32 68
  %19 = getelementptr i8, ptr %11, i32 %18
  %20 = tail call i32 %13(ptr noundef %19) #7
  %21 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = shl nuw i32 1, %22
  %24 = xor i32 %23, -1
  %25 = and i32 %20, %24
  %26 = load ptr, ptr %8, align 4
  %27 = load ptr, ptr %10, align 4
  %28 = getelementptr inbounds %struct.gpio_chip, ptr %26, i32 0, i32 25
  %29 = load ptr, ptr %28, align 4
  %30 = load i32, ptr %14, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 52, i32 68
  %34 = getelementptr i8, ptr %27, i32 %33
  tail call void %29(ptr noundef %34, i32 noundef %25) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwapb_irq_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dwapb_gpio_port, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.gpio_chip, ptr %4, i32 0, i32 34
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #7
  %11 = getelementptr inbounds %struct.dwapb_gpio, ptr %6, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dwapb_gpio, ptr %6, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.gpio_chip, ptr %12, i32 0, i32 24
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dwapb_gpio, ptr %6, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 56, i32 52
  %22 = getelementptr i8, ptr %14, i32 %21
  %23 = tail call i32 %16(ptr noundef %22) #7
  %24 = load ptr, ptr %11, align 4
  %25 = load ptr, ptr %13, align 4
  %26 = getelementptr inbounds %struct.gpio_chip, ptr %24, i32 0, i32 24
  %27 = load ptr, ptr %26, align 4
  %28 = load i32, ptr %17, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 60, i32 56
  %32 = getelementptr i8, ptr %25, i32 %31
  %33 = tail call i32 %27(ptr noundef %32) #7
  switch i32 %1, label %101 [
    i32 3, label %34
    i32 1, label %82
    i32 2, label %86
    i32 4, label %91
    i32 8, label %96
  ]

34:                                               ; preds = %2
  %35 = shl nuw i32 1, %8
  %36 = or i32 %23, %35
  %37 = getelementptr inbounds %struct.dwapb_gpio, ptr %6, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %108, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr %11, align 4
  %42 = lshr i32 %8, 5
  br label %43

43:                                               ; preds = %48, %40
  %44 = phi i32 [ 0, %40 ], [ %49, %48 ]
  %45 = getelementptr %struct.dwapb_gpio_port, ptr %41, i32 %44, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, %42
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = add nuw i32 %44, 1
  %50 = icmp eq i32 %49, %38
  br i1 %50, label %101, label %43

51:                                               ; preds = %43
  %52 = getelementptr %struct.dwapb_gpio_port, ptr %41, i32 %44
  %53 = icmp eq ptr %52, null
  br i1 %53, label %101, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %13, align 4
  %56 = getelementptr inbounds %struct.gpio_chip, ptr %41, i32 0, i32 24
  %57 = load ptr, ptr %56, align 4
  %58 = load i32, ptr %17, align 4
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, i32 60, i32 56
  %62 = getelementptr i8, ptr %55, i32 %61
  %63 = tail call i32 %57(ptr noundef %62) #7
  %64 = getelementptr inbounds %struct.gpio_chip, ptr %52, i32 0, i32 10
  %65 = load ptr, ptr %64, align 4
  %66 = and i32 %8, 31
  %67 = tail call i32 %65(ptr noundef nonnull %52, i32 noundef %66) #7
  %68 = icmp eq i32 %67, 0
  %69 = xor i32 %35, -1
  %70 = and i32 %63, %69
  %71 = or i32 %63, %35
  %72 = select i1 %68, i32 %71, i32 %70
  %73 = load ptr, ptr %11, align 4
  %74 = load ptr, ptr %13, align 4
  %75 = getelementptr inbounds %struct.gpio_chip, ptr %73, i32 0, i32 25
  %76 = load ptr, ptr %75, align 4
  %77 = load i32, ptr %17, align 4
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  %80 = select i1 %79, i32 60, i32 56
  %81 = getelementptr i8, ptr %74, i32 %80
  tail call void %76(ptr noundef %81, i32 noundef %72) #7
  br label %101

82:                                               ; preds = %2
  %83 = shl nuw i32 1, %8
  %84 = or i32 %23, %83
  %85 = or i32 %33, %83
  br label %108

86:                                               ; preds = %2
  %87 = shl nuw i32 1, %8
  %88 = or i32 %23, %87
  %89 = xor i32 %87, -1
  %90 = and i32 %33, %89
  br label %108

91:                                               ; preds = %2
  %92 = shl nuw i32 1, %8
  %93 = xor i32 %92, -1
  %94 = and i32 %23, %93
  %95 = or i32 %33, %92
  br label %108

96:                                               ; preds = %2
  %97 = shl nuw i32 1, %8
  %98 = xor i32 %97, -1
  %99 = and i32 %23, %98
  %100 = and i32 %33, %98
  br label %108

101:                                              ; preds = %54, %51, %48, %2
  %102 = phi i32 [ %23, %2 ], [ %36, %51 ], [ %36, %54 ], [ %36, %48 ]
  %103 = and i32 %1, 12
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = and i32 %1, 3
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %105, %101, %96, %91, %86, %82, %34
  %109 = phi ptr [ @handle_level_irq, %91 ], [ @handle_level_irq, %96 ], [ @handle_level_irq, %101 ], [ @handle_edge_irq, %34 ], [ @handle_edge_irq, %86 ], [ @handle_edge_irq, %82 ], [ @handle_edge_irq, %105 ]
  %110 = phi i32 [ %95, %91 ], [ %100, %96 ], [ %33, %101 ], [ %33, %34 ], [ %90, %86 ], [ %85, %82 ], [ %33, %105 ]
  %111 = phi i32 [ %94, %91 ], [ %99, %96 ], [ %102, %101 ], [ %36, %34 ], [ %88, %86 ], [ %84, %82 ], [ %102, %105 ]
  %112 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.irq_desc, ptr %113, i32 0, i32 3
  store ptr %109, ptr %114, align 4
  br label %115

115:                                              ; preds = %108, %105
  %116 = phi i32 [ %33, %105 ], [ %110, %108 ]
  %117 = phi i32 [ %102, %105 ], [ %111, %108 ]
  %118 = load ptr, ptr %11, align 4
  %119 = load ptr, ptr %13, align 4
  %120 = getelementptr inbounds %struct.gpio_chip, ptr %118, i32 0, i32 25
  %121 = load ptr, ptr %120, align 4
  %122 = load i32, ptr %17, align 4
  %123 = and i32 %122, 1
  %124 = icmp eq i32 %123, 0
  %125 = select i1 %124, i32 56, i32 52
  %126 = getelementptr i8, ptr %119, i32 %125
  tail call void %121(ptr noundef %126, i32 noundef %117) #7
  %127 = icmp eq i32 %1, 3
  br i1 %127, label %138, label %128

128:                                              ; preds = %115
  %129 = load ptr, ptr %11, align 4
  %130 = load ptr, ptr %13, align 4
  %131 = getelementptr inbounds %struct.gpio_chip, ptr %129, i32 0, i32 25
  %132 = load ptr, ptr %131, align 4
  %133 = load i32, ptr %17, align 4
  %134 = and i32 %133, 1
  %135 = icmp eq i32 %134, 0
  %136 = select i1 %135, i32 60, i32 56
  %137 = getelementptr i8, ptr %130, i32 %136
  tail call void %132(ptr noundef %137, i32 noundef %116) #7
  br label %138

138:                                              ; preds = %128, %115
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwapb_irq_enable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dwapb_gpio_port, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 34
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #7
  %8 = getelementptr inbounds %struct.dwapb_gpio, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dwapb_gpio, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.gpio_chip, ptr %9, i32 0, i32 24
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %11, i32 48
  %15 = tail call i32 %13(ptr noundef %14) #7
  %16 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = shl nuw i32 1, %17
  %19 = or i32 %18, %15
  %20 = load ptr, ptr %8, align 4
  %21 = load ptr, ptr %10, align 4
  %22 = getelementptr inbounds %struct.gpio_chip, ptr %20, i32 0, i32 25
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %21, i32 48
  tail call void %23(ptr noundef %24, i32 noundef %19) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwapb_irq_disable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dwapb_gpio_port, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 34
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #7
  %8 = getelementptr inbounds %struct.dwapb_gpio, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dwapb_gpio, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.gpio_chip, ptr %9, i32 0, i32 24
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %11, i32 48
  %15 = tail call i32 %13(ptr noundef %14) #7
  %16 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = shl nuw i32 1, %17
  %19 = xor i32 %18, -1
  %20 = and i32 %15, %19
  %21 = load ptr, ptr %8, align 4
  %22 = load ptr, ptr %10, align 4
  %23 = getelementptr inbounds %struct.gpio_chip, ptr %21, i32 0, i32 25
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %22, i32 48
  tail call void %24(ptr noundef %25, i32 noundef %20) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @dwapb_irq_set_wake(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dwapb_gpio_port, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dwapb_gpio, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dwapb_gpio_port, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %1, 0
  %14 = shl nuw i32 1, %12
  br i1 %13, label %19, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.dwapb_context, ptr %10, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, ptr %16, align 4
  br label %24

19:                                               ; preds = %2
  %20 = xor i32 %14, -1
  %21 = getelementptr inbounds %struct.dwapb_context, ptr %10, i32 0, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, %20
  store i32 %23, ptr %21, align 4
  br label %24

24:                                               ; preds = %19, %15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwapb_irq_handler(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %13(ptr noundef %16) #7
  br label %25

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %19(ptr noundef %20) #7
  %21 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  tail call void %22(ptr noundef %20) #7
  br label %25

25:                                               ; preds = %24, %17, %15, %1
  %26 = getelementptr inbounds %struct.dwapb_gpio, ptr %5, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  %28 = getelementptr inbounds %struct.dwapb_gpio, ptr %5, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.gpio_chip, ptr %27, i32 0, i32 24
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.dwapb_gpio, ptr %5, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i32 64, i32 60
  %37 = getelementptr i8, ptr %29, i32 %36
  %38 = tail call i32 %31(ptr noundef %37) #7
  store i32 %38, ptr %3, align 4
  %39 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 32, i32 noundef 0) #7
  %40 = icmp ult i32 %39, 32
  br i1 %40, label %41, label %112

41:                                               ; preds = %25
  %42 = getelementptr inbounds %struct.gpio_chip, ptr %27, i32 0, i32 37, i32 1
  %43 = getelementptr inbounds %struct.dwapb_gpio, ptr %5, i32 0, i32 3
  br label %44

44:                                               ; preds = %108, %41
  %45 = phi i32 [ %39, %41 ], [ %110, %108 ]
  %46 = load ptr, ptr %42, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !9
  %47 = call ptr @__irq_resolve_mapping(ptr noundef %46, i32 noundef %45, ptr noundef nonnull %2) #7
  %48 = icmp eq ptr %47, null
  %49 = load i32, ptr %2, align 4
  %50 = select i1 %48, i32 0, i32 %49
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %51 = call ptr @irq_get_irq_data(i32 noundef %50) #7
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = call i32 @generic_handle_irq(i32 noundef %50) #7
  br label %108

55:                                               ; preds = %44
  %56 = getelementptr inbounds %struct.irq_data, ptr %51, i32 0, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, 15
  %60 = call i32 @generic_handle_irq(i32 noundef %50) #7
  %61 = icmp eq i32 %59, 3
  br i1 %61, label %62, label %108

62:                                               ; preds = %55
  %63 = load i32, ptr %43, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %108, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr %26, align 4
  %67 = lshr i32 %45, 5
  br label %68

68:                                               ; preds = %73, %65
  %69 = phi i32 [ 0, %65 ], [ %74, %73 ]
  %70 = getelementptr %struct.dwapb_gpio_port, ptr %66, i32 %69, i32 4
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, %67
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = add nuw i32 %69, 1
  %75 = icmp eq i32 %74, %63
  br i1 %75, label %108, label %68

76:                                               ; preds = %68
  %77 = getelementptr %struct.dwapb_gpio_port, ptr %66, i32 %69
  %78 = icmp eq ptr %77, null
  br i1 %78, label %108, label %79

79:                                               ; preds = %76
  %80 = load ptr, ptr %28, align 4
  %81 = getelementptr inbounds %struct.gpio_chip, ptr %66, i32 0, i32 24
  %82 = load ptr, ptr %81, align 4
  %83 = load i32, ptr %32, align 4
  %84 = and i32 %83, 1
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %85, i32 60, i32 56
  %87 = getelementptr i8, ptr %80, i32 %86
  %88 = call i32 %82(ptr noundef %87) #7
  %89 = getelementptr inbounds %struct.gpio_chip, ptr %77, i32 0, i32 10
  %90 = load ptr, ptr %89, align 4
  %91 = and i32 %45, 31
  %92 = call i32 %90(ptr noundef nonnull %77, i32 noundef %91) #7
  %93 = icmp eq i32 %92, 0
  %94 = shl nuw i32 1, %45
  %95 = xor i32 %94, -1
  %96 = and i32 %88, %95
  %97 = or i32 %88, %94
  %98 = select i1 %93, i32 %97, i32 %96
  %99 = load ptr, ptr %26, align 4
  %100 = load ptr, ptr %28, align 4
  %101 = getelementptr inbounds %struct.gpio_chip, ptr %99, i32 0, i32 25
  %102 = load ptr, ptr %101, align 4
  %103 = load i32, ptr %32, align 4
  %104 = and i32 %103, 1
  %105 = icmp eq i32 %104, 0
  %106 = select i1 %105, i32 60, i32 56
  %107 = getelementptr i8, ptr %100, i32 %106
  call void %102(ptr noundef %107, i32 noundef %98) #7
  br label %108

108:                                              ; preds = %79, %76, %73, %62, %55, %53
  %109 = add i32 %45, 1
  %110 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 32, i32 noundef %109) #7
  %111 = icmp ult i32 %110, 32
  br i1 %111, label %44, label %112

112:                                              ; preds = %108, %25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %113 = load ptr, ptr %8, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 9
  %117 = load ptr, ptr %116, align 4
  br label %118

118:                                              ; preds = %115, %112
  %119 = phi ptr [ %117, %115 ], [ %113, %112 ]
  %120 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  call void %119(ptr noundef %120) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwapb_gpio_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dwapb_gpio, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 34
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #7
  %8 = getelementptr inbounds %struct.dwapb_gpio, ptr %3, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %160, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.dwapb_gpio, ptr %3, i32 0, i32 1
  %13 = getelementptr inbounds %struct.dwapb_gpio, ptr %3, i32 0, i32 4
  br label %14

14:                                               ; preds = %156, %11
  %15 = phi i32 [ 0, %11 ], [ %157, %156 ]
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr %struct.dwapb_gpio_port, ptr %16, i32 %15, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr %struct.dwapb_gpio_port, ptr %16, i32 %15, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = mul i32 %18, 12
  %22 = add i32 %21, 4
  %23 = load ptr, ptr %12, align 4
  %24 = getelementptr inbounds %struct.gpio_chip, ptr %16, i32 0, i32 24
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %13, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %14
  %30 = add i32 %21, -48
  %31 = lshr exact i32 %30, 2
  %32 = icmp ult i32 %30, 28
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = trunc i32 %31 to i8
  %35 = lshr i8 79, %34
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds [7 x i32], ptr @switch.table.dwapb_gpio_resume.21, i32 0, i32 %31
  %40 = load i32, ptr %39, align 4
  br label %41

41:                                               ; preds = %38, %33, %29, %14
  %42 = phi i32 [ %22, %14 ], [ %40, %38 ], [ %22, %33 ], [ %22, %29 ]
  %43 = getelementptr i8, ptr %23, i32 %42
  %44 = tail call i32 %25(ptr noundef %43) #7
  %45 = getelementptr inbounds %struct.dwapb_context, ptr %20, i32 0, i32 1
  store i32 %44, ptr %45, align 4
  %46 = load ptr, ptr %4, align 4
  %47 = load ptr, ptr %12, align 4
  %48 = getelementptr inbounds %struct.gpio_chip, ptr %46, i32 0, i32 24
  %49 = load ptr, ptr %48, align 4
  %50 = load i32, ptr %13, align 4
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %41
  %54 = add i32 %21, -52
  %55 = lshr exact i32 %54, 2
  %56 = icmp ult i32 %54, 28
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = trunc i32 %55 to i8
  %59 = lshr i8 79, %58
  %60 = and i8 %59, 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds [7 x i32], ptr @switch.table.dwapb_gpio_resume.21, i32 0, i32 %55
  %64 = load i32, ptr %63, align 4
  br label %65

65:                                               ; preds = %62, %57, %53, %41
  %66 = phi i32 [ %21, %41 ], [ %64, %62 ], [ %21, %57 ], [ %21, %53 ]
  %67 = getelementptr i8, ptr %47, i32 %66
  %68 = tail call i32 %49(ptr noundef %67) #7
  store i32 %68, ptr %20, align 4
  %69 = shl i32 %18, 2
  %70 = add i32 %69, 80
  %71 = load ptr, ptr %4, align 4
  %72 = load ptr, ptr %12, align 4
  %73 = getelementptr inbounds %struct.gpio_chip, ptr %71, i32 0, i32 24
  %74 = load ptr, ptr %73, align 4
  %75 = load i32, ptr %13, align 4
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %90, label %78

78:                                               ; preds = %65
  %79 = add i32 %69, 28
  %80 = lshr exact i32 %79, 2
  %81 = icmp ugt i32 %69, -29
  br i1 %81, label %82, label %90

82:                                               ; preds = %78
  %83 = trunc i32 %80 to i8
  %84 = lshr i8 79, %83
  %85 = and i8 %84, 1
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds [7 x i32], ptr @switch.table.dwapb_gpio_resume.21, i32 0, i32 %80
  %89 = load i32, ptr %88, align 4
  br label %90

90:                                               ; preds = %87, %82, %78, %65
  %91 = phi i32 [ %70, %65 ], [ %89, %87 ], [ %70, %82 ], [ %70, %78 ]
  %92 = getelementptr i8, ptr %72, i32 %91
  %93 = tail call i32 %74(ptr noundef %92) #7
  %94 = getelementptr inbounds %struct.dwapb_context, ptr %20, i32 0, i32 2
  store i32 %93, ptr %94, align 4
  %95 = icmp eq i32 %18, 0
  br i1 %95, label %96, label %156

96:                                               ; preds = %90
  %97 = load ptr, ptr %4, align 4
  %98 = load ptr, ptr %12, align 4
  %99 = getelementptr inbounds %struct.gpio_chip, ptr %97, i32 0, i32 24
  %100 = load ptr, ptr %99, align 4
  %101 = load i32, ptr %13, align 4
  %102 = and i32 %101, 1
  %103 = icmp eq i32 %102, 0
  %104 = select i1 %103, i32 52, i32 68
  %105 = getelementptr i8, ptr %98, i32 %104
  %106 = tail call i32 %100(ptr noundef %105) #7
  %107 = getelementptr inbounds %struct.dwapb_context, ptr %20, i32 0, i32 4
  store i32 %106, ptr %107, align 4
  %108 = load ptr, ptr %4, align 4
  %109 = load ptr, ptr %12, align 4
  %110 = getelementptr inbounds %struct.gpio_chip, ptr %108, i32 0, i32 24
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr i8, ptr %109, i32 48
  %113 = tail call i32 %111(ptr noundef %112) #7
  %114 = getelementptr inbounds %struct.dwapb_context, ptr %20, i32 0, i32 3
  store i32 %113, ptr %114, align 4
  %115 = load ptr, ptr %4, align 4
  %116 = load ptr, ptr %12, align 4
  %117 = getelementptr inbounds %struct.gpio_chip, ptr %115, i32 0, i32 24
  %118 = load ptr, ptr %117, align 4
  %119 = load i32, ptr %13, align 4
  %120 = and i32 %119, 1
  %121 = icmp eq i32 %120, 0
  %122 = select i1 %121, i32 60, i32 56
  %123 = getelementptr i8, ptr %116, i32 %122
  %124 = tail call i32 %118(ptr noundef %123) #7
  %125 = getelementptr inbounds %struct.dwapb_context, ptr %20, i32 0, i32 6
  store i32 %124, ptr %125, align 4
  %126 = load ptr, ptr %4, align 4
  %127 = load ptr, ptr %12, align 4
  %128 = getelementptr inbounds %struct.gpio_chip, ptr %126, i32 0, i32 24
  %129 = load ptr, ptr %128, align 4
  %130 = load i32, ptr %13, align 4
  %131 = and i32 %130, 1
  %132 = icmp eq i32 %131, 0
  %133 = select i1 %132, i32 56, i32 52
  %134 = getelementptr i8, ptr %127, i32 %133
  %135 = tail call i32 %129(ptr noundef %134) #7
  %136 = getelementptr inbounds %struct.dwapb_context, ptr %20, i32 0, i32 5
  store i32 %135, ptr %136, align 4
  %137 = load ptr, ptr %4, align 4
  %138 = load ptr, ptr %12, align 4
  %139 = getelementptr inbounds %struct.gpio_chip, ptr %137, i32 0, i32 24
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr i8, ptr %138, i32 72
  %142 = tail call i32 %140(ptr noundef %141) #7
  %143 = getelementptr inbounds %struct.dwapb_context, ptr %20, i32 0, i32 7
  store i32 %142, ptr %143, align 4
  %144 = getelementptr inbounds %struct.dwapb_context, ptr %20, i32 0, i32 8
  %145 = load i32, ptr %144, align 4
  %146 = xor i32 %145, -1
  %147 = load ptr, ptr %4, align 4
  %148 = load ptr, ptr %12, align 4
  %149 = getelementptr inbounds %struct.gpio_chip, ptr %147, i32 0, i32 25
  %150 = load ptr, ptr %149, align 4
  %151 = load i32, ptr %13, align 4
  %152 = and i32 %151, 1
  %153 = icmp eq i32 %152, 0
  %154 = select i1 %153, i32 52, i32 68
  %155 = getelementptr i8, ptr %148, i32 %154
  tail call void %150(ptr noundef %155, i32 noundef %146) #7
  br label %156

156:                                              ; preds = %96, %90
  %157 = add nuw i32 %15, 1
  %158 = load i32, ptr %8, align 4
  %159 = icmp ult i32 %157, %158
  br i1 %159, label %14, label %160

160:                                              ; preds = %156, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #7
  %161 = getelementptr inbounds %struct.dwapb_gpio, ptr %3, i32 0, i32 6
  tail call void @clk_bulk_disable(i32 noundef 2, ptr noundef %161) #7
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %161) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwapb_gpio_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dwapb_gpio, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dwapb_gpio, ptr %3, i32 0, i32 6
  %7 = tail call i32 @clk_bulk_prepare(i32 noundef 2, ptr noundef %6) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = tail call i32 @clk_bulk_enable(i32 noundef 2, ptr noundef %6) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %6) #7
  br label %13

13:                                               ; preds = %12, %1
  %14 = phi i32 [ %10, %12 ], [ %7, %1 ]
  %15 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.17) #8
  br label %169

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 34
  %18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %17) #7
  %19 = getelementptr inbounds %struct.dwapb_gpio, ptr %3, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %168, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.dwapb_gpio, ptr %3, i32 0, i32 1
  %24 = getelementptr inbounds %struct.dwapb_gpio, ptr %3, i32 0, i32 4
  br label %25

25:                                               ; preds = %164, %22
  %26 = phi i32 [ 0, %22 ], [ %165, %164 ]
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr %struct.dwapb_gpio_port, ptr %27, i32 %26, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr %struct.dwapb_gpio_port, ptr %27, i32 %26, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = mul i32 %29, 12
  %33 = load i32, ptr %31, align 4
  %34 = load ptr, ptr %23, align 4
  %35 = getelementptr inbounds %struct.gpio_chip, ptr %27, i32 0, i32 25
  %36 = load ptr, ptr %35, align 4
  %37 = load i32, ptr %24, align 4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %25
  %41 = add i32 %32, -52
  %42 = lshr exact i32 %41, 2
  %43 = icmp ult i32 %41, 28
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = trunc i32 %42 to i8
  %46 = lshr i8 79, %45
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds [7 x i32], ptr @switch.table.dwapb_gpio_resume.21, i32 0, i32 %42
  %51 = load i32, ptr %50, align 4
  br label %52

52:                                               ; preds = %49, %44, %40, %25
  %53 = phi i32 [ %32, %25 ], [ %51, %49 ], [ %32, %44 ], [ %32, %40 ]
  %54 = getelementptr i8, ptr %34, i32 %53
  tail call void %36(ptr noundef %54, i32 noundef %33) #7
  %55 = add i32 %32, 4
  %56 = getelementptr inbounds %struct.dwapb_context, ptr %31, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = load ptr, ptr %4, align 4
  %59 = load ptr, ptr %23, align 4
  %60 = getelementptr inbounds %struct.gpio_chip, ptr %58, i32 0, i32 25
  %61 = load ptr, ptr %60, align 4
  %62 = load i32, ptr %24, align 4
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %52
  %66 = add i32 %32, -48
  %67 = lshr exact i32 %66, 2
  %68 = icmp ult i32 %66, 28
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = trunc i32 %67 to i8
  %71 = lshr i8 79, %70
  %72 = and i8 %71, 1
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds [7 x i32], ptr @switch.table.dwapb_gpio_resume.21, i32 0, i32 %67
  %76 = load i32, ptr %75, align 4
  br label %77

77:                                               ; preds = %74, %69, %65, %52
  %78 = phi i32 [ %55, %52 ], [ %76, %74 ], [ %55, %69 ], [ %55, %65 ]
  %79 = getelementptr i8, ptr %59, i32 %78
  tail call void %61(ptr noundef %79, i32 noundef %57) #7
  %80 = shl i32 %29, 2
  %81 = add i32 %80, 80
  %82 = getelementptr inbounds %struct.dwapb_context, ptr %31, i32 0, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = load ptr, ptr %4, align 4
  %85 = load ptr, ptr %23, align 4
  %86 = getelementptr inbounds %struct.gpio_chip, ptr %84, i32 0, i32 25
  %87 = load ptr, ptr %86, align 4
  %88 = load i32, ptr %24, align 4
  %89 = and i32 %88, 1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %103, label %91

91:                                               ; preds = %77
  %92 = add i32 %80, 28
  %93 = lshr exact i32 %92, 2
  %94 = icmp ugt i32 %80, -29
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = trunc i32 %93 to i8
  %97 = lshr i8 79, %96
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds [7 x i32], ptr @switch.table.dwapb_gpio_resume.21, i32 0, i32 %93
  %102 = load i32, ptr %101, align 4
  br label %103

103:                                              ; preds = %100, %95, %91, %77
  %104 = phi i32 [ %81, %77 ], [ %102, %100 ], [ %81, %95 ], [ %81, %91 ]
  %105 = getelementptr i8, ptr %85, i32 %104
  tail call void %87(ptr noundef %105, i32 noundef %83) #7
  %106 = icmp eq i32 %29, 0
  br i1 %106, label %107, label %164

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.dwapb_context, ptr %31, i32 0, i32 5
  %109 = load i32, ptr %108, align 4
  %110 = load ptr, ptr %4, align 4
  %111 = load ptr, ptr %23, align 4
  %112 = getelementptr inbounds %struct.gpio_chip, ptr %110, i32 0, i32 25
  %113 = load ptr, ptr %112, align 4
  %114 = load i32, ptr %24, align 4
  %115 = and i32 %114, 1
  %116 = icmp eq i32 %115, 0
  %117 = select i1 %116, i32 56, i32 52
  %118 = getelementptr i8, ptr %111, i32 %117
  tail call void %113(ptr noundef %118, i32 noundef %109) #7
  %119 = getelementptr inbounds %struct.dwapb_context, ptr %31, i32 0, i32 6
  %120 = load i32, ptr %119, align 4
  %121 = load ptr, ptr %4, align 4
  %122 = load ptr, ptr %23, align 4
  %123 = getelementptr inbounds %struct.gpio_chip, ptr %121, i32 0, i32 25
  %124 = load ptr, ptr %123, align 4
  %125 = load i32, ptr %24, align 4
  %126 = and i32 %125, 1
  %127 = icmp eq i32 %126, 0
  %128 = select i1 %127, i32 60, i32 56
  %129 = getelementptr i8, ptr %122, i32 %128
  tail call void %124(ptr noundef %129, i32 noundef %120) #7
  %130 = getelementptr inbounds %struct.dwapb_context, ptr %31, i32 0, i32 7
  %131 = load i32, ptr %130, align 4
  %132 = load ptr, ptr %4, align 4
  %133 = load ptr, ptr %23, align 4
  %134 = getelementptr inbounds %struct.gpio_chip, ptr %132, i32 0, i32 25
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr i8, ptr %133, i32 72
  tail call void %135(ptr noundef %136, i32 noundef %131) #7
  %137 = getelementptr inbounds %struct.dwapb_context, ptr %31, i32 0, i32 3
  %138 = load i32, ptr %137, align 4
  %139 = load ptr, ptr %4, align 4
  %140 = load ptr, ptr %23, align 4
  %141 = getelementptr inbounds %struct.gpio_chip, ptr %139, i32 0, i32 25
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr i8, ptr %140, i32 48
  tail call void %142(ptr noundef %143, i32 noundef %138) #7
  %144 = getelementptr inbounds %struct.dwapb_context, ptr %31, i32 0, i32 4
  %145 = load i32, ptr %144, align 4
  %146 = load ptr, ptr %4, align 4
  %147 = load ptr, ptr %23, align 4
  %148 = getelementptr inbounds %struct.gpio_chip, ptr %146, i32 0, i32 25
  %149 = load ptr, ptr %148, align 4
  %150 = load i32, ptr %24, align 4
  %151 = and i32 %150, 1
  %152 = icmp eq i32 %151, 0
  %153 = select i1 %152, i32 52, i32 68
  %154 = getelementptr i8, ptr %147, i32 %153
  tail call void %149(ptr noundef %154, i32 noundef %145) #7
  %155 = load ptr, ptr %4, align 4
  %156 = load ptr, ptr %23, align 4
  %157 = getelementptr inbounds %struct.gpio_chip, ptr %155, i32 0, i32 25
  %158 = load ptr, ptr %157, align 4
  %159 = load i32, ptr %24, align 4
  %160 = and i32 %159, 1
  %161 = icmp eq i32 %160, 0
  %162 = select i1 %161, i32 76, i32 64
  %163 = getelementptr i8, ptr %156, i32 %162
  tail call void %158(ptr noundef %163, i32 noundef -1) #7
  br label %164

164:                                              ; preds = %107, %103
  %165 = add nuw i32 %26, 1
  %166 = load i32, ptr %19, align 4
  %167 = icmp ult i32 %165, %166
  br i1 %167, label %25, label %168

168:                                              ; preds = %164, %16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %18) #7
  br label %169

169:                                              ; preds = %168, %13
  %170 = phi i32 [ %14, %13 ], [ 0, %168 ]
  ret i32 %170
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
