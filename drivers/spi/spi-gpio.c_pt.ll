; ModuleID = '/llk/IR/drivers/spi/spi-gpio.c_pt.bc'
source_filename = "../drivers/spi/spi-gpio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_gpio = type { %struct.spi_bitbang, ptr, ptr, ptr, ptr }
%struct.spi_bitbang = type { %struct.mutex, i8, i8, i16, ptr, ptr, ptr, ptr, [4 x ptr], ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }

@spi_gpio_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"spi-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_alias222 = internal constant [24 x i8] c"alias=platform:spi_gpio\00", section ".modinfo", align 1
@__UNIQUE_ID_description223 = internal constant [60 x i8] c"description=SPI master driver using generic bitbanged GPIO \00", section ".modinfo", align 1
@__UNIQUE_ID_author224 = internal constant [22 x i8] c"author=David Brownell\00", section ".modinfo", align 1
@__UNIQUE_ID_license225 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@spi_gpio_driver = internal global %struct.platform_driver { ptr @spi_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @spi_gpio_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [9 x i8] c"spi_gpio\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"cs\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"mosi\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"miso\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"sck\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias222, ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_description223, ptr @__UNIQUE_ID_license225], section "llvm.metadata"

@__mod_of__spi_gpio_dt_ids_device_table = dso_local alias [2 x %struct.of_device_id], ptr @spi_gpio_dt_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @spi_gpio_driver, ptr noundef nonnull @__this_module) #3
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @spi_gpio_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_gpio_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @__devm_spi_alloc_controller(ptr noundef %2, i32 noundef 76, i1 noundef zeroext false) #3
  %4 = icmp eq ptr %3, null
  br i1 %4, label %103, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  store ptr %7, ptr %10, align 8
  %11 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 56
  store i8 1, ptr %11, align 8
  br label %47

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %14, null
  br i1 %17, label %103, label %18

18:                                               ; preds = %12
  %19 = load i16, ptr %14, align 2
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %103, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 3
  store i16 %19, ptr %22, align 2
  %23 = zext i16 %19 to i32
  %24 = shl nuw nsw i32 %23, 2
  %25 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %24, i32 noundef 3520) #3
  %26 = getelementptr inbounds %struct.spi_gpio, ptr %16, i32 0, i32 4
  store ptr %25, ptr %26, align 4
  %27 = icmp eq ptr %25, null
  br i1 %27, label %103, label %28

28:                                               ; preds = %21
  %29 = load i16, ptr %22, align 2
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %47, label %36

31:                                               ; preds = %36
  %32 = add nuw nsw i32 %37, 1
  %33 = load i16, ptr %22, align 2
  %34 = zext i16 %33 to i32
  %35 = icmp ult i32 %32, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %31, %28
  %37 = phi i32 [ %32, %31 ], [ 0, %28 ]
  %38 = tail call ptr @devm_gpiod_get_index(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %37, i32 noundef 7) #3
  %39 = load ptr, ptr %26, align 4
  %40 = getelementptr ptr, ptr %39, i32 %37
  store ptr %38, ptr %40, align 4
  %41 = load ptr, ptr %26, align 4
  %42 = getelementptr ptr, ptr %41, i32 %37
  %43 = load ptr, ptr %42, align 4
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %45, label %31

45:                                               ; preds = %36
  %46 = ptrtoint ptr %43 to i32
  br label %103

47:                                               ; preds = %31, %28, %9
  %48 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %49 = load ptr, ptr %48, align 8
  %50 = tail call ptr @devm_gpiod_get_optional(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef 3) #3
  %51 = getelementptr inbounds %struct.spi_gpio, ptr %49, i32 0, i32 3
  store ptr %50, ptr %51, align 4
  %52 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %61, label %53

53:                                               ; preds = %47
  %54 = tail call ptr @devm_gpiod_get_optional(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef 1) #3
  %55 = getelementptr inbounds %struct.spi_gpio, ptr %49, i32 0, i32 2
  store ptr %54, ptr %55, align 4
  %56 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = tail call ptr @devm_gpiod_get(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef 3) #3
  %59 = getelementptr inbounds %struct.spi_gpio, ptr %49, i32 0, i32 1
  store ptr %58, ptr %59, align 4
  %60 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %61, label %65

