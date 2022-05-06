; ModuleID = '/llk/IR/drivers/i2c/busses/i2c-exynos5.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-exynos5.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.exynos_hsi2c_variant = type { i32, i32 }
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
%struct.exynos5_i2c = type { %struct.i2c_adapter, ptr, %struct.completion, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }

@__initcall__kmod_i2c_exynos5__249_956_exynos5_i2c_driver_init6 = internal global ptr @exynos5_i2c_driver_init, section ".initcall6.init", align 4
@exynos5_i2c_driver = internal global %struct.platform_driver { ptr @exynos5_i2c_probe, ptr @exynos5_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos5_i2c_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos5_i2c_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_exynos5_i2c_driver_exit = internal global ptr @exynos5_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description250 = internal constant [50 x i8] c"i2c_exynos5.description=Exynos5 HS-I2C Bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author251 = internal constant [68 x i8] c"i2c_exynos5.author=Naveen Krishna Chatradhi <ch.naveen@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [57 x i8] c"i2c_exynos5.author=Taekgyun Ko <taeggyun.ko@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file253 = internal constant [48 x i8] c"i2c_exynos5.file=drivers/i2c/busses/i2c-exynos5\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [27 x i8] c"i2c_exynos5.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"exynos5-hsi2c\00", align 1
@exynos5_i2c_match = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5-hsi2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5250_hsi2c_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-hsi2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5250_hsi2c_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5260-hsi2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5260_hsi2c_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos7-hsi2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos7_hsi2c_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynosautov9-hsi2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynosautov9_hsi2c_data }, %struct.of_device_id zeroinitializer], align 4
@exynos5_i2c_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos5_i2c_suspend_noirq, ptr @exynos5_i2c_resume_noirq, ptr @exynos5_i2c_suspend_noirq, ptr @exynos5_i2c_resume_noirq, ptr @exynos5_i2c_suspend_noirq, ptr @exynos5_i2c_resume_noirq, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"exynos5-i2c\00", align 1
@exynos5_i2c_algorithm = internal constant %struct.i2c_algorithm { ptr @exynos5_i2c_xfer, ptr null, ptr null, ptr null, ptr @exynos5_i2c_func, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"hsi2c\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"cannot get clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"hsi2c_pclk\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"cannot get pclk\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"cannot request HS-I2C IRQ %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"%s timeout\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"%s clock set-up failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"HS\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"FS\00", align 1
@exynos5250_hsi2c_data = internal constant %struct.exynos_hsi2c_variant { i32 64, i32 0 }, align 4
@exynos5260_hsi2c_data = internal constant %struct.exynos_hsi2c_variant { i32 16, i32 0 }, align 4
@exynos7_hsi2c_data = internal constant %struct.exynos_hsi2c_variant { i32 16, i32 1 }, align 4
@exynosautov9_hsi2c_data = internal constant %struct.exynos_hsi2c_variant { i32 64, i32 2 }, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file253, ptr @__UNIQUE_ID_license254, ptr @__exitcall_exynos5_i2c_driver_exit, ptr @__initcall__kmod_i2c_exynos5__249_956_exynos5_i2c_driver_init6, ptr @exynos5_i2c_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @exynos5_i2c_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos5_i2c_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exynos5_i2c_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @exynos5_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos5_i2c_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 720, i32 noundef 3520) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %97, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.exynos5_i2c, ptr %5, i32 0, i32 12
  %9 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef %8, i32 noundef 1, i32 noundef 0) #7
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  store i32 100000, ptr %8, align 8
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 12
  %14 = tail call i32 @strlcpy(ptr noundef %13, ptr noundef nonnull @.str.2, i32 noundef 48) #7
  store ptr null, ptr %5, align 8
  %15 = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 2
  store ptr @exynos5_i2c_algorithm, ptr %15, align 8
  %16 = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 8
  store i32 3, ptr %16, align 8
  %17 = getelementptr inbounds %struct.exynos5_i2c, ptr %5, i32 0, i32 8
  store ptr %2, ptr %17, align 8
  %18 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.3) #7
  %19 = getelementptr inbounds %struct.exynos5_i2c, ptr %5, i32 0, i32 6
  store ptr %18, ptr %19, align 8
  %20 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #8
  br label %97

22:                                               ; preds = %12
  %23 = tail call ptr @devm_clk_get_optional(ptr noundef %2, ptr noundef nonnull @.str.5) #7
  %24 = getelementptr inbounds %struct.exynos5_i2c, ptr %5, i32 0, i32 7
  store ptr %23, ptr %24, align 4
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = ptrtoint ptr %23 to i32
  %28 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %27, ptr noundef nonnull @.str.6) #7
  br label %97

29:                                               ; preds = %22
  %30 = tail call i32 @clk_prepare(ptr noundef %23) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %97

32:                                               ; preds = %29
  %33 = tail call i32 @clk_enable(ptr noundef %23) #7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void @clk_unprepare(ptr noundef %23) #7
  br label %97

36:                                               ; preds = %32
  %37 = load ptr, ptr %19, align 8
  %38 = tail call i32 @clk_prepare(ptr noundef %37) #7
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %94

40:                                               ; preds = %36
  %41 = tail call i32 @clk_enable(ptr noundef %37) #7
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %91

