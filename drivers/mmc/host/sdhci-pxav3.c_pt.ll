; ModuleID = '/llk/IR/drivers/mmc/host/sdhci-pxav3.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-pxav3.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdhci_pltfm_data = type { ptr, i32, i32 }
%struct.sdhci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.mbus_dram_target_info = type { i8, i32, [4 x %struct.mbus_dram_window] }
%struct.mbus_dram_window = type { i8, i8, i64, i64 }
%struct.sdhci_pxa_platdata = type { i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_sdhci_pxav3__264_578_sdhci_pxav3_driver_init6 = internal global ptr @sdhci_pxav3_driver_init, section ".initcall6.init", align 4
@sdhci_pxav3_driver = internal global %struct.platform_driver { ptr @sdhci_pxav3_probe, ptr @sdhci_pxav3_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @sdhci_pxav3_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_pxav3_pmops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sdhci_pxav3_driver_exit = internal global ptr @sdhci_pxav3_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description265 = internal constant [47 x i8] c"sdhci_pxav3.description=SDHCI driver for pxav3\00", section ".modinfo", align 1
@__UNIQUE_ID_author266 = internal constant [46 x i8] c"sdhci_pxav3.author=Marvell International Ltd.\00", section ".modinfo", align 1
@__UNIQUE_ID_file267 = internal constant [46 x i8] c"sdhci_pxav3.file=drivers/mmc/host/sdhci-pxav3\00", section ".modinfo", align 1
@__UNIQUE_ID_license268 = internal constant [27 x i8] c"sdhci_pxav3.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"sdhci-pxav3\00", align 1
@sdhci_pxav3_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mrvl,pxav3-mmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-380-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@sdhci_pxav3_pmops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @sdhci_pxav3_suspend, ptr @sdhci_pxav3_resume, ptr @sdhci_pxav3_suspend, ptr @sdhci_pxav3_resume, ptr @sdhci_pxav3_suspend, ptr @sdhci_pxav3_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_pxav3_runtime_suspend, ptr @sdhci_pxav3_runtime_resume, ptr null }, align 4
@sdhci_pxav3_pdata = internal constant %struct.sdhci_pltfm_data { ptr @pxav3_sdhci_ops, i32 117441024, i32 0 }, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"failed to get io clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"marvell,armada-380-sdhci\00", align 1
@pxav3_sdhci_ops = internal constant %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_clock, ptr @pxav3_set_power, ptr null, ptr null, ptr null, ptr @sdhci_pltfm_clk_get_max_clock, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr @pxav3_gen_init_74_clocks, ptr null, ptr @pxav3_reset, ptr null, ptr @pxav3_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"74 clock interrupt not cleared\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"conf-sdio3\00", align 1
@.str.7 = private unnamed_addr constant [92 x i8] c"conf-sdio3 register not found: disabling SDR50 and DDR50 modes.\0AConsider updating your dtb\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"no-1-8-v\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"no mbus dram info\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"cannot get mbus registers\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"cannot map mbus registers\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"mrvl,clk-delay-cycles\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author266, ptr @__UNIQUE_ID_description265, ptr @__UNIQUE_ID_file267, ptr @__UNIQUE_ID_license268, ptr @__exitcall_sdhci_pxav3_driver_exit, ptr @__initcall__kmod_sdhci_pxav3__264_578_sdhci_pxav3_driver_init6, ptr @sdhci_pxav3_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sdhci_pxav3_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdhci_pxav3_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sdhci_pxav3_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdhci_pxav3_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_pxav3_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = tail call ptr @sdhci_pltfm_init(ptr noundef %0, ptr noundef nonnull @sdhci_pxav3_pdata, i32 noundef 16) #5
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = ptrtoint ptr %8 to i32
  br label %291

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.sdhci_host, ptr %8, i32 0, i32 81
  %14 = getelementptr inbounds %struct.sdhci_host, ptr %8, i32 1, i32 11, i32 5
  %15 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.1) #5
  %16 = getelementptr inbounds %struct.sdhci_host, ptr %8, i32 1, i32 11, i32 6
  store ptr %15, ptr %16, align 4
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #5
  store ptr %19, ptr %16, align 4
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi ptr [ %19, %18 ], [ %15, %12 ]
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #6
  %24 = load ptr, ptr %16, align 4
  %25 = ptrtoint ptr %24 to i32
  br label %289

