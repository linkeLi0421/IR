; ModuleID = '/llk/IR/drivers/gpio/gpio-rockchip.c_pt.bc'
source_filename = "../drivers/gpio/gpio-rockchip.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rockchip_gpio_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.63, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.63 = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rockchip_pinctrl = type { ptr, i32, ptr, ptr, ptr, ptr, %struct.pinctrl_desc, ptr, ptr, i32, ptr, i32 }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.rockchip_pin_ctrl = type { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, ptr, i32, ptr, ptr, ptr }
%struct.rockchip_pin_bank = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i8, [4 x %struct.rockchip_iomux], [4 x %struct.rockchip_drv], [4 x i32], i8, ptr, ptr, ptr, %struct.gpio_chip, %struct.pinctrl_gpio_range, %struct.raw_spinlock, ptr, i32, i32, i32, i32, %struct.list_head, %struct.mutex }
%struct.rockchip_iomux = type { i32, i32 }
%struct.rockchip_drv = type { i32, i32 }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_chip_generic = type { %struct.raw_spinlock, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, ptr, i32, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_chip_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.rockchip_pin_output_deferred = type { %struct.list_head, i32, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_gpio_rockchip__211_799_rockchip_gpio_init2 = internal global ptr @rockchip_gpio_init, section ".initcall2.init", align 4
@rockchip_gpio_driver = internal global %struct.platform_driver { ptr @rockchip_gpio_probe, ptr @rockchip_gpio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rockchip_gpio_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_rockchip_gpio_exit = internal global ptr @rockchip_gpio_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description212 = internal constant [47 x i8] c"gpio_rockchip.description=Rockchip gpio driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias213 = internal constant [43 x i8] c"gpio_rockchip.alias=platform:rockchip-gpio\00", section ".modinfo", align 1
@__UNIQUE_ID_file214 = internal constant [46 x i8] c"gpio_rockchip.file=drivers/gpio/gpio-rockchip\00", section ".modinfo", align 1
@__UNIQUE_ID_license215 = internal constant [29 x i8] c"gpio_rockchip.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"rockchip-gpio\00", align 1
@rockchip_gpio_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,gpio-bank\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3188-gpio-bank0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@rockchip_gpio_probe.gpio = internal unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"probed %pOF\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"cannot find IO resource for bank\0A\00", align 1
@gpio_regs_v2 = internal constant %struct.rockchip_gpio_regs { i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 80, i32 88, i32 56, i32 64, i32 72, i32 96, i32 112, i32 120 }, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"cannot find debounce clk\0A\00", align 1
@gpio_regs_v1 = internal constant %struct.rockchip_gpio_regs { i32 0, i32 4, i32 48, i32 52, i32 56, i32 60, i32 0, i32 64, i32 68, i32 72, i32 0, i32 0, i32 76, i32 80, i32 0 }, align 4
@rockchip_gpiolib_chip = internal unnamed_addr constant %struct.gpio_chip { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpiochip_generic_request, ptr @gpiochip_generic_free, ptr @rockchip_gpio_get_direction, ptr @rockchip_gpio_direction_input, ptr @rockchip_gpio_direction_output, ptr @rockchip_gpio_get, ptr null, ptr @rockchip_gpio_set, ptr null, ptr @rockchip_gpio_set_config, ptr @rockchip_gpio_to_irq, ptr null, ptr null, ptr null, i32 0, i16 0, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"failed to add gpiochip %s, %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"gpio-ranges\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Failed to add pin range\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"failed to register interrupt, %d\0A\00", align 1
@irq_generic_chip_ops = external dso_local constant %struct.irq_domain_ops, align 4
@.str.10 = private unnamed_addr constant [39 x i8] c"could not init irq domain for bank %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"rockchip_gpio_irq\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"could not alloc generic chips for bank %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"unmapped irq %d\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_alias213, ptr @__UNIQUE_ID_description212, ptr @__UNIQUE_ID_file214, ptr @__UNIQUE_ID_license215, ptr @__exitcall_rockchip_gpio_exit, ptr @__initcall__kmod_gpio_rockchip__211_799_rockchip_gpio_init2, ptr @rockchip_gpio_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rockchip_gpio_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rockchip_gpio_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rockchip_gpio_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @rockchip_gpio_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_gpio_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.resource, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @of_get_parent(ptr noundef %5) #9
  %7 = icmp ne ptr %5, null
  %8 = icmp ne ptr %6, null
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %10, label %252

10:                                               ; preds = %1
  %11 = tail call ptr @of_pinctrl_get(ptr noundef nonnull %6) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %252, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @of_alias_get_id(ptr noundef nonnull %5, ptr noundef nonnull @.str.1) #9
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, ptr @rockchip_gpio_probe.gpio, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr @rockchip_gpio_probe.gpio, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i32 [ %17, %16 ], [ %14, %13 ]
  %21 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef nonnull %11) #9
  %22 = getelementptr inbounds %struct.rockchip_pinctrl, ptr %21, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.rockchip_pin_ctrl, ptr %23, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %252, label %27

27:                                               ; preds = %19
  %28 = load ptr, ptr %23, align 4
  br label %29

29:                                               ; preds = %36, %27
  %30 = phi i32 [ %37, %36 ], [ 0, %27 ]
  %31 = phi ptr [ %38, %36 ], [ %28, %27 ]
  %32 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %31, i32 0, i32 10
  %33 = load i8, ptr %32, align 4
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %20, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = add nuw i32 %30, 1
  %38 = getelementptr %struct.rockchip_pin_bank, ptr %31, i32 1
  %39 = icmp eq i32 %37, %25
  br i1 %39, label %252, label %29

40:                                               ; preds = %29
  %41 = icmp eq ptr %31, null
  br i1 %41, label %252, label %42

42:                                               ; preds = %40
  store ptr %3, ptr %31, align 4
  %43 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %31, i32 0, i32 15
  store ptr %5, ptr %43, align 4
  %44 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %31, i32 0, i32 20
  store i32 0, ptr %44, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false) #9, !annotation !8
  %45 = call i32 @of_address_to_resource(ptr noundef nonnull %5, i32 noundef 0, ptr noundef nonnull %2) #9
  %46 = icmp eq i32 %45, 0
  %47 = load ptr, ptr %31, align 4
  br i1 %46, label %49, label %48

48:                                               ; preds = %42
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.4) #10
  br label %87

49:                                               ; preds = %42
  %50 = call ptr @devm_ioremap_resource(ptr noundef %47, ptr noundef nonnull %2) #9
  %51 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %31, i32 0, i32 1
  store ptr %50, ptr %51, align 4
  %52 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %105, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %43, align 4
  %55 = call i32 @irq_of_parse_and_map(ptr noundef %54, i32 noundef 0) #9
  %56 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %31, i32 0, i32 5
  store i32 %55, ptr %56, align 4
  %57 = icmp eq i32 %55, 0
  br i1 %57, label %87, label %58

58:                                               ; preds = %53
  %59 = load ptr, ptr %43, align 4
  %60 = call ptr @of_clk_get(ptr noundef %59, i32 noundef 0) #9
  %61 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %31, i32 0, i32 3
  store ptr %60, ptr %61, align 4
  %62 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %62, label %105, label %63

63:                                               ; preds = %58
  %64 = call i32 @clk_prepare(ptr noundef %60) #9
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = call i32 @clk_enable(ptr noundef %60) #9
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  call void @clk_unprepare(ptr noundef %60) #9
  br label %70

70:                                               ; preds = %69, %66, %63
  %71 = load ptr, ptr %51, align 4
  %72 = getelementptr i8, ptr %71, i32 120
  %73 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #9, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %74 = icmp eq i32 %73, 16780331
  %75 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %31, i32 0, i32 21
  br i1 %74, label %76, label %85

76:                                               ; preds = %70
  store ptr @gpio_regs_v2, ptr %75, align 4
  %77 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %31, i32 0, i32 22
  store i32 16780331, ptr %77, align 4
  %78 = load ptr, ptr %43, align 4
  %79 = call ptr @of_clk_get(ptr noundef %78, i32 noundef 1) #9
  %80 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %31, i32 0, i32 4
  store ptr %79, ptr %80, align 4
  %81 = icmp ugt ptr %79, inttoptr (i32 -4096 to ptr)
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load ptr, ptr %31, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.5) #10
  %84 = load ptr, ptr %61, align 4
  call void @clk_disable(ptr noundef %84) #9
  call void @clk_unprepare(ptr noundef %84) #9
  br label %87