43:                                               ; preds = %40
  %44 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #7
  %45 = getelementptr inbounds %struct.exynos5_i2c, ptr %5, i32 0, i32 5
  store ptr %44, ptr %45, align 4
  %46 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = ptrtoint ptr %44 to i32
  br label %88

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 9, i32 25
  store ptr %4, ptr %50, align 8
  %51 = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 3
  store ptr %5, ptr %51, align 4
  %52 = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 9, i32 1
  store ptr %2, ptr %52, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  %53 = load ptr, ptr %45, align 4
  %54 = getelementptr i8, ptr %53, i32 36
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %56 = load ptr, ptr %45, align 4
  %57 = getelementptr i8, ptr %56, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #7, !srcloc !11
  %58 = getelementptr inbounds %struct.exynos5_i2c, ptr %5, i32 0, i32 10
  store i32 0, ptr %58, align 8
  %59 = getelementptr inbounds %struct.exynos5_i2c, ptr %5, i32 0, i32 2
  store i32 0, ptr %59, align 4
  %60 = getelementptr inbounds %struct.exynos5_i2c, ptr %5, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %60, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_completion.__key) #7
  %61 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %62 = getelementptr inbounds %struct.exynos5_i2c, ptr %5, i32 0, i32 4
  store i32 %61, ptr %62, align 8
  %63 = icmp slt i32 %61, 0
  br i1 %63, label %88, label %64

64:                                               ; preds = %49
  %65 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load ptr, ptr %2, align 4
  br label %70

70:                                               ; preds = %68, %64
  %71 = phi ptr [ %69, %68 ], [ %66, %64 ]
  %72 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %61, ptr noundef nonnull @exynos5_i2c_irq, ptr noundef null, i32 noundef 16384, ptr noundef %71, ptr noundef nonnull %5) #7
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = load i32, ptr %62, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %75) #8
  br label %88

76:                                               ; preds = %70
  %77 = tail call ptr @of_device_get_match_data(ptr noundef %2) #7
  %78 = getelementptr inbounds %struct.exynos5_i2c, ptr %5, i32 0, i32 13
  store ptr %77, ptr %78, align 4
  %79 = tail call fastcc i32 @exynos5_hsi2c_clock_setup(ptr noundef nonnull %5)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  tail call fastcc void @exynos5_i2c_reset(ptr noundef nonnull %5)
  %82 = tail call i32 @i2c_add_adapter(ptr noundef nonnull %5) #7
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %85, align 8
  %86 = load ptr, ptr %19, align 8
  tail call void @clk_disable(ptr noundef %86) #7
  %87 = load ptr, ptr %24, align 4
  tail call void @clk_disable(ptr noundef %87) #7
  br label %97

88:                                               ; preds = %81, %76, %74, %49, %47
  %89 = phi i32 [ %48, %47 ], [ %61, %49 ], [ %72, %74 ], [ %79, %76 ], [ %82, %81 ]
  %90 = load ptr, ptr %19, align 8
  tail call void @clk_disable(ptr noundef %90) #7
  br label %91

91:                                               ; preds = %88, %40
  %92 = phi ptr [ %90, %88 ], [ %37, %40 ]
  %93 = phi i32 [ %89, %88 ], [ %41, %40 ]
  tail call void @clk_unprepare(ptr noundef %92) #7
  br label %94

94:                                               ; preds = %91, %36
  %95 = phi i32 [ %38, %36 ], [ %93, %91 ]
  %96 = load ptr, ptr %24, align 4
  tail call void @clk_disable(ptr noundef %96) #7
  tail call void @clk_unprepare(ptr noundef %96) #7
  br label %97

97:                                               ; preds = %94, %84, %35, %29, %26, %21, %1
  %98 = phi i32 [ -2, %21 ], [ %28, %26 ], [ %95, %94 ], [ 0, %84 ], [ -12, %1 ], [ %33, %35 ], [ %30, %29 ]
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos5_i2c_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @i2c_del_adapter(ptr noundef %3) #7
  %4 = getelementptr inbounds %struct.exynos5_i2c, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 8
  tail call void @clk_unprepare(ptr noundef %5) #7
  %6 = getelementptr inbounds %struct.exynos5_i2c, ptr %3, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_unprepare(ptr noundef %7) #7
  ret i32 0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos5_i2c_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.exynos5_i2c, ptr %1, i32 0, i32 9
  store i32 -22, ptr %3, align 4
  %4 = getelementptr inbounds %struct.exynos5_i2c, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %4) #7
  %5 = getelementptr inbounds %struct.exynos5_i2c, ptr %1, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 36
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr i8, ptr %9, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #7, !srcloc !11
  %11 = getelementptr inbounds %struct.exynos5_i2c, ptr %1, i32 0, i32 13
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.exynos_hsi2c_variant, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %47 [
    i32 2, label %15
    i32 1, label %15
    i32 0, label %27
  ]

15:                                               ; preds = %2, %2
  %16 = and i32 %8, 128
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %15
  %19 = and i32 %8, 256
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %147

21:                                               ; preds = %18
  %22 = and i32 %8, 1536
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %147

24:                                               ; preds = %21
  %25 = and i32 %8, 2048
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %47, label %147

27:                                               ; preds = %2
  %28 = and i32 %8, 512
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %5, align 4
  %32 = getelementptr i8, ptr %31, i32 80
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %34 = and i32 %33, 12
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %147

36:                                               ; preds = %30
  %37 = and i32 %33, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %147

39:                                               ; preds = %36
  %40 = and i32 %33, 16
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %147

