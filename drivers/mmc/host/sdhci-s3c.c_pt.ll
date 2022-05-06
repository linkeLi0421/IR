; ModuleID = '/llk/IR/drivers/mmc/host/sdhci-s3c.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-s3c.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.sdhci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.sdhci_s3c_drv_data = type { i32, i8 }
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
%struct.sdhci_host = type { ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, %struct.mmc_host_ops, i64, %struct.led_classdev, [32 x i8], %struct.spinlock, i32, i32, i32, i32, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x ptr], ptr, ptr, ptr, ptr, i8, %struct.sg_mapping_iter, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.timer_list, %struct.timer_list, ptr, ptr, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i64, [56 x i8], [0 x i32] }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.s3c_sdhci_platdata = type { i32, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.sdhci_s3c = type { ptr, ptr, ptr, ptr, i32, i32, ptr, [4 x ptr], [4 x i32], i8 }

@__initcall__kmod_sdhci_s3c__266_789_sdhci_s3c_driver_init6 = internal global ptr @sdhci_s3c_driver_init, section ".initcall6.init", align 4
@sdhci_s3c_driver = internal global %struct.platform_driver { ptr @sdhci_s3c_probe, ptr @sdhci_s3c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @sdhci_s3c_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_s3c_pmops, ptr null, ptr null }, ptr @sdhci_s3c_driver_ids, i8 0 }, align 4
@__exitcall_sdhci_s3c_driver_exit = internal global ptr @sdhci_s3c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description267 = internal constant [49 x i8] c"sdhci_s3c.description=Samsung SDHCI (HSMMC) glue\00", section ".modinfo", align 1
@__UNIQUE_ID_author268 = internal constant [47 x i8] c"sdhci_s3c.author=Ben Dooks, <ben@simtec.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_file269 = internal constant [42 x i8] c"sdhci_s3c.file=drivers/mmc/host/sdhci-s3c\00", section ".modinfo", align 1
@__UNIQUE_ID_license270 = internal constant [25 x i8] c"sdhci_s3c.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"s3c-sdhci\00", align 1
@sdhci_s3c_dt_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c6410-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4_sdhci_drv_data }, %struct.of_device_id zeroinitializer], align 4
@sdhci_s3c_pmops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @sdhci_s3c_suspend, ptr @sdhci_s3c_resume, ptr @sdhci_s3c_suspend, ptr @sdhci_s3c_resume, ptr @sdhci_s3c_suspend, ptr @sdhci_s3c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_s3c_runtime_suspend, ptr @sdhci_s3c_runtime_resume, ptr null }, align 4
@sdhci_s3c_driver_ids = internal constant [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"s3c-sdhci\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"no device data specified\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"sdhci_alloc_host() failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"hsmmc\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"failed to get io clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"mmc_busclk.%d\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"clock source %d: %s (%ld Hz)\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"failed to find any bus clocks\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"samsung-hsmmc\00", align 1
@sdhci_s3c_ops = internal global %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_s3c_set_clock, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_s3c_get_max_clk, ptr @sdhci_s3c_get_min_clock, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_reset, ptr null, ptr @sdhci_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"bus-width\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"broken-cd\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"non-removable\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"cd-gpios\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"%s: failed to set clock rate %uHz\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"%s: Internal clock never stabilised.\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@exynos4_sdhci_drv_data = internal constant %struct.sdhci_s3c_drv_data { i32 0, i8 1 }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author268, ptr @__UNIQUE_ID_description267, ptr @__UNIQUE_ID_file269, ptr @__UNIQUE_ID_license270, ptr @__exitcall_sdhci_s3c_driver_exit, ptr @__initcall__kmod_sdhci_s3c__266_789_sdhci_s3c_driver_init6, ptr @sdhci_s3c_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sdhci_s3c_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdhci_s3c_driver, ptr noundef null) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sdhci_s3c_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdhci_s3c_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_s3c_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca [14 x i8], align 1
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #11
  br label %233

13:                                               ; preds = %8, %1
  %14 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #10
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %233, label %16

16:                                               ; preds = %13
  %17 = tail call ptr @sdhci_alloc_host(ptr noundef %4, i32 noundef 64) #10
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2) #11
  %20 = ptrtoint ptr %17 to i32
  br label %233

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.sdhci_host, ptr %17, i32 0, i32 81
  %23 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 40, i32 noundef 3520) #10
  %24 = icmp eq ptr %23, null
  br i1 %24, label %231, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %48, label %29

29:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !8
  %30 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %27, ptr noundef nonnull @.str.9, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #10
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, ptr %2, align 4
  br label %35

34:                                               ; preds = %29
  store i32 1, ptr %2, align 4
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ 1, %34 ]
  store i32 %36, ptr %23, align 4
  %37 = call ptr @of_get_property(ptr noundef nonnull %27, ptr noundef nonnull @.str.10, ptr noundef null) #10
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = call ptr @of_get_property(ptr noundef nonnull %27, ptr noundef nonnull @.str.11, ptr noundef null) #10
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = call i32 @of_get_named_gpio_flags(ptr noundef nonnull %27, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef null) #10
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42, %39, %35
  %46 = phi i32 [ 3, %35 ], [ 4, %39 ], [ 0, %42 ]
  %47 = getelementptr inbounds %struct.s3c_sdhci_platdata, ptr %23, i32 0, i32 4
  store i32 %46, ptr %47, align 4
  br label %50