26:                                               ; preds = %20
  store ptr %21, ptr %13, align 64
  %27 = tail call i32 @clk_prepare(ptr noundef %21) #5
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = tail call i32 @clk_enable(ptr noundef %21) #5
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void @clk_unprepare(ptr noundef %21) #5
  br label %33

33:                                               ; preds = %32, %29, %26
  %34 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.3) #5
  store ptr %34, ptr %14, align 4
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %43, label %36

36:                                               ; preds = %33
  %37 = tail call i32 @clk_prepare(ptr noundef %34) #5
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = tail call i32 @clk_enable(ptr noundef %34) #5
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  tail call void @clk_unprepare(ptr noundef %34) #5
  br label %43

43:                                               ; preds = %42, %39, %36, %33
  %44 = getelementptr inbounds %struct.sdhci_host, ptr %8, i32 0, i32 10
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.mmc_host, ptr %45, i32 0, i32 16
  %47 = load i32, ptr %46, align 8
  %48 = or i32 %47, 4096
  store i32 %48, ptr %46, align 8
  %49 = tail call i32 @of_device_is_compatible(ptr noundef %7, ptr noundef nonnull @.str.4) #5
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %179, label %51

51:                                               ; preds = %43
  %52 = load ptr, ptr %6, align 8
  %53 = getelementptr inbounds %struct.sdhci_host, ptr %8, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, -167772161
  %56 = or i32 %55, 134217728
  store i32 %56, ptr %53, align 4
  %57 = getelementptr inbounds %struct.sdhci_host, ptr %8, i32 0, i32 9
  %58 = load ptr, ptr %57, align 4
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61, !prof !8

61:                                               ; preds = %51
  %62 = tail call i32 %59(ptr noundef %8, i32 noundef 64) #5
  br label %68

63:                                               ; preds = %51
  %64 = getelementptr inbounds %struct.sdhci_host, ptr %8, i32 0, i32 4
  %65 = load ptr, ptr %64, align 16
  %66 = getelementptr i8, ptr %65, i32 64
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  br label %68

68:                                               ; preds = %63, %61
  %69 = phi i32 [ %62, %61 ], [ %67, %63 ]
  %70 = getelementptr inbounds %struct.sdhci_host, ptr %8, i32 0, i32 56
  store i32 %69, ptr %70, align 4
  %71 = load ptr, ptr %57, align 4
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %76, label %74, !prof !8

74:                                               ; preds = %68
  %75 = tail call i32 %72(ptr noundef %8, i32 noundef 68) #5
  br label %81

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.sdhci_host, ptr %8, i32 0, i32 4
  %78 = load ptr, ptr %77, align 16
  %79 = getelementptr i8, ptr %78, i32 68
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  br label %81

81:                                               ; preds = %76, %74
  %82 = phi i32 [ %75, %74 ], [ %80, %76 ]
  %83 = getelementptr inbounds %struct.sdhci_host, ptr %8, i32 0, i32 57
  store i32 %82, ptr %83, align 32
  %84 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.6) #5
  %85 = icmp eq ptr %84, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %81
  %87 = tail call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef nonnull %84) #5
  %88 = getelementptr inbounds %struct.sdhci_host, ptr %8, i32 1, i32 11, i32 8
  store ptr %87, ptr %88, align 4
  %89 = icmp ugt ptr %87, inttoptr (i32 -4096 to ptr)
  br i1 %89, label %108, label %93

90:                                               ; preds = %81
  %91 = load i32, ptr %83, align 32
  %92 = and i32 %91, -6
  store i32 %92, ptr %83, align 32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.7) #6
  br label %93

93:                                               ; preds = %90, %86
  %94 = tail call ptr @of_find_property(ptr noundef %52, ptr noundef nonnull @.str.8, ptr noundef null) #5
  %95 = icmp eq ptr %94, null
  %96 = load i32, ptr %70, align 4
  br i1 %95, label %103, label %97

