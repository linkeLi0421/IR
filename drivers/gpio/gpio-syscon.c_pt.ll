; ModuleID = '/llk/IR/drivers/gpio/gpio-syscon.c_pt.bc'
source_filename = "../drivers/gpio/gpio-syscon.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.syscon_gpio_data = type { ptr, i32, i32, i32, i32, ptr }
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
%struct.syscon_gpio_priv = type { %struct.gpio_chip, ptr, ptr, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.62, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.62 = type { ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_gpio_syscon__206_275_syscon_gpio_driver_init6 = internal global ptr @syscon_gpio_driver_init, section ".initcall6.init", align 4
@syscon_gpio_driver = internal global %struct.platform_driver { ptr @syscon_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @syscon_gpio_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_syscon_gpio_driver_exit = internal global ptr @syscon_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author207 = internal constant [55 x i8] c"gpio_syscon.author=Alexander Shiyan <shc_work@mail.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_description208 = internal constant [43 x i8] c"gpio_syscon.description=SYSCON GPIO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file209 = internal constant [42 x i8] c"gpio_syscon.file=drivers/gpio/gpio-syscon\00", section ".modinfo", align 1
@__UNIQUE_ID_license210 = internal constant [24 x i8] c"gpio_syscon.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"gpio-syscon\00", align 1
@syscon_gpio_ids = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cirrus,ep7209-mctrl-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clps711x_mctrl_gpio }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,keystone-dsp-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @keystone_dsp_gpio }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3328-grf-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rockchip_rk3328_gpio_mute }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"gpio,syscon-dev\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"can't read the data register offset!\0A\00", align 1
@clps711x_mctrl_gpio = internal constant %struct.syscon_gpio_data { ptr @.str.3, i32 1, i32 3, i32 520, i32 0, ptr null }, align 4
@keystone_dsp_gpio = internal constant %struct.syscon_gpio_data { ptr null, i32 2, i32 28, i32 4, i32 0, ptr @keystone_gpio_set }, align 4
@rockchip_rk3328_gpio_mute = internal constant %struct.syscon_gpio_data { ptr null, i32 2, i32 1, i32 8513, i32 0, ptr @rockchip_gpio_set }, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"cirrus,ep7209-syscon1\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"gpio write failed ret(%d)\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author207, ptr @__UNIQUE_ID_description208, ptr @__UNIQUE_ID_file209, ptr @__UNIQUE_ID_license210, ptr @__exitcall_syscon_gpio_driver_exit, ptr @__initcall__kmod_gpio_syscon__206_275_syscon_gpio_driver_init6, ptr @syscon_gpio_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @syscon_gpio_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @syscon_gpio_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @syscon_gpio_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @syscon_gpio_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @syscon_gpio_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 320, i32 noundef 3520) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %83, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @of_device_get_match_data(ptr noundef %2) #5
  %9 = getelementptr inbounds %struct.syscon_gpio_priv, ptr %5, i32 0, i32 2
  store ptr %8, ptr %9, align 4
  %10 = load ptr, ptr %8, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull %10) #5
  %14 = getelementptr inbounds %struct.syscon_gpio_priv, ptr %5, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %45

16:                                               ; preds = %12
  %17 = ptrtoint ptr %13 to i32
  br label %83

18:                                               ; preds = %7
  %19 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %4, ptr noundef nonnull @.str.1) #5
  %20 = getelementptr inbounds %struct.syscon_gpio_priv, ptr %5, i32 0, i32 1
  store ptr %19, ptr %20, align 4
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.device_node, ptr %4, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = tail call ptr @syscon_node_to_regmap(ptr noundef nonnull %24) #5
  store ptr %27, ptr %20, align 4
  br label %28

28:                                               ; preds = %26, %22, %18
  %29 = phi ptr [ %27, %26 ], [ %19, %18 ], [ %19, %22 ]
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = ptrtoint ptr %29 to i32
  br label %83

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.syscon_gpio_priv, ptr %5, i32 0, i32 3
  %35 = tail call i32 @of_property_read_u32_index(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef 1, ptr noundef %34) #5
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #6
  br label %38

38:                                               ; preds = %37, %33
  %39 = load i32, ptr %34, align 4
  %40 = shl i32 %39, 3
  store i32 %40, ptr %34, align 4
  %41 = getelementptr inbounds %struct.syscon_gpio_priv, ptr %5, i32 0, i32 4
  %42 = tail call i32 @of_property_read_u32_index(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef 2, ptr noundef %41) #5
  %43 = load i32, ptr %41, align 4
  %44 = shl i32 %43, 3
  store i32 %44, ptr %41, align 4
  br label %45

45:                                               ; preds = %38, %12
  %46 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 2
  store ptr %2, ptr %46, align 4
  %47 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 4
  store ptr null, ptr %47, align 4
  %48 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load ptr, ptr %2, align 4
  br label %53

53:                                               ; preds = %51, %45
  %54 = phi ptr [ %52, %51 ], [ %49, %45 ]
  store ptr %54, ptr %5, align 4
  %55 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 19
  store i32 -1, ptr %55, align 4
  %56 = load ptr, ptr %9, align 4
  %57 = getelementptr inbounds %struct.syscon_gpio_data, ptr %56, i32 0, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = trunc i32 %58 to i16
  %60 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 20
  store i16 %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 10
  store ptr @syscon_gpio_get, ptr %61, align 4
  %62 = getelementptr inbounds %struct.syscon_gpio_data, ptr %56, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %53
  %67 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 8
  store ptr @syscon_gpio_dir_in, ptr %67, align 4
  %68 = load i32, ptr %62, align 4
  br label %69