85:                                               ; preds = %70
  store ptr @gpio_regs_v1, ptr %75, align 4
  %86 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %31, i32 0, i32 22
  store i32 0, ptr %86, align 4
  br label %89

87:                                               ; preds = %82, %53, %48
  %88 = phi i32 [ -22, %53 ], [ -22, %82 ], [ -2, %48 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #9
  br label %252

89:                                               ; preds = %85, %76
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #9
  %90 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %31, i32 0, i32 27
  call void @mutex_lock(ptr noundef %90) #9
  %91 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %31, i32 0, i32 18
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(304) %91, ptr noundef nonnull align 4 dereferenceable(304) @rockchip_gpiolib_chip, i32 304, i1 false) #9
  %92 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %31, i32 0, i32 7
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %31, i32 0, i32 18, i32 19
  store i32 %93, ptr %94, align 4
  %95 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %31, i32 0, i32 8
  %96 = load i8, ptr %95, align 4
  %97 = zext i8 %96 to i16
  %98 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %31, i32 0, i32 18, i32 20
  store i16 %97, ptr %98, align 4
  %99 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %31, i32 0, i32 9
  %100 = load ptr, ptr %99, align 4
  store ptr %100, ptr %91, align 4
  %101 = load ptr, ptr %31, align 4
  %102 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %31, i32 0, i32 18, i32 2
  store ptr %101, ptr %102, align 4
  %103 = call i32 @gpiochip_add_data_with_key(ptr noundef %91, ptr noundef nonnull %31, ptr noundef null, ptr noundef null) #9
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %111, label %108

105:                                              ; preds = %58, %49
  %106 = phi ptr [ %50, %49 ], [ %60, %58 ]
  %107 = ptrtoint ptr %106 to i32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #9
  br label %252

108:                                              ; preds = %89
  %109 = load ptr, ptr %31, align 4
  %110 = load ptr, ptr %91, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.6, ptr noundef %110, i32 noundef %103) #10
  br label %235

111:                                              ; preds = %89
  %112 = load ptr, ptr %43, align 4
  %113 = call ptr @of_find_property(ptr noundef %112, ptr noundef nonnull @.str.7, ptr noundef null) #9
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %139

115:                                              ; preds = %111
  %116 = load ptr, ptr %43, align 4
  %117 = call ptr @of_get_parent(ptr noundef %116) #9
  %118 = icmp eq ptr %117, null
  br i1 %118, label %235, label %119

119:                                              ; preds = %115
  %120 = call ptr @of_pinctrl_get(ptr noundef nonnull %117) #9
  %121 = icmp eq ptr %120, null
  br i1 %121, label %235, label %122

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.pinctrl_dev, ptr %120, i32 0, i32 8
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.device, ptr %124, i32 0, i32 3
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = load ptr, ptr %124, align 4
  br label %130

130:                                              ; preds = %128, %122
  %131 = phi ptr [ %129, %128 ], [ %126, %122 ]
  %132 = load i32, ptr %94, align 4
  %133 = load i16, ptr %98, align 4
  %134 = zext i16 %133 to i32
  %135 = call i32 @gpiochip_add_pin_range(ptr noundef %91, ptr noundef %131, i32 noundef 0, i32 noundef %132, i32 noundef %134) #9
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %130
  %138 = load ptr, ptr %31, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %138, ptr noundef nonnull @.str.8) #10
  br label %227