48:                                               ; preds = %25
  %49 = load ptr, ptr %5, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %23, ptr noundef align 1 dereferenceable(40) %49, i32 40, i1 false)
  br label %55

50:                                               ; preds = %45, %42
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  %51 = load ptr, ptr %26, align 8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = call ptr @of_device_get_match_data(ptr noundef %4) #10
  br label %61

55:                                               ; preds = %50, %48
  %56 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.platform_device_id, ptr %57, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = inttoptr i32 %59 to ptr
  br label %61

61:                                               ; preds = %55, %53
  %62 = phi ptr [ %54, %53 ], [ %60, %55 ]
  store ptr %17, ptr %22, align 4
  %63 = getelementptr inbounds %struct.sdhci_host, ptr %17, i32 1, i32 1
  store ptr %0, ptr %63, align 4
  %64 = getelementptr inbounds %struct.sdhci_host, ptr %17, i32 1, i32 3
  store ptr %23, ptr %64, align 4
  %65 = getelementptr inbounds %struct.sdhci_host, ptr %17, i32 1, i32 4
  store i32 -1, ptr %65, align 4
  %66 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %17, ptr %66, align 8
  %67 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.3) #10
  %68 = getelementptr inbounds %struct.sdhci_host, ptr %17, i32 1, i32 6
  store ptr %67, ptr %68, align 4
  %69 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4) #11
  %71 = load ptr, ptr %68, align 4
  %72 = ptrtoint ptr %71 to i32
  br label %231

73:                                               ; preds = %61
  %74 = call i32 @clk_prepare(ptr noundef %67) #10
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = call i32 @clk_enable(ptr noundef %67) #10
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  call void @clk_unprepare(ptr noundef %67) #10
  br label %80

80:                                               ; preds = %79, %76, %73
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(14) %3, i8 0, i32 14, i1 false), !annotation !8
  %81 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 14, ptr noundef nonnull @.str.5, i32 noundef 0)
  %82 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull %3) #10
  %83 = getelementptr %struct.sdhci_host, ptr %17, i32 1, i32 7
  store ptr %82, ptr %83, align 4
  %84 = icmp ugt ptr %82, inttoptr (i32 -4096 to ptr)
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = call i32 @clk_get_rate(ptr noundef %82) #10
  %87 = getelementptr %struct.sdhci_host, ptr %17, i32 1, i32 11
  store i32 %86, ptr %87, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef nonnull %3, i32 noundef %86) #11
  br label %88

88:                                               ; preds = %85, %80
  %89 = phi i32 [ 1, %85 ], [ 0, %80 ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(14) %3, i8 0, i32 14, i1 false), !annotation !8
  %90 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 14, ptr noundef nonnull @.str.5, i32 noundef 1)
  %91 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull %3) #10
  %92 = getelementptr %struct.sdhci_host, ptr %17, i32 1, i32 8
  store ptr %91, ptr %92, align 4
  %93 = icmp ugt ptr %91, inttoptr (i32 -4096 to ptr)
  br i1 %93, label %98, label %94

94:                                               ; preds = %88
  %95 = add nuw nsw i32 %89, 1
  %96 = call i32 @clk_get_rate(ptr noundef %91) #10
  %97 = getelementptr %struct.sdhci_host, ptr %17, i32 1, i32 11, i32 1
  store i32 %96, ptr %97, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %3, i32 noundef %96) #11
  br label %98

98:                                               ; preds = %94, %88
  %99 = phi i32 [ %95, %94 ], [ %89, %88 ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(14) %3, i8 0, i32 14, i1 false), !annotation !8
  %100 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 14, ptr noundef nonnull @.str.5, i32 noundef 2)
  %101 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull %3) #10
  %102 = getelementptr %struct.sdhci_host, ptr %17, i32 1, i32 9
  store ptr %101, ptr %102, align 4
  %103 = icmp ugt ptr %101, inttoptr (i32 -4096 to ptr)
  br i1 %103, label %108, label %104

104:                                              ; preds = %98
  %105 = add nuw nsw i32 %99, 1
  %106 = call i32 @clk_get_rate(ptr noundef %101) #10
  %107 = getelementptr %struct.sdhci_host, ptr %17, i32 1, i32 11, i32 2
  store i32 %106, ptr %107, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.6, i32 noundef 2, ptr noundef nonnull %3, i32 noundef %106) #11
  br label %108

108:                                              ; preds = %104, %98
  %109 = phi i32 [ %105, %104 ], [ %99, %98 ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(14) %3, i8 0, i32 14, i1 false), !annotation !8
  %110 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 14, ptr noundef nonnull @.str.5, i32 noundef 3)
  %111 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull %3) #10
  %112 = getelementptr %struct.sdhci_host, ptr %17, i32 1, i32 10
  store ptr %111, ptr %112, align 4
  %113 = icmp ugt ptr %111, inttoptr (i32 -4096 to ptr)
  br i1 %113, label %117, label %114