42:                                               ; preds = %39
  %43 = and i32 %33, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %42, %15
  %46 = getelementptr inbounds %struct.exynos5_i2c, ptr %1, i32 0, i32 11
  store i32 1, ptr %46, align 4
  store i32 0, ptr %3, align 4
  br label %47

47:                                               ; preds = %45, %42, %27, %24, %2
  %48 = getelementptr inbounds %struct.exynos5_i2c, ptr %1, i32 0, i32 1
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 1
  %51 = load i16, ptr %50, align 2
  %52 = and i16 %51, 1
  %53 = icmp eq i16 %52, 0
  %54 = and i32 %8, 66
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %53, i1 true, i1 %55
  br i1 %56, label %86, label %57

57:                                               ; preds = %47
  %58 = load ptr, ptr %5, align 4
  %59 = getelementptr i8, ptr %58, i32 48
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  %61 = lshr i32 %60, 16
  %62 = and i32 %61, 127
  %63 = load ptr, ptr %48, align 8
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %63, i32 0, i32 2
  %65 = load i16, ptr %64, align 4
  %66 = zext i16 %65 to i32
  %67 = getelementptr inbounds %struct.exynos5_i2c, ptr %1, i32 0, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = sub i32 %66, %68
  %70 = tail call i32 @llvm.umin.i32(i32 %62, i32 %69)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %147, label %72

72:                                               ; preds = %72, %57
  %73 = phi i32 [ %84, %72 ], [ %70, %57 ]
  %74 = load ptr, ptr %5, align 4
  %75 = getelementptr i8, ptr %74, i32 56
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !16
  %77 = trunc i32 %76 to i8
  %78 = load ptr, ptr %48, align 8
  %79 = getelementptr inbounds %struct.i2c_msg, ptr %78, i32 0, i32 3
  %80 = load ptr, ptr %79, align 4
  %81 = load i32, ptr %67, align 4
  %82 = add i32 %81, 1
  store i32 %82, ptr %67, align 4
  %83 = getelementptr i8, ptr %80, i32 %81
  store i8 %77, ptr %83, align 1
  %84 = add nsw i32 %73, -1
  %85 = icmp ugt i32 %73, 1
  br i1 %85, label %72, label %147

86:                                               ; preds = %47
  %87 = and i32 %8, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %149, label %89

89:                                               ; preds = %86
  %90 = load ptr, ptr %5, align 4
  %91 = getelementptr i8, ptr %90, i32 48
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  %93 = and i32 %92, 127
  %94 = load ptr, ptr %11, align 4
  %95 = load i32, ptr %94, align 4
  %96 = sub i32 %95, %93
  %97 = load ptr, ptr %48, align 8
  %98 = getelementptr inbounds %struct.i2c_msg, ptr %97, i32 0, i32 2
  %99 = load i16, ptr %98, align 4
  %100 = zext i16 %99 to i32
  %101 = getelementptr inbounds %struct.exynos5_i2c, ptr %1, i32 0, i32 3
  %102 = load i32, ptr %101, align 4
  %103 = sub i32 %100, %102
  %104 = icmp ugt i32 %96, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %89
  %106 = load ptr, ptr %5, align 4
  %107 = getelementptr i8, ptr %106, i32 32
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %109 = and i32 %108, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  %110 = load ptr, ptr %5, align 4
  %111 = getelementptr i8, ptr %110, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %109) #7, !srcloc !11
  %112 = load ptr, ptr %48, align 8
  %113 = getelementptr inbounds %struct.i2c_msg, ptr %112, i32 0, i32 2
  %114 = load i16, ptr %113, align 4
  %115 = zext i16 %114 to i32
  %116 = load i32, ptr %101, align 4
  %117 = sub i32 %115, %116
  br label %118

118:                                              ; preds = %105, %89
  %119 = phi i32 [ %116, %105 ], [ %102, %89 ]
  %120 = phi ptr [ %112, %105 ], [ %97, %89 ]
  %121 = phi i32 [ %117, %105 ], [ %96, %89 ]
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %147

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.i2c_msg, ptr %120, i32 0, i32 3
  %125 = load ptr, ptr %124, align 4
  %126 = add i32 %119, 1
  store i32 %126, ptr %101, align 4
  %127 = getelementptr i8, ptr %125, i32 %119
  %128 = load i8, ptr %127, align 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %129 = zext i8 %128 to i32
  %130 = load ptr, ptr %5, align 4
  %131 = getelementptr i8, ptr %130, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %129) #7, !srcloc !11
  %132 = icmp eq i32 %121, 1
  br i1 %132, label %147, label %133

133:                                              ; preds = %133, %123
  %134 = phi i32 [ %135, %133 ], [ %121, %123 ]
  %135 = add nsw i32 %134, -1
  %136 = load ptr, ptr %48, align 8
  %137 = load i32, ptr %101, align 4
  %138 = getelementptr inbounds %struct.i2c_msg, ptr %136, i32 0, i32 3
  %139 = load ptr, ptr %138, align 4
  %140 = add i32 %137, 1
  store i32 %140, ptr %101, align 4
  %141 = getelementptr i8, ptr %139, i32 %137
  %142 = load i8, ptr %141, align 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %143 = zext i8 %142 to i32
  %144 = load ptr, ptr %5, align 4
  %145 = getelementptr i8, ptr %144, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %145, i32 %143) #7, !srcloc !11
  %146 = icmp sgt i32 %134, 2
  br i1 %146, label %133, label %147

