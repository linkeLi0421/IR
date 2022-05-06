; ModuleID = '/llk/IR/drivers/mmc/host/sdhci-pxav2.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-pxav2.c"
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdhci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.sdhci_host = type { ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, %struct.mmc_host_ops, i64, %struct.led_classdev, [32 x i8], %struct.spinlock, i32, i32, i32, i32, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x ptr], ptr, ptr, ptr, ptr, i8, %struct.sg_mapping_iter, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.timer_list, %struct.timer_list, ptr, ptr, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i64, [56 x i8], [0 x i32] }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.sdhci_pxa_platdata = type { i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }

@sdhci_pxav2_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mrvl,pxav2-mmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description263 = internal constant [35 x i8] c"description=SDHCI driver for pxav2\00", section ".modinfo", align 1
@__UNIQUE_ID_author264 = internal constant [34 x i8] c"author=Marvell International Ltd.\00", section ".modinfo", align 1
@__UNIQUE_ID_license265 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@sdhci_pxav2_driver = internal global %struct.platform_driver { ptr @sdhci_pxav2_probe, ptr @sdhci_pltfm_unregister, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @sdhci_pxav2_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_pltfm_pmops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [12 x i8] c"sdhci-pxav2\00", align 1
@sdhci_pltfm_pmops = external dso_local constant %struct.dev_pm_ops, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"PXA-SDHCLK\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"failed to get io clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to enable io clock\0A\00", align 1
@pxav2_sdhci_ops = internal constant %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_clock, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_pltfm_clk_get_max_clock, ptr null, ptr null, ptr null, ptr null, ptr @pxav2_mmc_set_bus_width, ptr null, ptr null, ptr @pxav2_reset, ptr null, ptr @sdhci_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"non-removable\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"bus-width\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"mrvl,clk-delay-cycles\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author264, ptr @__UNIQUE_ID_description263, ptr @__UNIQUE_ID_license265], section "llvm.metadata"

@__mod_of__sdhci_pxav2_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @sdhci_pxav2_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdhci_pxav2_driver, ptr noundef nonnull @__this_module) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdhci_pxav2_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_pxav2_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @sdhci_pltfm_init(ptr noundef %0, ptr noundef null, i32 noundef 0) #5
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = ptrtoint ptr %7 to i32
  br label %116

11:                                               ; preds = %1
  %12 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.1) #5
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2) #6
  %15 = ptrtoint ptr %12 to i32
  br label %114

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 81
  store ptr %12, ptr %17, align 64
  %18 = tail call i32 @clk_prepare(ptr noundef %12) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = tail call i32 @clk_enable(ptr noundef %12) #5
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  tail call void @clk_unprepare(ptr noundef %12) #5
  br label %24

24:                                               ; preds = %23, %16
  %25 = phi i32 [ %21, %23 ], [ %18, %16 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3) #6
  br label %114

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 1
  store i32 33558592, ptr %27, align 4
  %28 = tail call ptr @of_match_device(ptr noundef nonnull @sdhci_pxav2_of_match, ptr noundef %4) #5
  %29 = icmp eq ptr %28, null
  br i1 %29, label %56, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %32 = load ptr, ptr %31, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %33 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 40, i32 noundef 3520) #5
  %34 = icmp eq ptr %33, null
  br i1 %34, label %55, label %35

