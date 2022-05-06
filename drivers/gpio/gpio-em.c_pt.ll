; ModuleID = '/llk/IR/drivers/gpio/gpio-em.c_pt.bc'
source_filename = "../drivers/gpio/gpio-em.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.em_gio_priv = type { ptr, ptr, %struct.spinlock, ptr, %struct.gpio_chip, %struct.irq_chip, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.62, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%union.anon.62 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_gpio_em__210_380_em_gio_init2 = internal global ptr @em_gio_init, section ".initcall2.init", align 4
@em_gio_device_driver = internal global %struct.platform_driver { ptr @em_gio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @em_gio_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_em_gio_exit = internal global ptr @em_gio_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author211 = internal constant [27 x i8] c"gpio_em.author=Magnus Damm\00", section ".modinfo", align 1
@__UNIQUE_ID_description212 = internal constant [51 x i8] c"gpio_em.description=Renesas Emma Mobile GIO Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file213 = internal constant [34 x i8] c"gpio_em.file=drivers/gpio/gpio-em\00", section ".modinfo", align 1
@__UNIQUE_ID_license214 = internal constant [23 x i8] c"gpio_em.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [7 x i8] c"em_gio\00", align 1
@em_gio_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,em-gio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ngpios\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Missing ngpios OF property\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"gpio-em\00", align 1
@em_gio_irq_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @em_gio_irq_domain_map, ptr null, ptr @irq_domain_xlate_twocell, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"cannot initialize irq domain\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"failed to request low IRQ\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"failed to request high IRQ\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"failed to add GPIO controller\0A\00", align 1
@em_gio_sense_table = internal unnamed_addr constant [16 x i8] c"\00\08\09\0C\0A\00\00\00\0B\00\00\00\00\00\00\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"unable to lock HW IRQ %lu for IRQ\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author211, ptr @__UNIQUE_ID_description212, ptr @__UNIQUE_ID_file213, ptr @__UNIQUE_ID_license214, ptr @__exitcall_em_gio_exit, ptr @__initcall__kmod_gpio_em__210_380_em_gio_init2, ptr @em_gio_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @em_gio_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @em_gio_device_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @em_gio_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @em_gio_device_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @em_gio_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 4
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi ptr [ %8, %7 ], [ %5, %1 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 460, i32 noundef 3520) #6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %85, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.em_gio_priv, ptr %11, i32 0, i32 3
  store ptr %0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %11, ptr %15, align 8
  %16 = getelementptr inbounds %struct.em_gio_priv, ptr %11, i32 0, i32 2
  store i32 0, ptr %16, align 4
  %17 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #6
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %85, label %19

19:                                               ; preds = %13
  %20 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 1) #6
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %85, label %22

22:                                               ; preds = %19
  %23 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  store ptr %23, ptr %11, align 4
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = ptrtoint ptr %23 to i32
  br label %85

