; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/device/tegra.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/device/tegra.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tegra_sku_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lock_class_key = type {}
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.nvkm_device_tegra = type { ptr, %struct.nvkm_device, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.160, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.159, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.159 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.anon.160 = type { %struct.mutex, %struct.nvkm_mm, ptr, i32 }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_device_tegra_func = type { i8, i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.iommu_domain = type { i32, ptr, i32, ptr, ptr, %struct.iommu_domain_geometry, ptr }
%struct.iommu_domain_geometry = type { i32, i32, i8 }
%struct.iommu_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"gpu\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"pwr\00", align 1
@tegra_sku_info = external dso_local local_unnamed_addr global %struct.tegra_sku_info, align 4
@nvkm_device_tegra_func = internal constant %struct.nvkm_device_func { ptr null, ptr @nvkm_device_tegra, ptr @nvkm_device_tegra_dtor, ptr null, ptr @nvkm_device_tegra_init, ptr @nvkm_device_tegra_fini, ptr @nvkm_device_tegra_resource_addr, ptr @nvkm_device_tegra_resource_size, i8 0 }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@nvkm_device_tegra_probe_iommu.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"&tdev->iommu.mutex\00", align 1
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"unsupported IOMMU page size\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"cannot initialize IOMMU MM\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"stall\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"nvkm\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_device_tegra_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i64 noundef %6, ptr nocapture noundef writeonly %7) local_unnamed_addr #0 {
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 520) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %97, label %12

12:                                               ; preds = %8
  store ptr %0, ptr %10, align 8
  %13 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %10, i32 0, i32 2
  store ptr %1, ptr %13, align 8
  %14 = getelementptr inbounds %struct.nvkm_device_tegra_func, ptr %0, i32 0, i32 2
  %15 = load i8, ptr %14, align 1, !range !8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %19 = tail call ptr @devm_regulator_get(ptr noundef %18, ptr noundef nonnull @.str) #8
  %20 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %10, i32 0, i32 8
  store ptr %19, ptr %20, align 8
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = ptrtoint ptr %19 to i32
  br label %95

24:                                               ; preds = %17, %12
  %25 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %26 = tail call ptr @__devm_reset_control_get(ptr noundef %25, ptr noundef nonnull @.str.1, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %27 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %10, i32 0, i32 4
  store ptr %26, ptr %27, align 8
  %28 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = ptrtoint ptr %26 to i32
  br label %95

31:                                               ; preds = %24
  %32 = tail call ptr @devm_clk_get(ptr noundef %25, ptr noundef nonnull @.str.1) #8
  %33 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %10, i32 0, i32 5
  store ptr %32, ptr %33, align 4
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = ptrtoint ptr %32 to i32
  br label %95

37:                                               ; preds = %31
  %38 = tail call i32 @clk_get_rate(ptr noundef %32) #8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = tail call i32 @clk_set_rate(ptr noundef %32, i32 noundef -1) #8
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %95, label %43

43:                                               ; preds = %40
  %44 = tail call i32 @clk_get_rate(ptr noundef %32) #8
  br label %45

45:                                               ; preds = %43, %37
  %46 = getelementptr inbounds %struct.nvkm_device_tegra_func, ptr %0, i32 0, i32 1
  %47 = load i8, ptr %46, align 1, !range !8
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %10, i32 0, i32 6
  %51 = load ptr, ptr %50, align 8
  br label %55

52:                                               ; preds = %45
  %53 = tail call ptr @devm_clk_get(ptr noundef %25, ptr noundef nonnull @.str.2) #8
  %54 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %10, i32 0, i32 6
  store ptr %53, ptr %54, align 8
  br label %55

55:                                               ; preds = %52, %49
  %56 = phi ptr [ %51, %49 ], [ %53, %52 ]
  %57 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = ptrtoint ptr %56 to i32
  br label %95

60:                                               ; preds = %55
  %61 = tail call ptr @devm_clk_get(ptr noundef %25, ptr noundef nonnull @.str.3) #8
  %62 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %10, i32 0, i32 7
  store ptr %61, ptr %62, align 4
  %63 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = ptrtoint ptr %61 to i32
  br label %95

66:                                               ; preds = %60
  %67 = load i8, ptr %0, align 1
  %68 = icmp eq i8 %67, 64
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = zext i8 %67 to i64
  %71 = shl nsw i64 -1, %70
  %72 = xor i64 %71, -1
  br label %73

73:                                               ; preds = %69, %66
  %74 = phi i64 [ %72, %69 ], [ -1, %66 ]
  %75 = tail call i32 @dma_set_mask(ptr noundef %25, i64 noundef %74) #8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %73
  tail call fastcc void @nvkm_device_tegra_probe_iommu(ptr noundef nonnull %10)
  %78 = tail call fastcc i32 @nvkm_device_tegra_power_up(ptr noundef nonnull %10)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %77
  %81 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 10), align 4
  %82 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %10, i32 0, i32 10
  store i32 %81, ptr %82, align 8
  %83 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 9), align 4
  %84 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %10, i32 0, i32 11
  store i32 %83, ptr %84, align 4
  %85 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 1
  %86 = load i32, ptr %85, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %10, i32 0, i32 1
  %89 = tail call i32 @nvkm_device_ctor(ptr noundef nonnull @nvkm_device_tegra_func, ptr noundef null, ptr noundef %25, i32 noundef 3, i64 noundef %87, ptr noundef null, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i64 noundef %6, ptr noundef %88) #8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %80
  store ptr %88, ptr %7, align 4
  br label %97

