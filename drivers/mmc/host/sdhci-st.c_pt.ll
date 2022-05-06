; ModuleID = '/llk/IR/drivers/mmc/host/sdhci-st.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-st.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdhci_pltfm_data = type { ptr, i32, i32 }
%struct.sdhci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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

@__initcall__kmod_sdhci_st__263_523_sdhci_st_driver_init6 = internal global ptr @sdhci_st_driver_init, section ".initcall6.init", align 4
@sdhci_st_driver = internal global %struct.platform_driver { ptr @sdhci_st_probe, ptr @sdhci_st_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @st_sdhci_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_st_pmops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sdhci_st_driver_exit = internal global ptr @sdhci_st_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description264 = internal constant [62 x i8] c"sdhci_st.description=SDHCI driver for STMicroelectronics SoCs\00", section ".modinfo", align 1
@__UNIQUE_ID_author265 = internal constant [60 x i8] c"sdhci_st.author=Giuseppe Cavallaro <peppe.cavallaro@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file266 = internal constant [40 x i8] c"sdhci_st.file=drivers/mmc/host/sdhci-st\00", section ".modinfo", align 1
@__UNIQUE_ID_license267 = internal constant [24 x i8] c"sdhci_st.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias268 = internal constant [33 x i8] c"sdhci_st.alias=platform:sdhci-st\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"sdhci-st\00", align 1
@st_sdhci_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@sdhci_st_pmops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @sdhci_st_suspend, ptr @sdhci_st_resume, ptr @sdhci_st_suspend, ptr @sdhci_st_resume, ptr @sdhci_st_suspend, ptr @sdhci_st_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"mmc\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Peripheral clk not found\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"icn\00", align 1
@sdhci_st_pdata = internal constant %struct.sdhci_pltfm_data { ptr @sdhci_st_ops, i32 637534208, i32 264 }, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Failed sdhci_pltfm_init\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Failed mmc_of_parse\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Failed to prepare clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Failed to prepare icn clock\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"top-mmc-delay\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"SDHCI ST Initialised: Host Version: 0x%x Vendor Version 0x%x\0A\00", align 1
@sdhci_st_ops = internal constant %struct.sdhci_ops { ptr @sdhci_st_readl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_clock, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_pltfm_clk_get_max_clock, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_reset, ptr null, ptr @sdhci_st_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.10 = private unnamed_addr constant [38 x i8] c"Error setting dll for clock (uhs %d)\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.11 = private unnamed_addr constant [17 x i8] c"st,sdhci-stih407\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias268, ptr @__UNIQUE_ID_author265, ptr @__UNIQUE_ID_description264, ptr @__UNIQUE_ID_file266, ptr @__UNIQUE_ID_license267, ptr @__exitcall_sdhci_st_driver_exit, ptr @__initcall__kmod_sdhci_st__263_523_sdhci_st_driver_init6, ptr @sdhci_st_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sdhci_st_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdhci_st_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sdhci_st_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdhci_st_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_st_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.1) #4
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #5
  %8 = ptrtoint ptr %5 to i32
  br label %74

9:                                                ; preds = %1
  %10 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.3) #4
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  %12 = select i1 %11, ptr null, ptr %10
  %13 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #4
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = ptrtoint ptr %13 to i32
  br label %74

17:                                               ; preds = %9
  %18 = tail call i32 @reset_control_deassert(ptr noundef %13) #4
  %19 = tail call ptr @sdhci_pltfm_init(ptr noundef %0, ptr noundef nonnull @sdhci_st_pdata, i32 noundef 12) #4
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #5
  %22 = ptrtoint ptr %19 to i32
  br label %71

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.sdhci_host, ptr %19, i32 0, i32 81
  %25 = getelementptr inbounds %struct.sdhci_host, ptr %19, i32 1, i32 11, i32 5
  store ptr %13, ptr %25, align 4
  %26 = getelementptr inbounds %struct.sdhci_host, ptr %19, i32 0, i32 10
  %27 = load ptr, ptr %26, align 8
  %28 = tail call i32 @mmc_of_parse(ptr noundef %27) #4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #5
  br label %69

31:                                               ; preds = %23
  %32 = tail call i32 @clk_prepare(ptr noundef %5) #4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = tail call i32 @clk_enable(ptr noundef %5) #4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  tail call void @clk_unprepare(ptr noundef %5) #4
  br label %38