97:                                               ; preds = %93
  %98 = and i32 %96, -67108865
  store i32 %98, ptr %70, align 4
  %99 = load ptr, ptr %44, align 8
  %100 = getelementptr inbounds %struct.mmc_host, ptr %99, i32 0, i32 16
  %101 = load i32, ptr %100, align 8
  %102 = and i32 %101, -4097
  store i32 %102, ptr %100, align 8
  br label %105

103:                                              ; preds = %93
  %104 = and i32 %96, -16777217
  store i32 %104, ptr %70, align 4
  br label %105

105:                                              ; preds = %103, %97
  %106 = load i32, ptr %83, align 32
  %107 = and i32 %106, -8195
  store i32 %107, ptr %83, align 32
  br label %111

108:                                              ; preds = %86
  %109 = ptrtoint ptr %87 to i32
  %110 = icmp slt ptr %87, null
  br i1 %110, label %285, label %111

111:                                              ; preds = %108, %105
  %112 = tail call ptr @mv_mbus_dram_info() #5
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9) #6
  br label %285

115:                                              ; preds = %111
  %116 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 1) #5
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10) #6
  br label %285

119:                                              ; preds = %115
  %120 = load i32, ptr %116, align 4
  %121 = getelementptr inbounds %struct.resource, ptr %116, i32 0, i32 1
  %122 = load i32, ptr %121, align 4
  %123 = sub i32 1, %120
  %124 = add i32 %123, %122
  %125 = tail call ptr @ioremap(i32 noundef %120, i32 noundef %124) #5
  %126 = icmp eq ptr %125, null
  br i1 %126, label %147, label %127

127:                                              ; preds = %119
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %128 = getelementptr i8, ptr %125, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 0) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %129 = getelementptr i8, ptr %125, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 0) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %130 = getelementptr i8, ptr %125, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 0) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %131 = getelementptr i8, ptr %125, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 0) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %132 = getelementptr i8, ptr %125, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 0) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %133 = getelementptr i8, ptr %125, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 0) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %134 = getelementptr i8, ptr %125, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 0) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %135 = getelementptr i8, ptr %125, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 0) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %136 = getelementptr i8, ptr %125, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 0) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %137 = getelementptr i8, ptr %125, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 0) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %138 = getelementptr i8, ptr %125, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 0) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %139 = getelementptr i8, ptr %125, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 0) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %140 = getelementptr i8, ptr %125, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %140, i32 0) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %141 = getelementptr i8, ptr %125, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 0) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %142 = getelementptr i8, ptr %125, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 0) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %143 = getelementptr i8, ptr %125, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 0) #5, !srcloc !12
  %144 = getelementptr inbounds %struct.mbus_dram_target_info, ptr %112, i32 0, i32 1
  %145 = load i32, ptr %144, align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %148, label %178

147:                                              ; preds = %119
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.11) #6
  br label %285

148:                                              ; preds = %127
  %149 = getelementptr inbounds %struct.mbus_dram_target_info, ptr %112, i32 0, i32 2
  br label %150

150:                                              ; preds = %150, %148
  %151 = phi i32 [ 0, %148 ], [ %175, %150 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %152 = getelementptr %struct.mbus_dram_window, ptr %149, i32 %151, i32 3
  %153 = load i64, ptr %152, align 8
  %154 = getelementptr %struct.mbus_dram_window, ptr %149, i32 %151, i32 1
  %155 = load i8, ptr %154, align 1
  %156 = zext i8 %155 to i32
  %157 = shl nuw nsw i32 %156, 8
  %158 = load i8, ptr %112, align 8
  %159 = zext i8 %158 to i32
  %160 = shl nuw nsw i32 %159, 4
  %161 = trunc i64 %153 to i32
  %162 = add i32 %161, -1
  %163 = and i32 %162, -65536
  %164 = or i32 %163, %157
  %165 = or i32 %164, %160
  %166 = or i32 %165, 1
  %167 = shl i32 %151, 3
  %168 = add i32 %167, 128
  %169 = getelementptr i8, ptr %125, i32 %168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %169, i32 %166) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  %170 = getelementptr %struct.mbus_dram_window, ptr %149, i32 %151, i32 2
  %171 = load i64, ptr %170, align 8
  %172 = trunc i64 %171 to i32
  %173 = add i32 %167, 132
  %174 = getelementptr i8, ptr %125, i32 %173
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %174, i32 %172) #5, !srcloc !12
  %175 = add nuw nsw i32 %151, 1
  %176 = load i32, ptr %144, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %150, label %178