139:                                              ; preds = %130, %111
  %140 = load ptr, ptr %43, align 4
  %141 = icmp eq ptr %140, null
  %142 = getelementptr inbounds %struct.device_node, ptr %140, i32 0, i32 3
  %143 = select i1 %141, ptr null, ptr %142
  %144 = call ptr @__irq_domain_add(ptr noundef %143, i32 noundef 32, i32 noundef 32, i32 noundef 0, ptr noundef nonnull @irq_generic_chip_ops, ptr noundef null) #9
  %145 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %31, i32 0, i32 17
  store ptr %144, ptr %145, align 4
  %146 = icmp eq ptr %144, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %139
  %148 = load ptr, ptr %31, align 4
  %149 = load ptr, ptr %99, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %148, ptr noundef nonnull @.str.10, ptr noundef %149) #10
  br label %225

150:                                              ; preds = %139
  %151 = call i32 @__irq_alloc_domain_generic_chips(ptr noundef nonnull %144, i32 noundef 32, i32 noundef 1, ptr noundef nonnull @.str.11, ptr noundef nonnull @handle_level_irq, i32 noundef 7168, i32 noundef 0, i32 noundef 0) #9
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %150
  %154 = load ptr, ptr %31, align 4
  %155 = load ptr, ptr %99, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %154, ptr noundef nonnull @.str.12, ptr noundef %155) #10
  %156 = load ptr, ptr %145, align 4
  call void @irq_domain_remove(ptr noundef %156) #9
  br label %225

157:                                              ; preds = %150
  %158 = load ptr, ptr %145, align 4
  %159 = call ptr @irq_get_domain_generic_chip(ptr noundef %158, i32 noundef 0) #9
  %160 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %31, i32 0, i32 22
  %161 = load i32, ptr %160, align 4
  %162 = icmp eq i32 %161, 16780331
  br i1 %162, label %163, label %166

163:                                              ; preds = %157
  %164 = getelementptr inbounds %struct.irq_chip_generic, ptr %159, i32 0, i32 3
  store ptr @gpio_writel_v2, ptr %164, align 4
  %165 = getelementptr inbounds %struct.irq_chip_generic, ptr %159, i32 0, i32 2
  store ptr @gpio_readl_v2, ptr %165, align 4
  br label %166

166:                                              ; preds = %163, %157
  %167 = load ptr, ptr %51, align 4
  %168 = getelementptr inbounds %struct.irq_chip_generic, ptr %159, i32 0, i32 1
  store ptr %167, ptr %168, align 4
  %169 = getelementptr inbounds %struct.irq_chip_generic, ptr %159, i32 0, i32 14
  store ptr %31, ptr %169, align 4
  %170 = load ptr, ptr %75, align 4
  %171 = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %170, i32 0, i32 3
  %172 = load i32, ptr %171, align 4
  %173 = getelementptr inbounds %struct.irq_chip_generic, ptr %159, i32 2, i32 16
  store i32 %172, ptr %173, align 4
  %174 = load ptr, ptr %75, align 4
  %175 = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %174, i32 0, i32 12
  %176 = load i32, ptr %175, align 4
  %177 = getelementptr inbounds %struct.irq_chip_generic, ptr %159, i32 2, i32 17
  store i32 %176, ptr %177, align 4
  %178 = getelementptr inbounds %struct.irq_chip_generic, ptr %159, i32 1, i32 6
  store ptr @irq_gc_ack_set_bit, ptr %178, align 4
  %179 = getelementptr inbounds %struct.irq_chip_generic, ptr %159, i32 1, i32 7
  store ptr @irq_gc_mask_set_bit, ptr %179, align 4
  %180 = getelementptr inbounds %struct.irq_chip_generic, ptr %159, i32 1, i32 9
  store ptr @irq_gc_mask_clr_bit, ptr %180, align 4
  %181 = getelementptr inbounds %struct.irq_chip_generic, ptr %159, i32 1, i32 4
  store ptr @rockchip_irq_enable, ptr %181, align 4
  %182 = getelementptr inbounds %struct.irq_chip_generic, ptr %159, i32 1, i32 5
  store ptr @rockchip_irq_disable, ptr %182, align 4
  %183 = getelementptr inbounds %struct.irq_chip_generic, ptr %159, i32 1, i32 14
  store ptr @irq_gc_set_wake, ptr %183, align 4
  %184 = getelementptr inbounds %struct.irq_chip_generic, ptr %159, i32 1, i32 17
  store ptr @rockchip_irq_suspend, ptr %184, align 4
  %185 = getelementptr inbounds %struct.irq_chip_generic, ptr %159, i32 1, i32 18
  store ptr @rockchip_irq_resume, ptr %185, align 4
  %186 = getelementptr inbounds %struct.irq_chip_generic, ptr %159, i32 1, i32 13
  store ptr @rockchip_irq_set_type, ptr %186, align 4
  %187 = getelementptr inbounds %struct.irq_chip_generic, ptr %159, i32 2, i32 2
  store ptr @rockchip_irq_reqres, ptr %187, align 4
  %188 = getelementptr inbounds %struct.irq_chip_generic, ptr %159, i32 2, i32 3
  store ptr @rockchip_irq_relres, ptr %188, align 4
  %189 = load i8, ptr %95, align 4
  %190 = icmp ult i8 %189, 32
  %191 = zext i8 %189 to i32
  %192 = shl nsw i32 -1, %191
  %193 = xor i32 %192, -1
  %194 = select i1 %190, i32 %193, i32 -1
  %195 = getelementptr inbounds %struct.irq_chip_generic, ptr %159, i32 0, i32 11
  store i32 %194, ptr %195, align 4
  %196 = load ptr, ptr %75, align 4
  %197 = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %196, i32 0, i32 3
  %198 = load i32, ptr %197, align 4
  %199 = load ptr, ptr %51, align 4
  %200 = getelementptr i8, ptr %199, i32 %198
  %201 = load i32, ptr %160, align 4
  %202 = icmp eq i32 %201, 16780331
  call void asm sideeffect "dsb st", "~{memory}"() #9
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %200, i32 -1) #9
  br i1 %202, label %203, label %205

