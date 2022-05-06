; ModuleID = '/llk/IR/drivers/mmc/host/wmt-sdmmc.c_pt.bc'
source_filename = "../drivers/mmc/host/wmt-sdmmc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.wmt_mci_caps = type { i32, i32, i32, i32, i32, i32, i32 }
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
%struct.wmt_mci_priv = type { ptr, ptr, i32, i32, ptr, i32, %struct.completion, %struct.completion, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32 }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.wmt_dma_descriptor = type { i32, i32, i32, i32 }

@__initcall__kmod_wmt_sdmmc__265_999_wmt_mci_driver_init6 = internal global ptr @wmt_mci_driver_init, section ".initcall6.init", align 4
@wmt_mci_driver = internal global %struct.platform_driver { ptr @wmt_mci_probe, ptr @wmt_mci_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @wmt_mci_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wmt_mci_pm, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_wmt_mci_driver_exit = internal global ptr @wmt_mci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description266 = internal constant [48 x i8] c"wmt_sdmmc.description=Wondermedia MMC/SD Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author267 = internal constant [28 x i8] c"wmt_sdmmc.author=Tony Prisk\00", section ".modinfo", align 1
@__UNIQUE_ID_file268 = internal constant [42 x i8] c"wmt_sdmmc.file=drivers/mmc/host/wmt-sdmmc\00", section ".modinfo", align 1
@__UNIQUE_ID_license269 = internal constant [25 x i8] c"wmt_sdmmc.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"wmt-sdhc\00", align 1
@wmt_mci_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wm,wm8505-sdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wm8505_caps }, %struct.of_device_id zeroinitializer], align 4
@wmt_mci_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @wmt_mci_suspend, ptr @wmt_mci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Controller capabilities data missing\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Missing SDMMC description in devicetree\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Getting IRQs failed!\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Failed to allocate mmc_host\0A\00", align 1
@wmt_mci_ops = internal constant %struct.mmc_host_ops { ptr null, ptr null, ptr @wmt_mci_request, ptr null, ptr @wmt_mci_set_ios, ptr @wmt_mci_get_ro, ptr @wmt_mci_get_cd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"sdon-inverted\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"cd-inverted\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Failed to map IO space\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"sdmmc\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Register regular IRQ fail\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Register DMA IRQ fail\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"DMA alloc fail\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"Error getting clock\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"WMT SDHC Controller initialized\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"DMA Error: Status = %d\0A\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.16 = private unnamed_addr constant [24 x i8] c"WMT MCI device removed\0A\00", align 1
@wm8505_caps = internal global %struct.wmt_mci_caps { i32 390425, i32 50000000, i32 3145728, i32 7, i32 65024, i32 128, i32 2048 }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author267, ptr @__UNIQUE_ID_description266, ptr @__UNIQUE_ID_file268, ptr @__UNIQUE_ID_license269, ptr @__exitcall_wmt_mci_driver_exit, ptr @__initcall__kmod_wmt_sdmmc__265_999_wmt_mci_driver_init6, ptr @wmt_mci_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @wmt_mci_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @wmt_mci_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @wmt_mci_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @wmt_mci_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wmt_mci_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_match_device(ptr noundef nonnull @wmt_mci_dt_ids, ptr noundef %2) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.of_device_id, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  br label %119

12:                                               ; preds = %7
  %13 = icmp eq ptr %4, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #6
  br label %119

15:                                               ; preds = %12
  %16 = tail call i32 @irq_of_parse_and_map(ptr noundef nonnull %4, i32 noundef 0) #5
  %17 = tail call i32 @irq_of_parse_and_map(ptr noundef nonnull %4, i32 noundef 1) #5
  %18 = icmp ne i32 %16, 0
  %19 = icmp ne i32 %17, 0
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #6
  br label %119

22:                                               ; preds = %15
  %23 = tail call ptr @mmc_alloc_host(i32 noundef 84, ptr noundef %2) #5
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #6
  br label %119

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.mmc_host, ptr %23, i32 0, i32 3
  store ptr @wmt_mci_ops, ptr %27, align 4
  %28 = load i32, ptr %9, align 4
  %29 = getelementptr inbounds %struct.mmc_host, ptr %23, i32 0, i32 5
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.wmt_mci_caps, ptr %9, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.mmc_host, ptr %23, i32 0, i32 6
  store i32 %31, ptr %32, align 16
  %33 = getelementptr inbounds %struct.wmt_mci_caps, ptr %9, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.mmc_host, ptr %23, i32 0, i32 8
  store i32 %34, ptr %35, align 8
  %36 = getelementptr inbounds %struct.wmt_mci_caps, ptr %9, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.mmc_host, ptr %23, i32 0, i32 16
  store i32 %37, ptr %38, align 8
  %39 = getelementptr inbounds %struct.wmt_mci_caps, ptr %9, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.mmc_host, ptr %23, i32 0, i32 20
  store i32 %40, ptr %41, align 8
  %42 = getelementptr inbounds %struct.wmt_mci_caps, ptr %9, i32 0, i32 5
  %43 = load i32, ptr %42, align 4
  %44 = trunc i32 %43 to i16
  %45 = getelementptr inbounds %struct.mmc_host, ptr %23, i32 0, i32 21
  store i16 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.wmt_mci_caps, ptr %9, i32 0, i32 6
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.mmc_host, ptr %23, i32 0, i32 24
  store i32 %47, ptr %48, align 4
  %49 = shl i32 %43, 13
  %50 = and i32 %49, 536862720
  %51 = getelementptr inbounds %struct.mmc_host, ptr %23, i32 0, i32 23
  store i32 %50, ptr %51, align 16
  %52 = lshr exact i32 %50, 9
  %53 = getelementptr inbounds %struct.mmc_host, ptr %23, i32 0, i32 25
  store i32 %52, ptr %53, align 8
  %54 = getelementptr inbounds %struct.mmc_host, ptr %23, i32 0, i32 68
  store ptr %23, ptr %54, align 4
  %55 = getelementptr inbounds %struct.mmc_host, ptr %23, i32 1, i32 1, i32 9
  store ptr %2, ptr %55, align 4
  %56 = getelementptr inbounds %struct.mmc_host, ptr %23, i32 1, i32 1, i32 9, i32 1
  store i8 0, ptr %56, align 4
  %57 = getelementptr inbounds %struct.wmt_mci_priv, ptr %54, i32 0, i32 15
  store i8 0, ptr %57, align 1
  %58 = tail call ptr @of_get_property(ptr noundef nonnull %4, ptr noundef nonnull @.str.5, ptr noundef null) #5
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %26
  store i8 1, ptr %56, align 4
  br label %61

61:                                               ; preds = %60, %26
  %62 = tail call ptr @of_get_property(ptr noundef nonnull %4, ptr noundef nonnull @.str.6, ptr noundef null) #5
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  store i8 1, ptr %57, align 1
  br label %65

65:                                               ; preds = %64, %61
  %66 = tail call ptr @of_iomap(ptr noundef nonnull %4, i32 noundef 0) #5
  %67 = getelementptr inbounds %struct.wmt_mci_priv, ptr %54, i32 0, i32 1
  store ptr %66, ptr %67, align 4
  %68 = icmp eq ptr %66, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7) #6
  br label %117

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.mmc_host, ptr %23, i32 1, i32 1
  store i32 %16, ptr %71, align 4
  %72 = getelementptr inbounds %struct.mmc_host, ptr %23, i32 1, i32 1, i32 0, i32 1
  store i32 %17, ptr %72, align 4
  %73 = tail call i32 @request_threaded_irq(i32 noundef %16, ptr noundef nonnull @wmt_mci_regular_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef %54) #5
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.9) #6
  br label %114