178:                                              ; preds = %150, %127
  tail call void @iounmap(ptr noundef nonnull %125) #5
  br label %179

179:                                              ; preds = %178, %43
  %180 = tail call ptr @of_match_device(ptr noundef nonnull @sdhci_pxav3_of_match, ptr noundef %3) #5
  %181 = icmp eq ptr %180, null
  br i1 %181, label %197, label %182

182:                                              ; preds = %179
  %183 = load ptr, ptr %44, align 8
  %184 = tail call i32 @mmc_of_parse(ptr noundef %183) #5
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %285

186:                                              ; preds = %182
  tail call void @sdhci_get_property(ptr noundef %0) #5
  %187 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !16
  %188 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 40, i32 noundef 3520) #5
  %189 = icmp eq ptr %188, null
  br i1 %189, label %196, label %190

190:                                              ; preds = %186
  %191 = call i32 @of_property_read_variable_u32_array(ptr noundef %187, ptr noundef nonnull @.str.12, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #5
  %192 = icmp sgt i32 %191, -1
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  %194 = load i32, ptr %2, align 4
  %195 = getelementptr inbounds %struct.sdhci_pxa_platdata, ptr %188, i32 0, i32 1
  store i32 %194, ptr %195, align 4
  br label %196

196:                                              ; preds = %193, %190, %186
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  store ptr %188, ptr %4, align 4
  br label %261

197:                                              ; preds = %179
  %198 = icmp eq ptr %5, null
  br i1 %198, label %261, label %199

199:                                              ; preds = %197
  %200 = load i32, ptr %5, align 4
  %201 = and i32 %200, 2
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %209, label %203

203:                                              ; preds = %199
  %204 = load ptr, ptr %44, align 8
  %205 = getelementptr inbounds %struct.mmc_host, ptr %204, i32 0, i32 16
  %206 = load i32, ptr %205, align 8
  %207 = or i32 %206, 256
  store i32 %207, ptr %205, align 8
  %208 = load i32, ptr %5, align 4
  br label %209

209:                                              ; preds = %203, %199
  %210 = phi i32 [ %208, %203 ], [ %200, %199 ]
  %211 = and i32 %210, 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %218, label %213

213:                                              ; preds = %209
  %214 = load ptr, ptr %44, align 8
  %215 = getelementptr inbounds %struct.mmc_host, ptr %214, i32 0, i32 16
  %216 = load i32, ptr %215, align 8
  %217 = or i32 %216, 64
  store i32 %217, ptr %215, align 8
  br label %218

218:                                              ; preds = %213, %209
  %219 = getelementptr inbounds %struct.sdhci_pxa_platdata, ptr %5, i32 0, i32 7
  %220 = load i32, ptr %219, align 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %226, label %222

222:                                              ; preds = %218
  %223 = getelementptr inbounds %struct.sdhci_host, ptr %8, i32 0, i32 1
  %224 = load i32, ptr %223, align 4
  %225 = or i32 %224, %220
  store i32 %225, ptr %223, align 4
  br label %226

226:                                              ; preds = %222, %218
  %227 = getelementptr inbounds %struct.sdhci_pxa_platdata, ptr %5, i32 0, i32 8
  %228 = load i32, ptr %227, align 4
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %234, label %230

230:                                              ; preds = %226
  %231 = getelementptr inbounds %struct.sdhci_host, ptr %8, i32 0, i32 2
  %232 = load i32, ptr %231, align 8
  %233 = or i32 %232, %228
  store i32 %233, ptr %231, align 8
  br label %234

234:                                              ; preds = %230, %226
  %235 = getelementptr inbounds %struct.sdhci_pxa_platdata, ptr %5, i32 0, i32 5
  %236 = load i32, ptr %235, align 4
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %243, label %238

238:                                              ; preds = %234
  %239 = load ptr, ptr %44, align 8
  %240 = getelementptr inbounds %struct.mmc_host, ptr %239, i32 0, i32 16
  %241 = load i32, ptr %240, align 8
  %242 = or i32 %241, %236
  store i32 %242, ptr %240, align 8
  br label %243

243:                                              ; preds = %238, %234
  %244 = getelementptr inbounds %struct.sdhci_pxa_platdata, ptr %5, i32 0, i32 6
  %245 = load i32, ptr %244, align 4
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %252, label %247

247:                                              ; preds = %243
  %248 = load ptr, ptr %44, align 8
  %249 = getelementptr inbounds %struct.mmc_host, ptr %248, i32 0, i32 17
  %250 = load i32, ptr %249, align 4
  %251 = or i32 %250, %245
  store i32 %251, ptr %249, align 4
  br label %252

252:                                              ; preds = %247, %243
  %253 = getelementptr inbounds %struct.sdhci_pxa_platdata, ptr %5, i32 0, i32 9
  %254 = load i32, ptr %253, align 4
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %261, label %256

256:                                              ; preds = %252
  %257 = load ptr, ptr %44, align 8
  %258 = getelementptr inbounds %struct.mmc_host, ptr %257, i32 0, i32 19
  %259 = load i32, ptr %258, align 4
  %260 = or i32 %259, %254
  store i32 %260, ptr %258, align 4
  br label %261

261:                                              ; preds = %256, %252, %197, %196
  %262 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %262) #5, !srcloc !17
  %263 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %262, ptr %262, i32 1, ptr elementtype(i32) %262) #5, !srcloc !18
  %264 = call i32 @__pm_runtime_set_status(ptr noundef %3, i32 noundef 0) #5
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %3, i32 noundef 50) #5
  call void @__pm_runtime_use_autosuspend(ptr noundef %3, i1 noundef zeroext true) #5
  call void @pm_runtime_enable(ptr noundef %3) #5
  %265 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 15
  %266 = load i16, ptr %265, align 8
  %267 = or i16 %266, 256
  store i16 %267, ptr %265, align 8
  %268 = call i32 @sdhci_add_host(ptr noundef %8) #5
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %280