61:                                               ; preds = %57, %53, %47
  %62 = phi ptr [ %58, %57 ], [ %50, %47 ], [ %54, %53 ]
  %63 = ptrtoint ptr %62 to i32
  %64 = icmp eq ptr %62, null
  br i1 %64, label %65, label %103

65:                                               ; preds = %61, %57
  %66 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 7
  store i32 -1, ptr %66, align 8
  %67 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 5
  store i32 32791, ptr %67, align 8
  %68 = load ptr, ptr %51, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 10
  store i16 4, ptr %71, align 4
  br label %72

72:                                               ; preds = %70, %65
  %73 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = trunc i32 %74 to i16
  %76 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 2
  store i16 %75, ptr %76, align 8
  %77 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 20
  store ptr @spi_gpio_setup, ptr %77, align 4
  %78 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 23
  store ptr @spi_gpio_cleanup, ptr %78, align 8
  %79 = getelementptr inbounds %struct.spi_bitbang, ptr %49, i32 0, i32 4
  store ptr %3, ptr %79, align 4
  %80 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 10
  %81 = load i16, ptr %80, align 4
  %82 = or i16 %81, 32
  store i16 %82, ptr %80, align 4
  %83 = getelementptr inbounds %struct.spi_bitbang, ptr %49, i32 0, i32 6
  store ptr @spi_gpio_chipselect, ptr %83, align 4
  %84 = getelementptr inbounds %struct.spi_bitbang, ptr %49, i32 0, i32 9
  store ptr @spi_gpio_set_direction, ptr %84, align 4
  %85 = load i16, ptr %80, align 4
  %86 = and i16 %85, 4
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %72
  br label %89

89:                                               ; preds = %88, %72
  %90 = phi ptr [ @spi_gpio_txrx_word_mode0, %88 ], [ @spi_gpio_spec_txrx_word_mode0, %72 ]
  %91 = phi ptr [ @spi_gpio_txrx_word_mode1, %88 ], [ @spi_gpio_spec_txrx_word_mode1, %72 ]
  %92 = phi ptr [ @spi_gpio_txrx_word_mode2, %88 ], [ @spi_gpio_spec_txrx_word_mode2, %72 ]
  %93 = phi ptr [ @spi_gpio_txrx_word_mode3, %88 ], [ @spi_gpio_spec_txrx_word_mode3, %72 ]
  %94 = getelementptr inbounds %struct.spi_bitbang, ptr %49, i32 0, i32 8
  store ptr %90, ptr %94, align 4
  %95 = getelementptr %struct.spi_bitbang, ptr %49, i32 0, i32 8, i32 1
  store ptr %91, ptr %95, align 4
  %96 = getelementptr %struct.spi_bitbang, ptr %49, i32 0, i32 8, i32 2
  store ptr %92, ptr %96, align 4
  %97 = getelementptr %struct.spi_bitbang, ptr %49, i32 0, i32 8, i32 3
  store ptr %93, ptr %97, align 4
  %98 = getelementptr inbounds %struct.spi_bitbang, ptr %49, i32 0, i32 5
  store ptr @spi_bitbang_setup_transfer, ptr %98, align 4
  %99 = tail call i32 @spi_bitbang_init(ptr noundef %49) #3
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %89
  %102 = tail call i32 @devm_spi_register_controller(ptr noundef %2, ptr noundef nonnull %3) #3
  br label %103