27:                                               ; preds = %22
  %28 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 1) #6
  %29 = getelementptr inbounds %struct.em_gio_priv, ptr %11, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  %30 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = ptrtoint ptr %28 to i32
  br label %85

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %35 = load ptr, ptr %34, align 8
  %36 = call i32 @of_property_read_variable_u32_array(ptr noundef %35, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #6
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #7
  br label %85

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.em_gio_priv, ptr %11, i32 0, i32 4
  %41 = getelementptr inbounds %struct.em_gio_priv, ptr %11, i32 0, i32 4, i32 8
  store ptr @em_gio_direction_input, ptr %41, align 4
  %42 = getelementptr inbounds %struct.em_gio_priv, ptr %11, i32 0, i32 4, i32 10
  store ptr @em_gio_get, ptr %42, align 4
  %43 = getelementptr inbounds %struct.em_gio_priv, ptr %11, i32 0, i32 4, i32 9
  store ptr @em_gio_direction_output, ptr %43, align 4
  %44 = getelementptr inbounds %struct.em_gio_priv, ptr %11, i32 0, i32 4, i32 12
  store ptr @em_gio_set, ptr %44, align 4
  %45 = getelementptr inbounds %struct.em_gio_priv, ptr %11, i32 0, i32 4, i32 15
  store ptr @em_gio_to_irq, ptr %45, align 4
  %46 = getelementptr inbounds %struct.em_gio_priv, ptr %11, i32 0, i32 4, i32 5
  store ptr @em_gio_request, ptr %46, align 4
  %47 = getelementptr inbounds %struct.em_gio_priv, ptr %11, i32 0, i32 4, i32 6
  store ptr @em_gio_free, ptr %47, align 4
  store ptr %10, ptr %40, align 4
  %48 = getelementptr inbounds %struct.em_gio_priv, ptr %11, i32 0, i32 4, i32 2
  store ptr %3, ptr %48, align 4
  %49 = getelementptr inbounds %struct.em_gio_priv, ptr %11, i32 0, i32 4, i32 4
  store ptr null, ptr %49, align 4
  %50 = getelementptr inbounds %struct.em_gio_priv, ptr %11, i32 0, i32 4, i32 19
  store i32 -1, ptr %50, align 4
  %51 = load i32, ptr %2, align 4
  %52 = trunc i32 %51 to i16
  %53 = getelementptr inbounds %struct.em_gio_priv, ptr %11, i32 0, i32 4, i32 20
  store i16 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.em_gio_priv, ptr %11, i32 0, i32 5, i32 1
  store ptr @.str.3, ptr %54, align 4
  %55 = getelementptr inbounds %struct.em_gio_priv, ptr %11, i32 0, i32 5, i32 7
  store ptr @em_gio_irq_disable, ptr %55, align 4
  %56 = getelementptr inbounds %struct.em_gio_priv, ptr %11, i32 0, i32 5, i32 9
  store ptr @em_gio_irq_enable, ptr %56, align 4
  %57 = getelementptr inbounds %struct.em_gio_priv, ptr %11, i32 0, i32 5, i32 13
  store ptr @em_gio_irq_set_type, ptr %57, align 4
  %58 = getelementptr inbounds %struct.em_gio_priv, ptr %11, i32 0, i32 5, i32 22
  store ptr @em_gio_irq_reqres, ptr %58, align 4
  %59 = getelementptr inbounds %struct.em_gio_priv, ptr %11, i32 0, i32 5, i32 23
  store ptr @em_gio_irq_relres, ptr %59, align 4
  %60 = getelementptr inbounds %struct.em_gio_priv, ptr %11, i32 0, i32 5, i32 33
  store i32 20, ptr %60, align 4
  %61 = load ptr, ptr %34, align 8
  %62 = icmp eq ptr %61, null
  %63 = getelementptr inbounds %struct.device_node, ptr %61, i32 0, i32 3
  %64 = select i1 %62, ptr null, ptr %63
  %65 = call ptr @irq_domain_create_simple(ptr noundef %64, i32 noundef %51, i32 noundef 0, ptr noundef nonnull @em_gio_irq_domain_ops, ptr noundef nonnull %11) #6
  %66 = getelementptr inbounds %struct.em_gio_priv, ptr %11, i32 0, i32 6
  store ptr %65, ptr %66, align 4
  %67 = icmp eq ptr %65, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %39
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #7
  br label %85

69:                                               ; preds = %39
  %70 = call i32 @devm_add_action(ptr noundef %3, ptr noundef nonnull @em_gio_irq_domain_remove, ptr noundef nonnull %65) #6
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  call void @irq_domain_remove(ptr noundef nonnull %65) #6
  br label %85

73:                                               ; preds = %69
  %74 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %17, ptr noundef nonnull @em_gio_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %10, ptr noundef nonnull %11) #6
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #7
  br label %85

77:                                               ; preds = %73
  %78 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %20, ptr noundef nonnull @em_gio_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %10, ptr noundef nonnull %11) #6
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #7
  br label %85

81:                                               ; preds = %77
  %82 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %3, ptr noundef %40, ptr noundef nonnull %11, ptr noundef null, ptr noundef null) #6
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #7
  br label %85