147:                                              ; preds = %133, %123, %118, %72, %57, %39, %36, %30, %24, %21, %18
  %148 = phi i32 [ -11, %18 ], [ -6, %21 ], [ -110, %24 ], [ -6, %30 ], [ -11, %36 ], [ -110, %39 ], [ 0, %57 ], [ 0, %118 ], [ 0, %123 ], [ 0, %133 ], [ 0, %72 ]
  store i32 %148, ptr %3, align 4
  br label %149

149:                                              ; preds = %147, %86
  %150 = getelementptr inbounds %struct.exynos5_i2c, ptr %1, i32 0, i32 11
  %151 = load i32, ptr %150, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %162, label %153

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.exynos5_i2c, ptr %1, i32 0, i32 1
  %155 = load ptr, ptr %154, align 8
  %156 = getelementptr inbounds %struct.i2c_msg, ptr %155, i32 0, i32 2
  %157 = load i16, ptr %156, align 4
  %158 = zext i16 %157 to i32
  %159 = getelementptr inbounds %struct.exynos5_i2c, ptr %1, i32 0, i32 3
  %160 = load i32, ptr %159, align 4
  %161 = icmp eq i32 %160, %158
  br i1 %161, label %165, label %162

162:                                              ; preds = %153, %149
  %163 = load i32, ptr %3, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %162, %153
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %166 = load ptr, ptr %5, align 4
  %167 = getelementptr i8, ptr %166, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 0) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  %168 = load ptr, ptr %5, align 4
  %169 = getelementptr i8, ptr %168, i32 36
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %169) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %171 = load ptr, ptr %5, align 4
  %172 = getelementptr i8, ptr %171, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %172, i32 %170) #7, !srcloc !11
  %173 = getelementptr inbounds %struct.exynos5_i2c, ptr %1, i32 0, i32 2
  tail call void @complete(ptr noundef %173) #7
  br label %174

