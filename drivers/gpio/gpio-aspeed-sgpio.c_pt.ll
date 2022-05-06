; ModuleID = '/llk/IR/drivers/gpio/gpio-aspeed-sgpio.c_pt.bc'
source_filename = "../drivers/gpio/gpio-aspeed-sgpio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.aspeed_sgpio_bank = type { i16, i16, i16, i16, [4 x [3 x i8]] }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.aspeed_sgpio_pdata = type { i32 }
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
%struct.aspeed_sgpio = type { %struct.gpio_chip, %struct.irq_chip, ptr, %struct.raw_spinlock, ptr, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.62, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.62 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_gpio_aspeed_sgpio__211_610_aspeed_sgpio_driver_init6 = internal global ptr @aspeed_sgpio_driver_init, section ".initcall6.init", align 4
@aspeed_sgpio_driver = internal global %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.7, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @aspeed_sgpio_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_aspeed_sgpio_driver_exit = internal global ptr @aspeed_sgpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description212 = internal constant [56 x i8] c"gpio_aspeed_sgpio.description=Aspeed Serial GPIO Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file213 = internal constant [54 x i8] c"gpio_aspeed_sgpio.file=drivers/gpio/gpio-aspeed-sgpio\00", section ".modinfo", align 1
@__UNIQUE_ID_license214 = internal constant [30 x i8] c"gpio_aspeed_sgpio.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [7 x i8] c"ngpios\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not read ngpios property\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Number of GPIOs not multiple of 8: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"bus-frequency\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Could not read bus-frequency property\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"devm_clk_get failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"drivers/gpio/gpio-aspeed-sgpio.c\00", align 1
@aspeed_sgpio_banks = internal unnamed_addr constant [4 x %struct.aspeed_sgpio_bank] [%struct.aspeed_sgpio_bank { i16 0, i16 112, i16 4, i16 24, [4 x [3 x i8]] [[3 x i8] c"A\00\00", [3 x i8] c"B\00\00", [3 x i8] c"C\00\00", [3 x i8] c"D\00\00"] }, %struct.aspeed_sgpio_bank { i16 28, i16 116, i16 32, i16 52, [4 x [3 x i8]] [[3 x i8] c"E\00\00", [3 x i8] c"F\00\00", [3 x i8] c"G\00\00", [3 x i8] c"H\00\00"] }, %struct.aspeed_sgpio_bank { i16 56, i16 120, i16 60, i16 80, [4 x [3 x i8]] [[3 x i8] c"I\00\00", [3 x i8] c"J\00\00", [3 x i8] c"K\00\00", [3 x i8] c"L\00\00"] }, %struct.aspeed_sgpio_bank { i16 144, i16 124, i16 148, i16 168, [4 x [3 x i8]] [[3 x i8] c"M\00\00", [3 x i8] c"N\00\00", [3 x i8] c"O\00\00", [3 x i8] c"P\00\00"] }], align 2
@.str.7 = private unnamed_addr constant [18 x i8] c"gpio_aspeed_sgpio\00", align 1
@aspeed_sgpio_of_table = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-sgpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2400_sgpio_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-sgpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2400_sgpio_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2600-sgpiom\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2600_sgpiom_pdata }, %struct.of_device_id zeroinitializer], align 4
@ast2400_sgpio_pdata = internal constant %struct.aspeed_sgpio_pdata { i32 960 }, align 4
@ast2600_sgpiom_pdata = internal constant %struct.aspeed_sgpio_pdata { i32 1984 }, align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description212, ptr @__UNIQUE_ID_file213, ptr @__UNIQUE_ID_license214, ptr @__exitcall_aspeed_sgpio_driver_exit, ptr @__initcall__kmod_gpio_aspeed_sgpio__211_610_aspeed_sgpio_driver_init6, ptr @aspeed_sgpio_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @aspeed_sgpio_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_probe(ptr noundef nonnull @aspeed_sgpio_driver, ptr noundef nonnull @aspeed_sgpio_probe, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @aspeed_sgpio_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @aspeed_sgpio_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @aspeed_sgpio_probe(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 456, i32 noundef 3520) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %146, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #7
  %9 = getelementptr inbounds %struct.aspeed_sgpio, ptr %5, i32 0, i32 4
  store ptr %8, ptr %9, align 4
  %10 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = ptrtoint ptr %8 to i32
  br label %146

13:                                               ; preds = %7
  %14 = tail call ptr @device_get_match_data(ptr noundef %4) #7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %146, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr %14, align 4
  %18 = call i32 @device_property_read_u32_array(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull %2, i32 noundef 1) #7
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #8
  br label %146

21:                                               ; preds = %16
  %22 = load i32, ptr %2, align 4
  %23 = and i32 %22, 7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef %22) #8
  br label %146

