; ModuleID = '/llk/IR/drivers/irqchip/irq-meson-gpio.c_pt.bc'
source_filename = "../drivers/irqchip/irq-meson-gpio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.meson_gpio_irq_params = type { i32, i8, i32, i32, i32, i32, %struct.irq_ctl_ops }
%struct.irq_ctl_ops = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.meson_gpio_irq_controller = type { ptr, ptr, [8 x i32], [1 x i32], %struct.spinlock }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_irq_meson_gpio__166_524_meson_gpio_intc_driver_init6 = internal global ptr @meson_gpio_intc_driver_init, section ".initcall6.init", align 4
@__UNIQUE_ID_author167 = internal constant [59 x i8] c"irq_meson_gpio.author=Jerome Brunet <jbrunet@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file168 = internal constant [51 x i8] c"irq_meson_gpio.file=drivers/irqchip/irq-meson-gpio\00", section ".modinfo", align 1
@__UNIQUE_ID_license169 = internal constant [30 x i8] c"irq_meson_gpio.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias170 = internal constant [46 x i8] c"irq_meson_gpio.alias=platform:meson-gpio-intc\00", section ".modinfo", align 1
@meson_gpio_intc_driver = internal global %struct.platform_driver { ptr @platform_irqchip_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @meson_gpio_intc_irqchip_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [16 x i8] c"meson_gpio_intc\00", align 1
@meson_gpio_intc_irqchip_match_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gpio-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_gpio_irq_of_init }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"\013irq_meson_gpio: missing parent interrupt node\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"\013irq_meson_gpio: unable to obtain parent domain\0A\00", align 1
@meson_gpio_irq_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @meson_gpio_irq_domain_alloc, ptr @meson_gpio_irq_domain_free, ptr null, ptr null, ptr @meson_gpio_irq_domain_translate }, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"\013irq_meson_gpio: failed to add domain\0A\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"\016irq_meson_gpio: %d to %d gpio interrupt mux initialized\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@meson_irq_gpio_matches = internal constant [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8-gpio-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson8_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8b-gpio-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson8b_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxbb-gpio-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gxbb_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxl-gpio-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gxl_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-axg-gpio-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @axg_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-g12a-gpio-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @axg_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-sm1-gpio-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm1_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-a1-gpio-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @a1_params }, %struct.of_device_id zeroinitializer], align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"amlogic,channel-interrupts\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"\013irq_meson_gpio: can't get %d channel interrupts\0A\00", align 1
@meson8_params = internal constant %struct.meson_gpio_irq_params { i32 134, i8 0, i32 0, i32 0, i32 16, i32 255, %struct.irq_ctl_ops { ptr @meson8_gpio_irq_sel_pin, ptr @meson_gpio_irq_init_dummy } }, align 4
@meson8b_params = internal constant %struct.meson_gpio_irq_params { i32 119, i8 0, i32 0, i32 0, i32 16, i32 255, %struct.irq_ctl_ops { ptr @meson8_gpio_irq_sel_pin, ptr @meson_gpio_irq_init_dummy } }, align 4
@gxbb_params = internal constant %struct.meson_gpio_irq_params { i32 133, i8 0, i32 0, i32 0, i32 16, i32 255, %struct.irq_ctl_ops { ptr @meson8_gpio_irq_sel_pin, ptr @meson_gpio_irq_init_dummy } }, align 4
@gxl_params = internal constant %struct.meson_gpio_irq_params { i32 110, i8 0, i32 0, i32 0, i32 16, i32 255, %struct.irq_ctl_ops { ptr @meson8_gpio_irq_sel_pin, ptr @meson_gpio_irq_init_dummy } }, align 4
@axg_params = internal constant %struct.meson_gpio_irq_params { i32 100, i8 0, i32 0, i32 0, i32 16, i32 255, %struct.irq_ctl_ops { ptr @meson8_gpio_irq_sel_pin, ptr @meson_gpio_irq_init_dummy } }, align 4
@sm1_params = internal constant %struct.meson_gpio_irq_params { i32 100, i8 1, i32 8, i32 0, i32 16, i32 255, %struct.irq_ctl_ops { ptr @meson8_gpio_irq_sel_pin, ptr @meson_gpio_irq_init_dummy } }, align 4
@a1_params = internal constant %struct.meson_gpio_irq_params { i32 62, i8 1, i32 16, i32 8, i32 0, i32 127, %struct.irq_ctl_ops { ptr @meson_a1_gpio_irq_sel_pin, ptr @meson_a1_gpio_irq_init } }, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"drivers/irqchip/irq-meson-gpio.c\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"\013irq_meson_gpio: failed to allocate gic irq %u\0A\00", align 1
@meson_gpio_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.10, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irq_chip_mask_parent, ptr null, ptr @irq_chip_unmask_parent, ptr @irq_chip_eoi_parent, ptr @irq_chip_set_affinity_parent, ptr @irq_chip_retrigger_hierarchy, ptr @meson_gpio_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1 }, align 4
@.str.9 = private unnamed_addr constant [40 x i8] c"\013irq_meson_gpio: No channel available\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"meson-gpio-irqchip\00", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_alias170, ptr @__UNIQUE_ID_author167, ptr @__UNIQUE_ID_file168, ptr @__UNIQUE_ID_license169, ptr @__initcall__kmod_irq_meson_gpio__166_524_meson_gpio_intc_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @meson_gpio_intc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson_gpio_intc_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irqchip_probe(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_gpio_irq_of_init(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.irq_fwspec, align 4
  %4 = alloca %struct.irq_fwspec, align 4
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #10
  br label %62

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #9
  %10 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %10, i8 0, i64 68, i1 false) #9
  store ptr %9, ptr %4, align 4
  %11 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %4, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #9
  %14 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %14, i8 0, i64 68, i1 false) #9
  store ptr %9, ptr %3, align 4
  %15 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %3, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  br label %62

