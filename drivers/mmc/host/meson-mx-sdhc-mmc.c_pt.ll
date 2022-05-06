; ModuleID = '/llk/IR/drivers/mmc/host/meson-mx-sdhc-mmc.c_pt.bc'
source_filename = "../drivers/mmc/host/meson-mx-sdhc-mmc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.meson_mx_sdhc_data = type { ptr, ptr, ptr, i8 }
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
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.meson_mx_sdhc_host = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, [4 x %struct.clk_bulk_data], i8, ptr }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__initcall__kmod_meson_mx_sdhc__499_932_meson_mx_sdhc_driver_init6 = internal global ptr @meson_mx_sdhc_driver_init, section ".initcall6.init", align 4
@meson_mx_sdhc_driver = internal global %struct.platform_driver { ptr @meson_mx_sdhc_probe, ptr @meson_mx_sdhc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @meson_mx_sdhc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_meson_mx_sdhc_driver_exit = internal global ptr @meson_mx_sdhc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description500 = internal constant [80 x i8] c"meson_mx_sdhc.description=Meson6, Meson8, Meson8b and Meson8m2 SDHC Host Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author501 = internal constant [78 x i8] c"meson_mx_sdhc.author=Martin Blumenstingl <martin.blumenstingl@googlemail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file502 = internal constant [50 x i8] c"meson_mx_sdhc.file=drivers/mmc/host/meson-mx-sdhc\00", section ".modinfo", align 1
@__UNIQUE_ID_license503 = internal constant [29 x i8] c"meson_mx_sdhc.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"meson-mx-sdhc\00", align 1
@meson_mx_sdhc_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8-sdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_mx_sdhc_data_meson8 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8b-sdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_mx_sdhc_data_meson8 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8m2-sdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_mx_sdhc_data_meson8m2 }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to register mmc_free_host action\0A\00", align 1
@meson_mx_sdhc_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 56, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to enable 'pclk' clock\0A\00", align 1
@meson_mx_sdhc_ops = internal constant %struct.mmc_host_ops { ptr null, ptr null, ptr @meson_mx_sdhc_request, ptr null, ptr @meson_mx_sdhc_set_ios, ptr @mmc_gpio_get_ro, ptr @mmc_gpio_get_cd, ptr null, ptr null, ptr null, ptr null, ptr @meson_mx_sdhc_card_busy, ptr @meson_mx_sdhc_execute_tuning, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @meson_mx_sdhc_hw_reset, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"dma_map_sg failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"Failed to poll for CMD_BUSY while processing CMD%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"Failed to poll for ESTA[13:11] while processing CMD%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"unsupported bus width: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Failed to set MMC clock to %uHz: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"drivers/mmc/host/meson-mx-sdhc-mmc.c\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.10 = private unnamed_addr constant [41 x i8] c"Failed to clear FIFOs, RX: %lu, TX: %lu\0A\00", align 1
@meson_mx_sdhc_data_meson8 = internal constant %struct.meson_mx_sdhc_data { ptr @meson_mx_sdhc_init_hw_meson8, ptr @meson_mx_sdhc_set_pdma_meson8, ptr @meson_mx_sdhc_wait_before_send_meson8, i8 0 }, align 4
@meson_mx_sdhc_data_meson8m2 = internal constant %struct.meson_mx_sdhc_data { ptr @meson_mx_sdhc_init_hw_meson8m2, ptr @meson_mx_sdhc_set_pdma_meson8m2, ptr null, i8 1 }, align 4
@.str.11 = private unnamed_addr constant [42 x i8] c"Failed to wait for ESTA to clear: 0x%08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"Failed to wait for TX FIFO to fill\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author501, ptr @__UNIQUE_ID_description500, ptr @__UNIQUE_ID_file502, ptr @__UNIQUE_ID_license503, ptr @__exitcall_meson_mx_sdhc_driver_exit, ptr @__initcall__kmod_meson_mx_sdhc__499_932_meson_mx_sdhc_driver_init6, ptr @meson_mx_sdhc_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @meson_mx_sdhc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson_mx_sdhc_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @meson_mx_sdhc_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson_mx_sdhc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_mx_sdhc_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @mmc_alloc_host(i32 noundef 68, ptr noundef %2) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %101, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @devm_add_action(ptr noundef %2, ptr noundef nonnull @mmc_free_host, ptr noundef nonnull %3) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @mmc_free_host(ptr noundef nonnull %3) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #7
  br label %101

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 68
  store ptr %3, ptr %10, align 4
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %10, ptr %11, align 8
  %12 = tail call ptr @device_get_match_data(ptr noundef %2) #6
  %13 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 6
  store ptr %12, ptr %13, align 4
  %14 = icmp eq ptr %12, null
  br i1 %14, label %101, label %15

15:                                               ; preds = %9
  %16 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = ptrtoint ptr %16 to i32
  br label %101

20:                                               ; preds = %15
  %21 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %2, ptr noundef null, ptr noundef %16, ptr noundef nonnull @meson_mx_sdhc_regmap_config, ptr noundef null, ptr noundef null) #6
  %22 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 0, i32 1, i32 1
  store ptr %21, ptr %22, align 4
  %23 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = ptrtoint ptr %21 to i32
  br label %101

26:                                               ; preds = %20
  %27 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.2) #6
  %28 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 0, i32 2
  store ptr %27, ptr %28, align 4
  %29 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = ptrtoint ptr %27 to i32
  br label %101

32:                                               ; preds = %26
  %33 = tail call i32 @clk_prepare(ptr noundef %27) #6
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = tail call i32 @clk_enable(ptr noundef %27) #6
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  tail call void @clk_unprepare(ptr noundef %27) #6
  br label %39