35:                                               ; preds = %30
  %36 = tail call ptr @of_find_property(ptr noundef %32, ptr noundef nonnull @.str.4, ptr noundef null) #5
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, ptr %33, align 4
  %40 = or i32 %39, 2
  store i32 %40, ptr %33, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = call i32 @of_property_read_variable_u32_array(ptr noundef %32, ptr noundef nonnull @.str.5, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #5
  %43 = load i32, ptr %2, align 4
  %44 = icmp eq i32 %43, 8
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, ptr %33, align 4
  %47 = or i32 %46, 4
  store i32 %47, ptr %33, align 4
  br label %48

48:                                               ; preds = %45, %41
  %49 = call i32 @of_property_read_variable_u32_array(ptr noundef %32, ptr noundef nonnull @.str.6, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #5
  %50 = load i32, ptr %3, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.sdhci_pxa_platdata, ptr %33, i32 0, i32 2
  store i32 1, ptr %53, align 4
  %54 = getelementptr inbounds %struct.sdhci_pxa_platdata, ptr %33, i32 0, i32 1
  store i32 %50, ptr %54, align 4
  br label %55

55:                                               ; preds = %52, %48, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  br label %56

56:                                               ; preds = %55, %26
  %57 = phi ptr [ %33, %55 ], [ %6, %26 ]
  %58 = icmp eq ptr %57, null
  br i1 %58, label %109, label %59

59:                                               ; preds = %56
  %60 = load i32, ptr %57, align 4
  %61 = and i32 %60, 2
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %59
  %64 = load i32, ptr %27, align 4
  %65 = or i32 %64, 32768
  store i32 %65, ptr %27, align 4
  %66 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 10
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr inbounds %struct.mmc_host, ptr %67, i32 0, i32 16
  %69 = load i32, ptr %68, align 8
  %70 = or i32 %69, 256
  store i32 %70, ptr %68, align 8
  %71 = load i32, ptr %57, align 4
  br label %72

72:                                               ; preds = %63, %59
  %73 = phi i32 [ %71, %63 ], [ %60, %59 ]
  %74 = and i32 %73, 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 10
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr inbounds %struct.mmc_host, ptr %78, i32 0, i32 16
  %80 = load i32, ptr %79, align 8
  %81 = or i32 %80, 64
  store i32 %81, ptr %79, align 8
  br label %82

82:                                               ; preds = %76, %72
  %83 = getelementptr inbounds %struct.sdhci_pxa_platdata, ptr %57, i32 0, i32 7
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %82
  %87 = load i32, ptr %27, align 4
  %88 = or i32 %87, %84
  store i32 %88, ptr %27, align 4
  br label %89

89:                                               ; preds = %86, %82
  %90 = getelementptr inbounds %struct.sdhci_pxa_platdata, ptr %57, i32 0, i32 5
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 10
  %95 = load ptr, ptr %94, align 8
  %96 = getelementptr inbounds %struct.mmc_host, ptr %95, i32 0, i32 16
  %97 = load i32, ptr %96, align 8
  %98 = or i32 %97, %91
  store i32 %98, ptr %96, align 8
  br label %99

99:                                               ; preds = %93, %89
  %100 = getelementptr inbounds %struct.sdhci_pxa_platdata, ptr %57, i32 0, i32 9
  %101 = load i32, ptr %100, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 10
  %105 = load ptr, ptr %104, align 8
  %106 = getelementptr inbounds %struct.mmc_host, ptr %105, i32 0, i32 19
  %107 = load i32, ptr %106, align 4
  %108 = or i32 %107, %101
  store i32 %108, ptr %106, align 4
  br label %109

109:                                              ; preds = %103, %99, %56
  %110 = getelementptr inbounds %struct.sdhci_host, ptr %7, i32 0, i32 9
  store ptr @pxav2_sdhci_ops, ptr %110, align 4
  %111 = call i32 @sdhci_add_host(ptr noundef %7) #5
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %109
  call void @clk_disable(ptr noundef %12) #5
  call void @clk_unprepare(ptr noundef %12) #5
  br label %114

114:                                              ; preds = %113, %24, %14
  %115 = phi i32 [ %15, %14 ], [ %25, %24 ], [ %111, %113 ]
  call void @sdhci_pltfm_free(ptr noundef %0) #5
  br label %116

116:                                              ; preds = %114, %109, %9
  %117 = phi i32 [ %10, %9 ], [ %115, %114 ], [ 0, %109 ]
  ret i32 %117
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_unregister(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdhci_pltfm_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_pltfm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_clock(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_clk_get_max_clock(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pxav2_mmc_set_bus_width(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr i8, ptr %4, i32 40
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %7 = load ptr, ptr %3, align 16
  %8 = getelementptr i8, ptr %7, i32 234
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %8) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %10 = icmp eq i32 %1, 3
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = and i8 %6, -3
  %13 = or i16 %9, 4352
  br label %21

14:                                               ; preds = %2
  %15 = and i16 %9, -4353
  %16 = icmp eq i32 %1, 2
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = or i8 %6, 2
  br label %21

19:                                               ; preds = %14
  %20 = and i8 %6, -3
  br label %21

21:                                               ; preds = %19, %17, %11
  %22 = phi i16 [ %13, %11 ], [ %15, %17 ], [ %15, %19 ]
  %23 = phi i8 [ %12, %11 ], [ %18, %17 ], [ %20, %19 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %24 = load ptr, ptr %3, align 16
  %25 = getelementptr i8, ptr %24, i32 234
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %25, i16 %22) #5, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  %26 = load ptr, ptr %3, align 16
  %27 = getelementptr i8, ptr %26, i32 40
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %27, i8 %23) #5, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pxav2_reset(ptr noundef %0, i8 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  tail call void @sdhci_reset(ptr noundef %0, i8 noundef zeroext %1) #5
  %8 = icmp eq i8 %1, 1
  br i1 %8, label %9, label %50

9:                                                ; preds = %2
  %10 = icmp eq ptr %7, null
  br i1 %10, label %42, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.sdhci_pxa_platdata, ptr %7, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 16
  %18 = getelementptr i8, ptr %17, i32 230
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %18) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %20 = and i16 %19, 3327
  %21 = getelementptr inbounds %struct.sdhci_pxa_platdata, ptr %7, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = trunc i32 %22 to i16
  %24 = shl i16 %23, 10
  %25 = and i16 %24, -4096
  %26 = or i16 %20, %25
  %27 = or i16 %26, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  %28 = load ptr, ptr %16, align 16
  %29 = getelementptr i8, ptr %28, i32 230
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %29, i16 %27) #5, !srcloc !14
  br label %30

30:                                               ; preds = %15, %11
  %31 = load i32, ptr %7, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %36 = load ptr, ptr %35, align 16
  %37 = getelementptr i8, ptr %36, i32 224
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %37) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !19
  %39 = and i16 %38, -1793
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  %40 = load ptr, ptr %35, align 16
  %41 = getelementptr i8, ptr %40, i32 224
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %41, i16 %39) #5, !srcloc !14
  br label %50

42:                                               ; preds = %30, %9
  %43 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %44 = load ptr, ptr %43, align 16
  %45 = getelementptr i8, ptr %44, i32 224
  %46 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %45) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !21
  %47 = or i16 %46, 1792
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %48 = load ptr, ptr %43, align 16
  %49 = getelementptr i8, ptr %48, i32 224
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %49, i16 %47) #5, !srcloc !14
  br label %50

50:                                               ; preds = %42, %34, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_uhs_signaling(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

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
!8 = !{!"auto-init"}
!9 = !{i64 3655329}
!10 = !{i64 2153429369}
!11 = !{i64 3654711}
!12 = !{i64 2153429714}
!13 = !{i64 2153429953}
!14 = !{i64 3654511}
!15 = !{i64 2153430277}
!16 = !{i64 3654934}
!17 = !{i64 2153427235}
!18 = !{i64 2153427455}
!19 = !{i64 2153427938}
!20 = !{i64 2153428206}
!21 = !{i64 2153428682}
!22 = !{i64 2153429026}