85:                                               ; preds = %84, %81, %80, %76, %72, %68, %38, %31, %25, %19, %13, %9
  %86 = phi i32 [ %26, %25 ], [ %32, %31 ], [ -22, %38 ], [ -2, %76 ], [ -2, %80 ], [ %82, %84 ], [ -6, %68 ], [ -12, %9 ], [ %17, %13 ], [ %20, %19 ], [ %70, %72 ], [ 0, %81 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %86
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @em_gio_direction_input(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %4 = shl nuw i32 1, %1
  %5 = load ptr, ptr %3, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #6, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @em_gio_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %7 = lshr i32 %6, %1
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @em_gio_direction_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = icmp ult i32 %1, 16
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %7 = or i32 %2, 65536
  %8 = shl i32 %7, %1
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #6, !srcloc !10
  %11 = shl nuw nsw i32 1, %1
  br label %20

12:                                               ; preds = %3
  %13 = add i32 %1, -16
  %14 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %15 = shl nuw i32 1, %1
  %16 = shl i32 %2, %13
  %17 = or i32 %16, %15
  %18 = load ptr, ptr %14, align 4
  %19 = getelementptr i8, ptr %18, i32 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #6, !srcloc !10
  br label %20

20:                                               ; preds = %12, %5
  %21 = phi i32 [ %11, %5 ], [ %15, %12 ]
  %22 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %23 = load ptr, ptr %22, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #6, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @em_gio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = icmp ult i32 %1, 16
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %7 = or i32 %2, 65536
  %8 = shl i32 %7, %1
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #6, !srcloc !10
  br label %19

11:                                               ; preds = %3
  %12 = add i32 %1, -16
  %13 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %14 = shl nuw i32 1, %1
  %15 = shl i32 %2, %12
  %16 = or i32 %15, %14
  %17 = load ptr, ptr %13, align 4
  %18 = getelementptr i8, ptr %17, i32 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #6, !srcloc !10
  br label %19

19:                                               ; preds = %11, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @em_gio_to_irq(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.em_gio_priv, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @irq_create_mapping_affinity(ptr noundef %5, i32 noundef %1, ptr noundef null) #6
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @em_gio_request(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, %1
  %6 = tail call i32 @pinctrl_gpio_request(i32 noundef %5) #6
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @em_gio_free(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, %1
  tail call void @pinctrl_gpio_free(i32 noundef %5) #6
  %6 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %7 = shl nuw i32 1, %1
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #6, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @em_gio_irq_disable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = shl nuw i32 1, %5
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 28
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #6, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @em_gio_irq_enable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = shl nuw i32 1, %5
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 24
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #6, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @em_gio_irq_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = and i32 %1, 15
  %4 = getelementptr [16 x i8], ptr @em_gio_sense_table, i32 0, i32 %3
  %5 = load i8, ptr %4, align 1
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = lshr i32 65249, %3
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %64

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %13, 1
  %15 = and i32 %14, 2147483644
  %16 = shl i32 %13, 4
  %17 = and i32 %16, 112
  %18 = getelementptr inbounds %struct.em_gio_priv, ptr %7, i32 0, i32 2
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #6
  %20 = load ptr, ptr %7, align 4
  %21 = getelementptr i8, ptr %20, i32 20
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %23 = shl nuw i32 1, %13
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = load ptr, ptr %7, align 4
  %27 = getelementptr i8, ptr %26, i32 20
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #6, !srcloc !10
  %28 = icmp ugt i32 %15, 2147483583
  br i1 %28, label %29, label %42

29:                                               ; preds = %11
  %30 = add nuw i32 %15, 64
  %31 = load ptr, ptr %7, align 4
  %32 = getelementptr i8, ptr %31, i32 %30
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %34 = shl i32 15, %17
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = zext i8 %5 to i32
  %38 = shl i32 %37, %17
  %39 = or i32 %36, %38
  %40 = load ptr, ptr %7, align 4
  %41 = getelementptr i8, ptr %40, i32 %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #6, !srcloc !10
  br label %55

42:                                               ; preds = %11
  %43 = getelementptr inbounds %struct.em_gio_priv, ptr %7, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr i8, ptr %44, i32 %15
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %47 = shl i32 15, %17
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  %50 = zext i8 %5 to i32
  %51 = shl i32 %50, %17
  %52 = or i32 %49, %51
  %53 = load ptr, ptr %43, align 4
  %54 = getelementptr i8, ptr %53, i32 %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #6, !srcloc !10
  br label %55

55:                                               ; preds = %42, %29
  %56 = load ptr, ptr %7, align 4
  %57 = getelementptr i8, ptr %56, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %23) #6, !srcloc !10
  %58 = load ptr, ptr %7, align 4
  %59 = getelementptr i8, ptr %58, i32 20
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %61 = or i32 %60, %23
  %62 = load ptr, ptr %7, align 4
  %63 = getelementptr i8, ptr %62, i32 20
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %61) #6, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %19) #6
  br label %64

64:                                               ; preds = %55, %2
  %65 = phi i32 [ 0, %55 ], [ -22, %2 ]
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @em_gio_irq_reqres(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.em_gio_priv, ptr %3, i32 0, i32 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 @gpiochip_lock_as_irq(ptr noundef %4, i32 noundef %6) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.em_gio_priv, ptr %3, i32 0, i32 4, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.8, i32 noundef %12) #7
  br label %13

13:                                               ; preds = %9, %1
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @em_gio_irq_relres(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.em_gio_priv, ptr %3, i32 0, i32 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  tail call void @gpiochip_unlock_as_irq(ptr noundef %4, i32 noundef %6) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @em_gio_irq_domain_remove(ptr noundef %0) #2 {
  tail call void @irq_domain_remove(ptr noundef %0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @em_gio_irq_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 36
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.em_gio_priv, ptr %1, i32 0, i32 6
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ %5, %7 ], [ %21, %9 ]
  %11 = phi i32 [ 0, %7 ], [ %18, %9 ]
  %12 = tail call i32 @llvm.cttz.i32(i32 %10, i1 true) #6, !range !13
  %13 = shl nuw i32 1, %12
  %14 = load ptr, ptr %1, align 4
  %15 = getelementptr i8, ptr %14, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #6, !srcloc !10
  %16 = load ptr, ptr %8, align 4
  %17 = tail call i32 @generic_handle_domain_irq(ptr noundef %16, i32 noundef %12) #6
  %18 = add i32 %11, 1
  %19 = load ptr, ptr %1, align 4
  %20 = getelementptr i8, ptr %19, i32 36
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %9

23:                                               ; preds = %9
  %24 = icmp ne i32 %18, 0
  %25 = zext i1 %24 to i32
  br label %26

26:                                               ; preds = %23, %2
  %27 = phi i32 [ 0, %2 ], [ %25, %23 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_request(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_gpio_free(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_lock_as_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_unlock_as_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_simple(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @em_gio_irq_domain_map(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef %5) #6
  %7 = getelementptr inbounds %struct.em_gio_priv, ptr %5, i32 0, i32 5
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef %7, ptr noundef nonnull @handle_level_irq, ptr noundef null) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_twocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!9 = !{i64 2151256318}
!10 = !{i64 3715225}
!11 = !{i64 3715643}
!12 = !{i64 2151255096}
!13 = !{i32 0, i32 33}