203:                                              ; preds = %166
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  %204 = getelementptr i8, ptr %200, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %204, i32 -1) #9, !srcloc !12
  br label %205

205:                                              ; preds = %203, %166
  %206 = load ptr, ptr %75, align 4
  %207 = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %206, i32 0, i32 12
  %208 = load i32, ptr %207, align 4
  %209 = load ptr, ptr %51, align 4
  %210 = getelementptr i8, ptr %209, i32 %208
  %211 = load i32, ptr %160, align 4
  %212 = icmp eq i32 %211, 16780331
  call void asm sideeffect "dsb st", "~{memory}"() #9
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %210, i32 -1) #9
  br i1 %212, label %213, label %215

213:                                              ; preds = %205
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  %214 = getelementptr i8, ptr %210, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %214, i32 -1) #9, !srcloc !12
  br label %215

215:                                              ; preds = %213, %205
  %216 = load ptr, ptr %75, align 4
  %217 = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %216, i32 0, i32 2
  %218 = load i32, ptr %217, align 4
  %219 = load ptr, ptr %51, align 4
  %220 = getelementptr i8, ptr %219, i32 %218
  %221 = load i32, ptr %160, align 4
  %222 = icmp eq i32 %221, 16780331
  call void asm sideeffect "dsb st", "~{memory}"() #9
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %220, i32 -1) #9
  br i1 %222, label %223, label %229

223:                                              ; preds = %215
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  %224 = getelementptr i8, ptr %220, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %224, i32 -1) #9, !srcloc !12
  br label %229

225:                                              ; preds = %153, %147
  %226 = load ptr, ptr %31, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %226, ptr noundef nonnull @.str.9, i32 noundef -22) #10
  br label %227

227:                                              ; preds = %225, %137
  %228 = phi i32 [ -22, %225 ], [ %135, %137 ]
  call void @gpiochip_remove(ptr noundef %91) #9
  br label %235

229:                                              ; preds = %223, %215
  %230 = getelementptr inbounds %struct.irq_chip_generic, ptr %159, i32 0, i32 8
  store i32 -1, ptr %230, align 4
  %231 = load i32, ptr %56, align 4
  call void @irq_set_chained_handler_and_data(i32 noundef %231, ptr noundef nonnull @rockchip_irq_demux, ptr noundef nonnull %31) #9
  %232 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %31, i32 0, i32 26
  %233 = load volatile ptr, ptr %232, align 4
  %234 = icmp eq ptr %233, %232
  br i1 %234, label %250, label %238

235:                                              ; preds = %227, %119, %115, %108
  %236 = phi i32 [ -61, %115 ], [ -19, %119 ], [ %228, %227 ], [ %103, %108 ]
  %237 = load ptr, ptr %61, align 4
  call void @clk_disable(ptr noundef %237) #9
  call void @clk_unprepare(ptr noundef %237) #9
  call void @mutex_unlock(ptr noundef %90) #9
  br label %252

238:                                              ; preds = %238, %229
  %239 = phi ptr [ %248, %238 ], [ %233, %229 ]
  %240 = getelementptr inbounds %struct.list_head, ptr %239, i32 0, i32 1
  %241 = load ptr, ptr %240, align 4
  %242 = load ptr, ptr %239, align 4
  %243 = getelementptr inbounds %struct.list_head, ptr %242, i32 0, i32 1
  store ptr %241, ptr %243, align 4
  store volatile ptr %242, ptr %241, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %239, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %240, align 4
  %244 = getelementptr inbounds %struct.rockchip_pin_output_deferred, ptr %239, i32 0, i32 1
  %245 = load i32, ptr %244, align 4
  %246 = getelementptr inbounds %struct.rockchip_pin_output_deferred, ptr %239, i32 0, i32 2
  %247 = load i32, ptr %246, align 4
  call void @rockchip_gpio_set(ptr noundef %91, i32 noundef %245, i32 noundef %247) #9
  call fastcc void @rockchip_gpio_set_direction(ptr noundef %91, i32 noundef %245, i1 noundef zeroext false) #9
  call void @kfree(ptr noundef %239) #9
  %248 = load volatile ptr, ptr %232, align 4
  %249 = icmp eq ptr %248, %232
  br i1 %249, label %250, label %238

250:                                              ; preds = %238, %229
  call void @mutex_unlock(ptr noundef %90) #9
  %251 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %31, ptr %251, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef nonnull %5) #10
  br label %252

252:                                              ; preds = %250, %235, %105, %87, %40, %36, %19, %10, %1
  %253 = phi i32 [ %236, %235 ], [ 0, %250 ], [ -19, %1 ], [ -517, %10 ], [ -22, %40 ], [ %107, %105 ], [ %88, %87 ], [ -22, %19 ], [ -22, %36 ]
  ret i32 %253
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_gpio_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  %6 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %3, i32 0, i32 18
  tail call void @gpiochip_remove(ptr noundef %6) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_gpio_direction_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  tail call void @rockchip_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  tail call fastcc void @rockchip_gpio_set_direction(ptr noundef %0, i32 noundef %1, i1 noundef zeroext false)
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_pin_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_gpio_get_direction(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %3, i32 0, i32 21
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 %7
  %11 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %3, i32 0, i32 22
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 16780331
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = icmp ugt i32 %1, 15
  %16 = select i1 %15, i32 4, i32 0
  %17 = getelementptr i8, ptr %10, i32 %16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %19 = and i32 %1, 15
  %20 = lshr i32 %18, %19
  br label %24

21:                                               ; preds = %2
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  %23 = lshr i32 %22, %1
  br label %24

24:                                               ; preds = %21, %14
  %25 = phi i32 [ %20, %14 ], [ %23, %21 ]
  %26 = and i32 %25, 1
  %27 = xor i32 %26, 1
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_gpio_direction_input(ptr noundef %0, i32 noundef %1) #2 {
  tail call fastcc void @rockchip_gpio_set_direction(ptr noundef %0, i32 noundef %1, i1 noundef zeroext true)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_gpio_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %3, i32 0, i32 21
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %7, i32 0, i32 13
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %5, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %12 = lshr i32 %11, %1
  %13 = and i32 %12, 1
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rockchip_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %4, i32 0, i32 20
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #9
  %7 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %4, i32 0, i32 21
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %4, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 %9
  %13 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %4, i32 0, i32 22
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 16780331
  br i1 %15, label %16, label %32

16:                                               ; preds = %3
  %17 = icmp eq i32 %2, 0
  %18 = and i32 %1, 15
  br i1 %17, label %24, label %19

19:                                               ; preds = %16
  %20 = shl nuw nsw i32 1, %18
  %21 = or i32 %18, 16
  %22 = shl nuw i32 1, %21
  %23 = or i32 %22, %20
  br label %27

24:                                               ; preds = %16
  %25 = or i32 %18, 16
  %26 = shl nuw i32 1, %25
  br label %27

27:                                               ; preds = %24, %19
  %28 = phi i32 [ %23, %19 ], [ %26, %24 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %29 = icmp ugt i32 %1, 15
  %30 = select i1 %29, i32 4, i32 0
  %31 = getelementptr i8, ptr %12, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %28) #9, !srcloc !12
  br label %40

32:                                               ; preds = %3
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !17
  %34 = shl nuw i32 1, %1
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = icmp eq i32 %2, 0
  %38 = or i32 %33, %34
  %39 = select i1 %37, i32 %36, i32 %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %39) #9, !srcloc !12
  br label %40