38:                                               ; preds = %37, %31
  %39 = phi i32 [ %35, %37 ], [ %32, %31 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #5
  br label %69

40:                                               ; preds = %34
  %41 = tail call i32 @clk_prepare(ptr noundef %12) #4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = tail call i32 @clk_enable(ptr noundef %12) #4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  tail call void @clk_unprepare(ptr noundef %12) #4
  br label %47

47:                                               ; preds = %46, %40
  %48 = phi i32 [ %44, %46 ], [ %41, %40 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7) #5
  br label %67

49:                                               ; preds = %43
  %50 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.8) #4
  %51 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %50) #4
  %52 = getelementptr inbounds %struct.sdhci_host, ptr %19, i32 1, i32 11, i32 7
  %53 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  %54 = select i1 %53, ptr null, ptr %51
  store ptr %54, ptr %52, align 4
  store ptr %5, ptr %24, align 64
  %55 = getelementptr inbounds %struct.sdhci_host, ptr %19, i32 1, i32 11, i32 6
  store ptr %12, ptr %55, align 4
  tail call fastcc void @st_mmcss_cconfig(ptr noundef %4, ptr noundef %19)
  %56 = tail call i32 @sdhci_add_host(ptr noundef %19) #4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.sdhci_host, ptr %19, i32 0, i32 4
  %60 = load ptr, ptr %59, align 16
  %61 = getelementptr i8, ptr %60, i32 254
  %62 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %61) #4, !srcloc !8
  %63 = zext i16 %62 to i32
  %64 = and i32 %63, 255
  %65 = lshr i32 %63, 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef %64, i32 noundef %65) #5
  br label %74

66:                                               ; preds = %49
  tail call void @clk_disable(ptr noundef %12) #4
  tail call void @clk_unprepare(ptr noundef %12) #4
  br label %67

67:                                               ; preds = %66, %47
  %68 = phi i32 [ %48, %47 ], [ %56, %66 ]
  tail call void @clk_disable(ptr noundef %5) #4
  tail call void @clk_unprepare(ptr noundef %5) #4
  br label %69

69:                                               ; preds = %67, %38, %30
  %70 = phi i32 [ %28, %30 ], [ %39, %38 ], [ %68, %67 ]
  tail call void @sdhci_pltfm_free(ptr noundef %0) #4
  br label %71

71:                                               ; preds = %69, %21
  %72 = phi i32 [ %22, %21 ], [ %70, %69 ]
  %73 = tail call i32 @reset_control_assert(ptr noundef %13) #4
  br label %74

74:                                               ; preds = %71, %58, %15, %7
  %75 = phi i32 [ %8, %7 ], [ %16, %15 ], [ %72, %71 ], [ 0, %58 ]
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_st_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @sdhci_pltfm_unregister(ptr noundef %0) #4
  %7 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 6
  %8 = load ptr, ptr %7, align 4
  tail call void @clk_disable(ptr noundef %8) #4
  tail call void @clk_unprepare(ptr noundef %8) #4
  %9 = tail call i32 @reset_control_assert(ptr noundef %5) #4
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdhci_pltfm_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @st_mmcss_cconfig(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 81
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef nonnull @.str.11) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %58, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 4
  %10 = load ptr, ptr %9, align 16
  %11 = getelementptr i8, ptr %10, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 16781568) #4, !srcloc !9
  %12 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 6
  %13 = load i32, ptr %12, align 16
  switch i32 %13, label %15 [
    i32 200000000, label %16
    i32 100000000, label %14
  ]

14:                                               ; preds = %8
  br label %16

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %15, %14, %8
  %17 = phi i32 [ 50000000, %15 ], [ 100000000, %14 ], [ %13, %8 ]
  %18 = phi i32 [ 286326834, %15 ], [ 286326884, %14 ], [ 286326984, %8 ]
  %19 = load ptr, ptr %3, align 64
  %20 = tail call i32 @clk_set_rate(ptr noundef %19, i32 noundef %17) #4
  %21 = load ptr, ptr %9, align 16
  %22 = getelementptr i8, ptr %21, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %18) #4, !srcloc !9
  %23 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 16
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 256
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %16
  %28 = load ptr, ptr %9, align 16
  %29 = getelementptr i8, ptr %28, i32 1104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 4096) #4, !srcloc !9
  %30 = load i32, ptr %23, align 8
  br label %31