103:                                              ; preds = %101, %89, %61, %45, %21, %18, %12, %1
  %104 = phi i32 [ %102, %101 ], [ -12, %1 ], [ %46, %45 ], [ %63, %61 ], [ %99, %89 ], [ -12, %21 ], [ -19, %12 ], [ -19, %18 ]
  ret i32 %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_gpio_setup(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.spi_gpio, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 4
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = getelementptr ptr, ptr %7, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 9
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  %18 = icmp ne ptr %14, null
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %20, label %28

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 2
  %24 = and i32 %23, 1
  %25 = xor i32 %24, 1
  %26 = tail call i32 @gpiod_direction_output(ptr noundef nonnull %14, i32 noundef %25) #3
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20, %9, %1
  %29 = tail call i32 @spi_bitbang_setup(ptr noundef %0) #3
  br label %30

30:                                               ; preds = %28, %20
  %31 = phi i32 [ %26, %20 ], [ %29, %28 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @spi_gpio_cleanup(ptr noundef %0) #2 {
  tail call void @spi_bitbang_cleanup(ptr noundef %0) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @spi_gpio_chipselect(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.spi_gpio, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 2
  tail call void @gpiod_set_value_cansleep(ptr noundef %10, i32 noundef %13) #3
  br label %14

14:                                               ; preds = %8, %2
  %15 = getelementptr inbounds %struct.spi_gpio, ptr %6, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 4
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i32
  %22 = getelementptr ptr, ptr %16, i32 %21
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 4
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %7 to i32
  %29 = select i1 %27, i32 %28, i32 %1
  tail call void @gpiod_set_value_cansleep(ptr noundef %23, i32 noundef %29) #3
  br label %30

30:                                               ; preds = %18, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_gpio_set_direction(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.spi_gpio, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  br i1 %1, label %9, label %11

9:                                                ; preds = %2
  %10 = tail call i32 @gpiod_direction_output(ptr noundef %8, i32 noundef 1) #3
  br label %29

11:                                               ; preds = %2
  %12 = tail call i32 @gpiod_direction_input(ptr noundef %8) #3
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 32768
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.spi_gpio, ptr %6, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = lshr i32 %16, 1
  %23 = and i32 %22, 1
  %24 = xor i32 %23, 1
  tail call void @gpiod_set_value_cansleep(ptr noundef %21, i32 noundef %24) #3
  %25 = load ptr, ptr %20, align 4
  %26 = load i32, ptr %15, align 8
  %27 = lshr i32 %26, 1
  %28 = and i32 %27, 1
  tail call void @gpiod_set_value_cansleep(ptr noundef %25, i32 noundef %28) #3
  br label %29

29:                                               ; preds = %19, %14, %11, %9
  %30 = phi i32 [ %10, %9 ], [ %12, %11 ], [ 0, %19 ], [ 0, %14 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_gpio_spec_txrx_word_mode0(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %7 = zext i8 %3 to i32
  %8 = sub nsw i32 32, %7
  %9 = shl i32 %2, %8
  %10 = icmp eq i8 %3, 0
  br i1 %10, label %70, label %11, !prof !8

11:                                               ; preds = %5
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.spi_controller, ptr %12, i32 0, i32 10
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  %16 = xor i32 %2, -1
  %17 = add nsw i32 %7, -1
  %18 = lshr i32 %16, %17
  %19 = shl i32 %18, 31
  %20 = and i32 %15, 4
  %21 = icmp eq i32 %20, 0
  %22 = and i32 %15, 2
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  br label %25

25:                                               ; preds = %61, %11
  %26 = phi i32 [ %19, %11 ], [ %39, %61 ]
  %27 = phi i8 [ %3, %11 ], [ %68, %61 ]
  %28 = phi i32 [ %9, %11 ], [ %62, %61 ]
  br i1 %21, label %29, label %38

29:                                               ; preds = %25
  %30 = and i32 %28, -2147483648
  %31 = icmp eq i32 %30, %26
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %6, align 4
  %34 = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 8
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.spi_gpio, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %37, i32 noundef %30) #3
  br label %38

38:                                               ; preds = %32, %29, %25
  %39 = phi i32 [ %30, %32 ], [ %26, %29 ], [ %26, %25 ]
  %40 = load ptr, ptr %6, align 4
  %41 = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 8
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.spi_gpio, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %44, i32 noundef 1) #3
  %45 = shl i32 %28, 1
  br i1 %23, label %46, label %61

46:                                               ; preds = %38
  %47 = load ptr, ptr %6, align 4
  %48 = getelementptr inbounds %struct.device, ptr %47, i32 0, i32 8
  %49 = load ptr, ptr %48, align 8
  %50 = load i32, ptr %24, align 8
  %51 = and i32 %50, 16
  %52 = icmp eq i32 %51, 0
  %53 = getelementptr inbounds %struct.spi_gpio, ptr %49, i32 0, i32 2
  %54 = getelementptr inbounds %struct.spi_gpio, ptr %49, i32 0, i32 3
  %55 = select i1 %52, ptr %53, ptr %54
  %56 = load ptr, ptr %55, align 4
  %57 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %56) #3
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = or i32 %45, %59
  br label %61

61:                                               ; preds = %46, %38
  %62 = phi i32 [ %60, %46 ], [ %45, %38 ]
  %63 = load ptr, ptr %6, align 4
  %64 = getelementptr inbounds %struct.device, ptr %63, i32 0, i32 8
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds %struct.spi_gpio, ptr %65, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %67, i32 noundef 0) #3
  %68 = add i8 %27, -1
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %25, !prof !8

70:                                               ; preds = %61, %5
  %71 = phi i32 [ %9, %5 ], [ %62, %61 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_gpio_spec_txrx_word_mode1(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %7 = zext i8 %3 to i32
  %8 = sub nsw i32 32, %7
  %9 = shl i32 %2, %8
  %10 = icmp eq i8 %3, 0
  br i1 %10, label %72, label %11, !prof !8

11:                                               ; preds = %5
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.spi_controller, ptr %12, i32 0, i32 10
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  %16 = xor i32 %2, -1
  %17 = add nsw i32 %7, -1
  %18 = lshr i32 %16, %17
  %19 = shl i32 %18, 31
  %20 = and i32 %15, 4
  %21 = icmp eq i32 %20, 0
  %22 = and i32 %15, 2
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  br label %25

25:                                               ; preds = %70, %11
  %26 = phi ptr [ %12, %11 ], [ %71, %70 ]
  %27 = phi i32 [ %19, %11 ], [ %44, %70 ]
  %28 = phi i8 [ %3, %11 ], [ %68, %70 ]
  %29 = phi i32 [ %9, %11 ], [ %67, %70 ]
  %30 = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 8
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.spi_gpio, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %33, i32 noundef 1) #3
  br i1 %21, label %34, label %43

34:                                               ; preds = %25
  %35 = and i32 %29, -2147483648
  %36 = icmp eq i32 %35, %27
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %6, align 4
  %39 = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 8
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.spi_gpio, ptr %40, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %42, i32 noundef %35) #3
  br label %43

43:                                               ; preds = %37, %34, %25
  %44 = phi i32 [ %35, %37 ], [ %27, %34 ], [ %27, %25 ]
  %45 = load ptr, ptr %6, align 4
  %46 = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 8
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.spi_gpio, ptr %47, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %49, i32 noundef 0) #3
  %50 = shl i32 %29, 1
  br i1 %23, label %51, label %66

51:                                               ; preds = %43
  %52 = load ptr, ptr %6, align 4
  %53 = getelementptr inbounds %struct.device, ptr %52, i32 0, i32 8
  %54 = load ptr, ptr %53, align 8
  %55 = load i32, ptr %24, align 8
  %56 = and i32 %55, 16
  %57 = icmp eq i32 %56, 0
  %58 = getelementptr inbounds %struct.spi_gpio, ptr %54, i32 0, i32 2
  %59 = getelementptr inbounds %struct.spi_gpio, ptr %54, i32 0, i32 3
  %60 = select i1 %57, ptr %58, ptr %59
  %61 = load ptr, ptr %60, align 4
  %62 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %61) #3
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = or i32 %50, %64
  br label %66