19:                                               ; preds = %13, %8
  %20 = phi ptr [ %15, %13 ], [ %11, %8 ]
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %22 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 48) #11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %62, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.meson_gpio_irq_controller, ptr %22, i32 0, i32 4
  store i32 0, ptr %25, align 4
  %26 = call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #9
  %27 = getelementptr inbounds %struct.meson_gpio_irq_controller, ptr %22, i32 0, i32 1
  store ptr %26, ptr %27, align 4
  %28 = icmp eq ptr %26, null
  br i1 %28, label %60, label %29

29:                                               ; preds = %24
  %30 = call ptr @of_match_node(ptr noundef nonnull @meson_irq_gpio_matches, ptr noundef %0) #9
  %31 = icmp eq ptr %30, null
  br i1 %31, label %57, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.of_device_id, ptr %30, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  store ptr %34, ptr %22, align 8
  %35 = getelementptr inbounds %struct.meson_gpio_irq_controller, ptr %22, i32 0, i32 2
  %36 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %35, i32 noundef 8, i32 noundef 8) #9
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 8) #10
  br label %57

40:                                               ; preds = %32
  %41 = load ptr, ptr %22, align 8
  %42 = getelementptr inbounds %struct.meson_gpio_irq_params, ptr %41, i32 0, i32 6, i32 1
  %43 = load ptr, ptr %42, align 4
  call void %43(ptr noundef nonnull %22) #9
  %44 = load ptr, ptr %22, align 8
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq ptr %0, null
  %47 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %48 = select i1 %46, ptr null, ptr %47
  %49 = call ptr @irq_domain_create_hierarchy(ptr noundef nonnull %20, i32 noundef 0, i32 noundef %45, ptr noundef %48, ptr noundef nonnull @meson_gpio_irq_domain_ops, ptr noundef nonnull %22) #9
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #10
  br label %57

53:                                               ; preds = %40
  %54 = load ptr, ptr %22, align 8
  %55 = load i32, ptr %54, align 4
  %56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %55, i32 noundef 8) #10
  br label %62

57:                                               ; preds = %51, %38, %29
  %58 = phi i32 [ -19, %51 ], [ -19, %29 ], [ %36, %38 ]
  %59 = load ptr, ptr %27, align 4
  call void @iounmap(ptr noundef %59) #9
  br label %60

60:                                               ; preds = %57, %24
  %61 = phi i32 [ %58, %57 ], [ -12, %24 ]
  call void @kfree(ptr noundef nonnull %22) #9
  br label %62