92:                                               ; preds = %80
  tail call fastcc void @nvkm_device_tegra_power_down(ptr noundef nonnull %10)
  br label %93

93:                                               ; preds = %92, %77
  %94 = phi i32 [ %78, %77 ], [ %89, %92 ]
  tail call fastcc void @nvkm_device_tegra_remove_iommu(ptr noundef nonnull %10)
  br label %95

95:                                               ; preds = %93, %73, %64, %58, %40, %35, %29, %22
  %96 = phi i32 [ %23, %22 ], [ %30, %29 ], [ %36, %35 ], [ %41, %40 ], [ %59, %58 ], [ %65, %64 ], [ %75, %73 ], [ %94, %93 ]
  tail call void @kfree(ptr noundef nonnull %10) #8
  br label %97

97:                                               ; preds = %95, %91, %8
  %98 = phi i32 [ %96, %95 ], [ 0, %91 ], [ -12, %8 ]
  ret i32 %98
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nvkm_device_tegra_probe_iommu(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 24
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @arm_iommu_detach_device(ptr noundef %4) #8
  tail call void @arm_iommu_release_mapping(ptr noundef nonnull %6) #8
  br label %9

9:                                                ; preds = %8, %1
  %10 = load ptr, ptr %0, align 8
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %62, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %0, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %14, ptr noundef nonnull @.str.4, ptr noundef nonnull @nvkm_device_tegra_probe_iommu.__key) #8
  %15 = tail call zeroext i1 @iommu_present(ptr noundef nonnull @platform_bus_type) #8
  br i1 %15, label %16, label %62

16:                                               ; preds = %13
  %17 = tail call ptr @iommu_domain_alloc(ptr noundef nonnull @platform_bus_type) #8
  %18 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %0, i32 0, i32 9, i32 2
  store ptr %17, ptr %18, align 4
  %19 = icmp eq ptr %17, null
  br i1 %19, label %60, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.iommu_domain, ptr %17, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.iommu_ops, ptr %22, i32 0, i32 39
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 4096
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %0, i32 0, i32 9, i32 3
  store i32 12, ptr %28, align 4
  br label %40

29:                                               ; preds = %20
  %30 = and i32 %24, 4095
  %31 = icmp eq i32 %30, 0
  %32 = tail call i32 @llvm.ctlz.i32(i32 %30, i1 false) #8, !range !9
  %33 = sub nuw nsw i32 32, %32
  %34 = select i1 %31, i32 0, i32 %33
  %35 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %0, i32 0, i32 9, i32 3
  store i32 %34, ptr %35, align 4
  %36 = icmp eq i32 %34, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.5) #9
  br label %58

38:                                               ; preds = %29
  %39 = add nsw i32 %34, -1
  store i32 %39, ptr %35, align 4
  br label %40

