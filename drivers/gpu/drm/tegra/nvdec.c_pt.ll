; ModuleID = '/llk/IR/drivers/gpu/drm/tegra/nvdec.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/nvdec.c"
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
%struct.nvdec_config = type { ptr, i32, i8 }
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
%struct.nvdec = type { %struct.falcon, ptr, %struct.tegra_drm_client, ptr, ptr, ptr, ptr }
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

@.str = private unnamed_addr constant [12 x i8] c"tegra-nvdec\00", align 1
@tegra_nvdec_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-nvdec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @nvdec_t210_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-nvdec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @nvdec_t186_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-nvdec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @nvdec_t194_config }, %struct.of_device_id zeroinitializer], align 4
@nvdec_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nvdec_runtime_suspend, ptr @nvdec_runtime_resume, ptr null }, align 4
@tegra_nvdec_driver = dso_local local_unnamed_addr global %struct.platform_driver { ptr @nvdec_probe, ptr @nvdec_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_nvdec_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nvdec_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to set DMA mask: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to set clock rate\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"nvidia,host1x-class\00", align 1
@nvdec_client_ops = internal constant %struct.host1x_client_ops { ptr null, ptr @nvdec_init, ptr @nvdec_exit, ptr null, ptr null, ptr null }, align 4
@nvdec_ops = internal constant %struct.tegra_drm_client_ops { ptr @nvdec_open_channel, ptr @nvdec_close_channel, ptr null, ptr null, ptr @tegra_drm_submit }, align 4
@nvdec_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"failed to register host1x client: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"failed to attach to domain: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"failed to unregister host1x client: %d\0A\00", align 1
@nvdec_t210_config = internal constant %struct.nvdec_config { ptr @.str.8, i32 33, i8 0 }, align 4
@nvdec_t186_config = internal constant %struct.nvdec_config { ptr @.str.9, i32 24, i8 1 }, align 4
@nvdec_t194_config = internal constant %struct.nvdec_config { ptr @.str.10, i32 25, i8 1 }, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"nvidia/tegra210/nvdec.bin\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"nvidia/tegra186/nvdec.bin\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"nvidia/tegra194/nvdec.bin\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.13 = private unnamed_addr constant [23 x i8] c"falcon boot timed out\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvdec_probe(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #4
  store i32 0, ptr %2, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 17
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 16
  store ptr %9, ptr %10, align 4
  %11 = tail call i32 @dma_set_mask(ptr noundef %3, i64 noundef %8) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = tail call i32 @dma_set_coherent_mask(ptr noundef %3, i64 noundef %8) #4
  br label %18

15:                                               ; preds = %1
  %16 = icmp slt i32 %11, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef %11) #5
  br label %75

18:                                               ; preds = %15, %13
  %19 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 192, i32 noundef 3520) #4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %75, label %21

21:                                               ; preds = %18
  %22 = tail call ptr @of_device_get_match_data(ptr noundef %3) #4
  %23 = getelementptr inbounds %struct.nvdec, ptr %19, i32 0, i32 6
  store ptr %22, ptr %23, align 4
  %24 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 4, i32 noundef 3520) #4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %75, label %26

26:                                               ; preds = %21
  %27 = tail call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %0, i32 noundef 0, ptr noundef null) #4
  %28 = getelementptr inbounds %struct.nvdec, ptr %19, i32 0, i32 1
  store ptr %27, ptr %28, align 4
  %29 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = ptrtoint ptr %27 to i32
  br label %75

32:                                               ; preds = %26
  %33 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #4
  %34 = getelementptr inbounds %struct.nvdec, ptr %19, i32 0, i32 5
  store ptr %33, ptr %34, align 4
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #5
  %37 = load ptr, ptr %34, align 4
  %38 = ptrtoint ptr %37 to i32
  br label %75