76:                                               ; preds = %70
  %77 = tail call i32 @request_threaded_irq(i32 noundef %17, ptr noundef nonnull @wmt_mci_dma_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef %54) #5
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10) #6
  br label %111

80:                                               ; preds = %76
  %81 = load i32, ptr %53, align 8
  %82 = shl i32 %81, 4
  %83 = getelementptr inbounds %struct.mmc_host, ptr %23, i32 1, i32 1, i32 0, i32 2
  %84 = tail call ptr @dma_alloc_attrs(ptr noundef %2, i32 noundef %82, ptr noundef %83, i32 noundef 3264, i32 noundef 0) #5
  %85 = getelementptr inbounds %struct.mmc_host, ptr %23, i32 1, i32 1, i32 0, i32 1, i32 1
  store ptr %84, ptr %85, align 4
  %86 = icmp eq ptr %84, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.11) #6
  br label %108

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %23, ptr %89, align 8
  %90 = tail call ptr @of_clk_get(ptr noundef nonnull %4, i32 noundef 0) #5
  %91 = getelementptr inbounds %struct.mmc_host, ptr %23, i32 1, i32 1, i32 8
  store ptr %90, ptr %91, align 4
  %92 = icmp ugt ptr %90, inttoptr (i32 -4096 to ptr)
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.12) #6
  %94 = load ptr, ptr %91, align 4
  %95 = ptrtoint ptr %94 to i32
  br label %108

96:                                               ; preds = %88
  %97 = tail call i32 @clk_prepare(ptr noundef %90) #5
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = tail call i32 @clk_enable(ptr noundef %90) #5
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %99
  tail call void @clk_unprepare(ptr noundef %90) #5
  br label %105

103:                                              ; preds = %99
  tail call fastcc void @wmt_reset_hardware(ptr noundef nonnull %23)
  %104 = tail call i32 @mmc_add_host(ptr noundef nonnull %23) #5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.13) #6
  br label %119

105:                                              ; preds = %102, %96
  %106 = phi i32 [ %100, %102 ], [ %97, %96 ]
  %107 = load ptr, ptr %91, align 4
  tail call void @clk_put(ptr noundef %107) #5
  br label %108

108:                                              ; preds = %105, %93, %87
  %109 = phi i32 [ %95, %93 ], [ %106, %105 ], [ -1, %87 ]
  %110 = tail call ptr @free_irq(i32 noundef %17, ptr noundef %54) #5
  br label %111

111:                                              ; preds = %108, %79
  %112 = phi i32 [ %77, %79 ], [ %109, %108 ]
  %113 = tail call ptr @free_irq(i32 noundef %16, ptr noundef %54) #5
  br label %114

114:                                              ; preds = %111, %75
  %115 = phi i32 [ %73, %75 ], [ %112, %111 ]
  %116 = load ptr, ptr %67, align 4
  tail call void @iounmap(ptr noundef %116) #5
  br label %117

117:                                              ; preds = %114, %69
  %118 = phi i32 [ %115, %114 ], [ -12, %69 ]
  tail call void @mmc_free_host(ptr noundef nonnull %23) #5
  br label %119

119:                                              ; preds = %117, %103, %25, %21, %14, %11
  %120 = phi i32 [ 0, %103 ], [ -14, %14 ], [ -14, %11 ], [ %118, %117 ], [ -12, %25 ], [ -6, %21 ]
  ret i32 %120
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wmt_mci_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 68
  %5 = getelementptr inbounds %struct.wmt_mci_priv, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 8
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %7) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %9 = or i8 %8, -128
  %10 = zext i8 %9 to i32
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #5, !srcloc !11
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr i8, ptr %13, i32 12
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %14) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %16 = and i16 %15, 24575
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr i8, ptr %17, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %18, i16 %16) #5, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  %19 = load ptr, ptr %5, align 4
  %20 = getelementptr i8, ptr %19, i32 40
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %20, i8 -1) #5, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  %21 = load ptr, ptr %5, align 4
  %22 = getelementptr i8, ptr %21, i32 41
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %22, i8 -1) #5, !srcloc !17
  %23 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %4, align 4
  %25 = getelementptr inbounds %struct.mmc_host, ptr %24, i32 0, i32 25
  %26 = load i32, ptr %25, align 8
  %27 = shl i32 %26, 4
  %28 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 0, i32 1, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  tail call void @dma_free_attrs(ptr noundef %23, i32 noundef %27, ptr noundef %29, i32 noundef %31, i32 noundef 0) #5
  tail call void @mmc_remove_host(ptr noundef %3) #5
  %32 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = tail call ptr @free_irq(i32 noundef %33, ptr noundef %4) #5
  %35 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = tail call ptr @free_irq(i32 noundef %36, ptr noundef %4) #5
  %38 = load ptr, ptr %5, align 4
  tail call void @iounmap(ptr noundef %38) #5
  %39 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 8
  %40 = load ptr, ptr %39, align 4
  tail call void @clk_disable(ptr noundef %40) #5
  tail call void @clk_unprepare(ptr noundef %40) #5
  %41 = load ptr, ptr %39, align 4
  tail call void @clk_put(ptr noundef %41) #5
  %42 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #5
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.resource, ptr %42, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = sub i32 1, %43
  %47 = add i32 %46, %45
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %43, i32 noundef %47) #5
  tail call void @mmc_free_host(ptr noundef %3) #5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.16) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wmt_mci_regular_isr(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.wmt_mci_priv, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 40
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !19
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 41
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %8) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !20
  %10 = zext i8 %9 to i32
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr i8, ptr %11, i32 42
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %12) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !21
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr i8, ptr %14, i32 36
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %15) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !22
  %17 = icmp sgt i8 %16, -1
  %18 = icmp sgt i8 %6, -1
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %45, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %1, align 4
  tail call void @mmc_detect_change(ptr noundef %21, i32 noundef 0) #5
  %22 = getelementptr inbounds %struct.wmt_mci_priv, ptr %1, i32 0, i32 11
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.mmc_command, ptr %23, i32 0, i32 5
  store i32 -110, ptr %26, align 4
  br label %27

27:                                               ; preds = %25, %20
  %28 = getelementptr inbounds %struct.wmt_mci_priv, ptr %1, i32 0, i32 8
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void @complete(ptr noundef nonnull %29) #5
  br label %32

32:                                               ; preds = %31, %27
  %33 = getelementptr inbounds %struct.wmt_mci_priv, ptr %1, i32 0, i32 9
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !23
  tail call void @arm_heavy_mb() #5
  %37 = load ptr, ptr %3, align 4
  %38 = getelementptr i8, ptr %37, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 1) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %39 = load ptr, ptr %3, align 4
  %40 = getelementptr i8, ptr %39, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 0) #5, !srcloc !11
  %41 = load ptr, ptr %33, align 4
  tail call void @complete(ptr noundef %41) #5
  br label %42