174:                                              ; preds = %165, %162
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !22
  %175 = load i16, ptr %4, align 4
  %176 = add i16 %175, 1
  store i16 %176, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !25
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @exynos5_hsi2c_clock_setup(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = tail call fastcc i32 @exynos5_i2c_set_timing(ptr noundef %0, i1 noundef zeroext false)
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.exynos5_i2c, ptr %0, i32 0, i32 12
  %6 = load i32, ptr %5, align 8
  %7 = icmp ult i32 %6, 1000000
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call fastcc i32 @exynos5_i2c_set_timing(ptr noundef %0, i1 noundef zeroext true)
  br label %10

10:                                               ; preds = %8, %4, %1
  %11 = phi i32 [ %9, %8 ], [ %2, %4 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @exynos5_i2c_reset(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.exynos5_i2c, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !26
  %5 = or i32 %4, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %6 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #7, !srcloc !11
  %7 = load ptr, ptr %2, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !28
  %9 = and i32 %8, 2147483647
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !29
  tail call void @arm_heavy_mb() #7
  %10 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %9) #7, !srcloc !11
  %11 = tail call fastcc i32 @exynos5_i2c_set_timing(ptr noundef %0, i1 noundef zeroext false) #7
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.exynos5_i2c, ptr %0, i32 0, i32 12
  %15 = load i32, ptr %14, align 8
  %16 = icmp ult i32 %15, 1000000
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call fastcc i32 @exynos5_i2c_set_timing(ptr noundef %0, i1 noundef zeroext true) #7
  br label %19

19:                                               ; preds = %17, %13, %1
  tail call fastcc void @exynos5_i2c_init(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos5_i2c_xfer(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.exynos5_i2c, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_enable(ptr noundef %7) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %227

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.exynos5_i2c, ptr %5, i32 0, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 @clk_enable(ptr noundef %12) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %222

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.exynos5_i2c, ptr %5, i32 0, i32 1
  %17 = getelementptr inbounds %struct.exynos5_i2c, ptr %5, i32 0, i32 3
  %18 = getelementptr inbounds %struct.exynos5_i2c, ptr %5, i32 0, i32 11
  %19 = getelementptr inbounds %struct.exynos5_i2c, ptr %5, i32 0, i32 2
  %20 = getelementptr inbounds %struct.exynos5_i2c, ptr %5, i32 0, i32 13
  %21 = getelementptr inbounds %struct.exynos5_i2c, ptr %5, i32 0, i32 5
  %22 = getelementptr inbounds %struct.exynos5_i2c, ptr %5, i32 0, i32 12
  %23 = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 11
  %24 = getelementptr inbounds %struct.exynos5_i2c, ptr %5, i32 0, i32 10
  %25 = getelementptr inbounds %struct.exynos5_i2c, ptr %5, i32 0, i32 9
  %26 = call i32 @llvm.smax.i32(i32 %2, i32 0)
  br label %27

27:                                               ; preds = %216, %15
  %28 = phi i32 [ %32, %216 ], [ 0, %15 ]
  %29 = icmp eq i32 %28, %26
  br i1 %29, label %219, label %30

30:                                               ; preds = %27
  %31 = getelementptr %struct.i2c_msg, ptr %1, i32 %28
  %32 = add nuw i32 %28, 1
  %33 = icmp eq i32 %32, %2
  store ptr %31, ptr %16, align 8
  store i32 0, ptr %17, align 4
  store i32 0, ptr %18, align 4
  store i32 0, ptr %19, align 4
  %34 = load ptr, ptr %20, align 4
  %35 = getelementptr inbounds %struct.exynos_hsi2c_variant, ptr %34, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = load ptr, ptr %21, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !30
  %39 = and i32 %38, -193
  %40 = load ptr, ptr %16, align 8
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 1
  %42 = load i16, ptr %41, align 2
  %43 = and i16 %42, 1
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %30
  %46 = or i32 %39, 64
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 2
  %48 = load i16, ptr %47, align 4
  %49 = zext i16 %48 to i32
  %50 = load ptr, ptr %20, align 4
  %51 = load i32, ptr %50, align 4
  %52 = icmp ult i32 %51, %49
  %53 = mul i32 %51, 3
  %54 = lshr i32 %53, 2
  %55 = select i1 %52, i32 %54, i32 %49
  %56 = shl i32 %55, 4
  %57 = and i32 %56, 1048560
  br label %69

58:                                               ; preds = %30
  %59 = or i32 %39, 128
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 2
  %61 = load i16, ptr %60, align 4
  %62 = zext i16 %61 to i32
  %63 = load ptr, ptr %20, align 4
  %64 = load i32, ptr %63, align 4
  %65 = icmp ult i32 %64, %62
  %66 = lshr i32 %64, 2
  %67 = select i1 %65, i32 %66, i32 %62
  %68 = shl i32 %67, 16
  br label %69

69:                                               ; preds = %58, %45
  %70 = phi i32 [ 1, %58 ], [ 66, %45 ]
  %71 = phi i32 [ %68, %58 ], [ %57, %45 ]
  %72 = phi i32 [ 0, %58 ], [ 65536, %45 ]
  %73 = phi i32 [ %59, %58 ], [ %46, %45 ]
  %74 = or i32 %71, 3
  %75 = load i16, ptr %40, align 4
  %76 = and i16 %75, 1023
  %77 = zext i16 %76 to i32
  %78 = shl nuw nsw i32 %77, 10
  %79 = load i32, ptr %22, align 8
  %80 = icmp ugt i32 %79, 999999
  br i1 %80, label %81, label %87

81:                                               ; preds = %69
  %82 = load i32, ptr %23, align 4
  %83 = shl i32 %82, 24
  %84 = and i32 %83, 117440512
  %85 = or i32 %78, %84
  %86 = or i32 %85, 134217728
  br label %87

87:                                               ; preds = %81, %69
  %88 = phi i32 [ %86, %81 ], [ %78, %69 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !31
  tail call void @arm_heavy_mb() #7
  %89 = load ptr, ptr %21, align 4
  %90 = getelementptr i8, ptr %89, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %88) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !32
  tail call void @arm_heavy_mb() #7
  %91 = load ptr, ptr %21, align 4
  %92 = getelementptr i8, ptr %91, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %74) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %93 = load ptr, ptr %21, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %73) #7, !srcloc !11
  %94 = load ptr, ptr %20, align 4
  %95 = getelementptr inbounds %struct.exynos_hsi2c_variant, ptr %94, i32 0, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %166, label %98

98:                                               ; preds = %87
  %99 = load volatile i32, ptr @jiffies, align 64
  %100 = add i32 %99, 10
  %101 = load ptr, ptr %21, align 4
  %102 = getelementptr i8, ptr %101, i32 80
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !34
  %104 = and i32 %103, 15
  %105 = icmp eq i32 %104, 12
  br i1 %105, label %106, label %166

106:                                              ; preds = %150, %98
  %107 = load volatile i32, ptr @jiffies, align 64
  %108 = sub i32 %100, %107
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %166, label %110

110:                                              ; preds = %106
  %111 = load ptr, ptr %21, align 4
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %111) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !35
  %113 = or i32 %112, 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !36
  tail call void @arm_heavy_mb() #7
  %114 = load ptr, ptr %21, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %113) #7, !srcloc !11
  %115 = load ptr, ptr %21, align 4
  %116 = getelementptr i8, ptr %115, i32 64
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %116) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !37
  %118 = and i32 %117, 2147483647
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !38
  tail call void @arm_heavy_mb() #7
  %119 = load ptr, ptr %21, align 4
  %120 = getelementptr i8, ptr %119, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %118) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !39
  tail call void @arm_heavy_mb() #7
  %121 = load ptr, ptr %21, align 4
  %122 = getelementptr i8, ptr %121, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 16) #7, !srcloc !11
  %123 = load volatile i32, ptr @jiffies, align 64
  %124 = sub i32 -11, %123
  br label %125

125:                                              ; preds = %131, %110
  %126 = load ptr, ptr %21, align 4
  %127 = getelementptr i8, ptr %126, i32 80
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !40
  %129 = and i32 %128, 131072
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %125
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 200, i32 noundef 2) #7
  %132 = load volatile i32, ptr @jiffies, align 64
  %133 = add i32 %124, %132
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %125, label %135

135:                                              ; preds = %131, %125
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %136 = load ptr, ptr %21, align 4
  %137 = getelementptr i8, ptr %136, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 4) #7, !srcloc !11
  %138 = load volatile i32, ptr @jiffies, align 64
  %139 = sub i32 -11, %138
  br label %140

140:                                              ; preds = %146, %135
  %141 = load ptr, ptr %21, align 4
  %142 = getelementptr i8, ptr %141, i32 80
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %142) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !40
  %144 = and i32 %143, 131072
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %140
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 200, i32 noundef 2) #7
  %147 = load volatile i32, ptr @jiffies, align 64
  %148 = add i32 %139, %147
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %140, label %150

