; ModuleID = '/llk/IR/drivers/gpu/drm/tegra/gr3d.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/gr3d.c"
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
%struct.gr3d_soc = type { i32, i32, i32 }
%struct.tegra_core_opp_params = type { i8 }
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
%struct.gr3d = type { %struct.tegra_drm_client, ptr, ptr, ptr, i32, [4 x %struct.reset_control_bulk_data], i32, [117 x i32] }
%struct.tegra_drm_client = type { %struct.host1x_client, %struct.list_head, ptr, ptr, i32, ptr }
%struct.host1x_client = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.mutex, %struct.host1x_bo_cache }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.reset_control_bulk_data = type { ptr, ptr }
%struct.clk_bulk_data = type { ptr, ptr }
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

@.str = private unnamed_addr constant [11 x i8] c"tegra-gr3d\00", align 1
@tegra_gr3d_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-gr3d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra114_gr3d_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-gr3d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_gr3d_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-gr3d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_gr3d_soc }, %struct.of_device_id zeroinitializer], align 4
@tegra_gr3d_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gr3d_runtime_suspend, ptr @gr3d_runtime_resume, ptr null }, align 4
@tegra_gr3d_driver = dso_local local_unnamed_addr global %struct.platform_driver { ptr @gr3d_probe, ptr @gr3d_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_gr3d_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_gr3d_pm, ptr null, ptr null }, ptr null, i8 0 }, align 4
@gr3d_client_ops = internal constant %struct.host1x_client_ops { ptr null, ptr @gr3d_init, ptr @gr3d_exit, ptr null, ptr null, ptr null }, align 4
@gr3d_ops = internal constant %struct.tegra_drm_client_ops { ptr @gr3d_open_channel, ptr @gr3d_close_channel, ptr @gr3d_is_addr_reg, ptr null, ptr @tegra_drm_submit }, align 4
@gr3d_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to register host1x client: %d\0A\00", align 1
@gr3d_addr_regs = internal unnamed_addr constant [102 x i32] [i32 256, i32 258, i32 260, i32 262, i32 264, i32 266, i32 268, i32 270, i32 272, i32 274, i32 276, i32 278, i32 280, i32 282, i32 284, i32 286, i32 289, i32 1045, i32 1047, i32 1049, i32 1808, i32 1809, i32 1810, i32 1811, i32 1812, i32 1813, i32 1814, i32 1815, i32 1816, i32 1817, i32 1818, i32 1819, i32 1820, i32 1821, i32 1822, i32 1823, i32 2308, i32 3584, i32 3585, i32 3586, i32 3587, i32 3588, i32 3589, i32 3590, i32 3591, i32 3592, i32 3593, i32 3594, i32 3595, i32 3596, i32 3597, i32 3598, i32 3599, i32 3626, i32 3632, i32 3633, i32 3634, i32 3635, i32 3636, i32 3637, i32 3638, i32 3639, i32 3640, i32 3641, i32 3642, i32 3643, i32 3644, i32 3645, i32 3646, i32 3647, i32 3664, i32 3665, i32 3666, i32 3667, i32 3668, i32 3669, i32 3670, i32 3671, i32 3672, i32 3673, i32 3674, i32 3675, i32 3676, i32 3677, i32 3678, i32 3679, i32 3680, i32 3681, i32 3682, i32 3683, i32 3684, i32 3685, i32 3686, i32 3687, i32 3688, i32 3689, i32 3690, i32 3691, i32 3692, i32 3693, i32 3694, i32 3695], align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to get clock: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"invalid number of clocks: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"mc\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"mc2\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"3d\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"3d2\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"failed to get reset: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"drivers/gpu/drm/tegra/gr3d.c\00", align 1
@gr3d_init_power.opp_genpd_names = internal constant [3 x ptr] [ptr @.str.10, ptr @.str.11, ptr null], align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"3d0\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"3d1\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"power-domains\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"#power-domain-cells\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"failed to get %s power domain\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"failed to link to %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"failed to acquire %s reset: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"failed to request syncpoint: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"failed to attach to domain: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"failed to register client: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"failed to unregister host1x client: %d\0A\00", align 1
@tegra114_gr3d_soc = internal constant %struct.gr3d_soc { i32 53, i32 1, i32 2 }, align 4
@tegra30_gr3d_soc = internal constant %struct.gr3d_soc { i32 48, i32 2, i32 4 }, align 4
@tegra20_gr3d_soc = internal constant %struct.gr3d_soc { i32 32, i32 1, i32 2 }, align 4
@.str.21 = private unnamed_addr constant [28 x i8] c"failed to assert reset: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"failed to acquire reset: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"failed to enable clock: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"failed to deassert reset: %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gr3d_probe(ptr noundef %0) #0 {
  %2 = alloca %struct.tegra_core_opp_params, align 1
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 640, i32 noundef 3520) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %139, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %8, align 8
  %9 = tail call ptr @of_device_get_match_data(ptr noundef %4) #6
  %10 = getelementptr inbounds %struct.gr3d, ptr %5, i32 0, i32 2
  store ptr %9, ptr %10, align 4
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 4, i32 noundef 3520) #6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %139, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.gr3d, ptr %5, i32 0, i32 3
  %15 = tail call i32 @devm_clk_bulk_get_all(ptr noundef %4, ptr noundef %14) #6
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.gr3d, ptr %5, i32 0, i32 4
  store i32 %15, ptr %18, align 4
  %19 = load ptr, ptr %10, align 4
  %20 = getelementptr inbounds %struct.gr3d_soc, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %15, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %17, %13
  %24 = phi ptr [ @.str.2, %13 ], [ @.str.3, %17 ]
  %25 = phi i32 [ %15, %13 ], [ -2, %17 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull %24, i32 noundef %15) #7
  br label %139

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.gr3d, ptr %5, i32 0, i32 5
  store ptr @.str.4, ptr %27, align 4
  %28 = getelementptr %struct.gr3d, ptr %5, i32 0, i32 5, i32 2
  store ptr @.str.5, ptr %28, align 4
  %29 = getelementptr %struct.gr3d, ptr %5, i32 0, i32 5, i32 1
  store ptr @.str.6, ptr %29, align 4
  %30 = getelementptr %struct.gr3d, ptr %5, i32 0, i32 5, i32 3
  store ptr @.str.7, ptr %30, align 4
  %31 = getelementptr inbounds %struct.gr3d_soc, ptr %19, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.gr3d, ptr %5, i32 0, i32 6
  store i32 %32, ptr %33, align 4
  %34 = tail call i32 @__devm_reset_control_bulk_get(ptr noundef %4, i32 noundef %32, ptr noundef %27, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false) #6
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.8, i32 noundef %34) #7
  br label %139