40:                                               ; preds = %32, %27
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_gpio_set_config(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = and i32 %2, 255
  %5 = icmp eq i32 %4, 11
  br i1 %5, label %6, label %114

6:                                                ; preds = %3
  %7 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  %8 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %7, i32 0, i32 21
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %7, i32 0, i32 22
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 16780331
  br i1 %12, label %13, label %90

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %7, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %90, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @clk_get_rate(ptr noundef %15) #9
  %19 = icmp ugt i32 %18, -2147483648
  br i1 %19, label %114, label %20

20:                                               ; preds = %17
  %21 = zext i32 %18 to i64
  %22 = add nuw nsw i64 %21, 1000000
  %23 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %22) #11, !srcloc !19
  %24 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %22, i64 %23, i32 0) #11, !srcloc !20
  %25 = extractvalue { i64, i32 } %24, 0
  %26 = lshr i64 %25, 19
  %27 = trunc i64 %26 to i32
  %28 = add i32 %27, -1
  %29 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %7, i32 0, i32 20
  %30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %29) #9
  %31 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %7, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %9, i32 0, i32 11
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr i8, ptr %32, i32 %34
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !21
  %37 = icmp ult i32 %36, %28
  br i1 %37, label %38, label %42

38:                                               ; preds = %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !22
  tail call void @arm_heavy_mb() #9
  %39 = load ptr, ptr %31, align 4
  %40 = load i32, ptr %33, align 4
  %41 = getelementptr i8, ptr %39, i32 %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %28) #9, !srcloc !12
  br label %42

42:                                               ; preds = %38, %20
  %43 = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %9, i32 0, i32 10
  %44 = load i32, ptr %43, align 4
  %45 = load ptr, ptr %31, align 4
  %46 = getelementptr i8, ptr %45, i32 %44
  %47 = load i32, ptr %10, align 4
  %48 = icmp eq i32 %47, 16780331
  br i1 %48, label %49, label %58

49:                                               ; preds = %42
  %50 = and i32 %1, 15
  %51 = shl nuw nsw i32 1, %50
  %52 = or i32 %50, 16
  %53 = shl nuw i32 1, %52
  %54 = or i32 %53, %51
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %55 = icmp ugt i32 %1, 15
  %56 = select i1 %55, i32 4, i32 0
  %57 = getelementptr i8, ptr %46, i32 %56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %54) #9, !srcloc !12
  br label %62

58:                                               ; preds = %42
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !17
  %60 = shl nuw i32 1, %1
  %61 = or i32 %59, %60
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %61) #9, !srcloc !12
  br label %62

62:                                               ; preds = %58, %49
  %63 = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %9, i32 0, i32 9
  %64 = load i32, ptr %63, align 4
  %65 = load ptr, ptr %31, align 4
  %66 = getelementptr i8, ptr %65, i32 %64
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 16780331
  br i1 %68, label %69, label %78

69:                                               ; preds = %62
  %70 = and i32 %1, 15
  %71 = shl nuw nsw i32 1, %70
  %72 = or i32 %70, 16
  %73 = shl nuw i32 1, %72
  %74 = or i32 %73, %71
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %75 = icmp ugt i32 %1, 15
  %76 = select i1 %75, i32 4, i32 0
  %77 = getelementptr i8, ptr %66, i32 %76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %74) #9, !srcloc !12
  br label %82

78:                                               ; preds = %62
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !17
  %80 = shl nuw i32 1, %1
  %81 = or i32 %79, %80
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %81) #9, !srcloc !12
  br label %82

82:                                               ; preds = %78, %69
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %30) #9
  %83 = load ptr, ptr %14, align 4
  %84 = tail call i32 @clk_prepare(ptr noundef %83) #9
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %114

86:                                               ; preds = %82
  %87 = tail call i32 @clk_enable(ptr noundef %83) #9
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %114, label %89

89:                                               ; preds = %86
  tail call void @clk_unprepare(ptr noundef %83) #9
  br label %114

90:                                               ; preds = %13, %6
  %91 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %7, i32 0, i32 20
  %92 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %91) #9
  %93 = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %9, i32 0, i32 9
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %7, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr i8, ptr %96, i32 %94
  %98 = load i32, ptr %10, align 4
  %99 = icmp eq i32 %98, 16780331
  br i1 %99, label %100, label %109