31:                                               ; preds = %27, %16
  %32 = phi i32 [ %30, %27 ], [ %24, %16 ]
  %33 = phi i32 [ 1048849, %27 ], [ 269484305, %16 ]
  %34 = and i32 %32, 262144
  %35 = icmp eq i32 %34, 0
  %36 = or i32 %33, 65536
  %37 = xor i1 %35, true
  %38 = zext i1 %37 to i32
  %39 = select i1 %35, i32 0, i32 271
  %40 = and i32 %32, 524288
  %41 = icmp eq i32 %40, 0
  %42 = or i32 %39, 15
  %43 = and i32 %32, 786432
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, i32 %33, i32 %36
  %46 = lshr exact i32 %40, 15
  %47 = select i1 %41, i32 %39, i32 %42
  %48 = lshr i32 %32, 12
  %49 = and i32 %48, 256
  %50 = or i32 %49, %46
  %51 = or i32 %50, %38
  %52 = load ptr, ptr %9, align 16
  %53 = getelementptr i8, ptr %52, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %45) #4, !srcloc !9
  %54 = load ptr, ptr %9, align 16
  %55 = getelementptr i8, ptr %54, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %51) #4, !srcloc !9
  %56 = load ptr, ptr %9, align 16
  %57 = getelementptr i8, ptr %56, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %47) #4, !srcloc !9
  br label %58

58:                                               ; preds = %31, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_pltfm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_st_readl(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = icmp eq i32 %1, 64
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  br i1 %3, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %5, i32 64
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #4, !srcloc !10
  %9 = and i32 %8, -33554433
  br label %13

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %5, i32 %1
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #4, !srcloc !10
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi i32 [ %9, %6 ], [ %12, %10 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_clock(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_clk_get_max_clock(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_bus_width(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_st_set_uhs_signaling(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sdhci_ops, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !11

8:                                                ; preds = %2
  %9 = tail call zeroext i16 %6(ptr noundef %0, i32 noundef 62) #4
  br label %15

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 16
  %13 = getelementptr i8, ptr %12, i32 62
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %13) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  br label %15

15:                                               ; preds = %10, %8
  %16 = phi i16 [ %9, %8 ], [ %14, %10 ]
  %17 = and i16 %16, -8
  switch i32 %1, label %109 [
    i32 3, label %18
    i32 4, label %26
    i32 5, label %34
    i32 6, label %65
    i32 9, label %65
    i32 7, label %96
    i32 8, label %96
  ]

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %20, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %20, i32 15) #4, !srcloc !9
  br label %24

24:                                               ; preds = %22, %18
  %25 = or i16 %17, 8
  br label %109

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 7
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = getelementptr i8, ptr %28, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %28, i32 15) #4, !srcloc !9
  br label %32

32:                                               ; preds = %30, %26
  %33 = or i16 %17, 9
  br label %109

34:                                               ; preds = %15
  %35 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 7
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = getelementptr i8, ptr %36, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %36, i32 15) #4, !srcloc !9
  br label %40

40:                                               ; preds = %38, %34
  %41 = or i16 %17, 10
  %42 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 22
  %43 = load i32, ptr %42, align 4
  %44 = icmp ugt i32 %43, 90000000
  br i1 %44, label %45, label %109

45:                                               ; preds = %40
  %46 = load ptr, ptr %35, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = getelementptr i8, ptr %46, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 3328) #4, !srcloc !9
  %50 = getelementptr i8, ptr %46, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 6) #4, !srcloc !9
  br label %51

51:                                               ; preds = %48, %45
  %52 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %53 = load ptr, ptr %52, align 16
  %54 = load volatile i32, ptr @jiffies, align 64
  %55 = getelementptr i8, ptr %53, i32 1120
  %56 = sub i32 -100, %54
  br label %57

57:                                               ; preds = %62, %51
  %58 = load volatile i32, ptr @jiffies, align 64
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !13
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %109

62:                                               ; preds = %57
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #4, !srcloc !15
  %63 = add i32 %56, %58
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %57, label %104

65:                                               ; preds = %15, %15
  %66 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 7
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  %70 = getelementptr i8, ptr %67, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %67, i32 15) #4, !srcloc !9
  br label %71

71:                                               ; preds = %69, %65
  %72 = or i16 %17, 11
  %73 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 22
  %74 = load i32, ptr %73, align 4
  %75 = icmp ugt i32 %74, 90000000
  br i1 %75, label %76, label %109

76:                                               ; preds = %71
  %77 = load ptr, ptr %66, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = getelementptr i8, ptr %77, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 3328) #4, !srcloc !9
  %81 = getelementptr i8, ptr %77, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 6) #4, !srcloc !9
  br label %82

82:                                               ; preds = %79, %76
  %83 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %84 = load ptr, ptr %83, align 16
  %85 = load volatile i32, ptr @jiffies, align 64
  %86 = getelementptr i8, ptr %84, i32 1120
  %87 = sub i32 -100, %85
  br label %88