26:                                               ; preds = %21
  %27 = call i32 @device_property_read_u32_array(ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef nonnull %3, i32 noundef 1) #7
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4) #8
  br label %146

30:                                               ; preds = %26
  %31 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef null) #7
  %32 = getelementptr inbounds %struct.aspeed_sgpio, ptr %5, i32 0, i32 2
  store ptr %31, ptr %32, align 4
  %33 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5) #8
  %35 = load ptr, ptr %32, align 4
  %36 = ptrtoint ptr %35 to i32
  br label %146

37:                                               ; preds = %30
  %38 = call i32 @clk_get_rate(ptr noundef %31) #7
  %39 = load i32, ptr %3, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %146, label %41

41:                                               ; preds = %37
  %42 = shl i32 %39, 1
  %43 = udiv i32 %38, %42
  %44 = add i32 %43, -1
  %45 = icmp ugt i32 %44, 65535
  br i1 %45, label %146, label %46

46:                                               ; preds = %41
  %47 = load i32, ptr %2, align 4
  %48 = shl i32 %47, 3
  %49 = and i32 %17, -64
  %50 = and i32 %49, %48
  %51 = shl nuw i32 %44, 16
  %52 = or i32 %51, %50
  %53 = or i32 %52, 1
  %54 = load ptr, ptr %9, align 4
  %55 = getelementptr i8, ptr %54, i32 84
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #7, !srcloc !10
  %56 = getelementptr inbounds %struct.aspeed_sgpio, ptr %5, i32 0, i32 3
  store i32 0, ptr %56, align 4
  %57 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 2
  store ptr %4, ptr %57, align 4
  %58 = load i32, ptr %2, align 4
  %59 = trunc i32 %58 to i16
  %60 = shl i16 %59, 1
  %61 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 20
  store i16 %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 17
  store ptr @aspeed_sgpio_init_valid_mask, ptr %62, align 4
  %63 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 8
  store ptr @aspeed_sgpio_dir_in, ptr %63, align 4
  %64 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 9
  store ptr @aspeed_sgpio_dir_out, ptr %64, align 4
  %65 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 7
  store ptr @aspeed_sgpio_get_direction, ptr %65, align 4
  %66 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 5
  store ptr null, ptr %66, align 4
  %67 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 6
  store ptr null, ptr %67, align 4
  %68 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 10
  store ptr @aspeed_sgpio_get, ptr %68, align 4
  %69 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 12
  store ptr @aspeed_sgpio_set, ptr %69, align 4
  %70 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 14
  store ptr @aspeed_sgpio_set_config, ptr %70, align 4
  %71 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %46
  %75 = load ptr, ptr %4, align 4
  br label %76

76:                                               ; preds = %74, %46
  %77 = phi ptr [ %75, %74 ], [ %72, %46 ]
  store ptr %77, ptr %5, align 4
  %78 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 19
  store i32 -1, ptr %78, align 4
  %79 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %143, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.aspeed_sgpio, ptr %5, i32 0, i32 5
  store i32 %79, ptr %82, align 4
  %83 = load ptr, ptr %9, align 4
  %84 = getelementptr i8, ptr %83, i32 4
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 0) #7, !srcloc !10
  %85 = load ptr, ptr %9, align 4
  %86 = getelementptr i8, ptr %85, i32 20
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 -1) #7, !srcloc !10
  %87 = load ptr, ptr %9, align 4
  %88 = getelementptr i8, ptr %87, i32 32
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 0) #7, !srcloc !10
  %89 = load ptr, ptr %9, align 4
  %90 = getelementptr i8, ptr %89, i32 48
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 -1) #7, !srcloc !10
  %91 = load ptr, ptr %9, align 4
  %92 = getelementptr i8, ptr %91, i32 60
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 0) #7, !srcloc !10
  %93 = load ptr, ptr %9, align 4
  %94 = getelementptr i8, ptr %93, i32 76
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 -1) #7, !srcloc !10
  %95 = load ptr, ptr %9, align 4
  %96 = getelementptr i8, ptr %95, i32 148
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 0) #7, !srcloc !10
  %97 = load ptr, ptr %9, align 4
  %98 = getelementptr i8, ptr %97, i32 164
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 -1) #7, !srcloc !10
  %99 = load ptr, ptr %71, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %81
  %102 = load ptr, ptr %4, align 4
  br label %103