42:                                               ; preds = %36, %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !25
  tail call void @arm_heavy_mb() #5
  %43 = load ptr, ptr %3, align 4
  %44 = getelementptr i8, ptr %43, i32 40
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %44, i8 -128) #5, !srcloc !17
  br label %236

45:                                               ; preds = %2
  %46 = getelementptr inbounds %struct.wmt_mci_priv, ptr %1, i32 0, i32 10
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.mmc_request, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.mmc_data, ptr %49, i32 0, i32 8
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %184, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.wmt_mci_priv, ptr %1, i32 0, i32 11
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, %53
  br i1 %58, label %59, label %184

59:                                               ; preds = %55, %45
  %60 = and i32 %10, 2
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = and i32 %10, 20
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %229, label %65

65:                                               ; preds = %62, %59
  %66 = phi i32 [ 0, %59 ], [ -110, %62 ]
  %67 = getelementptr inbounds %struct.wmt_mci_priv, ptr %1, i32 0, i32 11
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.mmc_command, ptr %68, i32 0, i32 5
  store i32 %66, ptr %69, align 4
  %70 = getelementptr inbounds %struct.wmt_mci_priv, ptr %1, i32 0, i32 8
  store ptr null, ptr %70, align 4
  %71 = getelementptr inbounds %struct.wmt_mci_priv, ptr %1, i32 0, i32 11
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.mmc_command, ptr %72, i32 0, i32 5
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %181

76:                                               ; preds = %65
  %77 = load ptr, ptr %1, align 4
  %78 = getelementptr inbounds %struct.mmc_host, ptr %77, i32 0, i32 68
  %79 = getelementptr inbounds %struct.wmt_mci_priv, ptr %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.mmc_host, ptr %77, i32 1, i32 1, i32 7
  %81 = load ptr, ptr %79, align 4
  %82 = getelementptr i8, ptr %81, i32 17
  %83 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %82) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !26
  %84 = zext i8 %83 to i32
  %85 = load ptr, ptr %79, align 4
  %86 = getelementptr i8, ptr %85, i32 18
  %87 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %86) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !26
  %88 = zext i8 %87 to i32
  %89 = shl nuw nsw i32 %88, 8
  %90 = or i32 %89, %84
  %91 = load ptr, ptr %79, align 4
  %92 = getelementptr i8, ptr %91, i32 19
  %93 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %92) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !26
  %94 = zext i8 %93 to i32
  %95 = shl nuw nsw i32 %94, 16
  %96 = or i32 %95, %90
  %97 = load ptr, ptr %79, align 4
  %98 = getelementptr i8, ptr %97, i32 20
  %99 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %98) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !26
  %100 = load ptr, ptr %80, align 4
  %101 = zext i8 %99 to i32
  %102 = shl nuw i32 %101, 24
  %103 = or i32 %102, %96
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #5
  %105 = getelementptr %struct.mmc_command, ptr %100, i32 0, i32 2, i32 0
  store i32 %104, ptr %105, align 4
  %106 = load ptr, ptr %79, align 4
  %107 = getelementptr i8, ptr %106, i32 21
  %108 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %107) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !26
  %109 = zext i8 %108 to i32
  %110 = load ptr, ptr %79, align 4
  %111 = getelementptr i8, ptr %110, i32 22
  %112 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %111) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !26
  %113 = zext i8 %112 to i32
  %114 = shl nuw nsw i32 %113, 8
  %115 = or i32 %114, %109
  %116 = load ptr, ptr %79, align 4
  %117 = getelementptr i8, ptr %116, i32 23
  %118 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %117) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !26
  %119 = zext i8 %118 to i32
  %120 = shl nuw nsw i32 %119, 16
  %121 = or i32 %120, %115
  %122 = load ptr, ptr %79, align 4
  %123 = getelementptr i8, ptr %122, i32 24
  %124 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %123) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !26
  %125 = load ptr, ptr %80, align 4
  %126 = zext i8 %124 to i32
  %127 = shl nuw i32 %126, 24
  %128 = or i32 %127, %121
  %129 = tail call i32 @llvm.bswap.i32(i32 %128) #5
  %130 = getelementptr %struct.mmc_command, ptr %125, i32 0, i32 2, i32 1
  store i32 %129, ptr %130, align 4
  %131 = load ptr, ptr %79, align 4
  %132 = getelementptr i8, ptr %131, i32 25
  %133 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %132) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !26
  %134 = zext i8 %133 to i32
  %135 = load ptr, ptr %79, align 4
  %136 = getelementptr i8, ptr %135, i32 26
  %137 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %136) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !26
  %138 = zext i8 %137 to i32
  %139 = shl nuw nsw i32 %138, 8
  %140 = or i32 %139, %134
  %141 = load ptr, ptr %79, align 4
  %142 = getelementptr i8, ptr %141, i32 27
  %143 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %142) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !26
  %144 = zext i8 %143 to i32
  %145 = shl nuw nsw i32 %144, 16
  %146 = or i32 %145, %140
  %147 = load ptr, ptr %79, align 4
  %148 = getelementptr i8, ptr %147, i32 28
  %149 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %148) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !26
  %150 = load ptr, ptr %80, align 4
  %151 = zext i8 %149 to i32
  %152 = shl nuw i32 %151, 24
  %153 = or i32 %152, %146
  %154 = tail call i32 @llvm.bswap.i32(i32 %153) #5
  %155 = getelementptr %struct.mmc_command, ptr %150, i32 0, i32 2, i32 2
  store i32 %154, ptr %155, align 4
  %156 = load ptr, ptr %79, align 4
  %157 = getelementptr i8, ptr %156, i32 29
  %158 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %157) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !26
  %159 = zext i8 %158 to i32
  %160 = load ptr, ptr %79, align 4
  %161 = getelementptr i8, ptr %160, i32 30
  %162 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %161) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !26
  %163 = zext i8 %162 to i32
  %164 = shl nuw nsw i32 %163, 8
  %165 = or i32 %164, %159
  %166 = load ptr, ptr %79, align 4
  %167 = getelementptr i8, ptr %166, i32 31
  %168 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %167) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !26
  %169 = zext i8 %168 to i32
  %170 = shl nuw nsw i32 %169, 16
  %171 = or i32 %170, %165
  %172 = load ptr, ptr %79, align 4
  %173 = getelementptr i8, ptr %172, i32 16
  %174 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %173) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !27
  %175 = load ptr, ptr %80, align 4
  %176 = zext i8 %174 to i32
  %177 = shl nuw i32 %176, 24
  %178 = or i32 %177, %171
  %179 = tail call i32 @llvm.bswap.i32(i32 %178) #5
  %180 = getelementptr %struct.mmc_command, ptr %175, i32 0, i32 2, i32 3
  store i32 %179, ptr %180, align 4
  br label %181

181:                                              ; preds = %76, %65
  store ptr null, ptr %71, align 4
  %182 = load ptr, ptr %1, align 4
  %183 = load ptr, ptr %46, align 4
  tail call void @mmc_request_done(ptr noundef %182, ptr noundef %183) #5
  br label %229

