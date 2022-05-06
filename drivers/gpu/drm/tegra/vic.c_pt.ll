; ModuleID = '/llk/IR/drivers/gpu/drm/tegra/vic.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/vic.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.host1x_client_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_drm_client_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.vic_config = type { ptr, i32, i8 }
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
%struct.vic = type { %struct.falcon, ptr, %struct.tegra_drm_client, ptr, ptr, ptr, ptr, ptr }
%struct.falcon = type { ptr, ptr, %struct.falcon_firmware }
%struct.falcon_firmware = type { ptr, i32, i32, ptr, i32, %struct.falcon_firmware_section, %struct.falcon_firmware_section, %struct.falcon_firmware_section }
%struct.falcon_firmware_section = type { i32, i32 }
%struct.tegra_drm_client = type { %struct.host1x_client, %struct.list_head, ptr, ptr, i32, ptr }
%struct.host1x_client = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.mutex, %struct.host1x_bo_cache }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.74, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.80, ptr, i32, ptr, i8, i32 }
%struct.anon.74 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.80 = type { i32, ptr }
%struct.tegra_drm_context = type { ptr, ptr, i32, %struct.xarray }
%struct.page = type { i32, %union.anon.1, %union.anon.63, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.dev_iommu = type { %struct.mutex, ptr, ptr, ptr, ptr, ptr }
%struct.iommu_fwspec = type { ptr, ptr, i32, i32, [0 x i32] }

@.str = private unnamed_addr constant [10 x i8] c"tegra-vic\00", align 1
@tegra_vic_of_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-vic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vic_t124_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-vic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vic_t210_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-vic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vic_t186_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-vic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vic_t194_config }, %struct.of_device_id zeroinitializer], align 4
@vic_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vic_runtime_suspend, ptr @vic_runtime_resume, ptr null }, align 4
@tegra_vic_driver = dso_local local_unnamed_addr global %struct.platform_driver { ptr @vic_probe, ptr @vic_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_vic_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vic_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__UNIQUE_ID_firmware299 = internal constant [51 x i8] c"tegra_drm.firmware=nvidia/tegra124/vic03_ucode.bin\00", section ".modinfo", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to set DMA mask: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to get registers\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"failed to set clock rate\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"vic\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"failed to get reset\0A\00", align 1
@vic_client_ops = internal constant %struct.host1x_client_ops { ptr null, ptr @vic_init, ptr @vic_exit, ptr null, ptr null, ptr null }, align 4
@vic_ops = internal constant %struct.tegra_drm_client_ops { ptr @vic_open_channel, ptr @vic_close_channel, ptr null, ptr null, ptr @tegra_drm_submit }, align 4
@vic_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"failed to register host1x client: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"failed to attach to domain: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"failed to unregister host1x client: %d\0A\00", align 1
@vic_t124_config = internal constant %struct.vic_config { ptr @.str.10, i32 64, i8 0 }, align 4
@vic_t210_config = internal constant %struct.vic_config { ptr @.str.11, i32 33, i8 0 }, align 4
@vic_t186_config = internal constant %struct.vic_config { ptr @.str.12, i32 24, i8 1 }, align 4
@vic_t194_config = internal constant %struct.vic_config { ptr @.str.13, i32 25, i8 1 }, align 4
@.str.10 = private unnamed_addr constant [32 x i8] c"nvidia/tegra124/vic03_ucode.bin\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"nvidia/tegra210/vic04_ucode.bin\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"nvidia/tegra186/vic04_ucode.bin\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"nvidia/tegra194/vic.bin\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.16 = private unnamed_addr constant [43 x i8] c"failed to set application ID and FCE base\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID_firmware299], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vic_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 17
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 16
  store ptr %8, ptr %9, align 4
  %10 = tail call i32 @dma_set_mask(ptr noundef %2, i64 noundef %7) #4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = tail call i32 @dma_set_coherent_mask(ptr noundef %2, i64 noundef %7) #4
  br label %17

14:                                               ; preds = %1
  %15 = icmp slt i32 %10, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %10) #5
  br label %82