103:                                              ; preds = %101, %81
  %104 = phi ptr [ %102, %101 ], [ %99, %81 ]
  %105 = getelementptr inbounds %struct.aspeed_sgpio, ptr %5, i32 0, i32 1
  %106 = getelementptr inbounds %struct.aspeed_sgpio, ptr %5, i32 0, i32 1, i32 1
  store ptr %104, ptr %106, align 4
  %107 = getelementptr inbounds %struct.aspeed_sgpio, ptr %5, i32 0, i32 1, i32 6
  store ptr @aspeed_sgpio_irq_ack, ptr %107, align 4
  %108 = getelementptr inbounds %struct.aspeed_sgpio, ptr %5, i32 0, i32 1, i32 7
  store ptr @aspeed_sgpio_irq_mask, ptr %108, align 4
  %109 = getelementptr inbounds %struct.aspeed_sgpio, ptr %5, i32 0, i32 1, i32 9
  store ptr @aspeed_sgpio_irq_unmask, ptr %109, align 4
  %110 = getelementptr inbounds %struct.aspeed_sgpio, ptr %5, i32 0, i32 1, i32 13
  store ptr @aspeed_sgpio_set_type, ptr %110, align 4
  %111 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 37
  store ptr %105, ptr %111, align 4
  %112 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 37, i32 21
  store ptr @aspeed_sgpio_irq_init_valid_mask, ptr %112, align 4
  %113 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 37, i32 9
  store ptr @handle_bad_irq, ptr %113, align 4
  %114 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 37, i32 10
  store i32 0, ptr %114, align 4
  %115 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 37, i32 13
  store ptr @aspeed_sgpio_irq_handler, ptr %115, align 4
  %116 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 37, i32 14
  store ptr %5, ptr %116, align 4
  %117 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 37, i32 16
  store ptr %82, ptr %117, align 4
  %118 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 37, i32 15
  store i32 1, ptr %118, align 4
  %119 = load ptr, ptr %9, align 4
  %120 = getelementptr i8, ptr %119, i32 8
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 0) #7, !srcloc !10
  %121 = load ptr, ptr %9, align 4
  %122 = getelementptr i8, ptr %121, i32 12
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 0) #7, !srcloc !10
  %123 = load ptr, ptr %9, align 4
  %124 = getelementptr i8, ptr %123, i32 16
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 0) #7, !srcloc !10
  %125 = load ptr, ptr %9, align 4
  %126 = getelementptr i8, ptr %125, i32 36
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 0) #7, !srcloc !10
  %127 = load ptr, ptr %9, align 4
  %128 = getelementptr i8, ptr %127, i32 40
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 0) #7, !srcloc !10
  %129 = load ptr, ptr %9, align 4
  %130 = getelementptr i8, ptr %129, i32 44
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 0) #7, !srcloc !10
  %131 = load ptr, ptr %9, align 4
  %132 = getelementptr i8, ptr %131, i32 64
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 0) #7, !srcloc !10
  %133 = load ptr, ptr %9, align 4
  %134 = getelementptr i8, ptr %133, i32 68
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 0) #7, !srcloc !10
  %135 = load ptr, ptr %9, align 4
  %136 = getelementptr i8, ptr %135, i32 72
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 0) #7, !srcloc !10
  %137 = load ptr, ptr %9, align 4
  %138 = getelementptr i8, ptr %137, i32 152
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 0) #7, !srcloc !10
  %139 = load ptr, ptr %9, align 4
  %140 = getelementptr i8, ptr %139, i32 156
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %140, i32 0) #7, !srcloc !10
  %141 = load ptr, ptr %9, align 4
  %142 = getelementptr i8, ptr %141, i32 160
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 0) #7, !srcloc !10
  br label %143

