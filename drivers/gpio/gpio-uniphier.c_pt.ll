; ModuleID = '/llk/IR/drivers/gpio/gpio-uniphier.c_pt.bc'
source_filename = "../drivers/gpio/gpio-uniphier.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
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
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.uniphier_gpio_priv = type { %struct.gpio_chip, %struct.irq_chip, ptr, ptr, %struct.spinlock, [0 x i32] }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.62, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%union.anon.62 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_gpio_uniphier__206_493_uniphier_gpio_driver_init6 = internal global ptr @uniphier_gpio_driver_init, section ".initcall6.init", align 4
@uniphier_gpio_driver = internal global %struct.platform_driver { ptr @uniphier_gpio_probe, ptr @uniphier_gpio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @uniphier_gpio_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uniphier_gpio_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_uniphier_gpio_driver_exit = internal global ptr @uniphier_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author207 = internal constant [69 x i8] c"gpio_uniphier.author=Masahiro Yamada <yamada.masahiro@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description208 = internal constant [47 x i8] c"gpio_uniphier.description=UniPhier GPIO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file209 = internal constant [46 x i8] c"gpio_uniphier.file=drivers/gpio/gpio-uniphier\00", section ".modinfo", align 1
@__UNIQUE_ID_license210 = internal constant [29 x i8] c"gpio_uniphier.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"uniphier-gpio\00", align 1
@uniphier_gpio_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@uniphier_gpio_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uniphier_gpio_suspend, ptr @uniphier_gpio_resume, ptr @uniphier_gpio_suspend, ptr @uniphier_gpio_resume, ptr @uniphier_gpio_suspend, ptr @uniphier_gpio_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ngpios\00", align 1
@uniphier_gpio_irq_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uniphier_gpio_irq_domain_alloc, ptr @irq_domain_free_irqs_common, ptr @uniphier_gpio_irq_domain_activate, ptr @uniphier_gpio_irq_domain_deactivate, ptr @uniphier_gpio_irq_domain_translate }, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"drivers/gpio/gpio-uniphier.c\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"socionext,interrupt-ranges\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author207, ptr @__UNIQUE_ID_description208, ptr @__UNIQUE_ID_file209, ptr @__UNIQUE_ID_license210, ptr @__exitcall_uniphier_gpio_driver_exit, ptr @__initcall__kmod_gpio_uniphier__206_493_uniphier_gpio_driver_init6, ptr @uniphier_gpio_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @uniphier_gpio_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @uniphier_gpio_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @uniphier_gpio_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @uniphier_gpio_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_gpio_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.irq_fwspec, align 4
  %3 = alloca %struct.irq_fwspec, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = tail call ptr @of_irq_find_parent(ptr noundef %7) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %92, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.device_node, ptr %8, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #6
  %12 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %12, i8 0, i64 68, i1 false) #6
  store ptr %11, ptr %3, align 4
  %13 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %3, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  call void @of_node_put(ptr noundef nonnull %8) #6
  br label %20

16:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #6
  %17 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %17, i8 0, i64 68, i1 false) #6
  store ptr %11, ptr %2, align 4
  %18 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %2, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #6
  call void @of_node_put(ptr noundef nonnull %8) #6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %92, label %20

20:                                               ; preds = %16, %15
  %21 = phi ptr [ %13, %15 ], [ %18, %16 ]
  %22 = load ptr, ptr %6, align 8
  %23 = call i32 @of_property_read_variable_u32_array(ptr noundef %22, ptr noundef nonnull @.str.1, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #6
  %24 = call i32 @llvm.smin.i32(i32 %23, i32 0) #6
  %25 = icmp sgt i32 %23, -1
  br i1 %25, label %26, label %92

26:                                               ; preds = %20
  %27 = load i32, ptr %4, align 4
  %28 = add i32 %27, 7
  %29 = lshr i32 %28, 2
  %30 = and i32 %29, 1073741822
  %31 = add nuw nsw i32 %30, 3
  %32 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %31, i32 4) #6
  %33 = extractvalue { i32, i1 } %32, 1
  %34 = extractvalue { i32, i1 } %32, 0
  %35 = call i32 @llvm.uadd.sat.i32(i32 %34, i32 452) #6
  %36 = select i1 %33, i32 -1, i32 %35
  %37 = call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef %36, i32 noundef 3520) #6
  %38 = icmp eq ptr %37, null
  br i1 %38, label %92, label %39