184:                                              ; preds = %55, %51
  %185 = and i32 %10, 2
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %198, label %187

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.wmt_mci_priv, ptr %1, i32 0, i32 11
  %189 = load ptr, ptr %188, align 4
  %190 = icmp eq ptr %189, null
  br i1 %190, label %193, label %191

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.mmc_command, ptr %189, i32 0, i32 5
  store i32 0, ptr %192, align 4
  br label %193

193:                                              ; preds = %191, %187
  %194 = getelementptr inbounds %struct.wmt_mci_priv, ptr %1, i32 0, i32 8
  %195 = load ptr, ptr %194, align 4
  %196 = icmp eq ptr %195, null
  br i1 %196, label %198, label %197

197:                                              ; preds = %193
  tail call void @complete(ptr noundef nonnull %195) #5
  br label %198

198:                                              ; preds = %197, %193, %184
  %199 = and i32 %10, 20
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %222, label %201

201:                                              ; preds = %198
  %202 = getelementptr inbounds %struct.wmt_mci_priv, ptr %1, i32 0, i32 11
  %203 = load ptr, ptr %202, align 4
  %204 = icmp eq ptr %203, null
  br i1 %204, label %207, label %205

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.mmc_command, ptr %203, i32 0, i32 5
  store i32 -110, ptr %206, align 4
  br label %207

207:                                              ; preds = %205, %201
  %208 = getelementptr inbounds %struct.wmt_mci_priv, ptr %1, i32 0, i32 8
  %209 = load ptr, ptr %208, align 4
  %210 = icmp eq ptr %209, null
  br i1 %210, label %212, label %211

211:                                              ; preds = %207
  tail call void @complete(ptr noundef nonnull %209) #5
  br label %212

212:                                              ; preds = %211, %207
  %213 = getelementptr inbounds %struct.wmt_mci_priv, ptr %1, i32 0, i32 9
  %214 = load ptr, ptr %213, align 4
  %215 = icmp eq ptr %214, null
  br i1 %215, label %222, label %216

216:                                              ; preds = %212
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !23
  tail call void @arm_heavy_mb() #5
  %217 = load ptr, ptr %3, align 4
  %218 = getelementptr i8, ptr %217, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %218, i32 1) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %219 = load ptr, ptr %3, align 4
  %220 = getelementptr i8, ptr %219, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %220, i32 0) #5, !srcloc !11
  %221 = load ptr, ptr %213, align 4
  tail call void @complete(ptr noundef %221) #5
  br label %222

222:                                              ; preds = %216, %212, %198
  %223 = getelementptr inbounds %struct.wmt_mci_priv, ptr %1, i32 0, i32 9
  %224 = load ptr, ptr %223, align 4
  %225 = icmp eq ptr %224, null
  br i1 %225, label %229, label %226

226:                                              ; preds = %222
  %227 = tail call zeroext i1 @completion_done(ptr noundef nonnull %224) #5
  br i1 %227, label %228, label %229

228:                                              ; preds = %226
  tail call fastcc void @wmt_complete_data_request(ptr noundef %1)
  br label %229

229:                                              ; preds = %228, %226, %222, %181, %62
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %230 = load ptr, ptr %3, align 4
  %231 = getelementptr i8, ptr %230, i32 40
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %231, i8 %6) #5, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !29
  tail call void @arm_heavy_mb() #5
  %232 = load ptr, ptr %3, align 4
  %233 = getelementptr i8, ptr %232, i32 41
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %233, i8 %9) #5, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %234 = load ptr, ptr %3, align 4
  %235 = getelementptr i8, ptr %234, i32 42
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %235, i8 %13) #5, !srcloc !17
  br label %236

236:                                              ; preds = %229, %42
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wmt_mci_dma_isr(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.wmt_mci_priv, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 288
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !31
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !32
  %7 = and i32 %6, 15
  %8 = icmp eq i32 %7, 15
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmt_mci_priv, ptr %1, i32 0, i32 13
  %11 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.15, i32 noundef %7) #6
  %12 = getelementptr inbounds %struct.wmt_mci_priv, ptr %1, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mmc_request, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.mmc_data, ptr %15, i32 0, i32 5
  store i32 -110, ptr %16, align 4
  %17 = getelementptr inbounds %struct.wmt_mci_priv, ptr %1, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  tail call void @complete(ptr noundef %18) #5
  br label %37

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.wmt_mci_priv, ptr %1, i32 0, i32 10
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.mmc_request, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.mmc_data, ptr %23, i32 0, i32 5
  store i32 0, ptr %24, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !23
  tail call void @arm_heavy_mb() #5
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr i8, ptr %25, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 1) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %27 = load ptr, ptr %3, align 4
  %28 = getelementptr i8, ptr %27, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 0) #5, !srcloc !11
  %29 = getelementptr inbounds %struct.wmt_mci_priv, ptr %1, i32 0, i32 9
  %30 = load ptr, ptr %29, align 4
  tail call void @complete(ptr noundef %30) #5
  %31 = getelementptr inbounds %struct.wmt_mci_priv, ptr %1, i32 0, i32 8
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %19
  %35 = tail call zeroext i1 @completion_done(ptr noundef nonnull %32) #5
  br i1 %35, label %36, label %37

36:                                               ; preds = %34
  tail call fastcc void @wmt_complete_data_request(ptr noundef %1)
  br label %37

37:                                               ; preds = %36, %34, %19, %9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @wmt_reset_hardware(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %3 = getelementptr inbounds %struct.wmt_mci_priv, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 8
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !33
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  %7 = or i8 %6, -128
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 %7) #5, !srcloc !17
  %10 = load ptr, ptr %3, align 4
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %10) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !35
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !36
  tail call void @arm_heavy_mb() #5
  %12 = or i8 %11, 8
  %13 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 %12) #5, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr i8, ptr %14, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %15, i16 -24576) #5, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr i8, ptr %16, i32 40
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %17, i8 -1) #5, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !39
  tail call void @arm_heavy_mb() #5
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr i8, ptr %18, i32 41
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %19, i8 -1) #5, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr i8, ptr %20, i32 36
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %21, i8 -64) #5, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr i8, ptr %22, i32 37
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %23, i8 22) #5, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %24 = load ptr, ptr %3, align 4
  %25 = getelementptr i8, ptr %24, i32 60
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %25, i16 8191) #5, !srcloc !15
  %26 = load ptr, ptr %3, align 4
  %27 = getelementptr i8, ptr %26, i32 42
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %27) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !43
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %29 = or i8 %28, -128
  %30 = load ptr, ptr %3, align 4
  %31 = getelementptr i8, ptr %30, i32 42
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %31, i8 %29) #5, !srcloc !17
  %32 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 8
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @clk_set_rate(ptr noundef %33, i32 noundef 400000) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wmt_mci_request(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 6
  store ptr %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 7
  store ptr %6, ptr %7, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = load i32, ptr %8, align 4
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds %struct.mmc_command, ptr %8, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.mmc_command, ptr %8, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 31
  %17 = icmp eq i8 %16, 7
  %18 = select i1 %17, i8 2, i8 %16
  %19 = icmp eq i8 %18, 21
  %20 = select i1 %19, i8 9, i8 %18
  %21 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  tail call fastcc void @wmt_mci_send_command(ptr noundef %0, i8 noundef zeroext %10, i8 noundef zeroext 0, i32 noundef %12, i8 noundef zeroext %20)
  %25 = getelementptr inbounds %struct.wmt_mci_priv, ptr %3, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %26) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !45
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %28 = or i8 %27, 1
  %29 = load ptr, ptr %25, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %29, i8 %28) #5, !srcloc !17
  %30 = load ptr, ptr %21, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %182, label %32