143:                                              ; preds = %103, %76
  %144 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef null, ptr noundef null) #7
  %145 = call i32 @llvm.smin.i32(i32 %144, i32 0)
  br label %146

146:                                              ; preds = %143, %41, %37, %34, %29, %25, %20, %13, %11, %1
  %147 = phi i32 [ %12, %11 ], [ -22, %20 ], [ -22, %25 ], [ -22, %29 ], [ %36, %34 ], [ -12, %1 ], [ -22, %13 ], [ -22, %37 ], [ -22, %41 ], [ %145, %143 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %147
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_sgpio_init_valid_mask(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #4 {
  tail call void @__bitmap_set(ptr noundef %1, i32 noundef 0, i32 noundef %2) #7
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @aspeed_sgpio_dir_in(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 0, i32 -22
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_sgpio_dir_out(ptr noundef %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.aspeed_sgpio, ptr %4, i32 0, i32 3
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #7
  %7 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %8 = icmp ugt i32 %1, 255
  br i1 %8, label %9, label %10, !prof !11

9:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 140, i32 noundef 9, ptr noundef null) #7
  br label %10

10:                                               ; preds = %9, %3
  %11 = and i32 %1, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %34, label %13

13:                                               ; preds = %10
  %14 = lshr i32 %1, 6
  %15 = getelementptr [4 x %struct.aspeed_sgpio_bank], ptr @aspeed_sgpio_banks, i32 0, i32 %14
  %16 = getelementptr inbounds %struct.aspeed_sgpio, ptr %7, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr [4 x %struct.aspeed_sgpio_bank], ptr @aspeed_sgpio_banks, i32 0, i32 %14, i32 1
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = getelementptr i8, ptr %17, i32 %20
  %22 = load i16, ptr %15, align 2
  %23 = zext i16 %22 to i32
  %24 = getelementptr i8, ptr %17, i32 %23
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %26 = icmp eq i32 %2, 0
  %27 = lshr i32 %1, 1
  %28 = and i32 %27, 31
  %29 = shl nuw i32 1, %28
  %30 = or i32 %25, %29
  %31 = xor i32 %29, -1
  %32 = and i32 %25, %31
  %33 = select i1 %26, i32 %32, i32 %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %33) #7, !srcloc !10
  br label %34

34:                                               ; preds = %13, %10
  %35 = phi i32 [ 0, %13 ], [ -22, %10 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #7
  ret i32 %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @aspeed_sgpio_get_direction(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  %3 = and i32 %1, 1
  %4 = xor i32 %3, 1
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_sgpio_get(ptr noundef %0, i32 noundef %1) #4 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %4 = icmp ugt i32 %1, 255
  br i1 %4, label %5, label %6, !prof !11

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 140, i32 noundef 9, ptr noundef null) #7
  br label %6

6:                                                ; preds = %5, %2
  %7 = lshr i32 %1, 6
  %8 = getelementptr inbounds %struct.aspeed_sgpio, ptr %3, i32 0, i32 3
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #7
  %10 = and i32 %1, 1
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr [4 x %struct.aspeed_sgpio_bank], ptr @aspeed_sgpio_banks, i32 0, i32 %7
  %13 = getelementptr [4 x %struct.aspeed_sgpio_bank], ptr @aspeed_sgpio_banks, i32 0, i32 %7, i32 1
  %14 = select i1 %11, ptr %12, ptr %13
  %15 = getelementptr inbounds %struct.aspeed_sgpio, ptr %3, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = load i16, ptr %14, align 2
  %18 = zext i16 %17 to i32
  %19 = getelementptr i8, ptr %16, i32 %18
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %21 = lshr i32 %1, 1
  %22 = and i32 %21, 31
  %23 = lshr i32 %20, %22
  %24 = and i32 %23, 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #7
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aspeed_sgpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.aspeed_sgpio, ptr %4, i32 0, i32 3
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #7
  %7 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %8 = icmp ugt i32 %1, 255
  br i1 %8, label %9, label %10, !prof !11

9:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 140, i32 noundef 9, ptr noundef null) #7
  br label %10

10:                                               ; preds = %9, %3
  %11 = and i32 %1, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %34, label %13

13:                                               ; preds = %10
  %14 = lshr i32 %1, 6
  %15 = getelementptr [4 x %struct.aspeed_sgpio_bank], ptr @aspeed_sgpio_banks, i32 0, i32 %14
  %16 = getelementptr inbounds %struct.aspeed_sgpio, ptr %7, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr [4 x %struct.aspeed_sgpio_bank], ptr @aspeed_sgpio_banks, i32 0, i32 %14, i32 1
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = getelementptr i8, ptr %17, i32 %20
  %22 = load i16, ptr %15, align 2
  %23 = zext i16 %22 to i32
  %24 = getelementptr i8, ptr %17, i32 %23
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %26 = icmp eq i32 %2, 0
  %27 = lshr i32 %1, 1
  %28 = and i32 %27, 31
  %29 = shl nuw i32 1, %28
  %30 = or i32 %25, %29
  %31 = xor i32 %29, -1
  %32 = and i32 %25, %31
  %33 = select i1 %26, i32 %32, i32 %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %33) #7, !srcloc !10
  br label %34

34:                                               ; preds = %13, %10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_sgpio_set_config(ptr noundef %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = and i32 %2, 255
  %5 = icmp eq i32 %4, 20
  br i1 %5, label %6, label %29

6:                                                ; preds = %3
  %7 = icmp ult i32 %2, 256
  %8 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %9 = icmp ugt i32 %1, 255
  br i1 %9, label %10, label %11, !prof !11

10:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 140, i32 noundef 9, ptr noundef null) #7
  br label %11

11:                                               ; preds = %10, %6
  %12 = lshr i32 %1, 6
  %13 = getelementptr inbounds %struct.aspeed_sgpio, ptr %8, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr [4 x %struct.aspeed_sgpio_bank], ptr @aspeed_sgpio_banks, i32 0, i32 %12, i32 3
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  %18 = getelementptr i8, ptr %14, i32 %17
  %19 = getelementptr inbounds %struct.aspeed_sgpio, ptr %8, i32 0, i32 3
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #7
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %22 = lshr i32 %1, 1
  %23 = and i32 %22, 31
  %24 = shl nuw i32 1, %23
  %25 = or i32 %21, %24
  %26 = xor i32 %24, -1
  %27 = and i32 %21, %26
  %28 = select i1 %7, i32 %27, i32 %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !15
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %28) #7, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %20) #7
  br label %29