270:                                              ; preds = %261
  %271 = load ptr, ptr %44, align 8
  %272 = getelementptr inbounds %struct.mmc_host, ptr %271, i32 0, i32 19
  %273 = load i32, ptr %272, align 4
  %274 = and i32 %273, 2
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %278, label %276

276:                                              ; preds = %270
  %277 = call i32 @device_init_wakeup(ptr noundef %3, i1 noundef zeroext true) #5
  br label %278

278:                                              ; preds = %276, %270
  %279 = call i32 @__pm_runtime_suspend(ptr noundef %3, i32 noundef 13) #5
  br label %291

280:                                              ; preds = %261
  call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #5
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %262) #5, !srcloc !17
  %281 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %262, ptr %262, i32 0, i32 -1, ptr elementtype(i32) %262) #5, !srcloc !20
  %282 = extractvalue { i32, i32, i32 } %281, 0
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %285, label %284

284:                                              ; preds = %280
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !21
  br label %285

285:                                              ; preds = %284, %280, %182, %147, %118, %114, %108
  %286 = phi i32 [ %109, %108 ], [ %184, %182 ], [ %268, %280 ], [ %268, %284 ], [ -22, %114 ], [ -22, %118 ], [ -12, %147 ]
  %287 = load ptr, ptr %16, align 4
  call void @clk_disable(ptr noundef %287) #5
  call void @clk_unprepare(ptr noundef %287) #5
  %288 = load ptr, ptr %14, align 4
  call void @clk_disable(ptr noundef %288) #5
  call void @clk_unprepare(ptr noundef %288) #5
  br label %289