32:                                               ; preds = %24, %2
  %33 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 3
  %34 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 4
  store ptr %33, ptr %34, align 4
  store i32 0, ptr %33, align 4
  %35 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 4
  tail call void @__init_swait_queue_head(ptr noundef %35, ptr noundef nonnull @.str.14, ptr noundef nonnull @init_completion.__key) #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %36 = getelementptr inbounds %struct.wmt_mci_priv, ptr %3, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %37, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 256) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !48
  tail call void @arm_heavy_mb() #5
  %39 = load ptr, ptr %36, align 4
  %40 = getelementptr i8, ptr %39, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 1) #5, !srcloc !11
  %41 = load ptr, ptr %36, align 4
  %42 = getelementptr i8, ptr %41, i32 256
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #5, !srcloc !31
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !49
  %44 = load ptr, ptr %36, align 4
  %45 = getelementptr i8, ptr %44, i32 12
  %46 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %45) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !50
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %47 = and i16 %46, -2048
  %48 = load ptr, ptr %21, align 4
  %49 = getelementptr inbounds %struct.mmc_data, ptr %48, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = trunc i32 %50 to i16
  %52 = add i16 %51, -1
  %53 = or i16 %52, %47
  %54 = load ptr, ptr %36, align 4
  %55 = getelementptr i8, ptr %54, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %55, i16 %53) #5, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %56 = load ptr, ptr %21, align 4
  %57 = getelementptr inbounds %struct.mmc_data, ptr %56, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = trunc i32 %58 to i16
  %60 = load ptr, ptr %36, align 4
  %61 = getelementptr i8, ptr %60, i32 14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %61, i16 %59) #5, !srcloc !15
  %62 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = load ptr, ptr %21, align 4
  %65 = getelementptr inbounds %struct.mmc_data, ptr %64, i32 0, i32 6
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, 256
  %68 = icmp eq i32 %67, 0
  %69 = load ptr, ptr %0, align 64
  %70 = getelementptr inbounds %struct.mmc_data, ptr %64, i32 0, i32 12
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.mmc_data, ptr %64, i32 0, i32 10
  %73 = load i32, ptr %72, align 4
  br i1 %68, label %81, label %74

74:                                               ; preds = %32
  %75 = tail call i32 @dma_map_sg_attrs(ptr noundef %69, ptr noundef %71, i32 noundef %73, i32 noundef 1, i32 noundef 0) #5
  %76 = load ptr, ptr %21, align 4
  %77 = getelementptr inbounds %struct.mmc_data, ptr %76, i32 0, i32 3
  %78 = load i32, ptr %77, align 4
  %79 = icmp ugt i32 %78, 1
  %80 = select i1 %79, i8 3, i8 1
  br label %88

81:                                               ; preds = %32
  %82 = tail call i32 @dma_map_sg_attrs(ptr noundef %69, ptr noundef %71, i32 noundef %73, i32 noundef 2, i32 noundef 0) #5
  %83 = load ptr, ptr %21, align 4
  %84 = getelementptr inbounds %struct.mmc_data, ptr %83, i32 0, i32 3
  %85 = load i32, ptr %84, align 4
  %86 = icmp ugt i32 %85, 1
  %87 = select i1 %86, i8 4, i8 2
  br label %88

88:                                               ; preds = %81, %74
  %89 = phi ptr [ %76, %74 ], [ %83, %81 ]
  %90 = phi i32 [ %75, %74 ], [ %82, %81 ]
  %91 = phi i8 [ %80, %74 ], [ %87, %81 ]
  %92 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 2
  %93 = icmp sgt i32 %90, 0
  br i1 %93, label %94, label %141

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.mmc_data, ptr %89, i32 0, i32 12
  %96 = load ptr, ptr %95, align 4
  %97 = load i32, ptr %92, align 4
  %98 = add i32 %97, 16
  br label %99

99:                                               ; preds = %134, %94
  %100 = phi ptr [ %137, %134 ], [ %63, %94 ]
  %101 = phi i32 [ %136, %134 ], [ 0, %94 ]
  %102 = phi i32 [ %135, %134 ], [ %98, %94 ]
  %103 = phi i32 [ %138, %134 ], [ 0, %94 ]
  %104 = phi ptr [ %139, %134 ], [ %96, %94 ]
  %105 = getelementptr inbounds %struct.scatterlist, ptr %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.scatterlist, ptr %104, i32 0, i32 3
  br label %107

107:                                              ; preds = %114, %99
  %108 = phi i32 [ %129, %114 ], [ 0, %99 ]
  %109 = phi i32 [ %130, %114 ], [ %102, %99 ]
  %110 = phi i32 [ %125, %114 ], [ %101, %99 ]
  %111 = phi ptr [ %124, %114 ], [ %100, %99 ]
  %112 = load i32, ptr %105, align 4
  %113 = icmp ult i32 %108, %112
  br i1 %113, label %114, label %134

114:                                              ; preds = %107
  %115 = load ptr, ptr %21, align 4
  %116 = getelementptr inbounds %struct.mmc_data, ptr %115, i32 0, i32 2
  %117 = load i32, ptr %116, align 4
  %118 = load i32, ptr %106, align 4
  %119 = add i32 %118, %108
  %120 = and i32 %117, 65535
  %121 = or i32 %120, 1073741824
  store i32 %121, ptr %111, align 4
  %122 = getelementptr inbounds %struct.wmt_dma_descriptor, ptr %111, i32 0, i32 1
  store i32 %119, ptr %122, align 4
  %123 = getelementptr inbounds %struct.wmt_dma_descriptor, ptr %111, i32 0, i32 2
  store i32 %109, ptr %123, align 4
  %124 = getelementptr %struct.wmt_dma_descriptor, ptr %111, i32 1
  %125 = add i32 %110, 1
  %126 = load ptr, ptr %21, align 4
  %127 = getelementptr inbounds %struct.mmc_data, ptr %126, i32 0, i32 2
  %128 = load i32, ptr %127, align 4
  %129 = add i32 %128, %108
  %130 = add i32 %109, 16
  %131 = getelementptr inbounds %struct.mmc_data, ptr %126, i32 0, i32 3
  %132 = load i32, ptr %131, align 4
  %133 = icmp eq i32 %125, %132
  br i1 %133, label %134, label %107

134:                                              ; preds = %114, %107
  %135 = phi i32 [ %130, %114 ], [ %109, %107 ]
  %136 = phi i32 [ %125, %114 ], [ %110, %107 ]
  %137 = phi ptr [ %124, %114 ], [ %111, %107 ]
  %138 = add nuw nsw i32 %103, 1
  %139 = tail call ptr @sg_next(ptr noundef %104) #5
  %140 = icmp eq i32 %138, %90
  br i1 %140, label %141, label %99