66:                                               ; preds = %51, %43
  %67 = phi i32 [ %65, %51 ], [ %50, %43 ]
  %68 = add i8 %28, -1
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %72, label %70, !prof !8

70:                                               ; preds = %66
  %71 = load ptr, ptr %6, align 4
  br label %25

72:                                               ; preds = %66, %5
  %73 = phi i32 [ %9, %5 ], [ %67, %66 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_gpio_spec_txrx_word_mode2(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %7 = zext i8 %3 to i32
  %8 = sub nsw i32 32, %7
  %9 = shl i32 %2, %8
  %10 = icmp eq i8 %3, 0
  br i1 %10, label %70, label %11, !prof !8

11:                                               ; preds = %5
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.spi_controller, ptr %12, i32 0, i32 10
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  %16 = xor i32 %2, -1
  %17 = add nsw i32 %7, -1
  %18 = lshr i32 %16, %17
  %19 = shl i32 %18, 31
  %20 = and i32 %15, 4
  %21 = icmp eq i32 %20, 0
  %22 = and i32 %15, 2
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  br label %25

25:                                               ; preds = %61, %11
  %26 = phi i32 [ %19, %11 ], [ %39, %61 ]
  %27 = phi i8 [ %3, %11 ], [ %68, %61 ]
  %28 = phi i32 [ %9, %11 ], [ %62, %61 ]
  br i1 %21, label %29, label %38

29:                                               ; preds = %25
  %30 = and i32 %28, -2147483648
  %31 = icmp eq i32 %30, %26
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %6, align 4
  %34 = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 8
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.spi_gpio, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %37, i32 noundef %30) #3
  br label %38

38:                                               ; preds = %32, %29, %25
  %39 = phi i32 [ %30, %32 ], [ %26, %29 ], [ %26, %25 ]
  %40 = load ptr, ptr %6, align 4
  %41 = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 8
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.spi_gpio, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %44, i32 noundef 0) #3
  %45 = shl i32 %28, 1
  br i1 %23, label %46, label %61