289:                                              ; preds = %285, %23
  %290 = phi i32 [ %25, %23 ], [ %286, %285 ]
  call void @sdhci_pltfm_free(ptr noundef %0) #5
  br label %291

291:                                              ; preds = %289, %278, %10
  %292 = phi i32 [ %11, %10 ], [ %290, %289 ], [ 0, %278 ]
  ret i32 %292
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_pxav3_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #5
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #5
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #5, !srcloc !17
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 0, i32 -1, ptr elementtype(i32) %6) #5, !srcloc !20
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !21
  br label %11

11:                                               ; preds = %10, %1
  %12 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 5
  tail call void @sdhci_remove_host(ptr noundef %3, i32 noundef 1) #5
  %13 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 6
  %14 = load ptr, ptr %13, align 4
  tail call void @clk_disable(ptr noundef %14) #5
  tail call void @clk_unprepare(ptr noundef %14) #5
  %15 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %15) #5
  tail call void @clk_unprepare(ptr noundef %15) #5
  tail call void @sdhci_pltfm_free(ptr noundef %0) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdhci_pltfm_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mv_mbus_dram_info() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_pltfm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_clock(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pxav3_set_power(ptr noundef %0, i8 noundef zeroext %1, i16 noundef zeroext %2) #2 {
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 23
  %7 = load i8, ptr %6, align 8
  tail call void @sdhci_set_power_noreg(ptr noundef %0, i8 noundef zeroext %1, i16 noundef zeroext %2) #5
  %8 = load i8, ptr %6, align 8
  %9 = icmp eq i8 %8, %7
  br i1 %9, label %18, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 54
  %12 = load ptr, ptr %11, align 4
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = icmp eq i8 %8, 0
  %16 = select i1 %15, i16 0, i16 %2
  %17 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %5, ptr noundef %12, i16 noundef zeroext %16) #5
  br label %18

18:                                               ; preds = %14, %10, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_clk_get_max_clock(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_bus_width(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pxav3_gen_init_74_clocks(ptr nocapture noundef %0, i8 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 7
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 1
  %6 = icmp eq i8 %1, 2
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %69

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 16
  %11 = getelementptr i8, ptr %10, i32 270
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %11) #5, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !23
  %13 = or i16 %12, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %14 = load ptr, ptr %9, align 16
  %15 = getelementptr i8, ptr %14, i32 270
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %15, i16 %13) #5, !srcloc !25
  %16 = load ptr, ptr %9, align 16
  %17 = getelementptr i8, ptr %16, i32 256
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %17) #5, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !26
  %19 = or i16 %18, 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %20 = load ptr, ptr %9, align 16
  %21 = getelementptr i8, ptr %20, i32 256
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %21, i16 %19) #5, !srcloc !25
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 158913520) #5
  %23 = load ptr, ptr %9, align 16
  %24 = getelementptr i8, ptr %23, i32 270
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %24) #5, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !28
  %26 = and i16 %25, 4
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %62, label %28

28:                                               ; preds = %8
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 2147480) #5
  %30 = load ptr, ptr %9, align 16
  %31 = getelementptr i8, ptr %30, i32 270
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %31) #5, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !28
  %33 = and i16 %32, 4
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %62, label %35

35:                                               ; preds = %28
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 2147480) #5
  %37 = load ptr, ptr %9, align 16
  %38 = getelementptr i8, ptr %37, i32 270
  %39 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %38) #5, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !28
  %40 = and i16 %39, 4
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %62, label %42

42:                                               ; preds = %35
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 2147480) #5
  %44 = load ptr, ptr %9, align 16
  %45 = getelementptr i8, ptr %44, i32 270
  %46 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %45) #5, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !28
  %47 = and i16 %46, 4
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %42
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 2147480) #5
  %51 = load ptr, ptr %9, align 16
  %52 = getelementptr i8, ptr %51, i32 270
  %53 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %52) #5, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !28
  %54 = and i16 %53, 4
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %49
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 2147480) #5
  br label %62

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %60 = load ptr, ptr %59, align 8
  %61 = load ptr, ptr %60, align 64
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %61, ptr noundef nonnull @.str.5) #6
  br label %62