150:                                              ; preds = %146, %140
  %151 = load ptr, ptr %21, align 4
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %151) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !42
  %153 = and i32 %152, -65
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !43
  tail call void @arm_heavy_mb() #7
  %154 = load ptr, ptr %21, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 %153) #7, !srcloc !11
  %155 = load ptr, ptr %21, align 4
  %156 = getelementptr i8, ptr %155, i32 64
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %156) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !44
  %158 = or i32 %157, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !45
  tail call void @arm_heavy_mb() #7
  %159 = load ptr, ptr %21, align 4
  %160 = getelementptr i8, ptr %159, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 %158) #7, !srcloc !11
  %161 = load ptr, ptr %21, align 4
  %162 = getelementptr i8, ptr %161, i32 80
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %162) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !34
  %164 = and i32 %163, 15
  %165 = icmp eq i32 %164, 12
  br i1 %165, label %106, label %166

166:                                              ; preds = %150, %106, %98, %87
  %167 = icmp eq i32 %36, 0
  %168 = select i1 %167, i32 512, i32 3968
  %169 = or i32 %70, %168
  %170 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %24) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %171 = load ptr, ptr %21, align 4
  %172 = getelementptr i8, ptr %171, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %172, i32 %169) #7, !srcloc !11
  %173 = or i32 %72, 131072
  %174 = select i1 %33, i32 %173, i32 %72
  %175 = load ptr, ptr %16, align 8
  %176 = getelementptr inbounds %struct.i2c_msg, ptr %175, i32 0, i32 2
  %177 = load i16, ptr %176, align 4
  %178 = zext i16 %177 to i32
  %179 = or i32 %174, %178
  %180 = or i32 %179, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  %181 = load ptr, ptr %21, align 4
  %182 = getelementptr i8, ptr %181, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %182, i32 %180) #7, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %170) #7
  %183 = tail call i32 @wait_for_completion_timeout(ptr noundef %19, i32 noundef 10) #7
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %166
  tail call fastcc void @exynos5_i2c_reset(ptr noundef %5) #7
  br label %208

186:                                              ; preds = %166
  %187 = load i32, ptr %25, align 4
  %188 = icmp eq i32 %187, 0
  %189 = and i1 %33, %188
  br i1 %189, label %190, label %204

190:                                              ; preds = %186
  %191 = load volatile i32, ptr @jiffies, align 64
  %192 = sub i32 -11, %191
  br label %193

193:                                              ; preds = %199, %190
  %194 = load ptr, ptr %21, align 4
  %195 = getelementptr i8, ptr %194, i32 80
  %196 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %195) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !40
  %197 = and i32 %196, 131072
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %216, label %199

199:                                              ; preds = %193
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 200, i32 noundef 2) #7
  %200 = load volatile i32, ptr @jiffies, align 64
  %201 = add i32 %192, %200
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %193, label %203

203:                                              ; preds = %199
  tail call fastcc void @exynos5_i2c_reset(ptr noundef %5) #7
  br label %219

204:                                              ; preds = %186
  %205 = icmp slt i32 %187, 0
  br i1 %205, label %206, label %216

206:                                              ; preds = %204
  tail call fastcc void @exynos5_i2c_reset(ptr noundef %5) #7
  %207 = icmp eq i32 %187, -110
  br i1 %207, label %208, label %219

208:                                              ; preds = %206, %185
  %209 = getelementptr inbounds %struct.exynos5_i2c, ptr %5, i32 0, i32 8
  %210 = load ptr, ptr %209, align 8
  %211 = getelementptr %struct.i2c_msg, ptr %1, i32 %28, i32 1
  %212 = load i16, ptr %211, align 2
  %213 = and i16 %212, 1
  %214 = icmp eq i16 %213, 0
  %215 = select i1 %214, ptr @.str.10, ptr @.str.9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %210, ptr noundef nonnull @.str.8, ptr noundef nonnull %215) #8
  br label %219

216:                                              ; preds = %204, %193
  %217 = phi i32 [ %187, %204 ], [ 0, %193 ]
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %27, label %219

219:                                              ; preds = %216, %208, %206, %203, %27
  %220 = phi i32 [ -16, %203 ], [ -110, %208 ], [ %187, %206 ], [ 0, %27 ], [ %217, %216 ]
  %221 = load ptr, ptr %11, align 8
  tail call void @clk_disable(ptr noundef %221) #7
  br label %222

222:                                              ; preds = %219, %10
  %223 = phi i32 [ %13, %10 ], [ %220, %219 ]
  %224 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %224) #7
  %225 = icmp eq i32 %223, 0
  %226 = select i1 %225, i32 %2, i32 %223
  br label %227

227:                                              ; preds = %222, %3
  %228 = phi i32 [ %226, %222 ], [ %8, %3 ]
  ret i32 %228
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @exynos5_i2c_func(ptr nocapture noundef readnone %0) #5 {
  ret i32 251527177
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @exynos5_i2c_set_timing(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.exynos5_i2c, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @clk_get_rate(ptr noundef %4) #7
  %6 = getelementptr inbounds %struct.exynos5_i2c, ptr %0, i32 0, i32 12
  %7 = load i32, ptr %6, align 8
  br i1 %1, label %8, label %14

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.exynos5_i2c, ptr %0, i32 0, i32 13
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.exynos_hsi2c_variant, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %27, label %41

14:                                               ; preds = %2
  %15 = icmp ugt i32 %7, 999999
  %16 = select i1 %15, i32 100000, i32 %7
  %17 = getelementptr inbounds %struct.exynos5_i2c, ptr %0, i32 0, i32 13
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.exynos_hsi2c_variant, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %41

22:                                               ; preds = %14
  %23 = shl i32 %7, 4
  %24 = udiv i32 %5, %23
  %25 = shl i32 %24, 16
  %26 = add i32 %25, -65536
  br label %36

27:                                               ; preds = %8
  %28 = shl i32 %7, 4
  %29 = udiv i32 %5, %28
  %30 = shl i32 %29, 16
  %31 = add i32 %30, -65536
  br i1 %1, label %32, label %36

32:                                               ; preds = %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %33 = getelementptr inbounds %struct.exynos5_i2c, ptr %0, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %31) #7, !srcloc !11
  br label %100