46:                                               ; preds = %38
  %47 = load ptr, ptr %6, align 4
  %48 = getelementptr inbounds %struct.device, ptr %47, i32 0, i32 8
  %49 = load ptr, ptr %48, align 8
  %50 = load i32, ptr %24, align 8
  %51 = and i32 %50, 16
  %52 = icmp eq i32 %51, 0
  %53 = getelementptr inbounds %struct.spi_gpio, ptr %49, i32 0, i32 2
  %54 = getelementptr inbounds %struct.spi_gpio, ptr %49, i32 0, i32 3
  %55 = select i1 %52, ptr %53, ptr %54
  %56 = load ptr, ptr %55, align 4
  %57 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %56) #3
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = or i32 %45, %59
  br label %61

61:                                               ; preds = %46, %38
  %62 = phi i32 [ %60, %46 ], [ %45, %38 ]
  %63 = load ptr, ptr %6, align 4
  %64 = getelementptr inbounds %struct.device, ptr %63, i32 0, i32 8
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds %struct.spi_gpio, ptr %65, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %67, i32 noundef 1) #3
  %68 = add i8 %27, -1
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %25, !prof !8

70:                                               ; preds = %61, %5
  %71 = phi i32 [ %9, %5 ], [ %62, %61 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_gpio_spec_txrx_word_mode3(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %7 = zext i8 %3 to i32
  %8 = sub nsw i32 32, %7
  %9 = shl i32 %2, %8
  %10 = icmp eq i8 %3, 0
  br i1 %10, label %72, label %11, !prof !8

11:                                               ; preds = %5
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.spi_controller, ptr %12, i32 0, i32 10
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  %16 = xor i32 %2, -1
  %17 = add nsw i32 %7, -1
  %18 = lshr i32 %16, %17
  %19 = shl i32 %18, 31
  %20 = and i32 %15, 4
  %21 = icmp eq i32 %20, 0
  %22 = and i32 %15, 2
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  br label %25

25:                                               ; preds = %70, %11
  %26 = phi ptr [ %12, %11 ], [ %71, %70 ]
  %27 = phi i32 [ %19, %11 ], [ %44, %70 ]
  %28 = phi i8 [ %3, %11 ], [ %68, %70 ]
  %29 = phi i32 [ %9, %11 ], [ %67, %70 ]
  %30 = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 8
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.spi_gpio, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %33, i32 noundef 0) #3
  br i1 %21, label %34, label %43

34:                                               ; preds = %25
  %35 = and i32 %29, -2147483648
  %36 = icmp eq i32 %35, %27
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %6, align 4
  %39 = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 8
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.spi_gpio, ptr %40, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %42, i32 noundef %35) #3
  br label %43

43:                                               ; preds = %37, %34, %25
  %44 = phi i32 [ %35, %37 ], [ %27, %34 ], [ %27, %25 ]
  %45 = load ptr, ptr %6, align 4
  %46 = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 8
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.spi_gpio, ptr %47, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %49, i32 noundef 1) #3
  %50 = shl i32 %29, 1
  br i1 %23, label %51, label %66