62:                                               ; preds = %58, %56, %42, %35, %28, %8
  %63 = load ptr, ptr %9, align 16
  %64 = getelementptr i8, ptr %63, i32 270
  %65 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %64) #5, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !29
  %66 = or i16 %65, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %67 = load ptr, ptr %9, align 16
  %68 = getelementptr i8, ptr %67, i32 270
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %68, i16 %66) #5, !srcloc !25
  br label %69

69:                                               ; preds = %62, %2
  store i8 %1, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pxav3_reset(ptr noundef %0, i8 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  tail call void @sdhci_reset(ptr noundef %0, i8 noundef zeroext %1) #5
  %8 = icmp eq i8 %1, 1
  %9 = icmp ne ptr %7, null
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.sdhci_pxa_platdata, ptr %7, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 16
  %18 = getelementptr i8, ptr %17, i32 266
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %18) #5, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !31
  %20 = load i32, ptr %12, align 4
  %21 = trunc i32 %20 to i16
  %22 = shl i16 %21, 9
  %23 = and i16 %22, 15872
  %24 = or i16 %19, %23
  %25 = or i16 %24, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  %26 = load ptr, ptr %16, align 16
  %27 = getelementptr i8, ptr %26, i32 266
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %27, i16 %25) #5, !srcloc !25
  br label %28

28:                                               ; preds = %15, %11, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pxav3_set_uhs_signaling(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sdhci_ops, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !8

8:                                                ; preds = %2
  %9 = tail call zeroext i16 %6(ptr noundef %0, i32 noundef 62) #5
  br label %15

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 16
  %13 = getelementptr i8, ptr %12, i32 62
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %13) #5, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !33
  br label %15

15:                                               ; preds = %10, %8
  %16 = phi i16 [ %9, %8 ], [ %14, %10 ]
  %17 = and i16 %16, -8
  switch i32 %1, label %26 [
    i32 7, label %24
    i32 4, label %18
    i32 5, label %20
    i32 6, label %22
    i32 8, label %24
  ]

18:                                               ; preds = %15
  %19 = or i16 %17, 1
  br label %26

20:                                               ; preds = %15
  %21 = or i16 %17, 10
  br label %26

22:                                               ; preds = %15
  %23 = or i16 %17, 11
  br label %26

24:                                               ; preds = %15, %15
  %25 = or i16 %17, 12
  br label %26

26:                                               ; preds = %24, %22, %20, %18, %15
  %27 = phi i16 [ %25, %24 ], [ %23, %22 ], [ %21, %20 ], [ %19, %18 ], [ %17, %15 ]
  %28 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 8
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %46, label %31

31:                                               ; preds = %26
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %29) #5, !srcloc !34
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !35
  %33 = and i32 %1, -3
  %34 = icmp eq i32 %33, 5
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = and i8 %32, -6
  %37 = or i8 %36, 4
  br label %43

38:                                               ; preds = %31
  %39 = icmp ne i32 %1, 1
  %40 = and i8 %32, -6
  %41 = zext i1 %39 to i8
  %42 = or i8 %40, %41
  br label %43

43:                                               ; preds = %38, %35
  %44 = phi i8 [ %37, %35 ], [ %42, %38 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !36
  tail call void @arm_heavy_mb() #5
  %45 = load ptr, ptr %28, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %45, i8 %44) #5, !srcloc !37
  br label %46

46:                                               ; preds = %43, %26
  %47 = load ptr, ptr %3, align 4
  %48 = getelementptr inbounds %struct.sdhci_ops, ptr %47, i32 0, i32 4
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51, !prof !8

51:                                               ; preds = %46
  tail call void %49(ptr noundef %0, i16 noundef zeroext %27, i32 noundef 62) #5
  br label %56

52:                                               ; preds = %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %53 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %54 = load ptr, ptr %53, align 16
  %55 = getelementptr i8, ptr %54, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %55, i16 %27) #5, !srcloc !25
  br label %56