29:                                               ; preds = %11, %3
  %30 = phi i32 [ 0, %11 ], [ -524, %3 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aspeed_sgpio_irq_ack(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !11

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 260, i32 noundef 9, ptr noundef null) #7
  br label %8

8:                                                ; preds = %7, %1
  %9 = icmp ugt i32 %3, 255
  br i1 %9, label %10, label %11, !prof !11

10:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 140, i32 noundef 9, ptr noundef null) #7
  br label %11

11:                                               ; preds = %10, %8
  %12 = lshr i32 %3, 6
  %13 = lshr i32 %3, 1
  %14 = and i32 %13, 31
  %15 = shl nuw i32 1, %14
  %16 = getelementptr inbounds %struct.aspeed_sgpio, ptr %5, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr [4 x %struct.aspeed_sgpio_bank], ptr @aspeed_sgpio_banks, i32 0, i32 %12, i32 2
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = getelementptr i8, ptr %17, i32 %20
  %22 = getelementptr i8, ptr %21, i32 16
  %23 = getelementptr inbounds %struct.aspeed_sgpio, ptr %5, i32 0, i32 3
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %23) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %15) #7, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %24) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aspeed_sgpio_irq_mask(ptr nocapture noundef readonly %0) #4 {
  tail call fastcc void @aspeed_sgpio_irq_set_mask(ptr noundef %0, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aspeed_sgpio_irq_unmask(ptr nocapture noundef readonly %0) #4 {
  tail call fastcc void @aspeed_sgpio_irq_set_mask(ptr noundef %0, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_sgpio_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !11

8:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 260, i32 noundef 9, ptr noundef null) #7
  br label %9

9:                                                ; preds = %8, %2
  %10 = icmp ugt i32 %4, 255
  br i1 %10, label %11, label %12, !prof !11

11:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 140, i32 noundef 9, ptr noundef null) #7
  br label %12