39:                                               ; preds = %38, %32
  %40 = phi i32 [ %36, %38 ], [ %33, %32 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #7
  br label %101

41:                                               ; preds = %35
  %42 = load ptr, ptr %22, align 4
  %43 = tail call i32 @regmap_write(ptr noundef %42, i32 noundef 44, i32 noundef 63) #6
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #6
  %44 = load ptr, ptr %22, align 4
  %45 = tail call i32 @regmap_write(ptr noundef %44, i32 noundef 44, i32 noundef 0) #6
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #6
  %46 = load ptr, ptr %22, align 4
  %47 = tail call i32 @regmap_write(ptr noundef %46, i32 noundef 8, i32 noundef -402661376) #6
  %48 = load ptr, ptr %22, align 4
  %49 = tail call i32 @regmap_write(ptr noundef %48, i32 noundef 16, i32 noundef 4095) #6
  %50 = load ptr, ptr %22, align 4
  %51 = tail call i32 @regmap_write(ptr noundef %50, i32 noundef 56, i32 noundef 4096) #6
  %52 = load ptr, ptr %22, align 4
  %53 = tail call i32 @regmap_write(ptr noundef %52, i32 noundef 24, i32 noundef 205765872) #6
  %54 = load ptr, ptr %13, align 4
  %55 = load ptr, ptr %54, align 4
  tail call void %55(ptr noundef nonnull %3) #6
  %56 = load ptr, ptr %22, align 4
  %57 = tail call i32 @regmap_write(ptr noundef %56, i32 noundef 36, i32 noundef 0) #6
  %58 = load ptr, ptr %22, align 4
  %59 = tail call i32 @regmap_write(ptr noundef %58, i32 noundef 40, i32 noundef 32767) #6
  %60 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 0, i32 4
  %61 = tail call i32 @meson_mx_sdhc_register_clkc(ptr noundef %2, ptr noundef %16, ptr noundef %60) #6
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %98

63:                                               ; preds = %41
  %64 = getelementptr %struct.mmc_host, ptr %3, i32 1, i32 1, i32 0, i32 7
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 0, i32 3
  store ptr %65, ptr %66, align 4
  %67 = tail call i32 @mmc_regulator_get_supply(ptr noundef nonnull %3) #6
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %98

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 23
  store i32 131072, ptr %70, align 16
  %71 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 20
  store i32 131072, ptr %71, align 8
  %72 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 25
  store i32 65535, ptr %72, align 8
  %73 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 24
  store i32 512, ptr %73, align 4
  %74 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 26
  store i32 30000, ptr %74, align 4
  %75 = load ptr, ptr %66, align 4
  %76 = tail call i32 @clk_round_rate(ptr noundef %75, i32 noundef 1) #6
  %77 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 5
  store i32 %76, ptr %77, align 4
  %78 = load ptr, ptr %66, align 4
  %79 = tail call i32 @clk_round_rate(ptr noundef %78, i32 noundef -1) #6
  %80 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 6
  store i32 %79, ptr %80, align 16
  %81 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 15
  store i32 300, ptr %81, align 4
  %82 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 13
  store i32 300, ptr %82, align 4
  %83 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 16
  %84 = load i32, ptr %83, align 8
  %85 = or i32 %84, -2147483136
  store i32 %85, ptr %83, align 8
  %86 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 3
  store ptr @meson_mx_sdhc_ops, ptr %86, align 4
  %87 = tail call i32 @mmc_of_parse(ptr noundef nonnull %3) #6
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %69
  %90 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #6
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %89
  %93 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %90, ptr noundef nonnull @meson_mx_sdhc_irq, ptr noundef nonnull @meson_mx_sdhc_irq_thread, i32 noundef 8192, ptr noundef null, ptr noundef %10) #6
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = tail call i32 @mmc_add_host(ptr noundef nonnull %3) #6
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %95, %92, %89, %69, %63, %41
  %99 = phi i32 [ %61, %41 ], [ %67, %63 ], [ %87, %69 ], [ %93, %92 ], [ %96, %95 ], [ %90, %89 ]
  %100 = load ptr, ptr %28, align 4
  tail call void @clk_disable(ptr noundef %100) #6
  tail call void @clk_unprepare(ptr noundef %100) #6
  br label %101

101:                                              ; preds = %98, %95, %39, %30, %24, %18, %9, %8, %1
  %102 = phi i32 [ %6, %8 ], [ %19, %18 ], [ %25, %24 ], [ %31, %30 ], [ %40, %39 ], [ %99, %98 ], [ -12, %1 ], [ -22, %9 ], [ 0, %95 ]
  ret i32 %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_mx_sdhc_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  tail call void @mmc_remove_host(ptr noundef %4) #6
  %5 = load ptr, ptr %3, align 4
  %6 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 1, i32 1, i32 5
  %7 = load i8, ptr %6, align 4, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 1, i32 1, i32 0, i32 4
  tail call void @clk_bulk_disable(i32 noundef 4, ptr noundef %10) #6
  tail call void @clk_bulk_unprepare(i32 noundef 4, ptr noundef %10) #6
  store i8 0, ptr %6, align 4
  br label %11