39:                                               ; preds = %26
  %40 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  %41 = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %37, i32 0, i32 3
  store ptr %40, ptr %41, align 4
  %42 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = ptrtoint ptr %40 to i32
  br label %92

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %37, i32 0, i32 4
  store i32 0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load ptr, ptr %5, align 4
  br label %52

52:                                               ; preds = %50, %45
  %53 = phi ptr [ %51, %50 ], [ %48, %45 ]
  store ptr %53, ptr %37, align 4
  %54 = getelementptr inbounds %struct.gpio_chip, ptr %37, i32 0, i32 2
  store ptr %5, ptr %54, align 4
  %55 = getelementptr inbounds %struct.gpio_chip, ptr %37, i32 0, i32 5
  store ptr @gpiochip_generic_request, ptr %55, align 4
  %56 = getelementptr inbounds %struct.gpio_chip, ptr %37, i32 0, i32 6
  store ptr @gpiochip_generic_free, ptr %56, align 4
  %57 = getelementptr inbounds %struct.gpio_chip, ptr %37, i32 0, i32 7
  store ptr @uniphier_gpio_get_direction, ptr %57, align 4
  %58 = getelementptr inbounds %struct.gpio_chip, ptr %37, i32 0, i32 8
  store ptr @uniphier_gpio_direction_input, ptr %58, align 4
  %59 = getelementptr inbounds %struct.gpio_chip, ptr %37, i32 0, i32 9
  store ptr @uniphier_gpio_direction_output, ptr %59, align 4
  %60 = getelementptr inbounds %struct.gpio_chip, ptr %37, i32 0, i32 10
  store ptr @uniphier_gpio_get, ptr %60, align 4
  %61 = getelementptr inbounds %struct.gpio_chip, ptr %37, i32 0, i32 12
  store ptr @uniphier_gpio_set, ptr %61, align 4
  %62 = getelementptr inbounds %struct.gpio_chip, ptr %37, i32 0, i32 13
  store ptr @uniphier_gpio_set_multiple, ptr %62, align 4
  %63 = getelementptr inbounds %struct.gpio_chip, ptr %37, i32 0, i32 15
  store ptr @uniphier_gpio_to_irq, ptr %63, align 4
  %64 = getelementptr inbounds %struct.gpio_chip, ptr %37, i32 0, i32 19
  store i32 -1, ptr %64, align 4
  %65 = load i32, ptr %4, align 4
  %66 = trunc i32 %65 to i16
  %67 = getelementptr inbounds %struct.gpio_chip, ptr %37, i32 0, i32 20
  store i16 %66, ptr %67, align 4
  br i1 %49, label %68, label %70

68:                                               ; preds = %52
  %69 = load ptr, ptr %5, align 4
  br label %70