36:                                               ; preds = %27, %22
  %37 = phi i32 [ %26, %22 ], [ %31, %27 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !49
  tail call void @arm_heavy_mb() #7
  %38 = getelementptr inbounds %struct.exynos5_i2c, ptr %0, i32 0, i32 5
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %39, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %37) #7, !srcloc !11
  br label %100

41:                                               ; preds = %14, %8
  %42 = phi ptr [ %17, %14 ], [ %9, %8 ]
  %43 = phi i32 [ %16, %14 ], [ %7, %8 ]
  %44 = getelementptr inbounds %struct.exynos5_i2c, ptr %0, i32 0, i32 5
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i8, ptr %45, i32 64
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !50
  %48 = lshr i32 %47, 16
  %49 = and i32 %48, 7
  %50 = udiv i32 %5, %43
  %51 = load ptr, ptr %42, align 4
  %52 = getelementptr inbounds %struct.exynos_hsi2c_variant, ptr %51, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 1
  %55 = select i1 %54, i32 0, i32 %49
  %56 = add i32 %50, -8
  %57 = add nuw nsw i32 %49, %55
  %58 = sub i32 %56, %57
  %59 = sdiv i32 %58, 512
  %60 = add nsw i32 %59, 1
  %61 = sdiv i32 %58, %60
  %62 = add i32 %61, -2
  %63 = add i32 %58, -131072
  %64 = icmp ult i32 %63, -131068
  %65 = icmp slt i32 %62, 2
  %66 = select i1 %64, i1 true, i1 %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %41
  %68 = getelementptr inbounds %struct.exynos5_i2c, ptr %0, i32 0, i32 8
  %69 = load ptr, ptr %68, align 8
  %70 = select i1 %1, ptr @.str.13, ptr @.str.14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.12, ptr noundef nonnull %70) #8
  br label %100

71:                                               ; preds = %41
  %72 = lshr i32 %62, 1
  %73 = lshr i32 %62, 2
  %74 = shl i32 %72, 24
  %75 = shl i32 %72, 16
  %76 = or i32 %74, %75
  %77 = shl i32 %72, 8
  %78 = or i32 %76, %77
  %79 = shl i32 %73, 24
  %80 = or i32 %77, %72
  %81 = or i32 %80, %79
  %82 = shl i32 %59, 16
  %83 = or i32 %82, %62
  tail call void asm sideeffect "dsb st", "~{memory}"() #7
  tail call void @arm_heavy_mb() #7
  %84 = load ptr, ptr %44, align 4
  br i1 %1, label %85, label %91

85:                                               ; preds = %71
  %86 = getelementptr i8, ptr %84, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %78) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %87 = load ptr, ptr %44, align 4
  %88 = getelementptr i8, ptr %87, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %81) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !52
  tail call void @arm_heavy_mb() #7
  %89 = load ptr, ptr %44, align 4
  %90 = getelementptr i8, ptr %89, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %83) #7, !srcloc !11
  br label %97

91:                                               ; preds = %71
  %92 = getelementptr i8, ptr %84, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %78) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  %93 = load ptr, ptr %44, align 4
  %94 = getelementptr i8, ptr %93, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %81) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !54
  tail call void @arm_heavy_mb() #7
  %95 = load ptr, ptr %44, align 4
  %96 = getelementptr i8, ptr %95, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %83) #7, !srcloc !11
  br label %97

97:                                               ; preds = %91, %85
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !55
  tail call void @arm_heavy_mb() #7
  %98 = load ptr, ptr %44, align 4
  %99 = getelementptr i8, ptr %98, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %73) #7, !srcloc !11
  br label %100

100:                                              ; preds = %97, %67, %36, %32
  %101 = phi i32 [ -22, %67 ], [ 0, %97 ], [ 0, %36 ], [ 0, %32 ]
  ret i32 %101
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @exynos5_i2c_init(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.exynos5_i2c, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !56
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr i8, ptr %6, i32 72
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !57
  %9 = and i32 %8, 2147483647
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr i8, ptr %10, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  %12 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 9) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 15) #7, !srcloc !11
  %15 = getelementptr inbounds %struct.exynos5_i2c, ptr %0, i32 0, i32 12
  %16 = load i32, ptr %15, align 8
  %17 = icmp ugt i32 %16, 999999
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %19 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 11
  %20 = load i32, ptr %19, align 4
  %21 = shl i32 %20, 24
  %22 = and i32 %21, 117440512
  %23 = or i32 %22, 134217728
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr i8, ptr %24, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #7, !srcloc !11
  %26 = or i32 %5, 536870912
  br label %27