114:                                              ; preds = %108
  %115 = call i32 @clk_get_rate(ptr noundef %111) #10
  %116 = getelementptr %struct.sdhci_host, ptr %17, i32 1, i32 11, i32 3
  store i32 %115, ptr %116, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.6, i32 noundef 3, ptr noundef nonnull %3, i32 noundef %115) #11
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %3) #10
  br label %120

117:                                              ; preds = %108
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %3) #10
  %118 = icmp eq i32 %109, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %117
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7) #11
  br label %228

120:                                              ; preds = %117, %114
  %121 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #10
  %122 = getelementptr inbounds %struct.sdhci_host, ptr %17, i32 0, i32 4
  store ptr %121, ptr %122, align 16
  %123 = icmp ugt ptr %121, inttoptr (i32 -4096 to ptr)
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = ptrtoint ptr %121 to i32
  br label %226

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.s3c_sdhci_platdata, ptr %23, i32 0, i32 9
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %132, label %130

130:                                              ; preds = %126
  %131 = load i32, ptr %23, align 4
  call void %128(ptr noundef %0, i32 noundef %131) #10
  br label %132

132:                                              ; preds = %130, %126
  store ptr @.str.8, ptr %17, align 64
  %133 = getelementptr inbounds %struct.sdhci_host, ptr %17, i32 0, i32 9
  store ptr @sdhci_s3c_ops, ptr %133, align 4
  %134 = getelementptr inbounds %struct.sdhci_host, ptr %17, i32 0, i32 1
  %135 = getelementptr inbounds %struct.sdhci_host, ptr %17, i32 0, i32 2
  store i32 0, ptr %135, align 8
  %136 = getelementptr inbounds %struct.sdhci_host, ptr %17, i32 0, i32 3
  store i32 %14, ptr %136, align 4
  store i32 603979776, ptr %134, align 4
  %137 = icmp eq ptr %62, null
  br i1 %137, label %144, label %138

138:                                              ; preds = %132
  %139 = load i32, ptr %62, align 4
  %140 = or i32 %139, 603979776
  store i32 %140, ptr %134, align 4
  %141 = getelementptr inbounds %struct.sdhci_s3c_drv_data, ptr %62, i32 0, i32 1
  %142 = load i8, ptr %141, align 4, !range !9
  %143 = getelementptr inbounds %struct.sdhci_host, ptr %17, i32 1, i32 11, i32 4
  store i8 %142, ptr %143, align 4
  br label %144

144:                                              ; preds = %138, %132
  %145 = phi i32 [ %140, %138 ], [ 603979776, %132 ]
  %146 = or i32 %145, 1342193664
  store i32 %146, ptr %134, align 4
  %147 = getelementptr inbounds %struct.s3c_sdhci_platdata, ptr %23, i32 0, i32 4
  %148 = load i32, ptr %147, align 4
  %149 = add i32 %148, -3
  %150 = icmp ult i32 %149, 2
  br i1 %150, label %151, label %159

151:                                              ; preds = %144
  %152 = or i32 %145, 1342226432
  store i32 %152, ptr %134, align 4
  %153 = load i32, ptr %147, align 4
  %154 = icmp eq i32 %153, 4
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.sdhci_host, ptr %17, i32 0, i32 10
  %157 = load ptr, ptr %156, align 8
  %158 = getelementptr inbounds %struct.mmc_host, ptr %157, i32 0, i32 16
  store i32 256, ptr %158, align 8
  br label %159

159:                                              ; preds = %155, %151, %144
  %160 = load i32, ptr %23, align 4
  switch i32 %160, label %173 [
    i32 8, label %161
    i32 4, label %167
  ]

161:                                              ; preds = %159
  %162 = getelementptr inbounds %struct.sdhci_host, ptr %17, i32 0, i32 10
  %163 = load ptr, ptr %162, align 8
  %164 = getelementptr inbounds %struct.mmc_host, ptr %163, i32 0, i32 16
  %165 = load i32, ptr %164, align 8
  %166 = or i32 %165, 64
  store i32 %166, ptr %164, align 8
  br label %167

167:                                              ; preds = %161, %159
  %168 = getelementptr inbounds %struct.sdhci_host, ptr %17, i32 0, i32 10
  %169 = load ptr, ptr %168, align 8
  %170 = getelementptr inbounds %struct.mmc_host, ptr %169, i32 0, i32 16
  %171 = load i32, ptr %170, align 8
  %172 = or i32 %171, 1
  store i32 %172, ptr %170, align 8
  br label %173

173:                                              ; preds = %167, %159
  %174 = getelementptr inbounds %struct.s3c_sdhci_platdata, ptr %23, i32 0, i32 3
  %175 = load i32, ptr %174, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %183, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.sdhci_host, ptr %17, i32 0, i32 10
  %179 = load ptr, ptr %178, align 8
  %180 = getelementptr inbounds %struct.mmc_host, ptr %179, i32 0, i32 19
  %181 = load i32, ptr %180, align 4
  %182 = or i32 %181, %175
  store i32 %182, ptr %180, align 4
  br label %183