17:                                               ; preds = %14, %12
  %18 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 196, i32 noundef 3520) #4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %82, label %20

20:                                               ; preds = %17
  %21 = tail call ptr @of_device_get_match_data(ptr noundef %2) #4
  %22 = getelementptr inbounds %struct.vic, ptr %18, i32 0, i32 7
  store ptr %21, ptr %22, align 4
  %23 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 4, i32 noundef 3520) #4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %82, label %25

25:                                               ; preds = %20
  %26 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #5
  br label %82

29:                                               ; preds = %25
  %30 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef nonnull %26) #4
  %31 = getelementptr inbounds %struct.vic, ptr %18, i32 0, i32 1
  store ptr %30, ptr %31, align 4
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = ptrtoint ptr %30 to i32
  br label %82

35:                                               ; preds = %29
  %36 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #4
  %37 = getelementptr inbounds %struct.vic, ptr %18, i32 0, i32 5
  store ptr %36, ptr %37, align 4
  %38 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #5
  %40 = load ptr, ptr %37, align 4
  %41 = ptrtoint ptr %40 to i32
  br label %82

42:                                               ; preds = %35
  %43 = tail call i32 @clk_set_rate(ptr noundef %36, i32 noundef -1) #4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #5
  br label %82

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 12
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #4
  %52 = getelementptr inbounds %struct.vic, ptr %18, i32 0, i32 6
  store ptr %51, ptr %52, align 4
  %53 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #5
  %55 = load ptr, ptr %52, align 4
  %56 = ptrtoint ptr %55 to i32
  br label %82

57:                                               ; preds = %50, %46
  store ptr %2, ptr %18, align 4
  %58 = load ptr, ptr %31, align 4
  %59 = getelementptr inbounds %struct.falcon, ptr %18, i32 0, i32 1
  store ptr %58, ptr %59, align 4
  %60 = tail call i32 @falcon_init(ptr noundef nonnull %18) #4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %82, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %18, ptr %63, align 8
  %64 = getelementptr inbounds %struct.vic, ptr %18, i32 0, i32 2
  store volatile ptr %64, ptr %64, align 4
  %65 = getelementptr inbounds %struct.vic, ptr %18, i32 0, i32 2, i32 0, i32 0, i32 1
  store ptr %64, ptr %65, align 4
  %66 = getelementptr inbounds %struct.vic, ptr %18, i32 0, i32 2, i32 0, i32 4
  store ptr @vic_client_ops, ptr %66, align 4
  %67 = getelementptr inbounds %struct.vic, ptr %18, i32 0, i32 2, i32 0, i32 2
  store ptr %2, ptr %67, align 4
  %68 = getelementptr inbounds %struct.vic, ptr %18, i32 0, i32 2, i32 0, i32 5
  store i32 93, ptr %68, align 4
  %69 = getelementptr inbounds %struct.vic, ptr %18, i32 0, i32 2, i32 0, i32 7
  store ptr %23, ptr %69, align 4
  %70 = getelementptr inbounds %struct.vic, ptr %18, i32 0, i32 2, i32 0, i32 8
  store i32 1, ptr %70, align 4
  %71 = getelementptr inbounds %struct.vic, ptr %18, i32 0, i32 4
  store ptr %2, ptr %71, align 4
  %72 = getelementptr inbounds %struct.vic, ptr %18, i32 0, i32 2, i32 1
  store volatile ptr %72, ptr %72, align 4
  %73 = getelementptr inbounds %struct.vic, ptr %18, i32 0, i32 2, i32 1, i32 1
  store ptr %72, ptr %73, align 4
  %74 = load ptr, ptr %22, align 4
  %75 = getelementptr inbounds %struct.vic_config, ptr %74, i32 0, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.vic, ptr %18, i32 0, i32 2, i32 4
  store i32 %76, ptr %77, align 4
  %78 = getelementptr inbounds %struct.vic, ptr %18, i32 0, i32 2, i32 5
  store ptr @vic_ops, ptr %78, align 4
  tail call void @__host1x_client_init(ptr noundef %64, ptr noundef nonnull @vic_probe.__key) #4
  %79 = tail call i32 @__host1x_client_register(ptr noundef %64) #4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %62
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %79) #5
  tail call void @falcon_exit(ptr noundef nonnull %18) #4
  br label %82