69:                                               ; preds = %66, %53
  %70 = phi i32 [ %68, %66 ], [ %63, %53 ]
  %71 = and i32 %70, 2
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.syscon_gpio_data, ptr %56, i32 0, i32 5
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  %77 = select i1 %76, ptr @syscon_gpio_set, ptr %75
  %78 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 12
  store ptr %77, ptr %78, align 4
  %79 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 9
  store ptr @syscon_gpio_dir_out, ptr %79, align 4
  br label %80

80:                                               ; preds = %73, %69
  %81 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %81, align 8
  %82 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef null, ptr noundef null) #5
  br label %83

83:                                               ; preds = %80, %31, %16, %1
  %84 = phi i32 [ %17, %16 ], [ %82, %80 ], [ %32, %31 ], [ -12, %1 ]
  ret i32 %84
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @syscon_gpio_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.syscon_gpio_priv, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.syscon_gpio_priv, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.syscon_gpio_data, ptr %8, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %6, %1
  %12 = add i32 %11, %10
  %13 = getelementptr inbounds %struct.syscon_gpio_priv, ptr %4, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = lshr i32 %12, 3
  %16 = and i32 %15, 536870908
  %17 = call i32 @regmap_read(ptr noundef %14, i32 noundef %16, ptr noundef nonnull %3) #5
  %18 = icmp eq i32 %17, 0
  %19 = load i32, ptr %3, align 4
  %20 = and i32 %12, 31
  %21 = lshr i32 %19, %20
  %22 = and i32 %21, 1
  %23 = select i1 %18, i32 %22, i32 %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @syscon_gpio_dir_in(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  %4 = getelementptr inbounds %struct.syscon_gpio_priv, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.syscon_gpio_data, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.syscon_gpio_priv, ptr %3, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.syscon_gpio_data, ptr %5, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %12, %1
  %16 = add i32 %15, %14
  %17 = getelementptr inbounds %struct.syscon_gpio_priv, ptr %3, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = lshr i32 %16, 3
  %20 = and i32 %19, 536870908
  %21 = and i32 %16, 31
  %22 = shl nuw i32 1, %21
  %23 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %24

24:                                               ; preds = %10, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @syscon_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.syscon_gpio_priv, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.syscon_gpio_priv, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.syscon_gpio_data, ptr %8, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %6, %1
  %12 = add i32 %11, %10
  %13 = getelementptr inbounds %struct.syscon_gpio_priv, ptr %4, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = lshr i32 %12, 3
  %16 = and i32 %15, 536870908
  %17 = and i32 %12, 31
  %18 = shl nuw i32 1, %17
  %19 = icmp eq i32 %2, 0
  %20 = select i1 %19, i32 0, i32 %18
  %21 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @syscon_gpio_dir_out(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.syscon_gpio_priv, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.syscon_gpio_data, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.syscon_gpio_priv, ptr %4, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.syscon_gpio_data, ptr %6, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %13, %1
  %17 = add i32 %16, %15
  %18 = getelementptr inbounds %struct.syscon_gpio_priv, ptr %4, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = lshr i32 %17, 3
  %21 = and i32 %20, 536870908
  %22 = and i32 %17, 31
  %23 = shl nuw i32 1, %22
  %24 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %23, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %25

25:                                               ; preds = %11, %3
  %26 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 12
  %27 = load ptr, ptr %26, align 4
  tail call void %27(ptr noundef %0, i32 noundef %1, i32 noundef %2) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @keystone_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %27, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.syscon_gpio_priv, ptr %4, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.syscon_gpio_priv, ptr %4, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.syscon_gpio_data, ptr %10, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %8, %1
  %14 = add i32 %13, %12
  %15 = getelementptr inbounds %struct.syscon_gpio_priv, ptr %4, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = lshr i32 %14, 3
  %18 = and i32 %17, 536870908
  %19 = and i32 %14, 31
  %20 = shl nuw i32 1, %19
  %21 = or i32 %20, 1
  %22 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef %18, i32 noundef %21, i32 noundef %21, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.4, i32 noundef %22) #6
  br label %27

27:                                               ; preds = %24, %6, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rockchip_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.syscon_gpio_priv, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.syscon_gpio_priv, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.syscon_gpio_data, ptr %8, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %6, %1
  %12 = add i32 %11, %10
  %13 = and i32 %12, 31
  %14 = icmp eq i32 %2, 0
  %15 = shl nuw i32 1, %13
  %16 = select i1 %14, i32 0, i32 %15
  %17 = shl i32 65536, %13
  %18 = or i32 %16, %17
  %19 = getelementptr inbounds %struct.syscon_gpio_priv, ptr %4, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = lshr i32 %12, 3
  %22 = and i32 %21, 536870908
  %23 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef %22, i32 noundef %18) #5
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.4, i32 noundef %23) #6
  br label %28

28:                                               ; preds = %25, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
