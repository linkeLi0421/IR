; ModuleID = '/llk/IR/drivers/gpu/drm/tegra/gr2d.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/gr2d.c"
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
%struct.gr2d_soc = type { i32 }
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
%struct.gr2d = type { %struct.tegra_drm_client, ptr, ptr, [2 x %struct.reset_control_bulk_data], i32, ptr, [3 x i32] }
%struct.tegra_drm_client = type { %struct.host1x_client, %struct.list_head, ptr, ptr, i32, ptr }
%struct.host1x_client = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.mutex, %struct.host1x_bo_cache }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.reset_control_bulk_data = type { ptr, ptr }
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

@.str = private unnamed_addr constant [11 x i8] c"tegra-gr2d\00", align 1
@gr2d_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-gr2d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra114_gr2d_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-gr2d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_gr2d_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-gr2d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_gr2d_soc }, %struct.of_device_id zeroinitializer], align 4
@tegra_gr2d_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gr2d_runtime_suspend, ptr @gr2d_runtime_resume, ptr null }, align 4
@tegra_gr2d_driver = dso_local local_unnamed_addr global %struct.platform_driver { ptr @gr2d_probe, ptr @gr2d_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gr2d_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_gr2d_pm, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"cannot get clock\0A\00", align 1
@gr2d_client_ops = internal constant %struct.host1x_client_ops { ptr null, ptr @gr2d_init, ptr @gr2d_exit, ptr null, ptr null, ptr null }, align 4
@gr2d_ops = internal constant %struct.tegra_drm_client_ops { ptr @gr2d_open_channel, ptr @gr2d_close_channel, ptr @gr2d_is_addr_reg, ptr @gr2d_is_valid_class, ptr @tegra_drm_submit }, align 4
@gr2d_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"failed to register host1x client: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"mc\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"2d\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"failed to get reset: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"drivers/gpu/drm/tegra/gr2d.c\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"failed to request syncpoint: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"failed to attach to domain: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"failed to register client: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"failed to unregister host1x client: %d\0A\00", align 1
@tegra114_gr2d_soc = internal constant %struct.gr2d_soc { i32 53 }, align 4
@tegra30_gr2d_soc = internal constant %struct.gr2d_soc { i32 48 }, align 4
@tegra20_gr2d_soc = internal constant %struct.gr2d_soc { i32 32 }, align 4
@.str.11 = private unnamed_addr constant [32 x i8] c"failed to acquire MC reset: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"failed to assert MC reset: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"failed to acquire reset: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"failed to enable clock: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"failed to deassert reset: %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gr2d_probe(ptr noundef %0) #0 {
  %2 = alloca %struct.tegra_core_opp_params, align 1
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 164, i32 noundef 3520) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %54, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %7, align 8
  %8 = tail call ptr @of_device_get_match_data(ptr noundef %3) #6
  %9 = getelementptr inbounds %struct.gr2d, ptr %4, i32 0, i32 5
  store ptr %8, ptr %9, align 4
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 4, i32 noundef 3520) #6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %54, label %12

12:                                               ; preds = %6
  %13 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #6
  %14 = getelementptr inbounds %struct.gr2d, ptr %4, i32 0, i32 2
  store ptr %13, ptr %14, align 4
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #7
  %17 = load ptr, ptr %14, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %54

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.gr2d, ptr %4, i32 0, i32 3
  store ptr @.str.3, ptr %20, align 4
  %21 = getelementptr %struct.gr2d, ptr %4, i32 0, i32 3, i32 1
  store ptr @.str.4, ptr %21, align 4
  %22 = getelementptr inbounds %struct.gr2d, ptr %4, i32 0, i32 4
  store i32 2, ptr %22, align 4
  %23 = tail call i32 @__devm_reset_control_bulk_get(ptr noundef %3, i32 noundef 2, ptr noundef %20, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false) #6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %23) #7
  br label %54

26:                                               ; preds = %19
  %27 = getelementptr %struct.gr2d, ptr %4, i32 0, i32 3, i32 1, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31, !prof !8

30:                                               ; preds = %26
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 234, i32 noundef 9, ptr noundef null) #6
  br label %54