82:                                               ; preds = %81, %62, %57, %54, %45, %39, %33, %28, %20, %17, %16
  %83 = phi i32 [ %10, %16 ], [ %34, %33 ], [ %41, %39 ], [ %43, %45 ], [ %79, %81 ], [ %56, %54 ], [ -6, %28 ], [ -12, %17 ], [ -12, %20 ], [ %60, %57 ], [ 0, %62 ]
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vic_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.vic, ptr %3, i32 0, i32 2
  %5 = tail call i32 @host1x_client_unregister(ptr noundef %4) #4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.9, i32 noundef %5) #5
  br label %10

9:                                                ; preds = %1
  tail call void @falcon_exit(ptr noundef %3) #4
  br label %10

10:                                               ; preds = %9, %7
  %11 = phi i32 [ %5, %7 ], [ 0, %9 ]
  ret i32 %11
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @falcon_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__host1x_client_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__host1x_client_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @falcon_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vic_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @host1x_client_iommu_attach(ptr noundef %0) #4
  %9 = icmp slt i32 %8, 0
  %10 = icmp ne i32 %8, -19
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = getelementptr i8, ptr %0, i32 124
  %14 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.8, i32 noundef %8) #5
  br label %50

15:                                               ; preds = %1
  %16 = tail call ptr @host1x_channel_request(ptr noundef %0) #4
  %17 = getelementptr i8, ptr %0, i32 120
  store ptr %16, ptr %17, align 4
  %18 = icmp eq ptr %16, null
  br i1 %18, label %48, label %19

19:                                               ; preds = %15
  %20 = tail call ptr @host1x_syncpt_request(ptr noundef %0, i32 noundef 0) #4
  %21 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  store ptr %20, ptr %22, align 4
  %23 = load ptr, ptr %21, align 4
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %45, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  tail call void @pm_runtime_enable(ptr noundef %28) #4
  %29 = load ptr, ptr %27, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %29, i1 noundef zeroext true) #4
  %30 = load ptr, ptr %27, align 4
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %30, i32 noundef 500) #4
  %31 = tail call i32 @tegra_drm_register_client(ptr noundef %7, ptr noundef %0) #4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %26
  %34 = load ptr, ptr %2, align 4
  %35 = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 20
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %27, align 4
  %38 = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 20
  store ptr %36, ptr %38, align 4
  br label %50

39:                                               ; preds = %26
  %40 = load ptr, ptr %27, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %40, i1 noundef zeroext false) #4
  %41 = load ptr, ptr %27, align 4
  %42 = tail call i32 @pm_runtime_force_suspend(ptr noundef %41) #4
  %43 = load ptr, ptr %21, align 4
  %44 = load ptr, ptr %43, align 4
  tail call void @host1x_syncpt_put(ptr noundef %44) #4
  br label %45

45:                                               ; preds = %39, %19
  %46 = phi i32 [ %31, %39 ], [ -12, %19 ]
  %47 = load ptr, ptr %17, align 4
  tail call void @host1x_channel_put(ptr noundef %47) #4
  br label %48

48:                                               ; preds = %45, %15
  %49 = phi i32 [ %46, %45 ], [ -12, %15 ]
  tail call void @host1x_client_iommu_detach(ptr noundef %0) #4
  br label %50