51:                                               ; preds = %43
  %52 = load ptr, ptr %6, align 4
  %53 = getelementptr inbounds %struct.device, ptr %52, i32 0, i32 8
  %54 = load ptr, ptr %53, align 8
  %55 = load i32, ptr %24, align 8
  %56 = and i32 %55, 16
  %57 = icmp eq i32 %56, 0
  %58 = getelementptr inbounds %struct.spi_gpio, ptr %54, i32 0, i32 2
  %59 = getelementptr inbounds %struct.spi_gpio, ptr %54, i32 0, i32 3
  %60 = select i1 %57, ptr %58, ptr %59
  %61 = load ptr, ptr %60, align 4
  %62 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %61) #3
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = or i32 %50, %64
  br label %66

66:                                               ; preds = %51, %43
  %67 = phi i32 [ %65, %51 ], [ %50, %43 ]
  %68 = add i8 %28, -1
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %72, label %70, !prof !8

70:                                               ; preds = %66
  %71 = load ptr, ptr %6, align 4
  br label %25

72:                                               ; preds = %66, %5
  %73 = phi i32 [ %9, %5 ], [ %67, %66 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_gpio_txrx_word_mode0(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, i32 noundef %4) #2 {
  %6 = zext i8 %3 to i32
  %7 = sub nsw i32 32, %6
  %8 = shl i32 %2, %7
  %9 = icmp eq i8 %3, 0
  br i1 %9, label %66, label %10, !prof !8

10:                                               ; preds = %5
  %11 = xor i32 %2, -1
  %12 = add nsw i32 %6, -1
  %13 = lshr i32 %11, %12
  %14 = shl i32 %13, 31
  %15 = and i32 %4, 4
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %18 = and i32 %4, 2
  %19 = icmp eq i32 %18, 0
  %20 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  br label %21

21:                                               ; preds = %57, %10
  %22 = phi i32 [ %14, %10 ], [ %35, %57 ]
  %23 = phi i8 [ %3, %10 ], [ %64, %57 ]
  %24 = phi i32 [ %8, %10 ], [ %58, %57 ]
  br i1 %16, label %25, label %34

25:                                               ; preds = %21
  %26 = and i32 %24, -2147483648
  %27 = icmp eq i32 %26, %22
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %17, align 4
  %30 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 8
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.spi_gpio, ptr %31, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %33, i32 noundef %26) #3
  br label %34

34:                                               ; preds = %28, %25, %21
  %35 = phi i32 [ %26, %28 ], [ %22, %25 ], [ %22, %21 ]
  %36 = load ptr, ptr %17, align 4
  %37 = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 8
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.spi_gpio, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %40, i32 noundef 1) #3
  %41 = shl i32 %24, 1
  br i1 %19, label %42, label %57

42:                                               ; preds = %34
  %43 = load ptr, ptr %17, align 4
  %44 = getelementptr inbounds %struct.device, ptr %43, i32 0, i32 8
  %45 = load ptr, ptr %44, align 8
  %46 = load i32, ptr %20, align 8
  %47 = and i32 %46, 16
  %48 = icmp eq i32 %47, 0
  %49 = getelementptr inbounds %struct.spi_gpio, ptr %45, i32 0, i32 2
  %50 = getelementptr inbounds %struct.spi_gpio, ptr %45, i32 0, i32 3
  %51 = select i1 %48, ptr %49, ptr %50
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %52) #3
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = or i32 %41, %55
  br label %57

57:                                               ; preds = %42, %34
  %58 = phi i32 [ %56, %42 ], [ %41, %34 ]
  %59 = load ptr, ptr %17, align 4
  %60 = getelementptr inbounds %struct.device, ptr %59, i32 0, i32 8
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %struct.spi_gpio, ptr %61, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %63, i32 noundef 0) #3
  %64 = add i8 %23, -1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %21, !prof !8