100:                                              ; preds = %90
  %101 = and i32 %1, 15
  %102 = shl nuw nsw i32 1, %101
  %103 = or i32 %101, 16
  %104 = shl nuw i32 1, %103
  %105 = or i32 %104, %102
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %106 = icmp ugt i32 %1, 15
  %107 = select i1 %106, i32 4, i32 0
  %108 = getelementptr i8, ptr %97, i32 %107
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %105) #9, !srcloc !12
  br label %113

109:                                              ; preds = %90
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !17
  %111 = shl nuw i32 1, %1
  %112 = or i32 %110, %111
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %112) #9, !srcloc !12
  br label %113

113:                                              ; preds = %109, %100
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %91, i32 noundef %92) #9
  br label %114

114:                                              ; preds = %113, %89, %86, %82, %17, %3
  ret i32 -524
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_gpio_to_irq(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %3, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @irq_create_mapping_affinity(ptr noundef nonnull %5, i32 noundef %1, ptr noundef null) #9
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 -6, i32 %8
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i32 [ %10, %7 ], [ -6, %2 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rockchip_gpio_set_direction(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %4, i32 0, i32 20
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #9
  %7 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %4, i32 0, i32 21
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %4, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 %10
  %14 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %4, i32 0, i32 22
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 16780331
  br i1 %16, label %17, label %32

17:                                               ; preds = %3
  %18 = and i32 %1, 15
  br i1 %2, label %24, label %19

19:                                               ; preds = %17
  %20 = shl nuw nsw i32 1, %18
  %21 = or i32 %18, 16
  %22 = shl nuw i32 1, %21
  %23 = or i32 %22, %20
  br label %27

24:                                               ; preds = %17
  %25 = or i32 %18, 16
  %26 = shl nuw i32 1, %25
  br label %27

27:                                               ; preds = %24, %19
  %28 = phi i32 [ %23, %19 ], [ %26, %24 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %29 = icmp ugt i32 %1, 15
  %30 = select i1 %29, i32 4, i32 0
  %31 = getelementptr i8, ptr %13, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %28) #9, !srcloc !12
  br label %39

32:                                               ; preds = %3
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !17
  %34 = shl nuw i32 1, %1
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = or i32 %33, %34
  %38 = select i1 %2, i32 %36, i32 %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %38) #9, !srcloc !12
  br label %39

39:                                               ; preds = %32, %27
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_domain_generic_chips(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_domain_generic_chip(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gpio_writel_v2(i32 noundef %0, ptr noundef %1) #7 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !23
  tail call void @arm_heavy_mb() #9
  %3 = or i32 %0, -65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %3) #9, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %4 = lshr i32 %0, 16
  %5 = or i32 %4, -65536
  %6 = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #9, !srcloc !12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_readl_v2(ptr noundef %0) #7 {
  %2 = getelementptr i8, ptr %0, i32 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !24
  %4 = shl i32 %3, 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !25
  %6 = or i32 %5, %4
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_ack_set_bit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_set_bit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_clr_bit(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rockchip_irq_enable(ptr noundef %0) #2 {
  tail call void @irq_gc_mask_clr_bit(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rockchip_irq_disable(ptr noundef %0) #2 {
  tail call void @irq_gc_mask_set_bit(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_gc_set_wake(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rockchip_irq_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %5, i32 0, i32 21
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 %9
  br i1 %12, label %18, label %16

16:                                               ; preds = %1
  %17 = tail call i32 %11(ptr noundef %15) #9
  br label %20

18:                                               ; preds = %1
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !26
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %5, i32 0, i32 6
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 12
  %24 = load i32, ptr %23, align 4
  %25 = xor i32 %24, -1
  %26 = load ptr, ptr %6, align 4
  %27 = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %26, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %20
  %33 = load ptr, ptr %13, align 4
  %34 = getelementptr i8, ptr %33, i32 %28
  tail call void %30(i32 noundef %25, ptr noundef %34) #9
  br label %38

35:                                               ; preds = %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !27
  tail call void @arm_heavy_mb() #9
  %36 = load ptr, ptr %13, align 4
  %37 = getelementptr i8, ptr %36, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %25) #9, !srcloc !12
  br label %38

38:                                               ; preds = %35, %32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rockchip_irq_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %5, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %5, i32 0, i32 21
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 %11
  tail call void %13(i32 noundef %7, ptr noundef %18) #9
  br label %23

19:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !27
  tail call void @arm_heavy_mb() #9
  %20 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %7) #9, !srcloc !12
  br label %23

23:                                               ; preds = %19, %15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_irq_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_chip_generic, ptr %4, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = shl nuw i32 1, %8
  %10 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %6, i32 0, i32 20
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #9
  %12 = load i32, ptr %7, align 4
  %13 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %6, i32 0, i32 21
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %6, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 %16
  %20 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %6, i32 0, i32 22
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 16780331
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = and i32 %12, 15
  %25 = or i32 %24, 16
  %26 = shl nuw i32 1, %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %27 = icmp ugt i32 %12, 15
  %28 = select i1 %27, i32 4, i32 0
  %29 = getelementptr i8, ptr %19, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %26) #9, !srcloc !12
  br label %35

30:                                               ; preds = %2
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !17
  %32 = shl nuw i32 1, %12
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %34) #9, !srcloc !12
  br label %35

35:                                               ; preds = %30, %23
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #9
  %36 = and i32 %1, 3
  %37 = icmp eq i32 %36, 0
  %38 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.irq_desc, ptr %39, i32 0, i32 3
  %41 = select i1 %37, ptr @handle_level_irq, ptr @handle_edge_irq
  store ptr %41, ptr %40, align 4
  %42 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #9
  %43 = load ptr, ptr %13, align 4
  %44 = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %43, i32 0, i32 4
  %45 = load i32, ptr %44, align 4
  %46 = load ptr, ptr %17, align 4
  %47 = getelementptr i8, ptr %46, i32 %45
  %48 = load i32, ptr %20, align 4
  %49 = icmp eq i32 %48, 16780331
  br i1 %49, label %50, label %56

50:                                               ; preds = %35
  %51 = getelementptr i8, ptr %47, i32 4
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !24
  %53 = shl i32 %52, 16
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !25
  %55 = or i32 %54, %53
  br label %58

56:                                               ; preds = %35
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !28
  br label %58

58:                                               ; preds = %56, %50
  %59 = phi i32 [ %55, %50 ], [ %57, %56 ]
  %60 = load ptr, ptr %13, align 4
  %61 = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %60, i32 0, i32 5
  %62 = load i32, ptr %61, align 4
  %63 = load ptr, ptr %17, align 4
  %64 = getelementptr i8, ptr %63, i32 %62
  %65 = load i32, ptr %20, align 4
  %66 = icmp eq i32 %65, 16780331
  br i1 %66, label %67, label %73

67:                                               ; preds = %58
  %68 = getelementptr i8, ptr %64, i32 4
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !24
  %70 = shl i32 %69, 16
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !25
  %72 = or i32 %71, %70
  br label %75

73:                                               ; preds = %58
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !28
  br label %75

75:                                               ; preds = %73, %67
  %76 = phi i32 [ %72, %67 ], [ %74, %73 ]
  %77 = icmp eq i32 %1, 3
  %78 = load i32, ptr %20, align 4
  %79 = icmp eq i32 %78, 16780331
  br i1 %77, label %80, label %114

80:                                               ; preds = %75
  br i1 %79, label %81, label %96

81:                                               ; preds = %80
  %82 = load i32, ptr %7, align 4
  %83 = load ptr, ptr %13, align 4
  %84 = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %83, i32 0, i32 6
  %85 = load i32, ptr %84, align 4
  %86 = load ptr, ptr %17, align 4
  %87 = getelementptr i8, ptr %86, i32 %85
  %88 = and i32 %82, 15
  %89 = shl nuw nsw i32 1, %88
  %90 = or i32 %88, 16
  %91 = shl nuw i32 1, %90
  %92 = or i32 %91, %89
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %93 = icmp ugt i32 %82, 15
  %94 = select i1 %93, i32 4, i32 0
  %95 = getelementptr i8, ptr %87, i32 %94
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %92) #9, !srcloc !12
  br label %179

96:                                               ; preds = %80
  %97 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %6, i32 0, i32 23
  %98 = load i32, ptr %97, align 4
  %99 = or i32 %98, %9
  store i32 %99, ptr %97, align 4
  %100 = or i32 %59, %9
  %101 = load ptr, ptr %17, align 4
  %102 = load ptr, ptr %13, align 4
  %103 = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %102, i32 0, i32 13
  %104 = load i32, ptr %103, align 4
  %105 = getelementptr i8, ptr %101, i32 %104
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !29
  %107 = and i32 %106, %9
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %96
  %110 = xor i32 %9, -1
  %111 = and i32 %76, %110
  br label %149

112:                                              ; preds = %96
  %113 = or i32 %76, %9
  br label %149

114:                                              ; preds = %75
  br i1 %79, label %115, label %128

115:                                              ; preds = %114
  %116 = load i32, ptr %7, align 4
  %117 = load ptr, ptr %13, align 4
  %118 = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %117, i32 0, i32 6
  %119 = load i32, ptr %118, align 4
  %120 = load ptr, ptr %17, align 4
  %121 = getelementptr i8, ptr %120, i32 %119
  %122 = and i32 %116, 15
  %123 = or i32 %122, 16
  %124 = shl nuw i32 1, %123
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %125 = icmp ugt i32 %116, 15
  %126 = select i1 %125, i32 4, i32 0
  %127 = getelementptr i8, ptr %121, i32 %126
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 %124) #9, !srcloc !12
  br label %133

128:                                              ; preds = %114
  %129 = xor i32 %9, -1
  %130 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %6, i32 0, i32 23
  %131 = load i32, ptr %130, align 4
  %132 = and i32 %131, %129
  store i32 %132, ptr %130, align 4
  br label %133

133:                                              ; preds = %128, %115
  switch i32 %1, label %179 [
    i32 1, label %134
    i32 2, label %137
    i32 4, label %141
    i32 8, label %145
  ]

134:                                              ; preds = %133
  %135 = or i32 %59, %9
  %136 = or i32 %76, %9
  br label %149

137:                                              ; preds = %133
  %138 = or i32 %59, %9
  %139 = xor i32 %9, -1
  %140 = and i32 %76, %139
  br label %149

141:                                              ; preds = %133
  %142 = xor i32 %9, -1
  %143 = and i32 %59, %142
  %144 = or i32 %76, %9
  br label %149

145:                                              ; preds = %133
  %146 = xor i32 %9, -1
  %147 = and i32 %59, %146
  %148 = and i32 %76, %146
  br label %149

149:                                              ; preds = %145, %141, %137, %134, %112, %109
  %150 = phi i32 [ %100, %109 ], [ %100, %112 ], [ %147, %145 ], [ %143, %141 ], [ %138, %137 ], [ %135, %134 ]
  %151 = phi i32 [ %111, %109 ], [ %113, %112 ], [ %148, %145 ], [ %144, %141 ], [ %140, %137 ], [ %136, %134 ]
  %152 = load ptr, ptr %13, align 4
  %153 = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %152, i32 0, i32 4
  %154 = load i32, ptr %153, align 4
  %155 = load ptr, ptr %17, align 4
  %156 = getelementptr i8, ptr %155, i32 %154
  %157 = load i32, ptr %20, align 4
  %158 = icmp eq i32 %157, 16780331
  tail call void asm sideeffect "dsb st", "~{memory}"() #9
  tail call void @arm_heavy_mb() #9
  br i1 %158, label %159, label %164

159:                                              ; preds = %149
  %160 = or i32 %150, -65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %156, i32 %160) #9, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %161 = lshr i32 %150, 16
  %162 = or i32 %161, -65536
  %163 = getelementptr i8, ptr %156, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %163, i32 %162) #9, !srcloc !12
  br label %165