56:                                               ; preds = %52, %51
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_power_noreg(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_ocr(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_get_property(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_remove_host(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_pxav3_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #5
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 73
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 10
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.mmc_host, ptr %10, i32 0, i32 29
  %12 = load i16, ptr %11, align 8
  %13 = and i16 %12, 8
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.mmc_host, ptr %10, i32 0, i32 32
  store i32 1, ptr %16, align 4
  br label %17

17:                                               ; preds = %15, %8, %1
  %18 = tail call i32 @sdhci_suspend_host(ptr noundef %3) #5
  %19 = tail call i64 @ktime_get_mono_fast_ns() #5
  %20 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 22
  store volatile i64 %19, ptr %20, align 8
  %21 = tail call i32 @__pm_runtime_suspend(ptr noundef %0, i32 noundef 13) #5
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_pxav3_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #5
  %5 = tail call i32 @sdhci_resume_host(ptr noundef %3) #5
  %6 = tail call i64 @ktime_get_mono_fast_ns() #5
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 22
  store volatile i64 %6, ptr %7, align 8
  %8 = tail call i32 @__pm_runtime_suspend(ptr noundef %0, i32 noundef 13) #5
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_pxav3_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 5
  %5 = tail call i32 @sdhci_runtime_suspend_host(ptr noundef %3) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 73
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %20, label %11

11:                                               ; preds = %7
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

20:                                               ; preds = %18, %11, %7
  %21 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 6
  %22 = load ptr, ptr %21, align 4
  tail call void @clk_disable(ptr noundef %22) #5
  tail call void @clk_unprepare(ptr noundef %22) #5
  %23 = load ptr, ptr %4, align 4
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  tail call void @clk_disable(ptr noundef %23) #5
  tail call void @clk_unprepare(ptr noundef %23) #5
  br label %26

26:                                               ; preds = %25, %20, %1
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_pxav3_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 5
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @clk_prepare(ptr noundef %6) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = tail call i32 @clk_enable(ptr noundef %6) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @clk_unprepare(ptr noundef %6) #5
  br label %13

13:                                               ; preds = %12, %9, %1
  %14 = load ptr, ptr %4, align 4
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @clk_prepare(ptr noundef %14) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = tail call i32 @clk_enable(ptr noundef %14) #5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @clk_unprepare(ptr noundef %14) #5
  br label %23

23:                                               ; preds = %22, %19, %16, %13
  %24 = tail call i32 @sdhci_runtime_resume_host(ptr noundef %3, i32 noundef 0) #5
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_suspend_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_resume_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_runtime_suspend_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_runtime_resume_host(ptr noundef, i32 noundef) local_unnamed_addr #1

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 3664833}
!10 = !{i64 2153468539}
!11 = !{i64 2153475484}
!12 = !{i64 3664415}
!13 = !{i64 2153475836}
!14 = !{i64 2153476284}
!15 = !{i64 2153476835}
!16 = !{!"auto-init"}
!17 = !{i64 610933, i64 2148112499, i64 2148112525, i64 2148112572, i64 2148112594, i64 2148112622, i64 2148112642}
!18 = !{i64 2148175761, i64 2148175787, i64 2148175816, i64 2148175850, i64 2148175881, i64 2148175904}
!19 = !{i64 2148175268}
!20 = !{i64 597502, i64 597527, i64 597549, i64 597565, i64 597577, i64 597597, i64 597621, i64 597637, i64 597649}
!21 = !{i64 2148175394}
!22 = !{i64 3663995}
!23 = !{i64 2153481563}
!24 = !{i64 2153481764}
!25 = !{i64 3663795}
!26 = !{i64 2153482245}
!27 = !{i64 2153482446}
!28 = !{i64 2153483477}
!29 = !{i64 2153485029}
!30 = !{i64 2153485230}
!31 = !{i64 2153479962}
!32 = !{i64 2153480169}
!33 = !{i64 2153469090}
!34 = !{i64 3664613}
!35 = !{i64 2153485649}
!36 = !{i64 2153486338}
!37 = !{i64 3664218}
!38 = !{i64 2153467401}