11:                                               ; preds = %9, %1
  %12 = getelementptr inbounds %struct.meson_mx_sdhc_host, ptr %3, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %13) #6
  tail call void @clk_unprepare(ptr noundef %13) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_mx_sdhc_register_clkc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_get_supply(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_mx_sdhc_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.meson_mx_sdhc_host, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.meson_mx_sdhc_host, ptr %1, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @regmap_read(ptr noundef %8, i32 noundef 36, ptr noundef nonnull %3) #6
  %10 = load ptr, ptr %7, align 4
  %11 = call i32 @regmap_read(ptr noundef %10, i32 noundef 40, ptr noundef nonnull %4) #6
  %12 = load i32, ptr %3, align 4
  %13 = load i32, ptr %4, align 4
  %14 = and i32 %13, %12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %41, label %16

16:                                               ; preds = %2
  %17 = and i32 %13, 12288
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = and i32 %13, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = and i32 %13, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22, %19, %16
  %26 = phi i32 [ -5, %16 ], [ -84, %19 ], [ -110, %22 ]
  %27 = getelementptr inbounds %struct.mmc_command, ptr %6, i32 0, i32 5
  store i32 %26, ptr %27, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = getelementptr inbounds %struct.mmc_command, ptr %6, i32 0, i32 7
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %28
  %33 = and i32 %13, 64
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = and i32 %13, 32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35, %32
  %39 = phi i32 [ -84, %32 ], [ -110, %35 ]
  %40 = getelementptr inbounds %struct.mmc_data, ptr %30, i32 0, i32 5
  store i32 %39, ptr %40, align 4
  br label %41

41:                                               ; preds = %38, %35, %28, %2
  %42 = phi i32 [ 0, %2 ], [ 2, %35 ], [ 2, %28 ], [ 2, %38 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_mx_sdhc_irq_thread(i32 noundef %0, ptr nocapture noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.meson_mx_sdhc_host, ptr %1, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13, !prof !10

12:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 597, i32 noundef 9, ptr noundef null) #6
  br label %156

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.mmc_command, ptr %10, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %58, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.mmc_data, ptr %15, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %58

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.meson_mx_sdhc_host, ptr %1, i32 0, i32 9
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.meson_mx_sdhc_data, ptr %23, i32 0, i32 3
  %25 = load i8, ptr %24, align 4, !range !8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.mmc_data, ptr %15, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 512
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr %1, align 4
  tail call fastcc void @meson_mx_sdhc_wait_cmd_ready(ptr noundef %33)
  %34 = getelementptr inbounds %struct.meson_mx_sdhc_host, ptr %1, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 24, i32 noundef 1073741824, i32 noundef 1073741824, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %37 = load ptr, ptr %14, align 4
  br label %38

38:                                               ; preds = %32, %27, %21
  %39 = phi ptr [ %37, %32 ], [ %15, %27 ], [ %15, %21 ]
  %40 = load ptr, ptr %1, align 4
  %41 = load ptr, ptr %40, align 64
  %42 = getelementptr inbounds %struct.mmc_data, ptr %39, i32 0, i32 12
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.mmc_data, ptr %39, i32 0, i32 10
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.mmc_data, ptr %39, i32 0, i32 6
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 256
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %41, ptr noundef %43, i32 noundef %45, i32 noundef %50, i32 noundef 0) #6
  %51 = load ptr, ptr %14, align 4
  %52 = getelementptr inbounds %struct.mmc_data, ptr %51, i32 0, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.mmc_data, ptr %51, i32 0, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = mul i32 %55, %53
  %57 = getelementptr inbounds %struct.mmc_data, ptr %51, i32 0, i32 7
  store i32 %56, ptr %57, align 4
  br label %58

58:                                               ; preds = %38, %17, %13
  %59 = load ptr, ptr %1, align 4
  tail call fastcc void @meson_mx_sdhc_wait_cmd_ready(ptr noundef %59)
  %60 = getelementptr inbounds %struct.mmc_command, ptr %10, i32 0, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, 2
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %98, label %64

64:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  store i32 0, ptr %8, align 4, !annotation !9
  %65 = getelementptr inbounds %struct.meson_mx_sdhc_host, ptr %1, i32 0, i32 4
  %66 = load ptr, ptr %65, align 4
  %67 = tail call i32 @regmap_update_bits_base(ptr noundef %66, i32 noundef 24, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %68 = load ptr, ptr %65, align 4
  %69 = tail call i32 @regmap_update_bits_base(ptr noundef %68, i32 noundef 24, i32 noundef 14, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %70 = load ptr, ptr %65, align 4
  %71 = call i32 @regmap_read(ptr noundef %70, i32 noundef 0, ptr noundef nonnull %8) #6
  %72 = load i32, ptr %8, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  %73 = getelementptr inbounds %struct.mmc_command, ptr %10, i32 0, i32 2
  store i32 %72, ptr %73, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store i32 0, ptr %7, align 4, !annotation !9
  %74 = load ptr, ptr %65, align 4
  %75 = call i32 @regmap_update_bits_base(ptr noundef %74, i32 noundef 24, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %76 = load ptr, ptr %65, align 4
  %77 = call i32 @regmap_update_bits_base(ptr noundef %76, i32 noundef 24, i32 noundef 14, i32 noundef 6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %78 = load ptr, ptr %65, align 4
  %79 = call i32 @regmap_read(ptr noundef %78, i32 noundef 0, ptr noundef nonnull %7) #6
  %80 = load i32, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  %81 = getelementptr %struct.mmc_command, ptr %10, i32 0, i32 2, i32 1
  store i32 %80, ptr %81, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !annotation !9
  %82 = load ptr, ptr %65, align 4
  %83 = call i32 @regmap_update_bits_base(ptr noundef %82, i32 noundef 24, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %84 = load ptr, ptr %65, align 4
  %85 = call i32 @regmap_update_bits_base(ptr noundef %84, i32 noundef 24, i32 noundef 14, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %86 = load ptr, ptr %65, align 4
  %87 = call i32 @regmap_read(ptr noundef %86, i32 noundef 0, ptr noundef nonnull %6) #6
  %88 = load i32, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  %89 = getelementptr %struct.mmc_command, ptr %10, i32 0, i32 2, i32 2
  store i32 %88, ptr %89, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !9
  %90 = load ptr, ptr %65, align 4
  %91 = call i32 @regmap_update_bits_base(ptr noundef %90, i32 noundef 24, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %92 = load ptr, ptr %65, align 4
  %93 = call i32 @regmap_update_bits_base(ptr noundef %92, i32 noundef 24, i32 noundef 14, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %94 = load ptr, ptr %65, align 4
  %95 = call i32 @regmap_read(ptr noundef %94, i32 noundef 0, ptr noundef nonnull %5) #6
  %96 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  %97 = getelementptr %struct.mmc_command, ptr %10, i32 0, i32 2, i32 3
  store i32 %96, ptr %97, align 4
  br label %108

98:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !9
  %99 = getelementptr inbounds %struct.meson_mx_sdhc_host, ptr %1, i32 0, i32 4
  %100 = load ptr, ptr %99, align 4
  %101 = tail call i32 @regmap_update_bits_base(ptr noundef %100, i32 noundef 24, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %102 = load ptr, ptr %99, align 4
  %103 = tail call i32 @regmap_update_bits_base(ptr noundef %102, i32 noundef 24, i32 noundef 14, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %104 = load ptr, ptr %99, align 4
  %105 = call i32 @regmap_read(ptr noundef %104, i32 noundef 0, ptr noundef nonnull %4) #6
  %106 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  %107 = getelementptr inbounds %struct.mmc_command, ptr %10, i32 0, i32 2
  store i32 %106, ptr %107, align 4
  br label %108

108:                                              ; preds = %98, %64
  %109 = getelementptr inbounds %struct.mmc_command, ptr %10, i32 0, i32 5
  %110 = load i32, ptr %109, align 4
  switch i32 %110, label %118 [
    i32 -5, label %111
    i32 -110, label %111
  ]

111:                                              ; preds = %108, %108
  %112 = load ptr, ptr %1, align 4
  %113 = getelementptr inbounds %struct.mmc_host, ptr %112, i32 1, i32 1, i32 0, i32 1, i32 1
  %114 = load ptr, ptr %113, align 4
  %115 = call i32 @regmap_write(ptr noundef %114, i32 noundef 44, i32 noundef 63) #6
  call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #6
  %116 = load ptr, ptr %113, align 4
  %117 = call i32 @regmap_write(ptr noundef %116, i32 noundef 44, i32 noundef 0) #6
  call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #6
  br label %147

118:                                              ; preds = %108
  %119 = load ptr, ptr %14, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %147, label %121

121:                                              ; preds = %118
  %122 = load ptr, ptr %1, align 4
  %123 = getelementptr inbounds %struct.mmc_host, ptr %122, i32 0, i32 68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !9
  %124 = getelementptr inbounds %struct.mmc_host, ptr %122, i32 1, i32 1, i32 0, i32 1, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = call i32 @regmap_read(ptr noundef %125, i32 noundef 12, ptr noundef nonnull %3) #6
  %127 = load i32, ptr %3, align 4
  %128 = and i32 %127, 1048512
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %146, label %130

130:                                              ; preds = %121
  %131 = load ptr, ptr %124, align 4
  %132 = call i32 @regmap_write(ptr noundef %131, i32 noundef 44, i32 noundef 7) #6
  %133 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %133(i32 noundef 1073740) #6
  %134 = load ptr, ptr %124, align 4
  %135 = call i32 @regmap_read(ptr noundef %134, i32 noundef 12, ptr noundef nonnull %3) #6
  %136 = load i32, ptr %3, align 4
  %137 = and i32 %136, 1048512
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %146, label %139

139:                                              ; preds = %130
  %140 = load ptr, ptr %123, align 4
  %141 = load ptr, ptr %140, align 64
  %142 = lshr i32 %136, 6
  %143 = and i32 %142, 127
  %144 = lshr i32 %136, 13
  %145 = and i32 %144, 127
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %141, ptr noundef nonnull @.str.10, i32 noundef %143, i32 noundef %145) #7
  br label %146

146:                                              ; preds = %139, %130, %121
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  br label %147

147:                                              ; preds = %146, %118, %111
  %148 = getelementptr inbounds %struct.meson_mx_sdhc_host, ptr %1, i32 0, i32 1
  %149 = load ptr, ptr %148, align 4
  %150 = load ptr, ptr %1, align 4
  %151 = getelementptr inbounds %struct.meson_mx_sdhc_host, ptr %1, i32 0, i32 4
  %152 = load ptr, ptr %151, align 4
  %153 = call i32 @regmap_update_bits_base(ptr noundef %152, i32 noundef 36, i32 noundef 32767, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %154 = load ptr, ptr %151, align 4
  %155 = call i32 @regmap_update_bits_base(ptr noundef %154, i32 noundef 40, i32 noundef 32767, i32 noundef 32767, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  store ptr null, ptr %148, align 4
  store ptr null, ptr %9, align 4
  call void @mmc_request_done(ptr noundef %150, ptr noundef %149) #6
  br label %156

156:                                              ; preds = %147, %12
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meson_mx_sdhc_hw_reset(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 44, i32 noundef 63) #6
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #6
  %5 = load ptr, ptr %2, align 4
  %6 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 44, i32 noundef 0) #6
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meson_mx_sdhc_request(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %31, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %0, align 64
  %15 = getelementptr inbounds %struct.mmc_data, ptr %11, i32 0, i32 12
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.mmc_data, ptr %11, i32 0, i32 10
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.mmc_data, ptr %11, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 256
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 2, i32 1
  %24 = tail call i32 @dma_map_sg_attrs(ptr noundef %14, ptr noundef %16, i32 noundef %18, i32 noundef %23, i32 noundef 0) #6
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %26, label %31

26:                                               ; preds = %13
  %27 = load ptr, ptr %0, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.4) #7
  store i32 -12, ptr %6, align 4
  br label %28

28:                                               ; preds = %26, %2
  %29 = phi i32 [ -12, %26 ], [ %7, %2 ]
  %30 = getelementptr inbounds %struct.mmc_command, ptr %5, i32 0, i32 5
  store i32 %29, ptr %30, align 4
  tail call void @mmc_request_done(ptr noundef %0, ptr noundef %1) #6
  br label %134

31:                                               ; preds = %13, %9
  store i32 0, ptr %6, align 4
  %32 = getelementptr inbounds %struct.meson_mx_sdhc_host, ptr %3, i32 0, i32 1
  store ptr %1, ptr %32, align 4
  %33 = load ptr, ptr %4, align 4
  %34 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1
  store ptr %33, ptr %34, align 4
  %35 = load i32, ptr %33, align 4
  %36 = and i32 %35, 63
  %37 = getelementptr inbounds %struct.mmc_command, ptr %33, i32 0, i32 7
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %67, label %40

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.mmc_data, ptr %38, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = shl i32 %42, 16
  %44 = add i32 %43, -65536
  %45 = or i32 %44, %36
  %46 = getelementptr inbounds %struct.mmc_data, ptr %38, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = icmp ult i32 %47, 512
  %49 = select i1 %48, i32 %47, i32 0
  %50 = getelementptr inbounds %struct.mmc_data, ptr %38, i32 0, i32 6
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 256
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i32 128, i32 1152
  %55 = or i32 %54, %45
  %56 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 6
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.meson_mx_sdhc_data, ptr %57, i32 0, i32 3
  %59 = load i8, ptr %58, align 4, !range !8
  %60 = icmp eq i8 %59, 0
  %61 = select i1 %60, i1 %53, i1 false
  %62 = select i1 %61, i32 12518, i32 14438
  %63 = icmp ugt i32 %42, 1
  br i1 %63, label %64, label %67

64:                                               ; preds = %40
  %65 = icmp eq i32 %35, 53
  %66 = select i1 %65, i32 268435456, i32 0
  br label %67

67:                                               ; preds = %64, %40, %31
  %68 = phi i32 [ %62, %64 ], [ 12391, %31 ], [ %62, %40 ]
  %69 = phi i32 [ %49, %64 ], [ 0, %31 ], [ %49, %40 ]
  %70 = phi i32 [ %55, %64 ], [ %36, %31 ], [ %55, %40 ]
  %71 = phi i32 [ %66, %64 ], [ 0, %31 ], [ 0, %40 ]
  %72 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = tail call i32 @regmap_update_bits_base(ptr noundef %73, i32 noundef 28, i32 noundef 268435456, i32 noundef %71, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %75 = load i32, ptr %33, align 4
  %76 = getelementptr inbounds %struct.mmc_command, ptr %33, i32 0, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = load ptr, ptr %72, align 4
  %79 = tail call i32 @regmap_write(ptr noundef %78, i32 noundef 36, i32 noundef %68) #6
  %80 = load ptr, ptr %72, align 4
  %81 = tail call i32 @regmap_write(ptr noundef %80, i32 noundef 40, i32 noundef 32767) #6
  %82 = load ptr, ptr %72, align 4
  %83 = getelementptr inbounds %struct.mmc_command, ptr %33, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = tail call i32 @regmap_write(ptr noundef %82, i32 noundef 0, i32 noundef %84) #6
  %86 = load ptr, ptr %72, align 4
  %87 = shl nuw nsw i32 %69, 4
  %88 = and i32 %87, 8176
  %89 = tail call i32 @regmap_update_bits_base(ptr noundef %86, i32 noundef 8, i32 noundef 8176, i32 noundef %88, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %90 = load ptr, ptr %37, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %99, label %92

92:                                               ; preds = %67
  %93 = load ptr, ptr %72, align 4
  %94 = getelementptr inbounds %struct.mmc_data, ptr %90, i32 0, i32 12
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.scatterlist, ptr %95, i32 0, i32 3
  %97 = load i32, ptr %96, align 4
  %98 = tail call i32 @regmap_write(ptr noundef %93, i32 noundef 20, i32 noundef %97) #6
  br label %99

99:                                               ; preds = %92, %67
  tail call fastcc void @meson_mx_sdhc_wait_cmd_ready(ptr noundef %0) #6
  %100 = load ptr, ptr %37, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %107, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 6
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.meson_mx_sdhc_data, ptr %104, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  tail call void %106(ptr noundef %0) #6
  br label %107

107:                                              ; preds = %102, %99
  %108 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 6
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.meson_mx_sdhc_data, ptr %109, i32 0, i32 2
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %107
  tail call void %111(ptr noundef %0) #6
  br label %114

114:                                              ; preds = %113, %107
  %115 = shl i32 %77, 7
  %116 = and i32 %115, 512
  %117 = and i32 %77, 2
  %118 = icmp eq i32 %117, 0
  %119 = shl i32 %77, 6
  %120 = and i32 %119, 64
  %121 = icmp eq i32 %75, 12
  %122 = or i32 %70, 2048
  %123 = select i1 %121, i32 %122, i32 %70
  %124 = or i32 %120, %123
  %125 = or i32 %124, 768
  %126 = select i1 %118, i32 %124, i32 %125
  %127 = shl i32 %77, 9
  %128 = and i32 %127, 4096
  %129 = or i32 %116, %128
  %130 = xor i32 %129, 512
  %131 = or i32 %126, %130
  %132 = load ptr, ptr %72, align 4
  %133 = tail call i32 @regmap_write(ptr noundef %132, i32 noundef 4, i32 noundef %131) #6
  br label %134

134:                                              ; preds = %114, %28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meson_mx_sdhc_set_ios(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 1
  %4 = load i16, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 5
  %6 = load i8, ptr %5, align 2
  switch i8 %6, label %17 [
    i8 0, label %7
    i8 1, label %8
  ]

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %7, %2
  %9 = phi i16 [ %4, %2 ], [ 0, %7 ]
  %10 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 54
  %11 = load ptr, ptr %10, align 4
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %0, ptr noundef %11, i16 noundef zeroext %9) #6
  %15 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1
  store i32 %14, ptr %15, align 4
  %16 = icmp eq i32 %14, 0
  br i1 %16, label %17, label %96

17:                                               ; preds = %13, %8, %2
  %18 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 5
  %19 = load i8, ptr %18, align 4, !range !8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 4
  tail call void @clk_bulk_disable(i32 noundef 4, ptr noundef %22) #6
  tail call void @clk_bulk_unprepare(i32 noundef 4, ptr noundef %22) #6
  store i8 0, ptr %18, align 4
  br label %23

23:                                               ; preds = %21, %17
  %24 = load i32, ptr %1, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %72, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @clk_set_rate(ptr noundef %28, i32 noundef %24) #6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load ptr, ptr %0, align 64
  %33 = load i32, ptr %1, align 4
  %34 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.8, i32 noundef %33, i32 noundef %35) #7
  br label %74

36:                                               ; preds = %26
  %37 = load i8, ptr %18, align 4, !range !8
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 4
  %41 = tail call i32 @clk_bulk_prepare(i32 noundef 4, ptr noundef %40) #6
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %74

43:                                               ; preds = %39
  %44 = tail call i32 @clk_bulk_enable(i32 noundef 4, ptr noundef %40) #6
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  tail call void @clk_bulk_unprepare(i32 noundef 4, ptr noundef %40) #6
  br label %74

47:                                               ; preds = %43
  store i8 1, ptr %18, align 4
  br label %48

48:                                               ; preds = %47, %36
  %49 = load ptr, ptr %27, align 4
  %50 = tail call i32 @clk_get_rate(ptr noundef %49) #6
  %51 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 57
  store i32 %50, ptr %51, align 4
  %52 = icmp ugt i32 %50, 100000000
  br i1 %52, label %67, label %53

53:                                               ; preds = %48
  %54 = icmp ugt i32 %50, 45000000
  br i1 %54, label %55, label %60

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 8
  %57 = load i8, ptr %56, align 1
  %58 = icmp eq i8 %57, 0
  %59 = select i1 %58, i32 15, i32 11
  br label %67

60:                                               ; preds = %53
  %61 = icmp ugt i32 %50, 24999999
  br i1 %61, label %67, label %62

62:                                               ; preds = %60
  %63 = icmp ugt i32 %50, 5000000
  br i1 %63, label %67, label %64

64:                                               ; preds = %62
  %65 = icmp ugt i32 %50, 1000000
  %66 = select i1 %65, i32 55, i32 1061
  br label %67

67:                                               ; preds = %64, %62, %60, %55, %48
  %68 = phi i32 [ 1, %48 ], [ %59, %55 ], [ 15, %60 ], [ 23, %62 ], [ %66, %64 ]
  %69 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = tail call i32 @regmap_update_bits_base(ptr noundef %70, i32 noundef 56, i32 noundef 4095, i32 noundef %68, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %77

72:                                               ; preds = %23
  %73 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 57
  store i32 0, ptr %73, align 4
  br label %77

74:                                               ; preds = %46, %39, %31
  %75 = phi i32 [ %41, %39 ], [ %44, %46 ], [ %29, %31 ]
  %76 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1
  store i32 %75, ptr %76, align 4
  br label %96

77:                                               ; preds = %72, %67
  %78 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1
  store i32 0, ptr %78, align 4
  %79 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 6
  %80 = load i8, ptr %79, align 1
  switch i8 %80, label %93 [
    i8 0, label %81
    i8 2, label %85
    i8 3, label %89
  ]

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = tail call i32 @regmap_update_bits_base(ptr noundef %83, i32 noundef 8, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %96

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = tail call i32 @regmap_update_bits_base(ptr noundef %87, i32 noundef 8, i32 noundef 3, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %96

89:                                               ; preds = %77
  %90 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = tail call i32 @regmap_update_bits_base(ptr noundef %91, i32 noundef 8, i32 noundef 3, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %96

93:                                               ; preds = %77
  %94 = zext i8 %80 to i32
  %95 = load ptr, ptr %0, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.7, i32 noundef %94) #7
  store i32 -22, ptr %78, align 4
  br label %96

96:                                               ; preds = %93, %89, %85, %81, %74, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_ro(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_cd(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_mx_sdhc_card_busy(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !9
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 @regmap_read(ptr noundef %4, i32 noundef 12, ptr noundef nonnull %2) #6
  %6 = load i32, ptr %2, align 4
  %7 = and i32 %6, 30
  %8 = icmp eq i32 %7, 0
  %9 = zext i1 %8 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_mx_sdhc_execute_tuning(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !9
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 @regmap_read(ptr noundef %5, i32 noundef 56, ptr noundef nonnull %3) #6
  %7 = load i32, ptr %3, align 4
  %8 = and i32 %7, 4095
  %9 = load ptr, ptr %4, align 4
  %10 = call i32 @regmap_read(ptr noundef %9, i32 noundef 16, ptr noundef nonnull %3) #6
  %11 = load i32, ptr %3, align 4
  %12 = and i32 %11, 4095
  br label %13

13:                                               ; preds = %69, %2
  %14 = phi i32 [ 0, %2 ], [ %73, %69 ]
  %15 = phi i32 [ 0, %2 ], [ %74, %69 ]
  %16 = phi i32 [ 0, %2 ], [ %72, %69 ]
  %17 = phi i32 [ 0, %2 ], [ %71, %69 ]
  %18 = phi i32 [ 0, %2 ], [ %70, %69 ]
  %19 = load ptr, ptr %4, align 4
  %20 = call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 56, i32 noundef 4095, i32 noundef %15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %21 = call i32 @mmc_send_tuning(ptr noundef %0, i32 noundef %1, ptr noundef null) #6
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @mmc_send_tuning(ptr noundef %0, i32 noundef %1, ptr noundef null) #6
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = add nuw nsw i32 %26, %23
  %28 = call i32 @mmc_send_tuning(ptr noundef %0, i32 noundef %1, ptr noundef null) #6
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = add nuw nsw i32 %27, %30
  %32 = call i32 @mmc_send_tuning(ptr noundef %0, i32 noundef %1, ptr noundef null) #6
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = add nuw nsw i32 %31, %34
  %36 = call i32 @mmc_send_tuning(ptr noundef %0, i32 noundef %1, ptr noundef null) #6
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = add nuw nsw i32 %35, %38
  %40 = call i32 @mmc_send_tuning(ptr noundef %0, i32 noundef %1, ptr noundef null) #6
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = add nuw nsw i32 %39, %42
  %44 = call i32 @mmc_send_tuning(ptr noundef %0, i32 noundef %1, ptr noundef null) #6
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = add nuw nsw i32 %43, %46
  %48 = call i32 @mmc_send_tuning(ptr noundef %0, i32 noundef %1, ptr noundef null) #6
  %49 = icmp eq i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = add nuw nsw i32 %47, %50
  %52 = call i32 @mmc_send_tuning(ptr noundef %0, i32 noundef %1, ptr noundef null) #6
  %53 = icmp eq i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = add nuw nsw i32 %51, %54
  %56 = call i32 @mmc_send_tuning(ptr noundef %0, i32 noundef %1, ptr noundef null) #6
  %57 = icmp eq i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = add nuw nsw i32 %55, %58
  %60 = icmp eq i32 %59, 10
  br i1 %60, label %61, label %65

61:                                               ; preds = %13
  %62 = icmp eq i32 %18, 0
  %63 = select i1 %62, i32 %15, i32 %14
  %64 = add i32 %18, 1
  br label %69

65:                                               ; preds = %13
  %66 = icmp sgt i32 %18, %16
  %67 = select i1 %66, i32 %14, i32 %17
  %68 = call i32 @llvm.smax.i32(i32 %18, i32 %16)
  br label %69

69:                                               ; preds = %65, %61
  %70 = phi i32 [ %64, %61 ], [ 0, %65 ]
  %71 = phi i32 [ %17, %61 ], [ %67, %65 ]
  %72 = phi i32 [ %16, %61 ], [ %68, %65 ]
  %73 = phi i32 [ %63, %61 ], [ %14, %65 ]
  %74 = add nuw nsw i32 %15, 1
  %75 = icmp eq i32 %15, %12
  br i1 %75, label %76, label %13

76:                                               ; preds = %69
  %77 = icmp sgt i32 %70, %72
  br i1 %77, label %78, label %81

78:                                               ; preds = %76
  %79 = sdiv i32 %70, 2
  %80 = add i32 %73, %79
  br label %86

81:                                               ; preds = %76
  %82 = icmp eq i32 %72, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %81
  %84 = sdiv i32 %72, 2
  %85 = add i32 %84, %71
  br label %86

86:                                               ; preds = %83, %81, %78
  %87 = phi i32 [ %80, %78 ], [ %85, %83 ], [ %8, %81 ]
  %88 = load ptr, ptr %4, align 4
  %89 = and i32 %87, 4095
  %90 = call i32 @regmap_update_bits_base(ptr noundef %88, i32 noundef 56, i32 noundef 4095, i32 noundef %89, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %91 = icmp ne i32 %70, 0
  %92 = icmp ne i32 %72, 0
  %93 = select i1 %91, i1 true, i1 %92
  %94 = select i1 %93, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %94
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @meson_mx_sdhc_wait_cmd_ready(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !9
  %4 = tail call i64 @ktime_get() #6
  %5 = add i64 %4, 100000000
  %6 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %7, i32 noundef 12, ptr noundef nonnull %2) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %21, %1
  %11 = load i32, ptr %2, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %10
  %15 = call i64 @ktime_get() #6
  %16 = icmp sgt i64 %15, %5
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load ptr, ptr %6, align 4
  %19 = call i32 @regmap_read(ptr noundef %18, i32 noundef 12, ptr noundef nonnull %2) #6
  %20 = icmp eq i32 %19, 0
  br label %25

21:                                               ; preds = %14
  call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #6
  %22 = load ptr, ptr %6, align 4
  %23 = call i32 @regmap_read(ptr noundef %22, i32 noundef 12, ptr noundef nonnull %2) #6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %10, label %31

25:                                               ; preds = %17, %10
  %26 = phi i1 [ %20, %17 ], [ true, %10 ]
  %27 = load i32, ptr %2, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %26, i1 %29, i1 false
  br i1 %30, label %40, label %31

31:                                               ; preds = %25, %21, %1
  %32 = load ptr, ptr %0, align 64
  %33 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load i32, ptr %34, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.5, i32 noundef %35) #7
  %36 = load ptr, ptr %6, align 4
  %37 = call i32 @regmap_write(ptr noundef %36, i32 noundef 44, i32 noundef 63) #6
  call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #6
  %38 = load ptr, ptr %6, align 4
  %39 = call i32 @regmap_write(ptr noundef %38, i32 noundef 44, i32 noundef 0) #6
  call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #6
  br label %40

40:                                               ; preds = %31, %25
  %41 = call i64 @ktime_get() #6
  %42 = add i64 %41, 100000000
  %43 = load ptr, ptr %6, align 4
  %44 = call i32 @regmap_read(ptr noundef %43, i32 noundef 48, ptr noundef nonnull %3) #6
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %57, %40
  %47 = load i32, ptr %3, align 4
  %48 = and i32 %47, 14336
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %46
  %51 = call i64 @ktime_get() #6
  %52 = icmp sgt i64 %51, %42
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load ptr, ptr %6, align 4
  %55 = call i32 @regmap_read(ptr noundef %54, i32 noundef 48, ptr noundef nonnull %3) #6
  %56 = icmp eq i32 %55, 0
  br label %61

57:                                               ; preds = %50
  call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #6
  %58 = load ptr, ptr %6, align 4
  %59 = call i32 @regmap_read(ptr noundef %58, i32 noundef 48, ptr noundef nonnull %3) #6
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %46, label %67

61:                                               ; preds = %53, %46
  %62 = phi i1 [ %56, %53 ], [ true, %46 ]
  %63 = load i32, ptr %3, align 4
  %64 = and i32 %63, 14336
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %62, i1 %65, i1 false
  br i1 %66, label %76, label %67

67:                                               ; preds = %61, %57, %40
  %68 = load ptr, ptr %0, align 64
  %69 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = load i32, ptr %70, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %68, ptr noundef nonnull @.str.6, i32 noundef %71) #7
  %72 = load ptr, ptr %6, align 4
  %73 = call i32 @regmap_write(ptr noundef %72, i32 noundef 44, i32 noundef 63) #6
  call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #6
  %74 = load ptr, ptr %6, align 4
  %75 = call i32 @regmap_write(ptr noundef %74, i32 noundef 44, i32 noundef 0) #6
  call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #6
  br label %76

76:                                               ; preds = %67, %61
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_ocr(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_tuning(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meson_mx_sdhc_init_hw_meson8(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 28, i32 noundef -536870576) #6
  %5 = load ptr, ptr %2, align 4
  %6 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 52, i32 noundef 16649471) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meson_mx_sdhc_set_pdma_meson8(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 256
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  br i1 %9, label %14, label %12

12:                                               ; preds = %1
  %13 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 24, i32 noundef -2147451903, i32 noundef -2147451903, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %16

14:                                               ; preds = %1
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 24, i32 noundef 1610612737, i32 noundef 536870913, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %16

16:                                               ; preds = %14, %12
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr inbounds %struct.mmc_command, ptr %17, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.mmc_data, ptr %19, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 256
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 24, i32 noundef 31744, i32 noundef 15360, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %28

28:                                               ; preds = %24, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meson_mx_sdhc_wait_before_send_meson8(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !9
  %3 = tail call i64 @ktime_get() #6
  %4 = add i64 %3, 200000
  %5 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 48, ptr noundef nonnull %2) #6
  %8 = icmp ne i32 %7, 0
  %9 = load i32, ptr %2, align 4
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %26, label %12

12:                                               ; preds = %19, %1
  %13 = call i64 @ktime_get() #6
  %14 = icmp sgt i64 %13, %4
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load ptr, ptr %5, align 4
  %17 = call i32 @regmap_read(ptr noundef %16, i32 noundef 48, ptr noundef nonnull %2) #6
  %18 = load i32, ptr %2, align 4
  br label %26

19:                                               ; preds = %12
  call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #6
  %20 = load ptr, ptr %5, align 4
  %21 = call i32 @regmap_read(ptr noundef %20, i32 noundef 48, ptr noundef nonnull %2) #6
  %22 = icmp ne i32 %21, 0
  %23 = load i32, ptr %2, align 4
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %22, i1 true, i1 %24
  br i1 %25, label %26, label %12

26:                                               ; preds = %19, %15, %1
  %27 = phi i32 [ %18, %15 ], [ %9, %1 ], [ %23, %19 ]
  %28 = phi i32 [ %17, %15 ], [ %7, %1 ], [ %21, %19 ]
  %29 = icmp eq i32 %28, 0
  %30 = icmp eq i32 %27, 0
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %34, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %0, align 64
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.11, i32 noundef %27) #7
  br label %34

34:                                               ; preds = %32, %26
  %35 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.mmc_command, ptr %36, i32 0, i32 7
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %74, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.mmc_data, ptr %38, i32 0, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 256
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %74, label %45

45:                                               ; preds = %40
  %46 = call i64 @ktime_get() #6
  %47 = add i64 %46, 200000
  %48 = load ptr, ptr %5, align 4
  %49 = call i32 @regmap_read(ptr noundef %48, i32 noundef 12, ptr noundef nonnull %2) #6
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %62, %45
  %52 = load i32, ptr %2, align 4
  %53 = and i32 %52, 1040384
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = call i64 @ktime_get() #6
  %57 = icmp sgt i64 %56, %47
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load ptr, ptr %5, align 4
  %60 = call i32 @regmap_read(ptr noundef %59, i32 noundef 12, ptr noundef nonnull %2) #6
  %61 = icmp eq i32 %60, 0
  br label %66

62:                                               ; preds = %55
  call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #6
  %63 = load ptr, ptr %5, align 4
  %64 = call i32 @regmap_read(ptr noundef %63, i32 noundef 12, ptr noundef nonnull %2) #6
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %51, label %72

66:                                               ; preds = %58, %51
  %67 = phi i1 [ %61, %58 ], [ true, %51 ]
  %68 = load i32, ptr %2, align 4
  %69 = and i32 %68, 1040384
  %70 = icmp ne i32 %69, 0
  %71 = select i1 %67, i1 %70, i1 false
  br i1 %71, label %74, label %72

72:                                               ; preds = %66, %62, %45
  %73 = load ptr, ptr %0, align 64
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %73, ptr noundef nonnull @.str.12) #7
  br label %74

74:                                               ; preds = %72, %66, %40, %34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meson_mx_sdhc_init_hw_meson8m2(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 28, i32 noundef -1073741488) #6
  %5 = load ptr, ptr %2, align 4
  %6 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 52, i32 noundef 16780297) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meson_mx_sdhc_set_pdma_meson8m2(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 24, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 1, i32 2000}