39:                                               ; preds = %32
  %40 = tail call i32 @clk_set_rate(ptr noundef %33, i32 noundef -1) #4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #5
  br label %75

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %45 = load ptr, ptr %44, align 8
  %46 = call i32 @of_property_read_variable_u32_array(ptr noundef %45, ptr noundef nonnull @.str.4, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 240, ptr %2, align 4
  br label %49

49:                                               ; preds = %48, %43
  store ptr %3, ptr %19, align 4
  %50 = load ptr, ptr %28, align 4
  %51 = getelementptr inbounds %struct.falcon, ptr %19, i32 0, i32 1
  store ptr %50, ptr %51, align 4
  %52 = call i32 @falcon_init(ptr noundef nonnull %19) #4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %75, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %19, ptr %55, align 8
  %56 = getelementptr inbounds %struct.nvdec, ptr %19, i32 0, i32 2
  store volatile ptr %56, ptr %56, align 4
  %57 = getelementptr inbounds %struct.nvdec, ptr %19, i32 0, i32 2, i32 0, i32 0, i32 1
  store ptr %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.nvdec, ptr %19, i32 0, i32 2, i32 0, i32 4
  store ptr @nvdec_client_ops, ptr %58, align 4
  %59 = getelementptr inbounds %struct.nvdec, ptr %19, i32 0, i32 2, i32 0, i32 2
  store ptr %3, ptr %59, align 4
  %60 = load i32, ptr %2, align 4
  %61 = getelementptr inbounds %struct.nvdec, ptr %19, i32 0, i32 2, i32 0, i32 5
  store i32 %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.nvdec, ptr %19, i32 0, i32 2, i32 0, i32 7
  store ptr %24, ptr %62, align 4
  %63 = getelementptr inbounds %struct.nvdec, ptr %19, i32 0, i32 2, i32 0, i32 8
  store i32 1, ptr %63, align 4
  %64 = getelementptr inbounds %struct.nvdec, ptr %19, i32 0, i32 4
  store ptr %3, ptr %64, align 4
  %65 = getelementptr inbounds %struct.nvdec, ptr %19, i32 0, i32 2, i32 1
  store volatile ptr %65, ptr %65, align 4
  %66 = getelementptr inbounds %struct.nvdec, ptr %19, i32 0, i32 2, i32 1, i32 1
  store ptr %65, ptr %66, align 4
  %67 = load ptr, ptr %23, align 4
  %68 = getelementptr inbounds %struct.nvdec_config, ptr %67, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.nvdec, ptr %19, i32 0, i32 2, i32 4
  store i32 %69, ptr %70, align 4
  %71 = getelementptr inbounds %struct.nvdec, ptr %19, i32 0, i32 2, i32 5
  store ptr @nvdec_ops, ptr %71, align 4
  call void @__host1x_client_init(ptr noundef %56, ptr noundef nonnull @nvdec_probe.__key) #4
  %72 = call i32 @__host1x_client_register(ptr noundef %56) #4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %54
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %72) #5
  call void @falcon_exit(ptr noundef nonnull %19) #4
  br label %75