12:                                               ; preds = %11, %9
  %13 = lshr i32 %4, 6
  %14 = lshr i32 %4, 1
  %15 = and i32 %14, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %1, 15
  switch i32 %17, label %57 [
    i32 3, label %18
    i32 1, label %19
    i32 2, label %24
    i32 4, label %21
    i32 8, label %22
  ]

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18, %12
  %20 = phi i32 [ 0, %12 ], [ %16, %18 ]
  br label %24

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21, %12
  %23 = phi i32 [ 0, %12 ], [ %16, %21 ]
  br label %24

24:                                               ; preds = %22, %19, %12
  %25 = phi i32 [ %16, %22 ], [ 0, %12 ], [ 0, %19 ]
  %26 = phi i32 [ 0, %22 ], [ 0, %12 ], [ %20, %19 ]
  %27 = phi ptr [ @handle_level_irq, %22 ], [ @handle_edge_irq, %12 ], [ @handle_edge_irq, %19 ]
  %28 = phi i32 [ %23, %22 ], [ 0, %12 ], [ %16, %19 ]
  %29 = getelementptr inbounds %struct.aspeed_sgpio, ptr %6, i32 0, i32 3
  %30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %29) #7
  %31 = getelementptr inbounds %struct.aspeed_sgpio, ptr %6, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr [4 x %struct.aspeed_sgpio_bank], ptr @aspeed_sgpio_banks, i32 0, i32 %13, i32 2
  %34 = load i16, ptr %33, align 2
  %35 = zext i16 %34 to i32
  %36 = getelementptr i8, ptr %32, i32 %35
  %37 = getelementptr i8, ptr %36, i32 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %39 = xor i32 %16, -1
  %40 = and i32 %38, %39
  %41 = or i32 %40, %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %41) #7, !srcloc !10
  %42 = load ptr, ptr %31, align 4
  %43 = getelementptr i8, ptr %42, i32 %35
  %44 = getelementptr i8, ptr %43, i32 8
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %46 = and i32 %45, %39
  %47 = or i32 %46, %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %47) #7, !srcloc !10
  %48 = load ptr, ptr %31, align 4
  %49 = getelementptr i8, ptr %48, i32 %35
  %50 = getelementptr i8, ptr %49, i32 12
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %52 = and i32 %51, %39
  %53 = or i32 %52, %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %53) #7, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %30) #7
  %54 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.irq_desc, ptr %55, i32 0, i32 3
  store ptr %27, ptr %56, align 4
  br label %57

57:                                               ; preds = %24, %12
  %58 = phi i32 [ 0, %24 ], [ -22, %12 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aspeed_sgpio_irq_init_valid_mask(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #4 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %10, %3
  %6 = phi i32 [ %11, %10 ], [ 0, %3 ]
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @_clear_bit(i32 noundef %6, ptr noundef %1) #7
  br label %10

10:                                               ; preds = %9, %5
  %11 = add nuw i32 %6, 1
  %12 = icmp eq i32 %11, %2
  br i1 %12, label %13, label %5

13:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aspeed_sgpio_irq_handler(ptr noundef %0) #4 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @gpiochip_get_data(ptr noundef %4) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  %8 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %13(ptr noundef %16) #7
  br label %25

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %19(ptr noundef %20) #7
  %21 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  tail call void %22(ptr noundef %20) #7
  br label %25

25:                                               ; preds = %24, %17, %15, %1
  %26 = getelementptr inbounds %struct.aspeed_sgpio, ptr %7, i32 0, i32 4
  %27 = getelementptr inbounds %struct.gpio_chip, ptr %4, i32 0, i32 37, i32 1
  %28 = load ptr, ptr %26, align 4
  %29 = getelementptr i8, ptr %28, i32 20
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #7, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  store i32 %30, ptr %2, align 4
  %31 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef 0) #7
  %32 = icmp ult i32 %31, 32
  br i1 %32, label %33, label %41

33:                                               ; preds = %33, %25
  %34 = phi i32 [ %39, %33 ], [ %31, %25 ]
  %35 = load ptr, ptr %27, align 4
  %36 = shl nuw nsw i32 %34, 1
  %37 = call i32 @generic_handle_domain_irq(ptr noundef %35, i32 noundef %36) #7
  %38 = add nuw nsw i32 %34, 1
  %39 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef %38) #7
  %40 = icmp ult i32 %39, 32
  br i1 %40, label %33, label %41