183:                                              ; preds = %177, %173
  %184 = load i32, ptr %134, align 4
  %185 = or i32 %184, 16777600
  store i32 %185, ptr %134, align 4
  %186 = getelementptr inbounds %struct.sdhci_host, ptr %17, i32 1, i32 11, i32 4
  %187 = load i8, ptr %186, align 4, !range !9
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %183
  store ptr @sdhci_cmu_set_clock, ptr getelementptr inbounds (%struct.sdhci_ops, ptr @sdhci_s3c_ops, i32 0, i32 6), align 4
  store ptr @sdhci_cmu_get_min_clock, ptr getelementptr inbounds (%struct.sdhci_ops, ptr @sdhci_s3c_ops, i32 0, i32 12), align 4
  store ptr @sdhci_cmu_get_max_clock, ptr getelementptr inbounds (%struct.sdhci_ops, ptr @sdhci_s3c_ops, i32 0, i32 11), align 4
  br label %190

190:                                              ; preds = %189, %183
  %191 = getelementptr inbounds %struct.s3c_sdhci_platdata, ptr %23, i32 0, i32 1
  %192 = load i32, ptr %191, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %200, label %194

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.sdhci_host, ptr %17, i32 0, i32 10
  %196 = load ptr, ptr %195, align 8
  %197 = getelementptr inbounds %struct.mmc_host, ptr %196, i32 0, i32 16
  %198 = load i32, ptr %197, align 8
  %199 = or i32 %198, %192
  store i32 %199, ptr %197, align 8
  br label %200

200:                                              ; preds = %194, %190
  %201 = getelementptr inbounds %struct.s3c_sdhci_platdata, ptr %23, i32 0, i32 2
  %202 = load i32, ptr %201, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %210, label %204

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.sdhci_host, ptr %17, i32 0, i32 10
  %206 = load ptr, ptr %205, align 8
  %207 = getelementptr inbounds %struct.mmc_host, ptr %206, i32 0, i32 17
  %208 = load i32, ptr %207, align 4
  %209 = or i32 %208, %202
  store i32 %209, ptr %207, align 4
  br label %210

210:                                              ; preds = %204, %200
  call void @pm_runtime_enable(ptr noundef %4) #10
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %4, i32 noundef 50) #10
  call void @__pm_runtime_use_autosuspend(ptr noundef %4, i1 noundef zeroext true) #10
  %211 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 15
  %212 = load i16, ptr %211, align 8
  %213 = or i16 %212, 256
  store i16 %213, ptr %211, align 8
  %214 = getelementptr inbounds %struct.sdhci_host, ptr %17, i32 0, i32 10
  %215 = load ptr, ptr %214, align 8
  %216 = call i32 @mmc_of_parse(ptr noundef %215) #10
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %226

218:                                              ; preds = %210
  %219 = call i32 @sdhci_add_host(ptr noundef %17) #10
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %218
  %222 = load i32, ptr %147, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %233, label %224

224:                                              ; preds = %221
  %225 = load ptr, ptr %68, align 4
  call void @clk_disable(ptr noundef %225) #10
  call void @clk_unprepare(ptr noundef %225) #10
  br label %233

226:                                              ; preds = %218, %210, %124
  %227 = phi i32 [ %125, %124 ], [ %216, %210 ], [ %219, %218 ]
  call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #10
  br label %228

228:                                              ; preds = %226, %119
  %229 = phi i32 [ -2, %119 ], [ %227, %226 ]
  %230 = load ptr, ptr %68, align 4
  call void @clk_disable(ptr noundef %230) #10
  call void @clk_unprepare(ptr noundef %230) #10
  br label %231

231:                                              ; preds = %228, %70, %21
  %232 = phi i32 [ %72, %70 ], [ %229, %228 ], [ -12, %21 ]
  call void @sdhci_free_host(ptr noundef %17) #10
  br label %233

233:                                              ; preds = %231, %224, %221, %19, %13, %12
  %234 = phi i32 [ %20, %19 ], [ %232, %231 ], [ -2, %12 ], [ %14, %13 ], [ 0, %224 ], [ 0, %221 ]
  ret i32 %234
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_s3c_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 81
  %9 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %8) #10
  br label %10

10:                                               ; preds = %7, %1
  %11 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.s3c_sdhci_platdata, ptr %12, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @clk_prepare(ptr noundef %18) #10
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = tail call i32 @clk_enable(ptr noundef %18) #10
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @clk_unprepare(ptr noundef %18) #10
  br label %25