62:                                               ; preds = %60, %53, %19, %17, %6
  %63 = phi i32 [ %61, %60 ], [ 0, %53 ], [ -6, %17 ], [ -19, %6 ], [ -12, %19 ]
  ret i32 %63
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meson8_gpio_irq_sel_pin(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = icmp ult i32 %1, 4
  %5 = select i1 %4, i32 4, i32 8
  %6 = shl i32 %1, 3
  %7 = and i32 %6, 24
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.meson_gpio_irq_params, ptr %8, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 %10, %7
  %12 = shl i32 %2, %7
  %13 = getelementptr inbounds %struct.meson_gpio_irq_controller, ptr %0, i32 0, i32 4
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #9
  %15 = getelementptr inbounds %struct.meson_gpio_irq_controller, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 %5
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !8
  %19 = xor i32 %11, -1
  %20 = and i32 %18, %19
  %21 = or i32 %20, %12
  %22 = load ptr, ptr %15, align 4
  %23 = getelementptr i8, ptr %22, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #9, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %14) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @meson_gpio_irq_init_dummy(ptr nocapture noundef %0) #7 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meson_a1_gpio_irq_sel_pin(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = shl i32 %1, 4
  %5 = and i32 %4, 16
  %6 = shl i32 %1, 1
  %7 = add i32 %6, 4
  %8 = and i32 %7, -4
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.meson_gpio_irq_params, ptr %9, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = shl i32 %11, %5
  %13 = shl i32 %2, %5
  %14 = getelementptr inbounds %struct.meson_gpio_irq_controller, ptr %0, i32 0, i32 4
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #9
  %16 = getelementptr inbounds %struct.meson_gpio_irq_controller, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 %8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #9, !srcloc !8
  %20 = xor i32 %12, -1
  %21 = and i32 %19, %20
  %22 = or i32 %21, %13
  %23 = load ptr, ptr %16, align 4
  %24 = getelementptr i8, ptr %23, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #9, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meson_a1_gpio_irq_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.meson_gpio_irq_controller, ptr %0, i32 0, i32 4
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #9
  %4 = getelementptr inbounds %struct.meson_gpio_irq_controller, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !8
  %7 = or i32 %6, -2147483648
  %8 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %7) #9, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_gpio_irq_domain_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #2 {
  %5 = alloca %struct.irq_fwspec, align 4
  %6 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq i32 %2, 1
  br i1 %8, label %10, label %9, !prof !10

9:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 389, i32 noundef 9, ptr noundef null) #9
  br label %62

10:                                               ; preds = %4
  %11 = load ptr, ptr %3, align 4
  %12 = icmp eq ptr %11, null
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  %14 = or i1 %12, %13
  br i1 %14, label %62, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.fwnode_handle, ptr %11, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, @of_fwnode_ops
  br i1 %18, label %19, label %62

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %62

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr %struct.irq_fwspec, ptr %3, i32 0, i32 2, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.meson_gpio_irq_controller, ptr %7, i32 0, i32 4
  %29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %28) #9
  %30 = getelementptr inbounds %struct.meson_gpio_irq_controller, ptr %7, i32 0, i32 3
  %31 = tail call i32 @_find_first_zero_bit_le(ptr noundef %30, i32 noundef 8) #9
  %32 = icmp ugt i32 %31, 7
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %29) #9
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #10
  br label %62

35:                                               ; preds = %23
  tail call void @_set_bit(i32 noundef %31, ptr noundef %30) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %29) #9
  %36 = load ptr, ptr %7, align 4
  %37 = getelementptr inbounds %struct.meson_gpio_irq_params, ptr %36, i32 0, i32 6
  %38 = load ptr, ptr %37, align 4
  tail call void %38(ptr noundef %7, i32 noundef %31, i32 noundef %25) #9
  %39 = getelementptr %struct.meson_gpio_irq_controller, ptr %7, i32 0, i32 2, i32 %31
  %40 = load i32, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #9
  %41 = getelementptr inbounds i8, ptr %5, i32 20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %41, i8 0, i32 52, i1 false) #9, !annotation !11
  %42 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 9
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.irq_domain, ptr %43, i32 0, i32 6
  %45 = load ptr, ptr %44, align 4
  store ptr %45, ptr %5, align 4
  %46 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 1
  store i32 3, ptr %46, align 4
  %47 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2
  store i32 0, ptr %47, align 4
  %48 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2, i32 1
  store i32 %40, ptr %48, align 4
  %49 = and i32 %27, -16
  %50 = and i32 %27, 12
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %51, i32 1, i32 4
  %53 = or i32 %52, %49
  %54 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2, i32 2
  store i32 %53, ptr %54, align 4
  %55 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %0, i32 noundef %1, i32 noundef 1, ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #9
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %35
  %58 = load i32, ptr %39, align 4
  %59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %58) #10
  call void @_clear_bit(i32 noundef %31, ptr noundef %30) #9
  br label %62

60:                                               ; preds = %35
  %61 = call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %0, i32 noundef %1, i32 noundef %25, ptr noundef nonnull @meson_gpio_irq_chip, ptr noundef %39) #9
  br label %62