50:                                               ; preds = %48, %33, %12
  %51 = phi i32 [ %8, %12 ], [ %49, %48 ], [ 0, %33 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vic_exit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 20
  store ptr null, ptr %10, align 4
  %11 = tail call i32 @tegra_drm_unregister_client(ptr noundef %7, ptr noundef %0) #4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %44, label %13

13:                                               ; preds = %1
  %14 = load ptr, ptr %8, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %14, i1 noundef zeroext false) #4
  %15 = load ptr, ptr %8, align 4
  %16 = tail call i32 @pm_runtime_force_suspend(ptr noundef %15) #4
  %17 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %18, align 4
  tail call void @host1x_syncpt_put(ptr noundef %19) #4
  %20 = getelementptr i8, ptr %0, i32 120
  %21 = load ptr, ptr %20, align 4
  tail call void @host1x_channel_put(ptr noundef %21) #4
  tail call void @host1x_client_iommu_detach(ptr noundef %0) #4
  store ptr null, ptr %20, align 4
  %22 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  %25 = getelementptr i8, ptr %0, i32 124
  %26 = load ptr, ptr %25, align 4
  br i1 %24, label %37, label %27

27:                                               ; preds = %13
  %28 = getelementptr i8, ptr %0, i32 -40
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr i8, ptr %0, i32 -32
  %31 = load i32, ptr %30, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %26, i32 noundef %29, i32 noundef %31, i32 noundef 1, i32 noundef 0) #4
  %32 = load i32, ptr %30, align 4
  %33 = getelementptr i8, ptr %0, i32 -36
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %0, i32 -44
  %36 = load i32, ptr %35, align 4
  tail call void @tegra_drm_free(ptr noundef %7, i32 noundef %32, ptr noundef %34, i32 noundef %36) #4
  br label %44

37:                                               ; preds = %13
  %38 = getelementptr i8, ptr %0, i32 -32
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr i8, ptr %0, i32 -36
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %0, i32 -44
  %43 = load i32, ptr %42, align 4
  tail call void @dma_free_attrs(ptr noundef %26, i32 noundef %39, ptr noundef %41, i32 noundef %43, i32 noundef 0) #4
  br label %44