25:                                               ; preds = %24, %21, %16, %10
  tail call void @sdhci_remove_host(ptr noundef %3, i32 noundef 1) #10
  %26 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %26, i1 noundef zeroext false) #10
  tail call void @__pm_runtime_disable(ptr noundef %26, i1 noundef zeroext true) #10
  %27 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 6
  %28 = load ptr, ptr %27, align 4
  tail call void @clk_disable(ptr noundef %28) #10
  tail call void @clk_unprepare(ptr noundef %28) #10
  tail call void @sdhci_free_host(ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdhci_alloc_host(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_cmu_set_clock(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 81
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.mmc_host, ptr %8, i32 0, i32 57
  store i32 0, ptr %9, align 4
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.sdhci_ops, ptr %13, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17, !prof !10

17:                                               ; preds = %11
  tail call void %15(ptr noundef %0, i16 noundef zeroext 0, i32 noundef 44) #10
  br label %117

18:                                               ; preds = %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %19 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %20 = load ptr, ptr %19, align 16
  %21 = getelementptr i8, ptr %20, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %21, i16 0) #10, !srcloc !12
  br label %117

22:                                               ; preds = %2
  tail call void @sdhci_s3c_set_clock(ptr noundef %0, i32 noundef %1)
  %23 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.sdhci_ops, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28, !prof !10

28:                                               ; preds = %22
  %29 = tail call zeroext i16 %26(ptr noundef %0, i32 noundef 44) #10
  br label %35

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %32 = load ptr, ptr %31, align 16
  %33 = getelementptr i8, ptr %32, i32 44
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %33) #10, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  br label %35

35:                                               ; preds = %30, %28
  %36 = phi i16 [ %29, %28 ], [ %34, %30 ]
  %37 = and i16 %36, -5
  %38 = load ptr, ptr %23, align 4
  %39 = getelementptr inbounds %struct.sdhci_ops, ptr %38, i32 0, i32 4
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42, !prof !10

42:                                               ; preds = %35
  tail call void %40(ptr noundef %0, i16 noundef zeroext %37, i32 noundef 44) #10
  br label %47

43:                                               ; preds = %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %44 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %45 = load ptr, ptr %44, align 16
  %46 = getelementptr i8, ptr %45, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %46, i16 %37) #10, !srcloc !12
  br label %47

47:                                               ; preds = %43, %42
  %48 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 4
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr %struct.sdhci_s3c, ptr %3, i32 0, i32 7, i32 %49
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 @clk_set_rate(ptr noundef %51, i32 noundef %1) #10
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %47
  %55 = load ptr, ptr %7, align 8
  %56 = getelementptr inbounds %struct.mmc_host, ptr %55, i32 0, i32 1, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.mmc_host, ptr %55, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  br label %62

62:                                               ; preds = %59, %54
  %63 = phi ptr [ %61, %59 ], [ %57, %54 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.13, ptr noundef %63, i32 noundef %1) #11
  br label %117

64:                                               ; preds = %47
  %65 = load ptr, ptr %23, align 4
  %66 = getelementptr inbounds %struct.sdhci_ops, ptr %65, i32 0, i32 4
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69, !prof !10

69:                                               ; preds = %64
  tail call void %67(ptr noundef %0, i16 noundef zeroext 1, i32 noundef 44) #10
  br label %74

70:                                               ; preds = %64
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %71 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %72 = load ptr, ptr %71, align 16
  %73 = getelementptr i8, ptr %72, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %73, i16 1) #10, !srcloc !12
  br label %74

74:                                               ; preds = %70, %69
  %75 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  br label %76

76:                                               ; preds = %104, %74
  %77 = phi i32 [ 20, %74 ], [ %105, %104 ]
  %78 = load ptr, ptr %23, align 4
  %79 = getelementptr inbounds %struct.sdhci_ops, ptr %78, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82, !prof !10

82:                                               ; preds = %76
  %83 = tail call zeroext i16 %80(ptr noundef %0, i32 noundef 44) #10
  br label %88

84:                                               ; preds = %76
  %85 = load ptr, ptr %75, align 16
  %86 = getelementptr i8, ptr %85, i32 44
  %87 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %86) #10, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  br label %88

88:                                               ; preds = %84, %82
  %89 = phi i16 [ %83, %82 ], [ %87, %84 ]
  %90 = and i16 %89, 2
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %88
  %93 = icmp eq i32 %77, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %92
  %95 = load ptr, ptr %7, align 8
  %96 = getelementptr inbounds %struct.mmc_host, ptr %95, i32 0, i32 1, i32 3
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.mmc_host, ptr %95, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4
  br label %102

102:                                              ; preds = %99, %94
  %103 = phi ptr [ %101, %99 ], [ %97, %94 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.14, ptr noundef %103) #11
  br label %117

104:                                              ; preds = %92
  %105 = add nsw i32 %77, -1
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %106(i32 noundef 214748000) #10
  br label %76

107:                                              ; preds = %88
  %108 = or i16 %89, 4
  %109 = load ptr, ptr %23, align 4
  %110 = getelementptr inbounds %struct.sdhci_ops, ptr %109, i32 0, i32 4
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %114, label %113, !prof !10

113:                                              ; preds = %107
  tail call void %111(ptr noundef %0, i16 noundef zeroext %108, i32 noundef 44) #10
  br label %117

114:                                              ; preds = %107
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %115 = load ptr, ptr %75, align 16
  %116 = getelementptr i8, ptr %115, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %116, i16 %108) #10, !srcloc !12
  br label %117

117:                                              ; preds = %114, %113, %102, %62, %18, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_cmu_get_min_clock(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr %struct.sdhci_host, ptr %0, i32 1, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @clk_round_rate(ptr noundef %3, i32 noundef 0) #10
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ -1, %1 ]
  %9 = getelementptr %struct.sdhci_host, ptr %0, i32 1, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = tail call i32 @clk_round_rate(ptr noundef %10, i32 noundef 0) #10
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 %8)
  br label %15