37:                                               ; preds = %26
  %38 = getelementptr %struct.gr3d, ptr %5, i32 0, i32 5, i32 1, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %42, !prof !8

41:                                               ; preds = %37
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 486, i32 noundef 9, ptr noundef null) #6
  br label %139

42:                                               ; preds = %37
  %43 = getelementptr %struct.gr3d, ptr %5, i32 0, i32 5, i32 3, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, ptr %33, align 4
  %48 = icmp eq i32 %47, 4
  br i1 %48, label %49, label %50, !prof !8

49:                                               ; preds = %46
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 487, i32 noundef 9, ptr noundef null) #6
  br label %139

50:                                               ; preds = %46, %42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store ptr null, ptr %3, align 4, !annotation !9
  %51 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %52 = load ptr, ptr %51, align 8
  %53 = tail call i32 @of_count_phandle_with_args(ptr noundef %52, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #6
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = icmp eq i32 %53, -2
  br i1 %56, label %57, label %104

57:                                               ; preds = %55
  %58 = tail call fastcc i32 @gr3d_power_up_legacy_domain(ptr noundef %4, ptr noundef nonnull @.str.6, i32 noundef 1) #6
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %107, label %104

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 12
  %62 = load ptr, ptr %61, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %106

64:                                               ; preds = %60
  %65 = call i32 @devm_pm_opp_attach_genpd(ptr noundef %4, ptr noundef nonnull @gr3d_init_power.opp_genpd_names, ptr noundef nonnull %3) #6
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %104

67:                                               ; preds = %64
  %68 = load ptr, ptr %3, align 4
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %93, %67
  %72 = phi i32 [ 0, %67 ], [ 1, %93 ]
  %73 = getelementptr [3 x ptr], ptr @gr3d_init_power.opp_genpd_names, i32 0, i32 %72
  %74 = load ptr, ptr %73, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.14, ptr noundef %74) #7
  br label %104