75:                                               ; preds = %74, %54, %49, %42, %36, %30, %21, %18, %17
  %76 = phi i32 [ %11, %17 ], [ %31, %30 ], [ %38, %36 ], [ %40, %42 ], [ %72, %74 ], [ -12, %18 ], [ -12, %21 ], [ %52, %49 ], [ 0, %54 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #4
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvdec_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvdec, ptr %3, i32 0, i32 2
  %5 = tail call i32 @host1x_client_unregister(ptr noundef %4) #4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.7, i32 noundef %5) #5
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
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

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
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvdec_init(ptr noundef %0) #0 {
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.6, i32 noundef %8) #5
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
define internal i32 @nvdec_exit(ptr noundef %0) #0 {
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
define internal i32 @nvdec_open_channel(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
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
define internal void @nvdec_close_channel(ptr nocapture noundef readonly %0) #0 {
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
define internal i32 @nvdec_runtime_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvdec, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void @host1x_channel_stop(ptr noundef %5) #4
  %6 = getelementptr inbounds %struct.nvdec, ptr %3, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #4
  tail call void @clk_unprepare(ptr noundef %7) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvdec_runtime_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvdec, ptr %4, i32 0, i32 5
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
  br i1 %15, label %134, label %16

16:                                               ; preds = %13, %9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %17 = getelementptr inbounds %struct.nvdec, ptr %4, i32 0, i32 2, i32 2
  %18 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #4
  store i32 0, ptr %2, align 4, !annotation !8
  %19 = getelementptr inbounds %struct.falcon, ptr %4, i32 0, i32 2, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %92

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.nvdec, ptr %4, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @falcon_read_firmware(ptr noundef %4, ptr noundef %25) #4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %90, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.falcon, ptr %4, i32 0, i32 2, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nvdec, ptr %4, i32 0, i32 2, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.nvdec, ptr %4, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = call ptr @dma_alloc_attrs(ptr noundef %36, i32 noundef %30, ptr noundef nonnull %2, i32 noundef 3264, i32 noundef 0) #4
  %38 = load i32, ptr %2, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %90, label %43

40:                                               ; preds = %28
  %41 = call ptr @tegra_drm_alloc(ptr noundef %18, i32 noundef %30, ptr noundef nonnull %2) #4
  %42 = load i32, ptr %2, align 4
  br label %43

43:                                               ; preds = %40, %34
  %44 = phi i32 [ %42, %40 ], [ %38, %34 ]
  %45 = phi ptr [ %41, %40 ], [ %37, %34 ]
  store ptr %45, ptr %19, align 4
  %46 = getelementptr inbounds %struct.falcon, ptr %4, i32 0, i32 2, i32 1
  store i32 %44, ptr %46, align 4
  %47 = call i32 @falcon_load_firmware(ptr noundef %4) #4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %80, label %49

49:                                               ; preds = %43
  %50 = load ptr, ptr %31, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %92, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.nvdec, ptr %4, i32 0, i32 4
  %54 = load ptr, ptr %53, align 4
  %55 = call zeroext i1 @is_vmalloc_addr(ptr noundef %45) #4
  %56 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %57 = xor i1 %56, true
  %58 = select i1 %55, i1 %57, i1 false
  br i1 %58, label %59, label %68, !prof !9

59:                                               ; preds = %52
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %60 = call ptr @dev_driver_string(ptr noundef %54) #4
  %61 = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load ptr, ptr %54, align 4
  br label %66

66:                                               ; preds = %64, %59
  %67 = phi ptr [ %65, %64 ], [ %62, %59 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %60, ptr noundef %67) #4
  br label %68

68:                                               ; preds = %66, %52
  br i1 %55, label %80, label %69

69:                                               ; preds = %68
  %70 = load ptr, ptr @mem_map, align 4
  %71 = ptrtoint ptr %45 to i32
  %72 = add i32 %71, 1073741824
  %73 = lshr i32 %72, 12
  %74 = getelementptr %struct.page, ptr %70, i32 %73
  %75 = and i32 %71, 4095
  %76 = call i32 @dma_map_page_attrs(ptr noundef %54, ptr noundef %74, i32 noundef %75, i32 noundef %30, i32 noundef 1, i32 noundef 0) #4
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %80, label %78

78:                                               ; preds = %69
  %79 = getelementptr inbounds %struct.falcon, ptr %4, i32 0, i32 2, i32 2
  store i32 %76, ptr %79, align 4
  br label %92

80:                                               ; preds = %69, %68, %43
  %81 = phi i32 [ %47, %43 ], [ -12, %69 ], [ -12, %68 ]
  %82 = load ptr, ptr %31, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.nvdec, ptr %4, i32 0, i32 4
  %86 = load ptr, ptr %85, align 4
  %87 = load i32, ptr %2, align 4
  call void @dma_free_attrs(ptr noundef %86, i32 noundef %30, ptr noundef %45, i32 noundef %87, i32 noundef 0) #4
  br label %90

88:                                               ; preds = %80
  %89 = load i32, ptr %2, align 4
  call void @tegra_drm_free(ptr noundef %18, i32 noundef %30, ptr noundef %45, i32 noundef %89) #4
  br label %90

90:                                               ; preds = %88, %84, %34, %22
  %91 = phi i32 [ %81, %84 ], [ %81, %88 ], [ -12, %34 ], [ %26, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #4
  br label %131

92:                                               ; preds = %78, %49, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #4
  %93 = getelementptr inbounds %struct.nvdec, ptr %4, i32 0, i32 4
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.device, ptr %94, i32 0, i32 35
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %123, label %98

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.dev_iommu, ptr %96, i32 0, i32 3
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.nvdec, ptr %4, i32 0, i32 6
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.nvdec_config, ptr %102, i32 0, i32 2
  %104 = load i8, ptr %103, align 4, !range !10
  %105 = icmp ne i8 %104, 0
  %106 = icmp ne ptr %100, null
  %107 = select i1 %105, i1 %106, i1 false
  br i1 %107, label %108, label %123

108:                                              ; preds = %98
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %109 = getelementptr inbounds %struct.nvdec, ptr %4, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr i8, ptr %110, i32 8260
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 32) #4, !srcloc !12
  %112 = getelementptr inbounds %struct.iommu_fwspec, ptr %100, i32 0, i32 3
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %108
  %116 = getelementptr inbounds %struct.iommu_fwspec, ptr %100, i32 0, i32 4
  %117 = load i32, ptr %116, align 4
  %118 = and i32 %117, 65535
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %119 = load ptr, ptr %109, align 4
  %120 = getelementptr i8, ptr %119, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %118) #4, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %121 = load ptr, ptr %109, align 4
  %122 = getelementptr i8, ptr %121, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %118) #4, !srcloc !12
  br label %123

123:                                              ; preds = %115, %108, %98, %92
  %124 = call i32 @falcon_boot(ptr noundef %4) #4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %123
  %127 = call i32 @falcon_wait_idle(ptr noundef %4) #4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load ptr, ptr %93, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %130, ptr noundef nonnull @.str.13) #5
  br label %131

131:                                              ; preds = %129, %123, %90
  %132 = phi i32 [ %91, %90 ], [ %124, %123 ], [ %127, %129 ]
  %133 = load ptr, ptr %5, align 4
  call void @clk_disable(ptr noundef %133) #4
  call void @clk_unprepare(ptr noundef %133) #4
  br label %134

134:                                              ; preds = %131, %126, %13
  %135 = phi i32 [ %132, %131 ], [ %14, %13 ], [ 0, %126 ]
  ret i32 %135
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_channel_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

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
!11 = !{i64 2155713849}
!12 = !{i64 5033468}