15:                                               ; preds = %12, %7
  %16 = phi i32 [ %14, %12 ], [ %8, %7 ]
  %17 = getelementptr %struct.sdhci_host, ptr %0, i32 1, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = tail call i32 @clk_round_rate(ptr noundef %18, i32 noundef 0) #10
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 %16)
  br label %23

23:                                               ; preds = %20, %15
  %24 = phi i32 [ %22, %20 ], [ %16, %15 ]
  %25 = getelementptr %struct.sdhci_host, ptr %0, i32 1, i32 10
  %26 = load ptr, ptr %25, align 4
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = tail call i32 @clk_round_rate(ptr noundef %26, i32 noundef 0) #10
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 %24)
  br label %31

31:                                               ; preds = %28, %23
  %32 = phi i32 [ %30, %28 ], [ %24, %23 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_cmu_get_max_clock(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr %struct.sdhci_host, ptr %0, i32 1, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @clk_round_rate(ptr noundef %3, i32 noundef -1) #10
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  %9 = getelementptr %struct.sdhci_host, ptr %0, i32 1, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = tail call i32 @clk_round_rate(ptr noundef %10, i32 noundef -1) #10
  %14 = tail call i32 @llvm.umax.i32(i32 %13, i32 %8)
  br label %15

15:                                               ; preds = %12, %7
  %16 = phi i32 [ %14, %12 ], [ %8, %7 ]
  %17 = getelementptr %struct.sdhci_host, ptr %0, i32 1, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = tail call i32 @clk_round_rate(ptr noundef %18, i32 noundef -1) #10
  %22 = tail call i32 @llvm.umax.i32(i32 %21, i32 %16)
  br label %23

23:                                               ; preds = %20, %15
  %24 = phi i32 [ %22, %20 ], [ %16, %15 ]
  %25 = getelementptr %struct.sdhci_host, ptr %0, i32 1, i32 10
  %26 = load ptr, ptr %25, align 4
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = tail call i32 @clk_round_rate(ptr noundef %26, i32 noundef -1) #10
  %30 = tail call i32 @llvm.umax.i32(i32 %29, i32 %24)
  br label %31

31:                                               ; preds = %28, %23
  %32 = phi i32 [ %30, %28 ], [ %24, %23 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_s3c_set_clock(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 81
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 57
  store i32 0, ptr %6, align 4
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %164, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 4
  %10 = getelementptr %struct.sdhci_host, ptr %0, i32 1, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %33, label %13

13:                                               ; preds = %8
  %14 = load i8, ptr %9, align 4, !range !9
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @clk_round_rate(ptr noundef %11, i32 noundef %1) #10
  %18 = sub i32 %1, %17
  br label %33

19:                                               ; preds = %13
  %20 = getelementptr %struct.sdhci_host, ptr %0, i32 1, i32 11
  %21 = load i32, ptr %20, align 4
  br label %22

22:                                               ; preds = %22, %19
  %23 = phi i32 [ 0, %19 ], [ %28, %22 ]
  %24 = icmp ult i32 %23, 9
  %25 = lshr i32 %21, %23
  %26 = icmp ugt i32 %25, %1
  %27 = select i1 %24, i1 %26, i1 false
  %28 = add nuw nsw i32 %23, 1
  br i1 %27, label %22, label %29

29:                                               ; preds = %22
  %30 = icmp ugt i32 %23, 8
  %31 = sub i32 %1, %25
  %32 = select i1 %30, i32 -1, i32 %31
  br label %33

33:                                               ; preds = %29, %16, %8
  %34 = phi i32 [ %18, %16 ], [ -1, %8 ], [ %32, %29 ]
  %35 = getelementptr %struct.sdhci_host, ptr %0, i32 1, i32 8
  %36 = load ptr, ptr %35, align 4
  %37 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %58, label %38

38:                                               ; preds = %33
  %39 = load i8, ptr %9, align 4, !range !9
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = tail call i32 @clk_round_rate(ptr noundef %36, i32 noundef %1) #10
  %43 = sub i32 %1, %42
  br label %58

44:                                               ; preds = %38
  %45 = getelementptr %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 1
  %46 = load i32, ptr %45, align 4
  br label %47

47:                                               ; preds = %47, %44
  %48 = phi i32 [ 0, %44 ], [ %53, %47 ]
  %49 = icmp ult i32 %48, 9
  %50 = lshr i32 %46, %48
  %51 = icmp ugt i32 %50, %1
  %52 = select i1 %49, i1 %51, i1 false
  %53 = add nuw nsw i32 %48, 1
  br i1 %52, label %47, label %54

54:                                               ; preds = %47
  %55 = icmp ugt i32 %48, 8
  %56 = sub i32 %1, %50
  %57 = select i1 %55, i32 -1, i32 %56
  br label %58

58:                                               ; preds = %54, %41, %33
  %59 = phi i32 [ %43, %41 ], [ -1, %33 ], [ %57, %54 ]
  %60 = icmp ult i32 %59, %34
  %61 = zext i1 %60 to i32
  %62 = tail call i32 @llvm.umin.i32(i32 %59, i32 %34)
  %63 = getelementptr %struct.sdhci_host, ptr %0, i32 1, i32 9
  %64 = load ptr, ptr %63, align 4
  %65 = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %86, label %66

66:                                               ; preds = %58
  %67 = load i8, ptr %9, align 4, !range !9
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = tail call i32 @clk_round_rate(ptr noundef %64, i32 noundef %1) #10
  %71 = sub i32 %1, %70
  br label %86

72:                                               ; preds = %66
  %73 = getelementptr %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 2
  %74 = load i32, ptr %73, align 4
  br label %75

75:                                               ; preds = %75, %72
  %76 = phi i32 [ 0, %72 ], [ %81, %75 ]
  %77 = icmp ult i32 %76, 9
  %78 = lshr i32 %74, %76
  %79 = icmp ugt i32 %78, %1
  %80 = select i1 %77, i1 %79, i1 false
  %81 = add nuw nsw i32 %76, 1
  br i1 %80, label %75, label %82

82:                                               ; preds = %75
  %83 = icmp ugt i32 %76, 8
  %84 = sub i32 %1, %78
  %85 = select i1 %83, i32 -1, i32 %84
  br label %86

86:                                               ; preds = %82, %69, %58
  %87 = phi i32 [ %71, %69 ], [ -1, %58 ], [ %85, %82 ]
  %88 = icmp ult i32 %87, %62
  %89 = select i1 %88, i32 2, i32 %61
  %90 = tail call i32 @llvm.umin.i32(i32 %87, i32 %62)
  %91 = getelementptr %struct.sdhci_host, ptr %0, i32 1, i32 10
  %92 = load ptr, ptr %91, align 4
  %93 = icmp ugt ptr %92, inttoptr (i32 -4096 to ptr)
  br i1 %93, label %114, label %94

94:                                               ; preds = %86
  %95 = load i8, ptr %9, align 4, !range !9
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = tail call i32 @clk_round_rate(ptr noundef %92, i32 noundef %1) #10
  %99 = sub i32 %1, %98
  br label %114

100:                                              ; preds = %94
  %101 = getelementptr %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 3
  %102 = load i32, ptr %101, align 4
  br label %103

103:                                              ; preds = %103, %100
  %104 = phi i32 [ 0, %100 ], [ %109, %103 ]
  %105 = icmp ult i32 %104, 9
  %106 = lshr i32 %102, %104
  %107 = icmp ugt i32 %106, %1
  %108 = select i1 %105, i1 %107, i1 false
  %109 = add nuw nsw i32 %104, 1
  br i1 %108, label %103, label %110

110:                                              ; preds = %103
  %111 = icmp ugt i32 %104, 8
  %112 = sub i32 %1, %106
  %113 = select i1 %111, i32 -1, i32 %112
  br label %114

114:                                              ; preds = %110, %97, %86
  %115 = phi i32 [ %99, %97 ], [ -1, %86 ], [ %113, %110 ]
  %116 = icmp ult i32 %115, %90
  %117 = select i1 %116, i32 3, i32 %89
  %118 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 4
  %119 = load i32, ptr %118, align 4
  %120 = icmp eq i32 %119, %117
  br i1 %120, label %140, label %121

121:                                              ; preds = %114
  %122 = getelementptr %struct.sdhci_s3c, ptr %3, i32 0, i32 7, i32 %117
  %123 = load ptr, ptr %122, align 4
  %124 = tail call i32 @clk_prepare(ptr noundef %123) #10
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = tail call i32 @clk_enable(ptr noundef %123) #10
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %126
  tail call void @clk_unprepare(ptr noundef %123) #10
  br label %130

130:                                              ; preds = %129, %126, %121
  %131 = load i32, ptr %118, align 4
  %132 = icmp sgt i32 %131, -1
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = getelementptr %struct.sdhci_s3c, ptr %3, i32 0, i32 7, i32 %131
  %135 = load ptr, ptr %134, align 4
  tail call void @clk_disable(ptr noundef %135) #10
  tail call void @clk_unprepare(ptr noundef %135) #10
  br label %136

136:                                              ; preds = %133, %130
  store i32 %117, ptr %118, align 4
  %137 = getelementptr %struct.sdhci_s3c, ptr %3, i32 0, i32 8, i32 %117
  %138 = load i32, ptr %137, align 4
  %139 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 18
  store i32 %138, ptr %139, align 4
  br label %140

140:                                              ; preds = %136, %114
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !15
  tail call void @arm_heavy_mb() #10
  %141 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %142 = load ptr, ptr %141, align 16
  %143 = getelementptr i8, ptr %142, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %143, i16 0) #10, !srcloc !12
  %144 = load ptr, ptr %141, align 16
  %145 = getelementptr i8, ptr %144, i32 128
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %145) #10, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !17
  %147 = and i32 %146, -49
  %148 = shl nuw nsw i32 %117, 4
  %149 = or i32 %147, %148
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !18
  tail call void @arm_heavy_mb() #10
  %150 = load ptr, ptr %141, align 16
  %151 = getelementptr i8, ptr %150, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %151, i32 %149) #10, !srcloc !19
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !20
  tail call void @arm_heavy_mb() #10
  %152 = load ptr, ptr %141, align 16
  %153 = getelementptr i8, ptr %152, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 196608) #10, !srcloc !19
  %154 = load ptr, ptr %141, align 16
  %155 = getelementptr i8, ptr %154, i32 128
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %155) #10, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !21
  %157 = or i32 %156, -1073725184
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !22
  tail call void @arm_heavy_mb() #10
  %158 = load ptr, ptr %141, align 16
  %159 = getelementptr i8, ptr %158, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %159, i32 %157) #10, !srcloc !19
  %160 = icmp ult i32 %1, 25000000
  %161 = select i1 %160, i32 -2139062144, i32 32896
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !23
  tail call void @arm_heavy_mb() #10
  %162 = load ptr, ptr %141, align 16
  %163 = getelementptr i8, ptr %162, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %163, i32 %161) #10, !srcloc !19
  br label %164