27:                                               ; preds = %18, %1
  %28 = phi i32 [ %26, %18 ], [ %5, %1 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !62
  tail call void @arm_heavy_mb() #7
  %29 = or i32 %28, -2147483648
  %30 = load ptr, ptr %2, align 4
  %31 = getelementptr i8, ptr %30, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #7, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos5_i2c_suspend_noirq(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  tail call void %6(ptr noundef %3, i32 noundef 1) #7
  %7 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %7) #7
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds %struct.i2c_lock_operations, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  tail call void %10(ptr noundef %3, i32 noundef 1) #7
  %11 = getelementptr inbounds %struct.exynos5_i2c, ptr %3, i32 0, i32 6
  %12 = load ptr, ptr %11, align 8
  tail call void @clk_unprepare(ptr noundef %12) #7
  %13 = getelementptr inbounds %struct.exynos5_i2c, ptr %3, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  tail call void @clk_unprepare(ptr noundef %14) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos5_i2c_resume_noirq(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.exynos5_i2c, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %51

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %51

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.exynos5_i2c, ptr %3, i32 0, i32 6
  %14 = load ptr, ptr %13, align 8
  %15 = tail call i32 @clk_prepare(ptr noundef %14) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %48

17:                                               ; preds = %12
  %18 = tail call i32 @clk_enable(ptr noundef %14) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %45

20:                                               ; preds = %17
  %21 = tail call fastcc i32 @exynos5_i2c_set_timing(ptr noundef %3, i1 noundef zeroext false) #7
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %42, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.exynos5_i2c, ptr %3, i32 0, i32 12
  %25 = load i32, ptr %24, align 8
  %26 = icmp ult i32 %25, 1000000
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call fastcc i32 @exynos5_i2c_set_timing(ptr noundef %3, i1 noundef zeroext true) #7
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi i32 [ %28, %27 ], [ %21, %23 ]
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  tail call fastcc void @exynos5_i2c_init(ptr noundef %3)
  %33 = load ptr, ptr %13, align 8
  tail call void @clk_disable(ptr noundef %33) #7
  %34 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %34) #7
  %35 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 4
  %36 = load ptr, ptr %35, align 8
  %37 = load ptr, ptr %36, align 4
  tail call void %37(ptr noundef %3, i32 noundef 1) #7
  %38 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %38) #7
  %39 = load ptr, ptr %35, align 8
  %40 = getelementptr inbounds %struct.i2c_lock_operations, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  tail call void %41(ptr noundef %3, i32 noundef 1) #7
  br label %51

42:                                               ; preds = %29, %20
  %43 = phi i32 [ %30, %29 ], [ %21, %20 ]
  %44 = load ptr, ptr %13, align 8
  tail call void @clk_disable(ptr noundef %44) #7
  br label %45

45:                                               ; preds = %42, %17
  %46 = phi ptr [ %44, %42 ], [ %14, %17 ]
  %47 = phi i32 [ %43, %42 ], [ %18, %17 ]
  tail call void @clk_unprepare(ptr noundef %46) #7
  br label %48

48:                                               ; preds = %45, %12
  %49 = phi i32 [ %15, %12 ], [ %47, %45 ]
  %50 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %50) #7
  tail call void @clk_unprepare(ptr noundef %50) #7
  br label %51

51:                                               ; preds = %48, %32, %11, %1
  %52 = phi i32 [ %49, %48 ], [ 0, %32 ], [ %9, %11 ], [ %6, %1 ]
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 2154154910}
!9 = !{i64 5370688}
!10 = !{i64 2154155378}
!11 = !{i64 5370270}
!12 = !{i64 2154166512}
!13 = !{i64 2154166708}
!14 = !{i64 2154169546}
!15 = !{i64 2154172224}
!16 = !{i64 2154174261}
!17 = !{i64 2154174607}
!18 = !{i64 2154174973}
!19 = !{i64 2154175175}
!20 = !{i64 2154175499}
!21 = !{i64 2154175816}
!22 = !{i64 2148949946}
!23 = !{i64 2148945770}
!24 = !{i64 2148945845, i64 2148945872, i64 2148945919, i64 2148945941, i64 2148945969, i64 2148945989}
!25 = !{i64 2148972949}
!26 = !{i64 2154165157}
!27 = !{i64 2154165361}
!28 = !{i64 2154165833}
!29 = !{i64 2154166037}
!30 = !{i64 2154181280}
!31 = !{i64 2154181748}
!32 = !{i64 2154182080}
!33 = !{i64 2154182411}
!34 = !{i64 2154180356}
!35 = !{i64 2154177012}
!36 = !{i64 2154177211}
!37 = !{i64 2154177675}
!38 = !{i64 2154177875}
!39 = !{i64 2154178208}
!40 = !{i64 2154176276}
!41 = !{i64 2154178553}
!42 = !{i64 2154179029}
!43 = !{i64 2154179228}
!44 = !{i64 2154179692}
!45 = !{i64 2154179892}
!46 = !{i64 2154183091}
!47 = !{i64 2154183446}
!48 = !{i64 2154155594}
!49 = !{i64 2154155941}
!50 = !{i64 2154156425}
!51 = !{i64 2154160236}
!52 = !{i64 2154160583}
!53 = !{i64 2154161277}
!54 = !{i64 2154161624}
!55 = !{i64 2154161972}
!56 = !{i64 2154162466}
!57 = !{i64 2154162802}
!58 = !{i64 2154163010}
!59 = !{i64 2154163385}
!60 = !{i64 2154163754}
!61 = !{i64 2154164210}
!62 = !{i64 2154164657}