75:                                               ; preds = %67
  %76 = call ptr @device_link_add(ptr noundef %4, ptr noundef nonnull %69, i32 noundef 5) #6
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %87

78:                                               ; preds = %98, %75
  %79 = phi ptr [ %69, %75 ], [ %96, %98 ]
  %80 = getelementptr inbounds %struct.device, ptr %79, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load ptr, ptr %79, align 4
  br label %85

85:                                               ; preds = %83, %78
  %86 = phi ptr [ %84, %83 ], [ %81, %78 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.15, ptr noundef %86) #7
  br label %104

87:                                               ; preds = %75
  %88 = call i32 @devm_add_action(ptr noundef %4, ptr noundef nonnull @gr3d_del_link, ptr noundef nonnull %76) #6
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %101, %87
  %91 = phi i32 [ %88, %87 ], [ %102, %101 ]
  %92 = phi ptr [ %76, %87 ], [ %99, %101 ]
  call void @device_link_del(ptr noundef nonnull %92) #6
  br label %104

93:                                               ; preds = %87
  %94 = load ptr, ptr %3, align 4
  %95 = getelementptr ptr, ptr %94, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %71, label %98

98:                                               ; preds = %93
  %99 = call ptr @device_link_add(ptr noundef %4, ptr noundef nonnull %96, i32 noundef 5) #6
  %100 = icmp eq ptr %99, null
  br i1 %100, label %78, label %101

101:                                              ; preds = %98
  %102 = call i32 @devm_add_action(ptr noundef %4, ptr noundef nonnull @gr3d_del_link, ptr noundef nonnull %99) #6
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %90

104:                                              ; preds = %90, %85, %71, %64, %57, %55
  %105 = phi i32 [ %91, %90 ], [ %65, %64 ], [ %58, %57 ], [ %53, %55 ], [ -22, %71 ], [ -22, %85 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  br label %139

106:                                              ; preds = %101, %60
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  br label %110

107:                                              ; preds = %57
  %108 = tail call fastcc i32 @gr3d_power_up_legacy_domain(ptr noundef %4, ptr noundef nonnull @.str.7, i32 noundef 13) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %139

110:                                              ; preds = %107, %106
  store volatile ptr %5, ptr %5, align 4
  %111 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %5, ptr %111, align 4
  %112 = getelementptr inbounds %struct.host1x_client, ptr %5, i32 0, i32 4
  store ptr @gr3d_client_ops, ptr %112, align 4
  %113 = getelementptr inbounds %struct.host1x_client, ptr %5, i32 0, i32 2
  store ptr %4, ptr %113, align 4
  %114 = getelementptr inbounds %struct.host1x_client, ptr %5, i32 0, i32 5
  store i32 96, ptr %114, align 4
  %115 = getelementptr inbounds %struct.host1x_client, ptr %5, i32 0, i32 7
  store ptr %11, ptr %115, align 4
  %116 = getelementptr inbounds %struct.host1x_client, ptr %5, i32 0, i32 8
  store i32 1, ptr %116, align 4
  %117 = getelementptr inbounds %struct.tegra_drm_client, ptr %5, i32 0, i32 1
  store volatile ptr %117, ptr %117, align 4
  %118 = getelementptr inbounds %struct.tegra_drm_client, ptr %5, i32 0, i32 1, i32 1
  store ptr %117, ptr %118, align 4
  %119 = load ptr, ptr %10, align 4
  %120 = load i32, ptr %119, align 4
  %121 = getelementptr inbounds %struct.tegra_drm_client, ptr %5, i32 0, i32 4
  store i32 %120, ptr %121, align 4
  %122 = getelementptr inbounds %struct.tegra_drm_client, ptr %5, i32 0, i32 5
  store ptr @gr3d_ops, ptr %122, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #6
  store i8 1, ptr %2, align 1
  %123 = call i32 @devm_tegra_core_dev_init_opp_table(ptr noundef %4, ptr noundef nonnull %2) #6
  %124 = icmp eq i32 %123, -19
  %125 = select i1 %124, i32 0, i32 %123
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %139

127:                                              ; preds = %110
  call void @__host1x_client_init(ptr noundef nonnull %5, ptr noundef nonnull @gr3d_probe.__key) #6
  %128 = call i32 @__host1x_client_register(ptr noundef nonnull %5) #6
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.gr3d, ptr %5, i32 0, i32 7
  br label %133

132:                                              ; preds = %127
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef %128) #7
  br label %139