40:                                               ; preds = %38, %27
  %41 = tail call i32 @iommu_attach_device(ptr noundef nonnull %17, ptr noundef %4) #8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %0, i32 0, i32 9, i32 1
  %45 = load ptr, ptr %0, align 8
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i64
  %48 = shl nuw i64 1, %47
  %49 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %0, i32 0, i32 9, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = zext i32 %50 to i64
  %52 = lshr i64 %48, %51
  %53 = trunc i64 %52 to i32
  %54 = tail call i32 @nvkm_mm_init(ptr noundef %44, i8 noundef zeroext 0, i32 noundef 0, i32 noundef %53, i32 noundef 1) #8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %43
  %57 = load ptr, ptr %18, align 4
  tail call void @iommu_detach_device(ptr noundef %57, ptr noundef %4) #8
  br label %58

58:                                               ; preds = %56, %40, %37
  %59 = load ptr, ptr %18, align 4
  tail call void @iommu_domain_free(ptr noundef %59) #8
  br label %60

60:                                               ; preds = %58, %16
  store ptr null, ptr %18, align 4
  %61 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %0, i32 0, i32 9, i32 3
  store i32 0, ptr %61, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6) #9
  br label %62

62:                                               ; preds = %60, %43, %13, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nvkm_device_tegra_power_up(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @regulator_enable(ptr noundef nonnull %3) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %80

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @clk_prepare(ptr noundef %10) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %74

13:                                               ; preds = %8
  %14 = tail call i32 @clk_enable(ptr noundef %10) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %71

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %0, i32 0, i32 6
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @clk_prepare(ptr noundef nonnull %18) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %68

23:                                               ; preds = %20
  %24 = tail call i32 @clk_enable(ptr noundef nonnull %18) #8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %65

26:                                               ; preds = %23, %16
  %27 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %0, i32 0, i32 7
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @clk_prepare(ptr noundef %28) #8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %60

31:                                               ; preds = %26
  %32 = tail call i32 @clk_enable(ptr noundef %28) #8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %31
  %35 = load ptr, ptr %27, align 4
  %36 = tail call i32 @clk_set_rate(ptr noundef %35, i32 noundef 204000000) #8
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 2147480) #8
  %38 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %0, i32 0, i32 2
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.platform_device, ptr %39, i32 0, i32 3, i32 12
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %80

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %0, i32 0, i32 4
  %45 = load ptr, ptr %44, align 8
  %46 = tail call i32 @reset_control_assert(ptr noundef %45) #8
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 2147480) #8
  %48 = tail call i32 @tegra_powergate_remove_clamping(i32 noundef 1) #8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 2147480) #8
  %52 = load ptr, ptr %44, align 8
  %53 = tail call i32 @reset_control_deassert(ptr noundef %52) #8
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 2147480) #8
  br label %80

55:                                               ; preds = %43
  %56 = load ptr, ptr %27, align 4
  tail call void @clk_disable(ptr noundef %56) #8
  br label %57

57:                                               ; preds = %55, %31
  %58 = phi ptr [ %56, %55 ], [ %28, %31 ]
  %59 = phi i32 [ %48, %55 ], [ %32, %31 ]
  tail call void @clk_unprepare(ptr noundef %58) #8
  br label %60

60:                                               ; preds = %57, %26
  %61 = phi i32 [ %29, %26 ], [ %59, %57 ]
  %62 = load ptr, ptr %17, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  tail call void @clk_disable(ptr noundef nonnull %62) #8
  br label %65

65:                                               ; preds = %64, %23
  %66 = phi ptr [ %62, %64 ], [ %18, %23 ]
  %67 = phi i32 [ %61, %64 ], [ %24, %23 ]
  tail call void @clk_unprepare(ptr noundef nonnull %66) #8
  br label %68

68:                                               ; preds = %65, %60, %20
  %69 = phi i32 [ %61, %60 ], [ %21, %20 ], [ %67, %65 ]
  %70 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %70) #8
  br label %71

71:                                               ; preds = %68, %13
  %72 = phi ptr [ %70, %68 ], [ %10, %13 ]
  %73 = phi i32 [ %69, %68 ], [ %14, %13 ]
  tail call void @clk_unprepare(ptr noundef %72) #8
  br label %74