44:                                               ; preds = %37, %27, %1
  %45 = phi i32 [ %11, %1 ], [ 0, %37 ], [ 0, %27 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_iommu_attach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_channel_request(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_syncpt_request(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_drm_register_client(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_syncpt_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_channel_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_client_iommu_detach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_drm_unregister_client(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_drm_free(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vic_open_channel(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 120
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @host1x_channel_get(ptr noundef %4) #4
  %6 = getelementptr inbounds %struct.tegra_drm_context, ptr %1, i32 0, i32 1
  store ptr %5, ptr %6, align 4
  %7 = icmp eq ptr %5, null
  %8 = select i1 %7, i32 -12, i32 0
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vic_close_channel(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_drm_context, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @host1x_channel_put(ptr noundef %3) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_drm_submit(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_channel_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vic_runtime_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.vic, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void @host1x_channel_stop(ptr noundef %5) #4
  %6 = getelementptr inbounds %struct.vic, ptr %3, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @reset_control_assert(ptr noundef %7) #4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #4
  %11 = getelementptr inbounds %struct.vic, ptr %3, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  tail call void @clk_disable(ptr noundef %12) #4
  tail call void @clk_unprepare(ptr noundef %12) #4
  br label %13

13:                                               ; preds = %10, %1
  %14 = phi i32 [ 0, %10 ], [ %8, %1 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vic_runtime_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.vic, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @clk_prepare(ptr noundef %6) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = tail call i32 @clk_enable(ptr noundef %6) #4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  tail call void @clk_unprepare(ptr noundef %6) #4
  br label %13

13:                                               ; preds = %12, %1
  %14 = phi i32 [ %7, %1 ], [ %10, %12 ]
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %163, label %16

16:                                               ; preds = %13, %9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %17 = getelementptr inbounds %struct.vic, ptr %4, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @reset_control_deassert(ptr noundef %18) #4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %160, label %21

21:                                               ; preds = %16
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %22 = getelementptr inbounds %struct.vic, ptr %4, i32 0, i32 2, i32 2
  %23 = load ptr, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #4
  store i32 0, ptr %2, align 4, !annotation !8
  %24 = getelementptr inbounds %struct.falcon, ptr %4, i32 0, i32 2, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %96

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.vic, ptr %4, i32 0, i32 7
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @falcon_read_firmware(ptr noundef %4, ptr noundef %30) #4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %94, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.falcon, ptr %4, i32 0, i32 2, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.vic, ptr %4, i32 0, i32 2, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.vic, ptr %4, i32 0, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = call ptr @dma_alloc_attrs(ptr noundef %41, i32 noundef %35, ptr noundef nonnull %2, i32 noundef 3264, i32 noundef 0) #4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %94, label %47

44:                                               ; preds = %33
  %45 = call ptr @tegra_drm_alloc(ptr noundef %23, i32 noundef %35, ptr noundef nonnull %2) #4
  %46 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %97, label %47

47:                                               ; preds = %44, %39
  %48 = phi ptr [ %45, %44 ], [ %42, %39 ]
  store ptr %48, ptr %24, align 4
  %49 = load i32, ptr %2, align 4
  %50 = getelementptr inbounds %struct.falcon, ptr %4, i32 0, i32 2, i32 1
  store i32 %49, ptr %50, align 4
  %51 = call i32 @falcon_load_firmware(ptr noundef %4) #4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %84, label %53

53:                                               ; preds = %47
  %54 = load ptr, ptr %36, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %96, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.vic, ptr %4, i32 0, i32 4
  %58 = load ptr, ptr %57, align 4
  %59 = call zeroext i1 @is_vmalloc_addr(ptr noundef %48) #4
  %60 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %61 = xor i1 %60, true
  %62 = select i1 %59, i1 %61, i1 false
  br i1 %62, label %63, label %72, !prof !9

63:                                               ; preds = %56
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %64 = call ptr @dev_driver_string(ptr noundef %58) #4
  %65 = getelementptr inbounds %struct.device, ptr %58, i32 0, i32 3
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load ptr, ptr %58, align 4
  br label %70

70:                                               ; preds = %68, %63
  %71 = phi ptr [ %69, %68 ], [ %66, %63 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef %64, ptr noundef %71) #4
  br label %72

72:                                               ; preds = %70, %56
  br i1 %59, label %84, label %73

73:                                               ; preds = %72
  %74 = load ptr, ptr @mem_map, align 4
  %75 = ptrtoint ptr %48 to i32
  %76 = add i32 %75, 1073741824
  %77 = lshr i32 %76, 12
  %78 = getelementptr %struct.page, ptr %74, i32 %77
  %79 = and i32 %75, 4095
  %80 = call i32 @dma_map_page_attrs(ptr noundef %58, ptr noundef %78, i32 noundef %79, i32 noundef %35, i32 noundef 1, i32 noundef 0) #4
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %84, label %82

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.falcon, ptr %4, i32 0, i32 2, i32 2
  store i32 %80, ptr %83, align 4
  br label %96

84:                                               ; preds = %73, %72, %47
  %85 = phi i32 [ %51, %47 ], [ -12, %73 ], [ -12, %72 ]
  %86 = load ptr, ptr %36, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.vic, ptr %4, i32 0, i32 4
  %90 = load ptr, ptr %89, align 4
  %91 = load i32, ptr %2, align 4
  call void @dma_free_attrs(ptr noundef %90, i32 noundef %35, ptr noundef %48, i32 noundef %91, i32 noundef 0) #4
  br label %94

92:                                               ; preds = %84
  %93 = load i32, ptr %2, align 4
  call void @tegra_drm_free(ptr noundef %23, i32 noundef %35, ptr noundef %48, i32 noundef %93) #4
  br label %94

94:                                               ; preds = %92, %88, %39, %27
  %95 = phi i32 [ %85, %88 ], [ %85, %92 ], [ -12, %39 ], [ %31, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #4
  br label %156

96:                                               ; preds = %82, %53, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #4
  br label %100

97:                                               ; preds = %44
  %98 = ptrtoint ptr %45 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #4
  %99 = icmp slt ptr %45, null
  br i1 %99, label %156, label %100

100:                                              ; preds = %97, %96
  %101 = getelementptr inbounds %struct.vic, ptr %4, i32 0, i32 4
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.device, ptr %102, i32 0, i32 35
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %131, label %106

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.dev_iommu, ptr %104, i32 0, i32 3
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.vic, ptr %4, i32 0, i32 7
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.vic_config, ptr %110, i32 0, i32 2
  %112 = load i8, ptr %111, align 4, !range !10
  %113 = icmp ne i8 %112, 0
  %114 = icmp ne ptr %108, null
  %115 = select i1 %113, i1 %114, i1 false
  br i1 %115, label %116, label %131

116:                                              ; preds = %106
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %117 = getelementptr inbounds %struct.vic, ptr %4, i32 0, i32 1
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr i8, ptr %118, i32 8260
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 32) #4, !srcloc !12
  %120 = getelementptr inbounds %struct.iommu_fwspec, ptr %108, i32 0, i32 3
  %121 = load i32, ptr %120, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %116
  %124 = getelementptr inbounds %struct.iommu_fwspec, ptr %108, i32 0, i32 4
  %125 = load i32, ptr %124, align 4
  %126 = and i32 %125, 65535
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %127 = load ptr, ptr %117, align 4
  %128 = getelementptr i8, ptr %127, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %126) #4, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %129 = load ptr, ptr %117, align 4
  %130 = getelementptr i8, ptr %129, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %126) #4, !srcloc !12
  br label %131

131:                                              ; preds = %123, %116, %106, %100
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %132 = getelementptr inbounds %struct.vic, ptr %4, i32 0, i32 1
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr i8, ptr %133, i32 5840
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 262212) #4, !srcloc !12
  %135 = call i32 @falcon_boot(ptr noundef %4) #4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %156, label %137

137:                                              ; preds = %131
  %138 = load ptr, ptr %24, align 4
  %139 = getelementptr i8, ptr %138, i32 28
  %140 = load i32, ptr %139, align 4
  switch i32 %140, label %141 [
    i32 -1515870811, label %151
    i32 0, label %151
  ]

141:                                              ; preds = %137
  %142 = getelementptr i8, ptr %138, i32 24
  %143 = load i32, ptr %142, align 4
  %144 = getelementptr i8, ptr %138, i32 %143
  %145 = getelementptr i8, ptr %144, i32 8
  %146 = load i32, ptr %145, align 4
  call void @falcon_execute_method(ptr noundef %4, i32 noundef 1820, i32 noundef %146) #4
  %147 = getelementptr inbounds %struct.falcon, ptr %4, i32 0, i32 2, i32 1
  %148 = load i32, ptr %147, align 4
  %149 = add i32 %148, %140
  %150 = lshr i32 %149, 8
  call void @falcon_execute_method(ptr noundef %4, i32 noundef 1836, i32 noundef %150) #4
  br label %151

151:                                              ; preds = %141, %137, %137
  %152 = call i32 @falcon_wait_idle(ptr noundef %4) #4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %151
  %155 = load ptr, ptr %101, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %155, ptr noundef nonnull @.str.16) #5
  br label %156

156:                                              ; preds = %154, %131, %97, %94
  %157 = phi i32 [ %98, %97 ], [ %95, %94 ], [ %135, %131 ], [ %152, %154 ]
  %158 = load ptr, ptr %17, align 4
  %159 = call i32 @reset_control_assert(ptr noundef %158) #4
  br label %160

160:                                              ; preds = %156, %16
  %161 = phi i32 [ %19, %16 ], [ %157, %156 ]
  %162 = load ptr, ptr %5, align 4
  call void @clk_disable(ptr noundef %162) #4
  call void @clk_unprepare(ptr noundef %162) #4
  br label %163

163:                                              ; preds = %160, %151, %13
  %164 = phi i32 [ %161, %160 ], [ %14, %13 ], [ 0, %151 ]
  ret i32 %164
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_channel_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @falcon_read_firmware(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_drm_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @falcon_load_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @falcon_boot(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @falcon_execute_method(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @falcon_wait_idle(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i8 0, i8 2}
!11 = !{i64 2155715395}
!12 = !{i64 5002569}