133:                                              ; preds = %133, %130
  %134 = phi i32 [ 0, %130 ], [ %137, %133 ]
  %135 = getelementptr [102 x i32], ptr @gr3d_addr_regs, i32 0, i32 %134
  %136 = load i32, ptr %135, align 4
  call void @_set_bit(i32 noundef %136, ptr noundef %131) #6
  %137 = add nuw nsw i32 %134, 1
  %138 = icmp eq i32 %137, 102
  br i1 %138, label %139, label %133

139:                                              ; preds = %133, %132, %110, %107, %104, %49, %41, %36, %23, %7, %1
  %140 = phi i32 [ %128, %132 ], [ -12, %1 ], [ -12, %7 ], [ %25, %23 ], [ %108, %107 ], [ %125, %110 ], [ %105, %104 ], [ -2, %41 ], [ -2, %49 ], [ %34, %36 ], [ 0, %133 ]
  ret i32 %140
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gr3d_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @host1x_client_unregister(ptr noundef %3) #6
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.20, i32 noundef %4) #7
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi i32 [ %4, %6 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__host1x_client_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__host1x_client_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get_all(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_reset_control_bulk_get(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gr3d_power_up_legacy_domain(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.gr3d, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %8 [
    i32 1, label %10
    i32 0, label %41
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.gr3d, ptr %5, i32 0, i32 3
  br label %17

10:                                               ; preds = %3
  %11 = icmp eq i32 %2, 13
  br i1 %11, label %56, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.gr3d, ptr %5, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.clk_bulk_data, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  br label %42

17:                                               ; preds = %32, %8
  %18 = phi i32 [ %7, %8 ], [ %33, %32 ]
  %19 = phi i32 [ 0, %8 ], [ %34, %32 ]
  %20 = load ptr, ptr %9, align 4
  %21 = getelementptr %struct.clk_bulk_data, ptr %20, i32 %19
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26, !prof !8

24:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 335, i32 noundef 9, ptr noundef null) #6
  %25 = load i32, ptr %6, align 4
  br label %32

26:                                               ; preds = %17
  %27 = tail call i32 @strcmp(ptr noundef nonnull %22, ptr noundef %1)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = getelementptr %struct.clk_bulk_data, ptr %20, i32 %19, i32 1
  %31 = load ptr, ptr %30, align 4
  br label %36

32:                                               ; preds = %26, %24
  %33 = phi i32 [ %25, %24 ], [ %18, %26 ]
  %34 = add nuw i32 %19, 1
  %35 = icmp ult i32 %34, %33
  br i1 %35, label %17, label %36

36:                                               ; preds = %32, %29
  %37 = phi i32 [ %19, %29 ], [ %34, %32 ]
  %38 = phi i32 [ %18, %29 ], [ %33, %32 ]
  %39 = phi ptr [ %31, %29 ], [ null, %32 ]
  %40 = icmp eq i32 %37, %38
  br i1 %40, label %41, label %42, !prof !8

41:                                               ; preds = %36, %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 344, i32 noundef 9, ptr noundef null) #6
  br label %56

42:                                               ; preds = %36, %12
  %43 = phi ptr [ %16, %12 ], [ %39, %36 ]
  %44 = tail call ptr @__reset_control_get(ptr noundef %0, ptr noundef %1, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %45 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = ptrtoint ptr %44 to i32
  br label %56

48:                                               ; preds = %42
  %49 = tail call i32 @reset_control_acquire(ptr noundef %44) #6
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef %1, i32 noundef %49) #7
  tail call void @reset_control_put(ptr noundef %44) #6
  br label %56

52:                                               ; preds = %48
  %53 = tail call i32 @tegra_powergate_sequence_power_up(i32 noundef %2, ptr noundef %43, ptr noundef %44) #6
  tail call void @reset_control_release(ptr noundef %44) #6
  tail call void @reset_control_put(ptr noundef %44) #6
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  tail call void @clk_disable(ptr noundef %43) #6
  tail call void @clk_unprepare(ptr noundef %43) #6
  br label %56

56:                                               ; preds = %55, %52, %51, %46, %41, %10
  %57 = phi i32 [ %47, %46 ], [ 0, %55 ], [ -22, %41 ], [ 0, %10 ], [ %53, %52 ], [ %49, %51 ]
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_attach_genpd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gr3d_del_link(ptr noundef %0) #0 {
  tail call void @device_link_del(ptr noundef %0) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_acquire(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_powergate_sequence_power_up(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_control_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_control_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_link_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gr3d_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @host1x_channel_request(ptr noundef %0) #6
  %7 = getelementptr inbounds %struct.gr3d, ptr %0, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  %8 = icmp eq ptr %6, null
  br i1 %8, label %44, label %9

9:                                                ; preds = %1
  %10 = tail call ptr @host1x_syncpt_request(ptr noundef %0, i32 noundef 2) #6
  %11 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  store ptr %10, ptr %12, align 4
  %13 = load ptr, ptr %11, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.17, i32 noundef -12) #7
  br label %41

19:                                               ; preds = %9
  %20 = tail call i32 @host1x_client_iommu_attach(ptr noundef %0) #6
  %21 = icmp slt i32 %20, 0
  %22 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  br i1 %21, label %24, label %25

24:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.18, i32 noundef %20) #7
  br label %37

25:                                               ; preds = %19
  tail call void @pm_runtime_enable(ptr noundef %23) #6
  %26 = load ptr, ptr %22, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %26, i1 noundef zeroext true) #6
  %27 = load ptr, ptr %22, align 4
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %27, i32 noundef 200) #6
  %28 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @tegra_drm_register_client(ptr noundef %29, ptr noundef %0) #6
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %25
  %33 = load ptr, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.19, i32 noundef %30) #7
  %34 = load ptr, ptr %22, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %34, i1 noundef zeroext false) #6
  %35 = load ptr, ptr %22, align 4
  %36 = tail call i32 @pm_runtime_force_suspend(ptr noundef %35) #6
  tail call void @host1x_client_iommu_detach(ptr noundef %0) #6
  br label %37