41:                                               ; preds = %33, %25
  %42 = load ptr, ptr %26, align 4
  %43 = getelementptr i8, ptr %42, i32 48
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #7, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  store i32 %44, ptr %2, align 4
  %45 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef 0) #7
  %46 = icmp ult i32 %45, 32
  br i1 %46, label %47, label %56

47:                                               ; preds = %47, %41
  %48 = phi i32 [ %54, %47 ], [ %45, %41 ]
  %49 = load ptr, ptr %27, align 4
  %50 = shl nuw nsw i32 %48, 1
  %51 = add nuw nsw i32 %50, 64
  %52 = call i32 @generic_handle_domain_irq(ptr noundef %49, i32 noundef %51) #7
  %53 = add nuw nsw i32 %48, 1
  %54 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef %53) #7
  %55 = icmp ult i32 %54, 32
  br i1 %55, label %47, label %56

56:                                               ; preds = %47, %41
  %57 = load ptr, ptr %26, align 4
  %58 = getelementptr i8, ptr %57, i32 76
  %59 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #7, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  store i32 %59, ptr %2, align 4
  %60 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef 0) #7
  %61 = icmp ult i32 %60, 32
  br i1 %61, label %62, label %71

62:                                               ; preds = %62, %56
  %63 = phi i32 [ %69, %62 ], [ %60, %56 ]
  %64 = load ptr, ptr %27, align 4
  %65 = shl nuw nsw i32 %63, 1
  %66 = add nuw nsw i32 %65, 128
  %67 = call i32 @generic_handle_domain_irq(ptr noundef %64, i32 noundef %66) #7
  %68 = add nuw nsw i32 %63, 1
  %69 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef %68) #7
  %70 = icmp ult i32 %69, 32
  br i1 %70, label %62, label %71

71:                                               ; preds = %62, %56
  %72 = load ptr, ptr %26, align 4
  %73 = getelementptr i8, ptr %72, i32 164
  %74 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #7, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  store i32 %74, ptr %2, align 4
  %75 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef 0) #7
  %76 = icmp ult i32 %75, 32
  br i1 %76, label %77, label %86

77:                                               ; preds = %77, %71
  %78 = phi i32 [ %84, %77 ], [ %75, %71 ]
  %79 = load ptr, ptr %27, align 4
  %80 = shl nuw nsw i32 %78, 1
  %81 = add nuw nsw i32 %80, 192
  %82 = call i32 @generic_handle_domain_irq(ptr noundef %79, i32 noundef %81) #7
  %83 = add nuw nsw i32 %78, 1
  %84 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef %83) #7
  %85 = icmp ult i32 %84, 32
  br i1 %85, label %77, label %86

86:                                               ; preds = %77, %71
  %87 = load ptr, ptr %8, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 9
  %91 = load ptr, ptr %90, align 4
  br label %92

92:                                               ; preds = %89, %86
  %93 = phi ptr [ %91, %89 ], [ %87, %86 ]
  %94 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  call void %93(ptr noundef %94) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @aspeed_sgpio_irq_set_mask(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !11

8:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 260, i32 noundef 9, ptr noundef null) #7
  br label %9

9:                                                ; preds = %8, %2
  %10 = icmp ugt i32 %4, 255
  br i1 %10, label %11, label %12, !prof !11

11:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 140, i32 noundef 9, ptr noundef null) #7
  br label %12

12:                                               ; preds = %11, %9
  %13 = lshr i32 %4, 6
  %14 = lshr i32 %4, 1
  %15 = and i32 %14, 31
  %16 = shl nuw i32 1, %15
  %17 = getelementptr inbounds %struct.aspeed_sgpio, ptr %6, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr [4 x %struct.aspeed_sgpio_bank], ptr @aspeed_sgpio_banks, i32 0, i32 %13, i32 2
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = getelementptr i8, ptr %18, i32 %21
  %23 = getelementptr inbounds %struct.aspeed_sgpio, ptr %6, i32 0, i32 3
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %23) #7
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %26 = or i32 %25, %16
  %27 = xor i32 %16, -1
  %28 = and i32 %25, %27
  %29 = select i1 %1, i32 %26, i32 %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %29) #7, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %24) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"auto-init"}
!9 = !{i64 2151287711}
!10 = !{i64 3746618}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 3747036}
!13 = !{i64 2151286489}
!14 = !{i64 2152395244}
!15 = !{i64 2152397615}