88:                                               ; preds = %93, %82
  %89 = load volatile i32, ptr @jiffies, align 64
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !13
  %91 = and i32 %90, 1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %88
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #4, !srcloc !15
  %94 = add i32 %87, %89
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %88, label %104

96:                                               ; preds = %15, %15
  %97 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 1, i32 11, i32 7
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %96
  %101 = getelementptr i8, ptr %98, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %98, i32 15) #4, !srcloc !9
  br label %102

102:                                              ; preds = %100, %96
  %103 = or i16 %17, 12
  br label %109

104:                                              ; preds = %93, %62
  %105 = phi i16 [ %41, %62 ], [ %72, %93 ]
  %106 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %107 = load ptr, ptr %106, align 8
  %108 = load ptr, ptr %107, align 64
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %108, ptr noundef nonnull @.str.10, i32 noundef %1) #5
  br label %109

109:                                              ; preds = %104, %102, %88, %71, %57, %40, %32, %24, %15
  %110 = phi i16 [ %105, %104 ], [ %72, %71 ], [ %41, %40 ], [ %25, %24 ], [ %33, %32 ], [ %103, %102 ], [ %17, %15 ], [ %41, %57 ], [ %72, %88 ]
  %111 = load ptr, ptr %3, align 4
  %112 = getelementptr inbounds %struct.sdhci_ops, ptr %111, i32 0, i32 4
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %116, label %115, !prof !11

115:                                              ; preds = %109
  tail call void %113(ptr noundef %0, i16 noundef zeroext %110, i32 noundef 62) #4
  br label %120

116:                                              ; preds = %109
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %117 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %118 = load ptr, ptr %117, align 16
  %119 = getelementptr i8, ptr %118, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %119, i16 %110) #4, !srcloc !17
  br label %120

120:                                              ; preds = %116, %115
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_st_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 81
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 5
  %6 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 73
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %18, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 10
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 29
  %13 = load i16, ptr %12, align 8
  %14 = and i16 %13, 8
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 32
  store i32 1, ptr %17, align 4
  br label %18

18:                                               ; preds = %16, %9, %1
  %19 = tail call i32 @sdhci_suspend_host(ptr noundef %3) #4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load ptr, ptr %5, align 4
  %23 = tail call i32 @reset_control_assert(ptr noundef %22) #4
  %24 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 6
  %25 = load ptr, ptr %24, align 4
  tail call void @clk_disable(ptr noundef %25) #4
  tail call void @clk_unprepare(ptr noundef %25) #4
  %26 = load ptr, ptr %4, align 64
  tail call void @clk_disable(ptr noundef %26) #4
  tail call void @clk_unprepare(ptr noundef %26) #4
  br label %27

27:                                               ; preds = %21, %18
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_st_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 81
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 5
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %4, align 64
  %9 = tail call i32 @clk_prepare(ptr noundef %8) #4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %1
  %12 = tail call i32 @clk_enable(ptr noundef %8) #4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @clk_unprepare(ptr noundef %8) #4
  br label %31

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 1, i32 11, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @clk_prepare(ptr noundef %17) #4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = tail call i32 @clk_enable(ptr noundef %17) #4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  tail call void @clk_unprepare(ptr noundef %17) #4
  br label %24

24:                                               ; preds = %23, %15
  %25 = phi i32 [ %21, %23 ], [ %18, %15 ]
  %26 = load ptr, ptr %4, align 64
  tail call void @clk_disable(ptr noundef %26) #4
  tail call void @clk_unprepare(ptr noundef %26) #4
  br label %31

27:                                               ; preds = %20
  %28 = load ptr, ptr %5, align 4
  %29 = tail call i32 @reset_control_deassert(ptr noundef %28) #4
  tail call fastcc void @st_mmcss_cconfig(ptr noundef %7, ptr noundef %3)
  %30 = tail call i32 @sdhci_resume_host(ptr noundef %3) #4
  br label %31

31:                                               ; preds = %27, %24, %14, %1
  %32 = phi i32 [ %25, %24 ], [ %30, %27 ], [ %12, %14 ], [ %9, %1 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_suspend_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_resume_host(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i64 373131}
!9 = !{i64 373551}
!10 = !{i64 373969}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2153425527}
!13 = !{i64 2153431780}
!14 = !{i64 2153432026}
!15 = !{i64 2153431868}
!16 = !{i64 2153423838}
!17 = !{i64 372931}