66:                                               ; preds = %57, %5
  %67 = phi i32 [ %8, %5 ], [ %58, %57 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_gpio_txrx_word_mode1(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, i32 noundef %4) #2 {
  %6 = zext i8 %3 to i32
  %7 = sub nsw i32 32, %6
  %8 = shl i32 %2, %7
  %9 = icmp eq i8 %3, 0
  br i1 %9, label %66, label %10, !prof !8

10:                                               ; preds = %5
  %11 = xor i32 %2, -1
  %12 = add nsw i32 %6, -1
  %13 = lshr i32 %11, %12
  %14 = shl i32 %13, 31
  %15 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %16 = and i32 %4, 4
  %17 = icmp eq i32 %16, 0
  %18 = and i32 %4, 2
  %19 = icmp eq i32 %18, 0
  %20 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  br label %21

21:                                               ; preds = %62, %10
  %22 = phi i32 [ %14, %10 ], [ %40, %62 ]
  %23 = phi i8 [ %3, %10 ], [ %64, %62 ]
  %24 = phi i32 [ %8, %10 ], [ %63, %62 ]
  %25 = load ptr, ptr %15, align 4
  %26 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 8
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.spi_gpio, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %29, i32 noundef 1) #3
  br i1 %17, label %30, label %39

30:                                               ; preds = %21
  %31 = and i32 %24, -2147483648
  %32 = icmp eq i32 %31, %22
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %15, align 4
  %35 = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 8
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.spi_gpio, ptr %36, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %38, i32 noundef %31) #3
  br label %39

39:                                               ; preds = %33, %30, %21
  %40 = phi i32 [ %31, %33 ], [ %22, %30 ], [ %22, %21 ]
  %41 = load ptr, ptr %15, align 4
  %42 = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 8
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.spi_gpio, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %45, i32 noundef 0) #3
  %46 = shl i32 %24, 1
  br i1 %19, label %47, label %62

47:                                               ; preds = %39
  %48 = load ptr, ptr %15, align 4
  %49 = getelementptr inbounds %struct.device, ptr %48, i32 0, i32 8
  %50 = load ptr, ptr %49, align 8
  %51 = load i32, ptr %20, align 8
  %52 = and i32 %51, 16
  %53 = icmp eq i32 %52, 0
  %54 = getelementptr inbounds %struct.spi_gpio, ptr %50, i32 0, i32 2
  %55 = getelementptr inbounds %struct.spi_gpio, ptr %50, i32 0, i32 3
  %56 = select i1 %53, ptr %54, ptr %55
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %57) #3
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = or i32 %46, %60
  br label %62

62:                                               ; preds = %47, %39
  %63 = phi i32 [ %61, %47 ], [ %46, %39 ]
  %64 = add i8 %23, -1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %21, !prof !8

66:                                               ; preds = %62, %5
  %67 = phi i32 [ %8, %5 ], [ %63, %62 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_gpio_txrx_word_mode2(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, i32 noundef %4) #2 {
  %6 = zext i8 %3 to i32
  %7 = sub nsw i32 32, %6
  %8 = shl i32 %2, %7
  %9 = icmp eq i8 %3, 0
  br i1 %9, label %66, label %10, !prof !8

10:                                               ; preds = %5
  %11 = xor i32 %2, -1
  %12 = add nsw i32 %6, -1
  %13 = lshr i32 %11, %12
  %14 = shl i32 %13, 31
  %15 = and i32 %4, 4
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %18 = and i32 %4, 2
  %19 = icmp eq i32 %18, 0
  %20 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  br label %21

21:                                               ; preds = %57, %10
  %22 = phi i32 [ %14, %10 ], [ %35, %57 ]
  %23 = phi i8 [ %3, %10 ], [ %64, %57 ]
  %24 = phi i32 [ %8, %10 ], [ %58, %57 ]
  br i1 %16, label %25, label %34

25:                                               ; preds = %21
  %26 = and i32 %24, -2147483648
  %27 = icmp eq i32 %26, %22
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %17, align 4
  %30 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 8
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.spi_gpio, ptr %31, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %33, i32 noundef %26) #3
  br label %34

34:                                               ; preds = %28, %25, %21
  %35 = phi i32 [ %26, %28 ], [ %22, %25 ], [ %22, %21 ]
  %36 = load ptr, ptr %17, align 4
  %37 = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 8
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.spi_gpio, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %40, i32 noundef 0) #3
  %41 = shl i32 %24, 1
  br i1 %19, label %42, label %57