141:                                              ; preds = %134, %88
  %142 = phi ptr [ %63, %88 ], [ %137, %134 ]
  %143 = getelementptr %struct.wmt_dma_descriptor, ptr %142, i32 -1
  %144 = load i32, ptr %143, align 4
  %145 = or i32 %144, -2147483648
  store i32 %145, ptr %143, align 4
  %146 = load ptr, ptr %21, align 4
  %147 = getelementptr inbounds %struct.mmc_data, ptr %146, i32 0, i32 6
  %148 = load i32, ptr %147, align 4
  %149 = and i32 %148, 256
  %150 = icmp eq i32 %149, 0
  %151 = load i32, ptr %92, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  %152 = load ptr, ptr %36, align 4
  %153 = getelementptr i8, ptr %152, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 1) #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  %154 = load ptr, ptr %36, align 4
  %155 = getelementptr i8, ptr %154, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 %151) #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  %156 = load ptr, ptr %36, align 4
  %157 = getelementptr i8, ptr %156, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 0) #5
  %158 = load ptr, ptr %36, align 4
  %159 = getelementptr i8, ptr %158, i32 288
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %159) #5
  tail call void asm sideeffect "dsb ", "~{memory}"() #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %150, label %164, label %161

161:                                              ; preds = %141
  %162 = load ptr, ptr %36, align 4
  %163 = getelementptr i8, ptr %162, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %163, i32 0) #5, !srcloc !11
  br label %168

164:                                              ; preds = %141
  %165 = or i32 %160, 4194304
  %166 = load ptr, ptr %36, align 4
  %167 = getelementptr i8, ptr %166, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 %165) #5, !srcloc !11
  br label %168

168:                                              ; preds = %164, %161
  tail call fastcc void @wmt_mci_send_command(ptr noundef %0, i8 noundef zeroext %10, i8 noundef zeroext %91, i32 noundef %12, i8 noundef zeroext %20)
  %169 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 7
  %170 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 5
  store ptr %169, ptr %170, align 4
  store i32 0, ptr %169, align 4
  %171 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %171, ptr noundef nonnull @.str.14, ptr noundef nonnull @init_completion.__key) #5
  %172 = load ptr, ptr %36, align 4
  %173 = getelementptr i8, ptr %172, i32 288
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %173) #5, !srcloc !31
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !53
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %175 = or i32 %174, 128
  %176 = load ptr, ptr %36, align 4
  %177 = getelementptr i8, ptr %176, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %177, i32 %175) #5, !srcloc !11
  %178 = load ptr, ptr %36, align 4
  %179 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %178) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !45
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %180 = or i8 %179, 1
  %181 = load ptr, ptr %36, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %181, i8 %180) #5, !srcloc !17
  br label %182

182:                                              ; preds = %168, %24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wmt_mci_set_ios(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 5
  %5 = load i8, ptr %4, align 2
  %6 = icmp eq i8 %5, 1
  br i1 %6, label %7, label %21

7:                                                ; preds = %2
  tail call fastcc void @wmt_reset_hardware(ptr noundef %0)
  %8 = getelementptr inbounds %struct.wmt_mci_priv, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 8
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %10) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !55
  %12 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 9, i32 1
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, 1
  %15 = and i8 %11, -17
  %16 = select i1 %14, i8 16, i8 0
  %17 = or i8 %16, %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !56
  tail call void @arm_heavy_mb() #5
  %18 = load ptr, ptr %8, align 4
  %19 = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %19, i8 %17) #5, !srcloc !17
  %20 = load i8, ptr %4, align 2
  br label %21

21:                                               ; preds = %7, %2
  %22 = phi i8 [ %20, %7 ], [ %5, %2 ]
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.wmt_mci_priv, ptr %3, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 8
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %27) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !55
  %29 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 9, i32 1
  %30 = load i8, ptr %29, align 4
  %31 = icmp eq i8 %30, 0
  %32 = and i8 %28, -17
  %33 = select i1 %31, i8 16, i8 0
  %34 = or i8 %33, %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !56
  tail call void @arm_heavy_mb() #5
  %35 = load ptr, ptr %25, align 4
  %36 = getelementptr i8, ptr %35, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %36, i8 %34) #5, !srcloc !17
  br label %37

37:                                               ; preds = %24, %21
  %38 = load i32, ptr %1, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 8
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 @clk_set_rate(ptr noundef %42, i32 noundef %38) #5
  br label %44

44:                                               ; preds = %40, %37
  %45 = getelementptr inbounds %struct.wmt_mci_priv, ptr %3, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %46, i32 8
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %47) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !57
  %49 = load ptr, ptr %45, align 4
  %50 = getelementptr i8, ptr %49, i32 52
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %50) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !58
  %52 = and i8 %48, -7
  %53 = and i8 %51, -5
  %54 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 6
  %55 = load i8, ptr %54, align 1
  switch i8 %55, label %61 [
    i8 3, label %56
    i8 2, label %59
  ]

56:                                               ; preds = %44
  %57 = or i8 %52, 4
  %58 = or i8 %51, 4
  br label %61

59:                                               ; preds = %44
  %60 = or i8 %52, 2
  br label %61

61:                                               ; preds = %59, %56, %44
  %62 = phi i8 [ %53, %44 ], [ %53, %59 ], [ %58, %56 ]
  %63 = phi i8 [ %52, %44 ], [ %60, %59 ], [ %57, %56 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !59
  tail call void @arm_heavy_mb() #5
  %64 = load ptr, ptr %45, align 4
  %65 = getelementptr i8, ptr %64, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %65, i8 %63) #5, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %66 = load ptr, ptr %45, align 4
  %67 = getelementptr i8, ptr %66, i32 52
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %67, i8 %62) #5, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wmt_mci_get_ro(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %3 = getelementptr inbounds %struct.wmt_mci_priv, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 40
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !61
  %7 = lshr i8 %6, 1
  %8 = and i8 %7, 1
  %9 = xor i8 %8, 1
  %10 = zext i8 %9 to i32
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wmt_mci_get_cd(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %3 = getelementptr inbounds %struct.wmt_mci_priv, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 40
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !62
  %7 = lshr i8 %6, 3
  %8 = and i8 %7, 1
  %9 = getelementptr inbounds %struct.wmt_mci_priv, ptr %2, i32 0, i32 15
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %8, %10
  %12 = zext i1 %11 to i32
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @wmt_mci_send_command(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  %7 = getelementptr inbounds %struct.wmt_mci_priv, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 %1) #5, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %3) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr i8, ptr %12, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 %4) #5, !srcloc !17
  %14 = load ptr, ptr %7, align 4
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %14) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !66
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %16 = or i8 %15, 8
  %17 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %17, i8 %16) #5, !srcloc !17
  %18 = load ptr, ptr %7, align 4
  %19 = getelementptr i8, ptr %18, i32 8
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %19) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !55
  %21 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 9, i32 1
  %22 = load i8, ptr %21, align 4
  %23 = icmp eq i8 %22, 1
  %24 = and i8 %20, -17
  %25 = select i1 %23, i8 16, i8 0
  %26 = or i8 %25, %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !56
  tail call void @arm_heavy_mb() #5
  %27 = load ptr, ptr %7, align 4
  %28 = getelementptr i8, ptr %27, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %28, i8 %26) #5, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %29 = load ptr, ptr %7, align 4
  %30 = getelementptr i8, ptr %29, i32 40
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %30, i8 -1) #5, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %31 = load ptr, ptr %7, align 4
  %32 = getelementptr i8, ptr %31, i32 41
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %32, i8 -1) #5, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !70
  tail call void @arm_heavy_mb() #5
  %33 = load ptr, ptr %7, align 4
  %34 = getelementptr i8, ptr %33, i32 42
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %34, i8 -1) #5, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %35 = load ptr, ptr %7, align 4
  %36 = getelementptr i8, ptr %35, i32 43
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %36, i8 -1) #5, !srcloc !17
  %37 = load ptr, ptr %7, align 4
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %37) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !72
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !73
  tail call void @arm_heavy_mb() #5
  %39 = and i8 %38, 15
  %40 = shl i8 %2, 4
  %41 = or i8 %39, %40
  %42 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %42, i8 %41) #5, !srcloc !17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_detect_change(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @completion_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @wmt_complete_data_request(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.wmt_mci_priv, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mmc_request, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = mul i32 %9, %7
  %11 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 7
  store i32 %10, ptr %11, align 4
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.mmc_data, ptr %12, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 256
  %16 = icmp eq i32 %15, 0
  %17 = load ptr, ptr %0, align 4
  %18 = load ptr, ptr %17, align 64
  %19 = getelementptr inbounds %struct.mmc_data, ptr %12, i32 0, i32 12
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.mmc_data, ptr %12, i32 0, i32 10
  %22 = load i32, ptr %21, align 4
  %23 = select i1 %16, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %18, ptr noundef %20, i32 noundef %22, i32 noundef %23, i32 noundef 0) #5
  %24 = getelementptr inbounds %struct.mmc_request, ptr %3, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.mmc_command, ptr %25, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr inbounds %struct.mmc_data, ptr %30, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29, %1
  %35 = load ptr, ptr %0, align 4
  tail call void @mmc_request_done(ptr noundef %35, ptr noundef %3) #5
  br label %168