70:                                               ; preds = %68, %52
  %71 = phi ptr [ %69, %68 ], [ %48, %52 ]
  %72 = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %37, i32 0, i32 1, i32 1
  store ptr %71, ptr %72, align 4
  %73 = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %37, i32 0, i32 1, i32 7
  store ptr @uniphier_gpio_irq_mask, ptr %73, align 4
  %74 = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %37, i32 0, i32 1, i32 9
  store ptr @uniphier_gpio_irq_unmask, ptr %74, align 4
  %75 = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %37, i32 0, i32 1, i32 10
  store ptr @irq_chip_eoi_parent, ptr %75, align 4
  %76 = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %37, i32 0, i32 1, i32 11
  store ptr @irq_chip_set_affinity_parent, ptr %76, align 4
  %77 = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %37, i32 0, i32 1, i32 13
  store ptr @uniphier_gpio_irq_set_type, ptr %77, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  call void @arm_heavy_mb() #6
  %78 = load ptr, ptr %41, align 4
  %79 = getelementptr i8, ptr %78, i32 156
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 255) #6, !srcloc !10
  %80 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %5, ptr noundef nonnull %37, ptr noundef nonnull %37, ptr noundef null, ptr noundef null) #6
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %70
  %83 = load ptr, ptr %6, align 8
  %84 = icmp eq ptr %83, null
  %85 = getelementptr inbounds %struct.device_node, ptr %83, i32 0, i32 3
  %86 = select i1 %84, ptr null, ptr %85
  %87 = call ptr @irq_domain_create_hierarchy(ptr noundef nonnull %21, i32 noundef 0, i32 noundef 24, ptr noundef %86, ptr noundef nonnull @uniphier_gpio_irq_domain_ops, ptr noundef nonnull %37) #6
  %88 = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %37, i32 0, i32 2
  store ptr %87, ptr %88, align 4
  %89 = icmp eq ptr %87, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %37, ptr %91, align 8
  br label %92