164:                                              ; preds = %140, %2
  %165 = phi i32 [ %1, %140 ], [ 0, %2 ]
  tail call void @sdhci_set_clock(ptr noundef %0, i32 noundef %165) #10
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @sdhci_s3c_get_max_clk(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr %struct.sdhci_host, ptr %0, i32 1, i32 11
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 @llvm.umax.i32(i32 %5, i32 %3)
  %7 = getelementptr %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @llvm.umax.i32(i32 %8, i32 %6)
  %10 = getelementptr %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @llvm.umax.i32(i32 %11, i32 %9)
  ret i32 %12
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @sdhci_s3c_get_min_clock(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr %struct.sdhci_host, ptr %0, i32 1, i32 11
  %3 = load i32, ptr %2, align 4
  %4 = lshr i32 %3, 8
  %5 = icmp ugt i32 %3, 255
  %6 = select i1 %5, i32 %4, i32 -1
  %7 = getelementptr %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = lshr i32 %8, 8
  %10 = icmp ugt i32 %8, 255
  %11 = icmp ult i32 %9, %6
  %12 = select i1 %10, i1 %11, i1 false
  %13 = select i1 %12, i32 %9, i32 %6
  %14 = getelementptr %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = lshr i32 %15, 8
  %17 = icmp ugt i32 %15, 255
  %18 = icmp ult i32 %16, %13
  %19 = select i1 %17, i1 %18, i1 false
  %20 = select i1 %19, i32 %16, i32 %13
  %21 = getelementptr %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = lshr i32 %22, 8
  %24 = icmp ugt i32 %22, 255
  %25 = icmp ult i32 %23, %20
  %26 = select i1 %24, i1 %25, i1 false
  %27 = select i1 %26, i32 %23, i32 %20
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_bus_width(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_uhs_signaling(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_clock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_remove_host(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_s3c_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 73
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 10
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 29
  %11 = load i16, ptr %10, align 8
  %12 = and i16 %11, 8
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 32
  store i32 1, ptr %15, align 4
  br label %16

16:                                               ; preds = %14, %7, %1
  %17 = tail call i32 @sdhci_suspend_host(ptr noundef %3) #10
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_s3c_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @sdhci_resume_host(ptr noundef %3) #10
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_s3c_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 81
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @sdhci_runtime_suspend_host(ptr noundef %3) #10
  %8 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 73
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %20, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 10
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.mmc_host, ptr %13, i32 0, i32 29
  %15 = load i16, ptr %14, align 8
  %16 = and i16 %15, 8
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.mmc_host, ptr %13, i32 0, i32 32
  store i32 1, ptr %19, align 4
  br label %20

20:                                               ; preds = %18, %11, %1
  %21 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr %struct.sdhci_s3c, ptr %4, i32 0, i32 7, i32 %22
  %26 = load ptr, ptr %25, align 4
  tail call void @clk_disable(ptr noundef %26) #10
  tail call void @clk_unprepare(ptr noundef %26) #10
  br label %27

27:                                               ; preds = %24, %20
  tail call void @clk_disable(ptr noundef %6) #10
  tail call void @clk_unprepare(ptr noundef %6) #10
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_s3c_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 81
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @clk_prepare(ptr noundef %6) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = tail call i32 @clk_enable(ptr noundef %6) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @clk_unprepare(ptr noundef %6) #10
  br label %13

13:                                               ; preds = %12, %9, %1
  %14 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = getelementptr %struct.sdhci_s3c, ptr %4, i32 0, i32 7, i32 %15
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @clk_prepare(ptr noundef %19) #10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = tail call i32 @clk_enable(ptr noundef %19) #10
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @clk_unprepare(ptr noundef %19) #10
  br label %26

26:                                               ; preds = %25, %22, %17, %13
  %27 = tail call i32 @sdhci_runtime_resume_host(ptr noundef %3, i32 noundef 0) #10
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_suspend_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_resume_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_runtime_suspend_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_runtime_resume_host(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2153656829}
!12 = !{i64 4978638}
!13 = !{i64 4978838}
!14 = !{i64 2153658518}
!15 = !{i64 2153661959}
!16 = !{i64 4979676}
!17 = !{i64 2153662439}
!18 = !{i64 2153662651}
!19 = !{i64 4979258}
!20 = !{i64 2153663002}
!21 = !{i64 2153663504}
!22 = !{i64 2153664046}
!23 = !{i64 2153664712}