37:                                               ; preds = %32, %24
  %38 = phi i32 [ %20, %24 ], [ %30, %32 ]
  %39 = load ptr, ptr %11, align 4
  %40 = load ptr, ptr %39, align 4
  tail call void @host1x_syncpt_put(ptr noundef %40) #6
  br label %41

41:                                               ; preds = %37, %16
  %42 = phi i32 [ %38, %37 ], [ -12, %16 ]
  %43 = load ptr, ptr %7, align 4
  tail call void @host1x_channel_put(ptr noundef %43) #6
  br label %44

44:                                               ; preds = %41, %25, %1
  %45 = phi i32 [ %42, %41 ], [ -12, %1 ], [ 0, %25 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gr3d_exit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @tegra_drm_unregister_client(ptr noundef %7, ptr noundef %0) #6
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %12, i1 noundef zeroext false) #6
  %13 = load ptr, ptr %11, align 4
  %14 = tail call i32 @pm_runtime_force_suspend(ptr noundef %13) #6
  tail call void @host1x_client_iommu_detach(ptr noundef %0) #6
  %15 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  tail call void @host1x_syncpt_put(ptr noundef %17) #6
  %18 = getelementptr inbounds %struct.gr3d, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  tail call void @host1x_channel_put(ptr noundef %19) #6
  store ptr null, ptr %18, align 4
  br label %20