92:                                               ; preds = %90, %82, %70, %43, %26, %20, %16, %1
  %93 = phi i32 [ %44, %43 ], [ 0, %90 ], [ -6, %1 ], [ -517, %16 ], [ %24, %20 ], [ -12, %26 ], [ %80, %70 ], [ -12, %82 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_gpio_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @irq_domain_remove(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_irq_find_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_gpio_get_direction(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %4 = and i32 %1, -8
  %5 = and i32 %1, 7
  %6 = add i32 %4, 8
  %7 = icmp ugt i32 %6, 143
  %8 = add i32 %4, 24
  %9 = select i1 %7, i32 %8, i32 %6
  %10 = or i32 %9, 4
  %11 = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %3, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 %10
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %15 = lshr i32 %14, %5
  %16 = and i32 %15, 1
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_gpio_direction_input(ptr noundef %0, i32 noundef %1) #2 {
  %3 = and i32 %1, -8
  %4 = and i32 %1, 7
  %5 = shl nuw nsw i32 1, %4
  %6 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %7 = add i32 %3, 8
  %8 = icmp ugt i32 %7, 143
  %9 = add i32 %3, 24
  %10 = select i1 %8, i32 %9, i32 %7
  %11 = or i32 %10, 4
  %12 = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %6, i32 0, i32 4
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #6
  %14 = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %6, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 %11
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  %18 = or i32 %17, %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !14
  tail call void @arm_heavy_mb() #6
  %19 = load ptr, ptr %14, align 4
  %20 = getelementptr i8, ptr %19, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #6, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_gpio_direction_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = and i32 %1, -8
  %5 = and i32 %1, 7
  %6 = shl nuw nsw i32 1, %5
  %7 = icmp eq i32 %2, 0
  %8 = select i1 %7, i32 0, i32 %6
  %9 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %10 = add i32 %4, 8
  %11 = icmp ugt i32 %10, 143
  %12 = add i32 %4, 24
  %13 = select i1 %11, i32 %12, i32 %10
  %14 = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %9, i32 0, i32 4
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #6
  %16 = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %9, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 %13
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  %20 = xor i32 %6, -1
  %21 = and i32 %19, %20
  %22 = or i32 %21, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !14
  tail call void @arm_heavy_mb() #6
  %23 = load ptr, ptr %16, align 4
  %24 = getelementptr i8, ptr %23, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #6, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #6
  %25 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %26 = or i32 %13, 4
  %27 = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %25, i32 0, i32 4
  %28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %27) #6
  %29 = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %25, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 %26
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  %33 = and i32 %32, %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !14
  tail call void @arm_heavy_mb() #6
  %34 = load ptr, ptr %29, align 4
  %35 = getelementptr i8, ptr %34, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #6, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %27, i32 noundef %28) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_gpio_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %4 = and i32 %1, -8
  %5 = and i32 %1, 7
  %6 = add i32 %4, 8
  %7 = icmp ugt i32 %6, 143
  %8 = add i32 %4, 24
  %9 = select i1 %7, i32 %8, i32 %6
  %10 = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %3, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 %9
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %14 = lshr i32 %13, %5
  %15 = and i32 %14, 1
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uniphier_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = and i32 %1, -8
  %5 = and i32 %1, 7
  %6 = shl nuw nsw i32 1, %5
  %7 = icmp eq i32 %2, 0
  %8 = select i1 %7, i32 0, i32 %6
  %9 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %10 = add i32 %4, 8
  %11 = icmp ugt i32 %10, 143
  %12 = add i32 %4, 24
  %13 = select i1 %11, i32 %12, i32 %10
  %14 = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %9, i32 0, i32 4
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #6
  %16 = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %9, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 %13
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  %20 = xor i32 %6, -1
  %21 = and i32 %19, %20
  %22 = or i32 %21, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !14
  tail call void @arm_heavy_mb() #6
  %23 = load ptr, ptr %16, align 4
  %24 = getelementptr i8, ptr %23, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #6, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uniphier_gpio_set_multiple(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 20
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = call i32 @find_next_clump8(ptr noundef nonnull %4, ptr noundef %1, i32 noundef %7, i32 noundef 0) #6
  %9 = load i16, ptr %5, align 4
  %10 = zext i16 %9 to i32
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %49

12:                                               ; preds = %41, %3
  %13 = phi i32 [ %45, %41 ], [ %8, %3 ]
  %14 = lshr i32 %13, 5
  %15 = getelementptr i32, ptr %2, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr %4, align 4
  %18 = call ptr @gpiochip_get_data(ptr noundef %0) #6
  %19 = icmp eq i32 %17, 0
  br i1 %19, label %41, label %20

20:                                               ; preds = %12
  %21 = and i32 %13, 31
  %22 = lshr i32 %16, %21
  %23 = and i32 %22, 255
  %24 = and i32 %13, -8
  %25 = add i32 %24, 8
  %26 = icmp ugt i32 %25, 143
  %27 = add i32 %24, 24
  %28 = select i1 %26, i32 %27, i32 %25
  %29 = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %18, i32 0, i32 4
  %30 = call i32 @_raw_spin_lock_irqsave(ptr noundef %29) #6
  %31 = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %18, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 %28
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #6, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  %35 = xor i32 %17, -1
  %36 = and i32 %34, %35
  %37 = and i32 %23, %17
  %38 = or i32 %36, %37
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !14
  call void @arm_heavy_mb() #6
  %39 = load ptr, ptr %31, align 4
  %40 = getelementptr i8, ptr %39, i32 %28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #6, !srcloc !10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %30) #6
  br label %41

41:                                               ; preds = %20, %12
  %42 = load i16, ptr %5, align 4
  %43 = zext i16 %42 to i32
  %44 = add i32 %13, 8
  %45 = call i32 @find_next_clump8(ptr noundef nonnull %4, ptr noundef %1, i32 noundef %43, i32 noundef %44) #6
  %46 = load i16, ptr %5, align 4
  %47 = zext i16 %46 to i32
  %48 = icmp ult i32 %45, %47
  br i1 %48, label %12, label %49

49:                                               ; preds = %41, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_gpio_to_irq(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca %struct.irq_fwspec, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #6
  %4 = getelementptr inbounds i8, ptr %3, i32 16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 56, i1 false), !annotation !8
  %5 = icmp ult i32 %1, 120
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct.device_node, ptr %10, i32 0, i32 3
  %13 = select i1 %11, ptr null, ptr %12
  store ptr %13, ptr %3, align 4
  %14 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 1
  store i32 2, ptr %14, align 4
  %15 = add i32 %1, -120
  %16 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 2
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 2, i32 1
  store i32 4, ptr %17, align 4
  %18 = call i32 @irq_create_fwspec_mapping(ptr noundef nonnull %3) #6
  br label %19

19:                                               ; preds = %6, %2
  %20 = phi i32 [ %18, %6 ], [ -6, %2 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #6
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uniphier_gpio_irq_mask(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = shl nuw i32 1, %5
  %7 = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %3, i32 0, i32 4
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #6
  %9 = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %3, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 144
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  %13 = xor i32 %6, -1
  %14 = and i32 %12, %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !14
  tail call void @arm_heavy_mb() #6
  %15 = load ptr, ptr %9, align 4
  %16 = getelementptr i8, ptr %15, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #6, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #6
  tail call void @irq_chip_mask_parent(ptr noundef %0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uniphier_gpio_irq_unmask(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = shl nuw i32 1, %5
  %7 = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %3, i32 0, i32 4
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #6
  %9 = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %3, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 144
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  %13 = or i32 %12, %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !14
  tail call void @arm_heavy_mb() #6
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr i8, ptr %14, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #6, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #6
  tail call void @irq_chip_unmask_parent(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_gpio_irq_set_type(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = shl nuw i32 1, %6
  %8 = icmp eq i32 %1, 3
  %9 = select i1 %8, i32 2, i32 %1
  %10 = select i1 %8, i32 %7, i32 0
  %11 = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %4, i32 0, i32 4
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #6
  %13 = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %4, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 148
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  %17 = xor i32 %7, -1
  %18 = and i32 %16, %17
  %19 = or i32 %18, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !14
  tail call void @arm_heavy_mb() #6
  %20 = load ptr, ptr %13, align 4
  %21 = getelementptr i8, ptr %20, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #6, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #6
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #6
  %23 = load ptr, ptr %13, align 4
  %24 = getelementptr i8, ptr %23, i32 152
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  %26 = and i32 %25, %17
  %27 = or i32 %26, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !14
  tail call void @arm_heavy_mb() #6
  %28 = load ptr, ptr %13, align 4
  %29 = getelementptr i8, ptr %28, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #6, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %22) #6
  %30 = tail call i32 @irq_chip_set_type_parent(ptr noundef %0, i32 noundef %9) #6
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @find_next_clump8(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_fwspec_mapping(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_gpio_irq_domain_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_fwspec, align 4
  %7 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #6
  %9 = getelementptr inbounds i8, ptr %6, i32 16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %9, i8 0, i32 56, i1 false), !annotation !8
  %10 = icmp eq i32 %2, 1
  br i1 %10, label %12, label %11, !prof !15

11:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 268, i32 noundef 9, ptr noundef null) #6
  br label %73

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %17, !prof !16

16:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 9, ptr noundef null) #6
  br label %73

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr %struct.irq_fwspec, ptr %3, i32 0, i32 2, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 15
  %23 = getelementptr inbounds %struct.gpio_chip, ptr %8, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 25
  %26 = load ptr, ptr %25, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  %27 = call ptr @of_get_property(ptr noundef %26, ptr noundef nonnull @.str.3, ptr noundef nonnull %5) #6
  %28 = icmp eq ptr %27, null
  br i1 %28, label %49, label %29

29:                                               ; preds = %17
  %30 = load i32, ptr %5, align 4
  %31 = lshr i32 %30, 2
  store i32 %31, ptr %5, align 4
  %32 = icmp ugt i32 %30, 11
  br i1 %32, label %33, label %49

33:                                               ; preds = %46, %29
  %34 = phi ptr [ %38, %46 ], [ %27, %29 ]
  %35 = phi i32 [ %47, %46 ], [ %31, %29 ]
  %36 = load i32, ptr %34, align 4
  %37 = call i32 @llvm.bswap.i32(i32 %36) #6
  %38 = getelementptr i32, ptr %34, i32 3
  %39 = icmp ult i32 %19, %37
  br i1 %39, label %46, label %40

40:                                               ; preds = %33
  %41 = getelementptr i32, ptr %34, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = call i32 @llvm.bswap.i32(i32 %42) #6
  %44 = add i32 %43, %37
  %45 = icmp ugt i32 %44, %19
  br i1 %45, label %51, label %46

46:                                               ; preds = %40, %33
  %47 = add nsw i32 %35, -3
  store i32 %47, ptr %5, align 4
  %48 = icmp sgt i32 %35, 5
  br i1 %48, label %33, label %49

49:                                               ; preds = %46, %29, %17
  %50 = phi i32 [ -2, %29 ], [ -22, %17 ], [ -2, %46 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  br label %73

51:                                               ; preds = %40
  %52 = getelementptr i32, ptr %34, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = call i32 @llvm.bswap.i32(i32 %53) #6
  %55 = sub i32 %19, %37
  %56 = add i32 %54, %55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %73, label %58

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 9
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.irq_domain, ptr %60, i32 0, i32 6
  %62 = load ptr, ptr %61, align 4
  store ptr %62, ptr %6, align 4
  %63 = getelementptr inbounds %struct.irq_fwspec, ptr %6, i32 0, i32 1
  store i32 2, ptr %63, align 4
  %64 = getelementptr inbounds %struct.irq_fwspec, ptr %6, i32 0, i32 2
  store i32 %56, ptr %64, align 4
  %65 = icmp eq i32 %22, 3
  %66 = select i1 %65, i32 2, i32 %22
  %67 = getelementptr inbounds %struct.irq_fwspec, ptr %6, i32 0, i32 2, i32 1
  store i32 %66, ptr %67, align 4
  %68 = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %8, i32 0, i32 1
  %69 = call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %0, i32 noundef %1, i32 noundef %19, ptr noundef %68, ptr noundef %8) #6
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %58
  %72 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %0, i32 noundef %1, i32 noundef 1, ptr noundef nonnull %6) #6
  br label %73

73:                                               ; preds = %71, %58, %51, %49, %16, %11
  %74 = phi i32 [ -22, %11 ], [ %72, %71 ], [ -22, %16 ], [ %56, %51 ], [ %69, %58 ], [ %50, %49 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #6
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_gpio_irq_domain_activate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #2 {
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 120
  %9 = tail call i32 @gpiochip_lock_as_irq(ptr noundef %5, i32 noundef %8) #6
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uniphier_gpio_irq_domain_deactivate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, 120
  tail call void @gpiochip_unlock_as_irq(ptr noundef %4, i32 noundef %7) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_gpio_irq_domain_translate(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %8, label %9, !prof !16

8:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 9, ptr noundef null) #6
  br label %15

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %2, align 4
  %12 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 15
  store i32 %14, ptr %3, align 4
  br label %15

15:                                               ; preds = %9, %8
  %16 = phi i32 [ -22, %8 ], [ 0, %9 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_lock_as_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_unlock_as_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_gpio_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 20
  %5 = load i16, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %3, i32 0, i32 5
  %7 = icmp eq i16 %5, 0
  br i1 %7, label %31, label %8

8:                                                ; preds = %1
  %9 = zext i16 %5 to i32
  %10 = add nuw nsw i32 %9, 7
  %11 = lshr i32 %10, 3
  %12 = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %3, i32 0, i32 3
  br label %13

13:                                               ; preds = %13, %8
  %14 = phi ptr [ %6, %8 ], [ %28, %13 ]
  %15 = phi i32 [ 0, %8 ], [ %29, %13 ]
  %16 = shl i32 %15, 3
  %17 = icmp ugt i32 %16, 135
  %18 = select i1 %17, i32 24, i32 8
  %19 = add nuw nsw i32 %16, %18
  %20 = load ptr, ptr %12, align 4
  %21 = getelementptr i8, ptr %20, i32 %19
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !17
  %23 = getelementptr i32, ptr %14, i32 1
  store i32 %22, ptr %14, align 4
  %24 = load ptr, ptr %12, align 4
  %25 = getelementptr i8, ptr %24, i32 4
  %26 = getelementptr i8, ptr %25, i32 %19
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !18
  %28 = getelementptr i32, ptr %14, i32 2
  store i32 %27, ptr %23, align 4
  %29 = add nuw nsw i32 %15, 1
  %30 = icmp eq i32 %29, %11
  br i1 %30, label %31, label %13

31:                                               ; preds = %13, %1
  %32 = phi ptr [ %6, %1 ], [ %28, %13 ]
  %33 = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %3, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 144
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !19
  %37 = getelementptr i32, ptr %32, i32 1
  store i32 %36, ptr %32, align 4
  %38 = load ptr, ptr %33, align 4
  %39 = getelementptr i8, ptr %38, i32 148
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !20
  %41 = getelementptr i32, ptr %32, i32 2
  store i32 %40, ptr %37, align 4
  %42 = load ptr, ptr %33, align 4
  %43 = getelementptr i8, ptr %42, i32 152
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !21
  store i32 %44, ptr %41, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_gpio_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 20
  %5 = load i16, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %3, i32 0, i32 5
  %7 = icmp eq i16 %5, 0
  br i1 %7, label %31, label %8

8:                                                ; preds = %1
  %9 = zext i16 %5 to i32
  %10 = add nuw nsw i32 %9, 7
  %11 = lshr i32 %10, 3
  %12 = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %3, i32 0, i32 3
  br label %13

13:                                               ; preds = %13, %8
  %14 = phi i32 [ 0, %8 ], [ %29, %13 ]
  %15 = phi ptr [ %6, %8 ], [ %24, %13 ]
  %16 = shl i32 %14, 3
  %17 = icmp ugt i32 %16, 135
  %18 = select i1 %17, i32 24, i32 8
  %19 = add nuw nsw i32 %16, %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %20 = getelementptr i32, ptr %15, i32 1
  %21 = load i32, ptr %15, align 4
  %22 = load ptr, ptr %12, align 4
  %23 = getelementptr i8, ptr %22, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #6, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  %24 = getelementptr i32, ptr %15, i32 2
  %25 = load i32, ptr %20, align 4
  %26 = load ptr, ptr %12, align 4
  %27 = getelementptr i8, ptr %26, i32 4
  %28 = getelementptr i8, ptr %27, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %25) #6, !srcloc !10
  %29 = add nuw nsw i32 %14, 1
  %30 = icmp eq i32 %29, %11
  br i1 %30, label %31, label %13

31:                                               ; preds = %13, %1
  %32 = phi ptr [ %6, %1 ], [ %24, %13 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  %33 = getelementptr i32, ptr %32, i32 1
  %34 = load i32, ptr %32, align 4
  %35 = getelementptr inbounds %struct.uniphier_gpio_priv, ptr %3, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %36, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %34) #6, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !25
  tail call void @arm_heavy_mb() #6
  %38 = getelementptr i32, ptr %32, i32 2
  %39 = load i32, ptr %33, align 4
  %40 = load ptr, ptr %35, align 4
  %41 = getelementptr i8, ptr %40, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #6, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !26
  tail call void @arm_heavy_mb() #6
  %42 = load i32, ptr %38, align 4
  %43 = load ptr, ptr %35, align 4
  %44 = getelementptr i8, ptr %43, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #6, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  %45 = load ptr, ptr %35, align 4
  %46 = getelementptr i8, ptr %45, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 255) #6, !srcloc !10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

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
!9 = !{i64 2152364611}
!10 = !{i64 3686306}
!11 = !{i64 3686724}
!12 = !{i64 2152362176}
!13 = !{i64 2152361512}
!14 = !{i64 2152361696}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2152366369}
!18 = !{i64 2152366722}
!19 = !{i64 2152367061}
!20 = !{i64 2152367400}
!21 = !{i64 2152367739}
!22 = !{i64 2152367964}
!23 = !{i64 2152368301}
!24 = !{i64 2152368634}
!25 = !{i64 2152368962}
!26 = !{i64 2152369290}