164:                                              ; preds = %149
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %156, i32 %150) #9, !srcloc !12
  br label %165

165:                                              ; preds = %164, %159
  %166 = load ptr, ptr %13, align 4
  %167 = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %166, i32 0, i32 5
  %168 = load i32, ptr %167, align 4
  %169 = load ptr, ptr %17, align 4
  %170 = getelementptr i8, ptr %169, i32 %168
  %171 = load i32, ptr %20, align 4
  %172 = icmp eq i32 %171, 16780331
  tail call void asm sideeffect "dsb st", "~{memory}"() #9
  tail call void @arm_heavy_mb() #9
  br i1 %172, label %173, label %178

173:                                              ; preds = %165
  %174 = or i32 %151, -65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %170, i32 %174) #9, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %175 = lshr i32 %151, 16
  %176 = or i32 %175, -65536
  %177 = getelementptr i8, ptr %170, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %177, i32 %176) #9, !srcloc !12
  br label %179

178:                                              ; preds = %165
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %170, i32 %151) #9, !srcloc !12
  br label %179

179:                                              ; preds = %178, %173, %133, %81
  %180 = phi i32 [ 0, %81 ], [ -22, %133 ], [ 0, %173 ], [ 0, %178 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %42) #9
  ret i32 %180
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_irq_reqres(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %5, i32 0, i32 18
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @gpiochip_reqres_irq(ptr noundef %6, i32 noundef %8) #9
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rockchip_irq_relres(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %5, i32 0, i32 18
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  tail call void @gpiochip_relres_irq(ptr noundef %6, i32 noundef %8) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rockchip_irq_demux(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %12(ptr noundef %15) #9
  br label %24

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %18(ptr noundef %19) #9
  %20 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  tail call void %21(ptr noundef %19) #9
  br label %24

24:                                               ; preds = %23, %16, %14, %1
  %25 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %6, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %6, i32 0, i32 21
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %28, i32 0, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr i8, ptr %26, i32 %30
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #9, !srcloc !9
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %94, label %34

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %6, i32 0, i32 17
  %36 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %6, i32 0, i32 23
  %37 = getelementptr inbounds %struct.rockchip_pin_bank, ptr %6, i32 0, i32 20
  br label %38

38:                                               ; preds = %92, %34
  %39 = phi i32 [ %32, %34 ], [ %43, %92 ]
  %40 = call i32 @llvm.cttz.i32(i32 %39, i1 true) #9, !range !30
  %41 = shl nuw i32 1, %40
  %42 = xor i32 %41, -1
  %43 = and i32 %39, %42
  %44 = load ptr, ptr %35, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  %45 = call ptr @__irq_resolve_mapping(ptr noundef %44, i32 noundef %40, ptr noundef nonnull %2) #9
  %46 = icmp eq ptr %45, null
  %47 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %46, i1 true, i1 %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.13, i32 noundef %40) #10
  br label %92

52:                                               ; preds = %38
  %53 = load i32, ptr %36, align 4
  %54 = and i32 %53, %41
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %90, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %25, align 4
  %58 = load ptr, ptr %27, align 4
  %59 = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %58, i32 0, i32 13
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr i8, ptr %57, i32 %60
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #9, !srcloc !9
  br label %63

63:                                               ; preds = %63, %56
  %64 = phi i32 [ %62, %56 ], [ %87, %63 ]
  %65 = call i32 @_raw_spin_lock_irqsave(ptr noundef %37) #9
  %66 = load ptr, ptr %25, align 4
  %67 = load ptr, ptr %27, align 4
  %68 = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %67, i32 0, i32 5
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr i8, ptr %66, i32 %69
  %71 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #9, !srcloc !9
  %72 = and i32 %64, %41
  %73 = icmp eq i32 %72, 0
  %74 = and i32 %71, %42
  %75 = or i32 %71, %41
  %76 = select i1 %73, i32 %75, i32 %74
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !31
  call void @arm_heavy_mb() #9
  %77 = load ptr, ptr %25, align 4
  %78 = load ptr, ptr %27, align 4
  %79 = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %78, i32 0, i32 5
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr i8, ptr %77, i32 %80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %76) #9, !srcloc !12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %37, i32 noundef %65) #9
  %82 = load ptr, ptr %25, align 4
  %83 = load ptr, ptr %27, align 4
  %84 = getelementptr inbounds %struct.rockchip_gpio_regs, ptr %83, i32 0, i32 13
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr i8, ptr %82, i32 %85
  %87 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #9, !srcloc !9
  %88 = and i32 %87, %41
  %89 = icmp eq i32 %88, %72
  br i1 %89, label %90, label %63

90:                                               ; preds = %63, %52
  %91 = call i32 @generic_handle_irq(i32 noundef %47) #9
  br label %92

92:                                               ; preds = %90, %50
  %93 = icmp eq i32 %43, 0
  br i1 %93, label %94, label %38

94:                                               ; preds = %92, %24
  %95 = load ptr, ptr %7, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 9
  %99 = load ptr, ptr %98, align 4
  br label %100

100:                                              ; preds = %97, %94
  %101 = phi ptr [ %99, %97 ], [ %95, %94 ]
  %102 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  call void %101(ptr noundef %102) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_reqres_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_relres_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

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
!9 = !{i64 3725341}
!10 = !{i64 2152657990}
!11 = !{i64 2152632695}
!12 = !{i64 3724923}
!13 = !{i64 2152636633}
!14 = !{i64 2152636925}
!15 = !{i64 2152638294}
!16 = !{i64 2152635211}
!17 = !{i64 2152635644}
!18 = !{i64 2152635970}
!19 = !{i64 888922, i64 888949}
!20 = !{i64 889617, i64 889644, i64 889677, i64 889698, i64 889725, i64 889751}
!21 = !{i64 2152644887}
!22 = !{i64 2152645105}
!23 = !{i64 2152632334}
!24 = !{i64 2152633337}
!25 = !{i64 2152633629}
!26 = !{i64 2151443232}
!27 = !{i64 2151442568}
!28 = !{i64 2152634577}
!29 = !{i64 2152650892}
!30 = !{i32 0, i32 33}
!31 = !{i64 2152648829}