62:                                               ; preds = %60, %57, %33, %19, %15, %10, %9
  %63 = phi i32 [ -22, %9 ], [ %55, %57 ], [ 0, %60 ], [ -28, %33 ], [ -22, %19 ], [ -22, %15 ], [ -22, %10 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meson_gpio_irq_domain_free(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = icmp eq i32 %2, 1
  br i1 %4, label %6, label %5, !prof !10

5:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 422, i32 noundef 9, ptr noundef null) #9
  br label %18

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  tail call void @irq_domain_free_irqs_parent(ptr noundef %0, i32 noundef %1, i32 noundef 1) #9
  %9 = tail call ptr @irq_domain_get_irq_data(ptr noundef %0, i32 noundef %1) #9
  %10 = getelementptr inbounds %struct.irq_data, ptr %9, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.meson_gpio_irq_controller, ptr %8, i32 0, i32 2
  %13 = ptrtoint ptr %11 to i32
  %14 = ptrtoint ptr %12 to i32
  %15 = sub i32 %13, %14
  %16 = ashr exact i32 %15, 2
  %17 = getelementptr inbounds %struct.meson_gpio_irq_controller, ptr %8, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef %16, ptr noundef %17) #9
  br label %18

18:                                               ; preds = %6, %5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @meson_gpio_irq_domain_translate(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #8 {
  %5 = load ptr, ptr %1, align 4
  %6 = icmp eq ptr %5, null
  %7 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %8 = or i1 %6, %7
  br i1 %8, label %22, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.fwnode_handle, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @of_fwnode_ops
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr %2, align 4
  %20 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 1
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr %3, align 4
  br label %22

22:                                               ; preds = %17, %13, %9, %4
  %23 = phi i32 [ 0, %17 ], [ -22, %13 ], [ -22, %9 ], [ -22, %4 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_retrigger_hierarchy(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_gpio_irq_set_type(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_domain, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.meson_gpio_irq_controller, ptr %6, i32 0, i32 2
  %11 = ptrtoint ptr %8 to i32
  %12 = ptrtoint ptr %10 to i32
  %13 = sub i32 %11, %12
  %14 = ashr exact i32 %13, 2
  %15 = and i32 %1, 15
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.meson_gpio_irq_params, ptr %9, i32 0, i32 1
  %19 = load i8, ptr %18, align 4, !range !12
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %75, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.meson_gpio_irq_params, ptr %9, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, %14
  %25 = shl nuw i32 1, %24
  br label %44

26:                                               ; preds = %2
  %27 = and i32 %1, 3
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.meson_gpio_irq_params, ptr %9, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, %14
  %33 = shl nuw i32 1, %32
  br label %34

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ 0, %26 ]
  %36 = and i32 %1, 10
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.meson_gpio_irq_params, ptr %9, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, %14
  %42 = shl nuw i32 1, %41
  %43 = or i32 %42, %35
  br label %44

44:                                               ; preds = %38, %34, %21
  %45 = phi i32 [ %25, %21 ], [ %43, %38 ], [ %35, %34 ]
  %46 = getelementptr inbounds %struct.meson_gpio_irq_params, ptr %9, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, %14
  %49 = shl nuw i32 1, %48
  %50 = getelementptr inbounds %struct.meson_gpio_irq_params, ptr %9, i32 0, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, %14
  %53 = shl nuw i32 1, %52
  %54 = or i32 %53, %49
  %55 = getelementptr inbounds %struct.meson_gpio_irq_params, ptr %9, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, %14
  %58 = shl nuw i32 1, %57
  %59 = or i32 %54, %58
  %60 = getelementptr inbounds %struct.meson_gpio_irq_controller, ptr %6, i32 0, i32 4
  %61 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %60) #9
  %62 = getelementptr inbounds %struct.meson_gpio_irq_controller, ptr %6, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #9, !srcloc !8
  %65 = xor i32 %59, -1
  %66 = and i32 %64, %65
  %67 = or i32 %66, %45
  %68 = load ptr, ptr %62, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %67) #9, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %60, i32 noundef %61) #9
  %69 = and i32 %1, -16
  %70 = and i32 %1, 12
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %71, i32 1, i32 4
  %73 = or i32 %72, %69
  %74 = tail call i32 @irq_chip_set_type_parent(ptr noundef %0, i32 noundef %73) #9
  br label %75

75:                                               ; preds = %44, %17
  %76 = phi i32 [ %74, %44 ], [ -22, %17 ]
  ret i32 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_parent(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

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
!8 = !{i64 373554}
!9 = !{i64 373136}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"auto-init"}
!12 = !{i8 0, i8 2}