31:                                               ; preds = %26
  store volatile ptr %4, ptr %4, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %32, align 4
  %33 = getelementptr inbounds %struct.host1x_client, ptr %4, i32 0, i32 4
  store ptr @gr2d_client_ops, ptr %33, align 4
  %34 = getelementptr inbounds %struct.host1x_client, ptr %4, i32 0, i32 2
  store ptr %3, ptr %34, align 4
  %35 = getelementptr inbounds %struct.host1x_client, ptr %4, i32 0, i32 5
  store i32 81, ptr %35, align 4
  %36 = getelementptr inbounds %struct.host1x_client, ptr %4, i32 0, i32 7
  store ptr %10, ptr %36, align 4
  %37 = getelementptr inbounds %struct.host1x_client, ptr %4, i32 0, i32 8
  store i32 1, ptr %37, align 4
  %38 = getelementptr inbounds %struct.tegra_drm_client, ptr %4, i32 0, i32 1
  store volatile ptr %38, ptr %38, align 4
  %39 = getelementptr inbounds %struct.tegra_drm_client, ptr %4, i32 0, i32 1, i32 1
  store ptr %38, ptr %39, align 4
  %40 = load ptr, ptr %9, align 4
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.tegra_drm_client, ptr %4, i32 0, i32 4
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.tegra_drm_client, ptr %4, i32 0, i32 5
  store ptr @gr2d_ops, ptr %43, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #6
  store i8 1, ptr %2, align 1
  %44 = call i32 @devm_tegra_core_dev_init_opp_table(ptr noundef %3, ptr noundef nonnull %2) #6
  %45 = icmp eq i32 %44, -19
  %46 = select i1 %45, i32 0, i32 %44
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %31
  call void @__host1x_client_init(ptr noundef nonnull %4, ptr noundef nonnull @gr2d_probe.__key) #6
  %49 = call i32 @__host1x_client_register(ptr noundef nonnull %4) #6
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.gr2d, ptr %4, i32 0, i32 6
  call void @_set_bit(i32 noundef 26, ptr noundef %52) #6
  call void @_set_bit(i32 noundef 27, ptr noundef %52) #6
  call void @_set_bit(i32 noundef 38, ptr noundef %52) #6
  call void @_set_bit(i32 noundef 43, ptr noundef %52) #6
  call void @_set_bit(i32 noundef 44, ptr noundef %52) #6
  call void @_set_bit(i32 noundef 45, ptr noundef %52) #6
  call void @_set_bit(i32 noundef 49, ptr noundef %52) #6
  call void @_set_bit(i32 noundef 50, ptr noundef %52) #6
  call void @_set_bit(i32 noundef 71, ptr noundef %52) #6
  call void @_set_bit(i32 noundef 72, ptr noundef %52) #6
  call void @_set_bit(i32 noundef 73, ptr noundef %52) #6
  call void @_set_bit(i32 noundef 74, ptr noundef %52) #6
  call void @_set_bit(i32 noundef 75, ptr noundef %52) #6
  call void @_set_bit(i32 noundef 76, ptr noundef %52) #6
  br label %54

53:                                               ; preds = %48
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef %49) #7
  br label %54

54:                                               ; preds = %53, %51, %31, %30, %25, %16, %6, %1
  %55 = phi i32 [ %18, %16 ], [ %49, %53 ], [ -12, %1 ], [ -12, %6 ], [ %46, %31 ], [ -2, %30 ], [ %23, %25 ], [ 0, %51 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gr2d_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @host1x_client_unregister(ptr noundef %3) #6
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.10, i32 noundef %4) #7
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
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__host1x_client_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__host1x_client_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_reset_control_bulk_get(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gr2d_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @host1x_channel_request(ptr noundef %0) #6
  %7 = getelementptr inbounds %struct.gr2d, ptr %0, i32 0, i32 1
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.7, i32 noundef -12) #7
  br label %41

19:                                               ; preds = %9
  %20 = tail call i32 @host1x_client_iommu_attach(ptr noundef %0) #6
  %21 = icmp slt i32 %20, 0
  %22 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  br i1 %21, label %24, label %25

24:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.8, i32 noundef %20) #7
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.9, i32 noundef %30) #7
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
define internal i32 @gr2d_exit(ptr noundef %0) #0 {
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
  %18 = getelementptr inbounds %struct.gr2d, ptr %0, i32 0, i32 1
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
define internal i32 @gr2d_open_channel(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.gr2d, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @host1x_channel_get(ptr noundef %4) #6
  %6 = getelementptr inbounds %struct.tegra_drm_context, ptr %1, i32 0, i32 1
  store ptr %5, ptr %6, align 4
  %7 = icmp eq ptr %5, null
  %8 = select i1 %7, i32 -12, i32 0
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gr2d_close_channel(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_drm_context, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @host1x_channel_put(ptr noundef %3) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @gr2d_is_addr_reg(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  switch i32 %1, label %19 [
    i32 1, label %6
    i32 81, label %8
    i32 82, label %8
  ]

6:                                                ; preds = %3
  %7 = icmp eq i32 %2, 43
  br i1 %7, label %20, label %19

8:                                                ; preds = %3, %3
  %9 = icmp ugt i32 %2, 76
  br i1 %9, label %19, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.gr2d, ptr %5, i32 0, i32 6
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @gr2d_is_valid_class(i32 noundef %0) #5 {
  %2 = add i32 %0, -81
  %3 = icmp ult i32 %2, 2
  %4 = zext i1 %3 to i32
  ret i32 %4
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
define internal i32 @gr2d_runtime_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.gr2d, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @host1x_channel_stop(ptr noundef %5) #6
  %6 = getelementptr inbounds %struct.gr2d, ptr %3, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gr2d, ptr %3, i32 0, i32 3
  tail call void @reset_control_bulk_release(i32 noundef %7, ptr noundef %8) #6
  %9 = getelementptr inbounds %struct.gr2d, ptr %3, i32 0, i32 3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @reset_control_acquire(ptr noundef %10) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %11) #7
  br label %23

14:                                               ; preds = %1
  %15 = load ptr, ptr %9, align 4
  %16 = tail call i32 @reset_control_assert(ptr noundef %15) #6
  %17 = load ptr, ptr %9, align 4
  tail call void @reset_control_release(ptr noundef %17) #6
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %16) #7
  br label %23

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.gr2d, ptr %3, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  tail call void @clk_disable(ptr noundef %22) #6
  tail call void @clk_unprepare(ptr noundef %22) #6
  br label %29

23:                                               ; preds = %19, %13
  %24 = phi i32 [ %11, %13 ], [ %16, %19 ]
  %25 = load i32, ptr %6, align 4
  %26 = tail call i32 @reset_control_bulk_acquire(i32 noundef %25, ptr noundef %8) #6
  %27 = load i32, ptr %6, align 4
  %28 = tail call i32 @reset_control_bulk_deassert(i32 noundef %27, ptr noundef %8) #6
  br label %29

29:                                               ; preds = %23, %20
  %30 = phi i32 [ %24, %23 ], [ 0, %20 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gr2d_runtime_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.gr2d, ptr %3, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gr2d, ptr %3, i32 0, i32 3
  %7 = tail call i32 @reset_control_bulk_acquire(i32 noundef %5, ptr noundef %6) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %7) #7
  br label %30

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.gr2d, ptr %3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @clk_prepare(ptr noundef %12) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = tail call i32 @clk_enable(ptr noundef %12) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  tail call void @clk_unprepare(ptr noundef %12) #6
  br label %19

19:                                               ; preds = %18, %10
  %20 = phi i32 [ %16, %18 ], [ %13, %10 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %20) #7
  br label %27

21:                                               ; preds = %15
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #6
  %22 = load i32, ptr %4, align 4
  %23 = tail call i32 @reset_control_bulk_deassert(i32 noundef %22, ptr noundef %6) #6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %23) #7
  %26 = load ptr, ptr %11, align 4
  tail call void @clk_disable(ptr noundef %26) #6
  tail call void @clk_unprepare(ptr noundef %26) #6
  br label %27

27:                                               ; preds = %25, %19
  %28 = phi i32 [ %20, %19 ], [ %23, %25 ]
  %29 = load i32, ptr %4, align 4
  tail call void @reset_control_bulk_release(i32 noundef %29, ptr noundef %6) #6
  br label %30

30:                                               ; preds = %27, %21, %9
  %31 = phi i32 [ %7, %9 ], [ %28, %27 ], [ 0, %21 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_channel_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_control_bulk_release(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_acquire(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_control_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_bulk_acquire(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_bulk_deassert(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