74:                                               ; preds = %71, %8
  %75 = phi i32 [ %11, %8 ], [ %73, %71 ]
  %76 = load ptr, ptr %2, align 8
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = tail call i32 @regulator_disable(ptr noundef nonnull %76) #8
  br label %80

80:                                               ; preds = %78, %74, %50, %34, %5
  %81 = phi i32 [ 0, %50 ], [ 0, %34 ], [ %6, %5 ], [ %75, %78 ], [ %75, %74 ]
  ret i32 %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_device_ctor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nvkm_device_tegra_power_down(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @clk_disable(ptr noundef nonnull %5) #8
  tail call void @clk_unprepare(ptr noundef nonnull %5) #8
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %10) #8
  tail call void @clk_unprepare(ptr noundef %10) #8
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 2147480) #8
  %12 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  %16 = tail call i32 @regulator_disable(ptr noundef nonnull %13) #8
  br label %17

17:                                               ; preds = %15, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nvkm_device_tegra_remove_iommu(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %0, i32 0, i32 9, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %0, i32 0, i32 9, i32 1
  %7 = tail call i32 @nvkm_mm_fini(ptr noundef %6) #8
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %0, i32 0, i32 1, i32 2
  %10 = load ptr, ptr %9, align 8
  tail call void @iommu_detach_device(ptr noundef %8, ptr noundef %10) #8
  %11 = load ptr, ptr %2, align 4
  tail call void @iommu_domain_free(ptr noundef %11) #8
  br label %12

12:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_iommu_detach_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_iommu_release_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iommu_present(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_domain_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_attach_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_init(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_detach_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_domain_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_powergate_remove_clamping(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal ptr @nvkm_device_tegra(ptr noundef readnone %0) #6 {
  %2 = getelementptr i8, ptr %0, i32 -8
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nvkm_device_tegra_dtor(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  tail call fastcc void @nvkm_device_tegra_power_down(ptr noundef %2)
  %3 = getelementptr i8, ptr %0, i32 496
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 472
  %8 = tail call i32 @nvkm_mm_fini(ptr noundef %7) #8
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr i8, ptr %0, i32 8
  %11 = load ptr, ptr %10, align 8
  tail call void @iommu_detach_device(ptr noundef %9, ptr noundef %11) #8
  %12 = load ptr, ptr %3, align 4
  tail call void @iommu_domain_free(ptr noundef %12) #8
  br label %13

13:                                               ; preds = %6, %1
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_device_tegra_init(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 424
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @platform_get_irq_byname(ptr noundef %3, ptr noundef nonnull @.str.7) #8
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -8
  %8 = tail call i32 @request_threaded_irq(i32 noundef %4, ptr noundef nonnull @nvkm_device_tegra_intr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.8, ptr noundef %7) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %0, i32 428
  store i32 %4, ptr %11, align 4
  br label %12

12:                                               ; preds = %10, %6, %1
  %13 = phi i32 [ 0, %10 ], [ %4, %1 ], [ %8, %6 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_device_tegra_fini(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 428
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 -8
  %8 = tail call ptr @free_irq(i32 noundef %4, ptr noundef %7) #8
  store i32 0, ptr %3, align 4
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_device_tegra_resource_addr(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 424
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @platform_get_resource(ptr noundef %4, i32 noundef 512, i32 noundef %1) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr %5, align 4
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ %8, %7 ], [ 0, %2 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_device_tegra_resource_size(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 424
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @platform_get_resource(ptr noundef %4, i32 noundef 512, i32 noundef %1) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %5, align 4
  %11 = add i32 %9, 1
  %12 = sub i32 %11, %10
  br label %13

13:                                               ; preds = %7, %2
  %14 = phi i32 [ %12, %7 ], [ 0, %2 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_device_tegra_intr(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 0, ptr %3, align 1
  tail call void @nvkm_mc_intr_unarm(ptr noundef %4) #8
  call void @nvkm_mc_intr(ptr noundef %4, ptr noundef nonnull %3) #8
  call void @nvkm_mc_intr_rearm(ptr noundef %4) #8
  %5 = load i8, ptr %3, align 1, !range !8
  %6 = zext i8 %5 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mc_intr_unarm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mc_intr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mc_intr_rearm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_fini(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!9 = !{i32 0, i32 33}