42:                                               ; preds = %34
  %43 = load ptr, ptr %17, align 4
  %44 = getelementptr inbounds %struct.device, ptr %43, i32 0, i32 8
  %45 = load ptr, ptr %44, align 8
  %46 = load i32, ptr %20, align 8
  %47 = and i32 %46, 16
  %48 = icmp eq i32 %47, 0
  %49 = getelementptr inbounds %struct.spi_gpio, ptr %45, i32 0, i32 2
  %50 = getelementptr inbounds %struct.spi_gpio, ptr %45, i32 0, i32 3
  %51 = select i1 %48, ptr %49, ptr %50
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %52) #3
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = or i32 %41, %55
  br label %57

57:                                               ; preds = %42, %34
  %58 = phi i32 [ %56, %42 ], [ %41, %34 ]
  %59 = load ptr, ptr %17, align 4
  %60 = getelementptr inbounds %struct.device, ptr %59, i32 0, i32 8
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %struct.spi_gpio, ptr %61, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %63, i32 noundef 1) #3
  %64 = add i8 %23, -1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %21, !prof !8

66:                                               ; preds = %57, %5
  %67 = phi i32 [ %8, %5 ], [ %58, %57 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_gpio_txrx_word_mode3(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, i32 noundef %4) #2 {
  %6 = zext i8 %3 to i32
  %7 = sub nsw i32 32, %6
  %8 = shl i32 %2, %7
  %9 = icmp eq i8 %3, 0
  br i1 %9, label %66, label %10, !prof !8

10:                                               ; preds = %5
  %11 = xor i32 %2, -1
  %12 = add nsw i32 %6, -1
  %13 = lshr i32 %11, %12
  %14 = shl i32 %13, 31
  %15 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %16 = and i32 %4, 4
  %17 = icmp eq i32 %16, 0
  %18 = and i32 %4, 2
  %19 = icmp eq i32 %18, 0
  %20 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  br label %21

21:                                               ; preds = %62, %10
  %22 = phi i32 [ %14, %10 ], [ %40, %62 ]
  %23 = phi i8 [ %3, %10 ], [ %64, %62 ]
  %24 = phi i32 [ %8, %10 ], [ %63, %62 ]
  %25 = load ptr, ptr %15, align 4
  %26 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 8
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.spi_gpio, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %29, i32 noundef 0) #3
  br i1 %17, label %30, label %39

30:                                               ; preds = %21
  %31 = and i32 %24, -2147483648
  %32 = icmp eq i32 %31, %22
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %15, align 4
  %35 = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 8
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.spi_gpio, ptr %36, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %38, i32 noundef %31) #3
  br label %39

39:                                               ; preds = %33, %30, %21
  %40 = phi i32 [ %31, %33 ], [ %22, %30 ], [ %22, %21 ]
  %41 = load ptr, ptr %15, align 4
  %42 = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 8
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.spi_gpio, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %45, i32 noundef 1) #3
  %46 = shl i32 %24, 1
  br i1 %19, label %47, label %62

47:                                               ; preds = %39
  %48 = load ptr, ptr %15, align 4
  %49 = getelementptr inbounds %struct.device, ptr %48, i32 0, i32 8
  %50 = load ptr, ptr %49, align 8
  %51 = load i32, ptr %20, align 8
  %52 = and i32 %51, 16
  %53 = icmp eq i32 %52, 0
  %54 = getelementptr inbounds %struct.spi_gpio, ptr %50, i32 0, i32 2
  %55 = getelementptr inbounds %struct.spi_gpio, ptr %50, i32 0, i32 3
  %56 = select i1 %53, ptr %54, ptr %55
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %57) #3
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = or i32 %46, %60
  br label %62

62:                                               ; preds = %47, %39
  %63 = phi i32 [ %61, %47 ], [ %46, %39 ]
  %64 = add i8 %23, -1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %21, !prof !8

66:                                               ; preds = %62, %5
  %67 = phi i32 [ %8, %5 ], [ %63, %62 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_bitbang_setup_transfer(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_bitbang_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_bitbang_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_bitbang_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_input(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }

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