36:                                               ; preds = %29
  %37 = load ptr, ptr %0, align 4
  %38 = getelementptr inbounds %struct.mmc_host, ptr %37, i32 0, i32 68
  %39 = getelementptr inbounds %struct.wmt_mci_priv, ptr %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.mmc_host, ptr %37, i32 1, i32 1, i32 7
  %41 = load ptr, ptr %39, align 4
  %42 = getelementptr i8, ptr %41, i32 17
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %42) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !26
  %44 = zext i8 %43 to i32
  %45 = load ptr, ptr %39, align 4
  %46 = getelementptr i8, ptr %45, i32 18
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %46) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !26
  %48 = zext i8 %47 to i32
  %49 = shl nuw nsw i32 %48, 8
  %50 = or i32 %49, %44
  %51 = load ptr, ptr %39, align 4
  %52 = getelementptr i8, ptr %51, i32 19
  %53 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %52) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !26
  %54 = zext i8 %53 to i32
  %55 = shl nuw nsw i32 %54, 16
  %56 = or i32 %55, %50
  %57 = load ptr, ptr %39, align 4
  %58 = getelementptr i8, ptr %57, i32 20
  %59 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %58) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !26
  %60 = load ptr, ptr %40, align 4
  %61 = zext i8 %59 to i32
  %62 = shl nuw i32 %61, 24
  %63 = or i32 %62, %56
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #5
  %65 = getelementptr %struct.mmc_command, ptr %60, i32 0, i32 2, i32 0
  store i32 %64, ptr %65, align 4
  %66 = load ptr, ptr %39, align 4
  %67 = getelementptr i8, ptr %66, i32 21
  %68 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %67) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !26
  %69 = zext i8 %68 to i32
  %70 = load ptr, ptr %39, align 4
  %71 = getelementptr i8, ptr %70, i32 22
  %72 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %71) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !26
  %73 = zext i8 %72 to i32
  %74 = shl nuw nsw i32 %73, 8
  %75 = or i32 %74, %69
  %76 = load ptr, ptr %39, align 4
  %77 = getelementptr i8, ptr %76, i32 23
  %78 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %77) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !26
  %79 = zext i8 %78 to i32
  %80 = shl nuw nsw i32 %79, 16
  %81 = or i32 %80, %75
  %82 = load ptr, ptr %39, align 4
  %83 = getelementptr i8, ptr %82, i32 24
  %84 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %83) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !26
  %85 = load ptr, ptr %40, align 4
  %86 = zext i8 %84 to i32
  %87 = shl nuw i32 %86, 24
  %88 = or i32 %87, %81
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #5
  %90 = getelementptr %struct.mmc_command, ptr %85, i32 0, i32 2, i32 1
  store i32 %89, ptr %90, align 4
  %91 = load ptr, ptr %39, align 4
  %92 = getelementptr i8, ptr %91, i32 25
  %93 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %92) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !26
  %94 = zext i8 %93 to i32
  %95 = load ptr, ptr %39, align 4
  %96 = getelementptr i8, ptr %95, i32 26
  %97 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %96) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !26
  %98 = zext i8 %97 to i32
  %99 = shl nuw nsw i32 %98, 8
  %100 = or i32 %99, %94
  %101 = load ptr, ptr %39, align 4
  %102 = getelementptr i8, ptr %101, i32 27
  %103 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %102) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !26
  %104 = zext i8 %103 to i32
  %105 = shl nuw nsw i32 %104, 16
  %106 = or i32 %105, %100
  %107 = load ptr, ptr %39, align 4
  %108 = getelementptr i8, ptr %107, i32 28
  %109 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %108) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !26
  %110 = load ptr, ptr %40, align 4
  %111 = zext i8 %109 to i32
  %112 = shl nuw i32 %111, 24
  %113 = or i32 %112, %106
  %114 = tail call i32 @llvm.bswap.i32(i32 %113) #5
  %115 = getelementptr %struct.mmc_command, ptr %110, i32 0, i32 2, i32 2
  store i32 %114, ptr %115, align 4
  %116 = load ptr, ptr %39, align 4
  %117 = getelementptr i8, ptr %116, i32 29
  %118 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %117) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !26
  %119 = zext i8 %118 to i32
  %120 = load ptr, ptr %39, align 4
  %121 = getelementptr i8, ptr %120, i32 30
  %122 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %121) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !26
  %123 = zext i8 %122 to i32
  %124 = shl nuw nsw i32 %123, 8
  %125 = or i32 %124, %119
  %126 = load ptr, ptr %39, align 4
  %127 = getelementptr i8, ptr %126, i32 31
  %128 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %127) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !26
  %129 = zext i8 %128 to i32
  %130 = shl nuw nsw i32 %129, 16
  %131 = or i32 %130, %125
  %132 = load ptr, ptr %39, align 4
  %133 = getelementptr i8, ptr %132, i32 16
  %134 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %133) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !27
  %135 = load ptr, ptr %40, align 4
  %136 = zext i8 %134 to i32
  %137 = shl nuw i32 %136, 24
  %138 = or i32 %137, %131
  %139 = tail call i32 @llvm.bswap.i32(i32 %138) #5
  %140 = getelementptr %struct.mmc_command, ptr %135, i32 0, i32 2, i32 3
  store i32 %139, ptr %140, align 4
  %141 = load ptr, ptr %4, align 4
  %142 = getelementptr inbounds %struct.mmc_data, ptr %141, i32 0, i32 8
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %147