20:                                               ; preds = %10, %1
  %21 = phi i32 [ 0, %10 ], [ %8, %1 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_channel_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_syncpt_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_iommu_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_drm_register_client(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_client_iommu_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_syncpt_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_channel_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_drm_unregister_client(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gr3d_open_channel(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.gr3d, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @host1x_channel_get(ptr noundef %4) #6
  %6 = getelementptr inbounds %struct.tegra_drm_context, ptr %1, i32 0, i32 1
  store ptr %5, ptr %6, align 4
  %7 = icmp eq ptr %5, null
  %8 = select i1 %7, i32 -12, i32 0
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gr3d_close_channel(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_drm_context, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @host1x_channel_put(ptr noundef %3) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @gr3d_is_addr_reg(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  switch i32 %1, label %19 [
    i32 1, label %6
    i32 96, label %8
  ]

6:                                                ; preds = %3
  %7 = icmp eq i32 %2, 43
  br i1 %7, label %20, label %19

8:                                                ; preds = %3
  %9 = icmp ugt i32 %2, 3719
  br i1 %9, label %19, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.gr3d, ptr %5, i32 0, i32 7
  %12 = lshr i32 %2, 5
  %13 = getelementptr i32, ptr %11, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %2, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %14, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %10, %8, %6, %3
  br label %20

20:                                               ; preds = %19, %10, %6
  %21 = phi i32 [ 0, %19 ], [ 1, %6 ], [ 1, %10 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_drm_submit(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_channel_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_tegra_core_dev_init_opp_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gr3d_runtime_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.gr3d, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @host1x_channel_stop(ptr noundef %5) #6
  %6 = getelementptr inbounds %struct.gr3d, ptr %3, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gr3d, ptr %3, i32 0, i32 5
  %9 = tail call i32 @reset_control_bulk_assert(i32 noundef %7, ptr noundef %8) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %9) #7
  br label %18

12:                                               ; preds = %1
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #6
  %13 = getelementptr inbounds %struct.gr3d, ptr %3, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.gr3d, ptr %3, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  tail call void @clk_bulk_disable(i32 noundef %14, ptr noundef %16) #6
  tail call void @clk_bulk_unprepare(i32 noundef %14, ptr noundef %16) #6
  %17 = load i32, ptr %6, align 4
  tail call void @reset_control_bulk_release(i32 noundef %17, ptr noundef %8) #6
  br label %18

18:                                               ; preds = %12, %11
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gr3d_runtime_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.gr3d, ptr %3, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gr3d, ptr %3, i32 0, i32 5
  %7 = tail call i32 @reset_control_bulk_acquire(i32 noundef %5, ptr noundef %6) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %7) #7
  br label %33

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.gr3d, ptr %3, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.gr3d, ptr %3, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @clk_bulk_prepare(i32 noundef %12, ptr noundef %14) #6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = tail call i32 @clk_bulk_enable(i32 noundef %12, ptr noundef %14) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  tail call void @clk_bulk_unprepare(i32 noundef %12, ptr noundef %14) #6
  br label %21

21:                                               ; preds = %20, %10
  %22 = phi i32 [ %18, %20 ], [ %15, %10 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %22) #7
  br label %30

23:                                               ; preds = %17
  %24 = load i32, ptr %4, align 4
  %25 = tail call i32 @reset_control_bulk_deassert(i32 noundef %24, ptr noundef %6) #6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %25) #7
  %28 = load i32, ptr %11, align 4
  %29 = load ptr, ptr %13, align 4
  tail call void @clk_bulk_disable(i32 noundef %28, ptr noundef %29) #6
  tail call void @clk_bulk_unprepare(i32 noundef %28, ptr noundef %29) #6
  br label %30

30:                                               ; preds = %27, %21
  %31 = phi i32 [ %22, %21 ], [ %25, %27 ]
  %32 = load i32, ptr %4, align 4
  tail call void @reset_control_bulk_release(i32 noundef %32, ptr noundef %6) #6
  br label %33

33:                                               ; preds = %30, %23, %9
  %34 = phi i32 [ %7, %9 ], [ %31, %30 ], [ 0, %23 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_channel_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_bulk_assert(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_control_bulk_release(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_bulk_acquire(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_bulk_deassert(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