145:                                              ; preds = %36
  %146 = load ptr, ptr %0, align 4
  tail call void @mmc_request_done(ptr noundef %146, ptr noundef %3) #5
  br label %168

147:                                              ; preds = %36
  %148 = getelementptr inbounds %struct.wmt_mci_priv, ptr %0, i32 0, i32 6
  %149 = getelementptr inbounds %struct.wmt_mci_priv, ptr %0, i32 0, i32 8
  store ptr %148, ptr %149, align 4
  store i32 0, ptr %148, align 4
  %150 = getelementptr inbounds %struct.wmt_mci_priv, ptr %0, i32 0, i32 6, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %150, ptr noundef nonnull @.str.14, ptr noundef nonnull @init_completion.__key) #5
  %151 = load ptr, ptr %4, align 4
  %152 = getelementptr inbounds %struct.mmc_data, ptr %151, i32 0, i32 8
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.wmt_mci_priv, ptr %0, i32 0, i32 11
  store ptr %153, ptr %154, align 4
  %155 = load ptr, ptr %0, align 4
  %156 = load ptr, ptr %4, align 4
  %157 = getelementptr inbounds %struct.mmc_data, ptr %156, i32 0, i32 8
  %158 = load ptr, ptr %157, align 4
  %159 = load i32, ptr %158, align 4
  %160 = trunc i32 %159 to i8
  %161 = getelementptr inbounds %struct.mmc_command, ptr %158, i32 0, i32 1
  %162 = load i32, ptr %161, align 4
  tail call fastcc void @wmt_mci_send_command(ptr noundef %155, i8 noundef zeroext %160, i8 noundef zeroext 7, i32 noundef %162, i8 noundef zeroext 9)
  %163 = getelementptr inbounds %struct.wmt_mci_priv, ptr %0, i32 0, i32 1
  %164 = load ptr, ptr %163, align 4
  %165 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %164) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !45
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %166 = or i8 %165, 1
  %167 = load ptr, ptr %163, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %167, i8 %166) #5, !srcloc !17
  br label %168

168:                                              ; preds = %147, %145, %34
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wmt_mci_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 68
  %7 = getelementptr inbounds %struct.wmt_mci_priv, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 8
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !74
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !75
  tail call void @arm_heavy_mb() #5
  %11 = or i8 %10, -128
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 %11) #5, !srcloc !17
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr i8, ptr %14, i32 12
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %15) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !76
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !77
  tail call void @arm_heavy_mb() #5
  %17 = and i16 %16, 24575
  %18 = load ptr, ptr %7, align 4
  %19 = getelementptr i8, ptr %18, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %19, i16 %17) #5, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !78
  tail call void @arm_heavy_mb() #5
  %20 = load ptr, ptr %7, align 4
  %21 = getelementptr i8, ptr %20, i32 40
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %21, i8 -1) #5, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr i8, ptr %22, i32 41
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %23, i8 -1) #5, !srcloc !17
  %24 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 8
  %25 = load ptr, ptr %24, align 4
  tail call void @clk_disable(ptr noundef %25) #5
  br label %26

26:                                               ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wmt_mci_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 68
  %7 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @clk_enable(ptr noundef %8) #5
  %10 = getelementptr inbounds %struct.wmt_mci_priv, ptr %6, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 8
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %12) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !80
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  %14 = or i8 %13, -128
  %15 = load ptr, ptr %10, align 4
  %16 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %16, i8 %14) #5, !srcloc !17
  %17 = load ptr, ptr %10, align 4
  %18 = getelementptr i8, ptr %17, i32 12
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %18) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !82
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %20 = or i16 %19, -24576
  %21 = load ptr, ptr %10, align 4
  %22 = getelementptr i8, ptr %21, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %22, i16 %20) #5, !srcloc !15
  %23 = load ptr, ptr %10, align 4
  %24 = getelementptr i8, ptr %23, i32 36
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %24) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !84
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !85
  tail call void @arm_heavy_mb() #5
  %26 = or i8 %25, -128
  %27 = load ptr, ptr %10, align 4
  %28 = getelementptr i8, ptr %27, i32 36
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %28, i8 %26) #5, !srcloc !17
  br label %29

29:                                               ; preds = %5, %1
  ret i32 0
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 4989047}
!9 = !{i64 2153501924}
!10 = !{i64 2153502136}
!11 = !{i64 4988849}
!12 = !{i64 4988429}
!13 = !{i64 2153502650}
!14 = !{i64 2153502862}
!15 = !{i64 4988229}
!16 = !{i64 2153503226}
!17 = !{i64 4988652}
!18 = !{i64 2153503485}
!19 = !{i64 2153482845}
!20 = !{i64 2153483065}
!21 = !{i64 2153483285}
!22 = !{i64 2153483505}
!23 = !{i64 2153480871}
!24 = !{i64 2153481217}
!25 = !{i64 2153483721}
!26 = !{i64 2153477106}
!27 = !{i64 2153476828}
!28 = !{i64 2153484045}
!29 = !{i64 2153484310}
!30 = !{i64 2153484575}
!31 = !{i64 4989267}
!32 = !{i64 2153482050}
!33 = !{i64 2153484860}
!34 = !{i64 2153485072}
!35 = !{i64 2153485364}
!36 = !{i64 2153485576}
!37 = !{i64 2153485870}
!38 = !{i64 2153486226}
!39 = !{i64 2153486485}
!40 = !{i64 2153486761}
!41 = !{i64 2153487056}
!42 = !{i64 2153487329}
!43 = !{i64 2153487686}
!44 = !{i64 2153487898}
!45 = !{i64 2153477431}
!46 = !{i64 2153477643}
!47 = !{i64 2153488186}
!48 = !{i64 2153488552}
!49 = !{i64 2153489063}
!50 = !{i64 2153492900}
!51 = !{i64 2153493136}
!52 = !{i64 2153493561}
!53 = !{i64 2153492006}
!54 = !{i64 2153492232}
!55 = !{i64 2153476333}
!56 = !{i64 2153476543}
!57 = !{i64 2153494503}
!58 = !{i64 2153494723}
!59 = !{i64 2153494959}
!60 = !{i64 2153495224}
!61 = !{i64 2153495509}
!62 = !{i64 2153495734}
!63 = !{i64 2153477915}
!64 = !{i64 2153478176}
!65 = !{i64 2153478511}
!66 = !{i64 2153478796}
!67 = !{i64 2153479008}
!68 = !{i64 2153479279}
!69 = !{i64 2153479538}
!70 = !{i64 2153479797}
!71 = !{i64 2153480056}
!72 = !{i64 2153480338}
!73 = !{i64 2153480564}
!74 = !{i64 2153504415}
!75 = !{i64 2153504627}
!76 = !{i64 2153505056}
!77 = !{i64 2153505265}
!78 = !{i64 2153505623}
!79 = !{i64 2153505882}
!80 = !{i64 2153506164}
!81 = !{i64 2153506376}
!82 = !{i64 2153506805}
!83 = !{i64 2153507041}
!84 = !{i64 2153507448}
!85 = !{i64 2153507660}
