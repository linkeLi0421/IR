; ModuleID = '/llk/IR/drivers/soc/amlogic/meson-gx-pwrc-vpu.c_pt.bc'
source_filename = "../drivers/soc/amlogic/meson-gx-pwrc-vpu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.meson_gx_pwrc_vpu = type { %struct.generic_pm_domain, ptr, ptr, ptr, ptr, ptr }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, [1 x %struct.cpumask], ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.5 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.5 = type { %struct.mutex }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__initcall__kmod_meson_gx_pwrc_vpu__162_378_meson_gx_pwrc_vpu_driver_init6 = internal global ptr @meson_gx_pwrc_vpu_driver_init, section ".initcall6.init", align 4
@meson_gx_pwrc_vpu_driver = internal global %struct.platform_driver { ptr @meson_gx_pwrc_vpu_probe, ptr null, ptr @meson_gx_pwrc_vpu_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @meson_gx_pwrc_vpu_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_meson_gx_pwrc_vpu_driver_exit = internal global ptr @meson_gx_pwrc_vpu_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file163 = internal constant [61 x i8] c"meson_gx_pwrc_vpu.file=drivers/soc/amlogic/meson-gx-pwrc-vpu\00", section ".modinfo", align 1
@__UNIQUE_ID_license164 = internal constant [33 x i8] c"meson_gx_pwrc_vpu.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [18 x i8] c"meson_gx_pwrc_vpu\00", align 1
@meson_gx_pwrc_vpu_match_table = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gx-pwrc-vpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vpu_hdmi_pd }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-g12a-pwrc-vpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vpu_hdmi_pd_g12a }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to get match data\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"failed to get regmap\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"amlogic,hhi-sysctrl\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"failed to get HHI regmap\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"failed to get reset lines\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"vpu\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"vpu clock request failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"vapb\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"vapb clock request failed\0A\00", align 1
@vpu_hdmi_pd = internal global %struct.meson_gx_pwrc_vpu { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.10, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, [1 x %struct.cpumask] zeroinitializer, ptr @meson_gx_pwrc_vpu_power_off, ptr @meson_gx_pwrc_vpu_power_on, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.5 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@vpu_hdmi_pd_g12a = internal global %struct.meson_gx_pwrc_vpu { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.10, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, [1 x %struct.cpumask] zeroinitializer, ptr @meson_g12a_pwrc_vpu_power_off, ptr @meson_g12a_pwrc_vpu_power_on, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.5 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.10 = private unnamed_addr constant [9 x i8] c"vpu_hdmi\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_file163, ptr @__UNIQUE_ID_license164, ptr @__exitcall_meson_gx_pwrc_vpu_driver_exit, ptr @__initcall__kmod_meson_gx_pwrc_vpu__162_378_meson_gx_pwrc_vpu_driver_init6, ptr @meson_gx_pwrc_vpu_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @meson_gx_pwrc_vpu_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson_gx_pwrc_vpu_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @meson_gx_pwrc_vpu_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson_gx_pwrc_vpu_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_gx_pwrc_vpu_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call ptr @of_device_get_match_data(ptr noundef %3) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #7
  br label %60

7:                                                ; preds = %1
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 824, i32 noundef 3520) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %60, label %10

10:                                               ; preds = %7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(824) %8, ptr noundef nonnull align 8 dereferenceable(824) %4, i32 824, i1 false)
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %12 = load ptr, ptr %11, align 8
  %13 = tail call ptr @of_get_parent(ptr noundef %12) #6
  %14 = tail call ptr @syscon_node_to_regmap(ptr noundef %13) #6
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #7
  %17 = ptrtoint ptr %14 to i32
  br label %60

18:                                               ; preds = %10
  %19 = load ptr, ptr %11, align 8
  %20 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %19, ptr noundef nonnull @.str.3) #6
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #7
  %23 = ptrtoint ptr %20 to i32
  br label %60

24:                                               ; preds = %18
  %25 = tail call ptr @devm_reset_control_array_get(ptr noundef %3, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = icmp eq ptr %25, inttoptr (i32 -517 to ptr)
  br i1 %28, label %60, label %29

29:                                               ; preds = %27
  %30 = ptrtoint ptr %25 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #7
  br label %60

31:                                               ; preds = %24
  %32 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.6) #6
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #7
  %35 = ptrtoint ptr %32 to i32
  br label %60

36:                                               ; preds = %31
  %37 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.8) #6
  %38 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9) #7
  %40 = ptrtoint ptr %37 to i32
  br label %60

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %8, i32 0, i32 1
  store ptr %14, ptr %42, align 8
  %43 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %8, i32 0, i32 2
  store ptr %20, ptr %43, align 4
  %44 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %8, i32 0, i32 3
  store ptr %25, ptr %44, align 8
  %45 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %8, i32 0, i32 4
  store ptr %32, ptr %45, align 4
  %46 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %8, i32 0, i32 5
  store ptr %37, ptr %46, align 8
  %47 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %8, ptr %47, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %48 = call i32 @regmap_read(ptr noundef %14, i32 noundef 232, ptr noundef nonnull %2) #6
  %49 = load i32, ptr %2, align 4
  %50 = and i32 %49, 256
  %51 = icmp ne i32 %50, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  br i1 %51, label %55, label %52

52:                                               ; preds = %41
  %53 = call fastcc i32 @meson_gx_pwrc_vpu_setup_clk(ptr noundef nonnull %8)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52, %41
  %56 = getelementptr inbounds %struct.generic_pm_domain, ptr %8, i32 0, i32 32
  store i32 4, ptr %56, align 4
  %57 = call i32 @pm_genpd_init(ptr noundef nonnull %8, ptr noundef null, i1 noundef zeroext %51) #6
  %58 = load ptr, ptr %11, align 8
  %59 = call i32 @of_genpd_add_provider_simple(ptr noundef %58, ptr noundef nonnull %8) #6
  br label %60

60:                                               ; preds = %55, %52, %39, %34, %29, %27, %22, %16, %7, %6
  %61 = phi i32 [ %17, %16 ], [ %23, %22 ], [ %35, %34 ], [ %40, %39 ], [ %59, %55 ], [ -19, %6 ], [ -12, %7 ], [ %53, %52 ], [ %30, %29 ], [ -517, %27 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meson_gx_pwrc_vpu_shutdown(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 232, ptr noundef nonnull %2) #6
  %8 = load i32, ptr %2, align 4
  %9 = and i32 %8, 256
  %10 = icmp eq i32 %9, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.generic_pm_domain, ptr %4, i32 0, i32 18
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 %13(ptr noundef %4) #6
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @meson_gx_pwrc_vpu_setup_clk(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @clk_prepare(ptr noundef %3) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %1
  %7 = tail call i32 @clk_enable(ptr noundef %3) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 @clk_prepare(ptr noundef %11) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = tail call i32 @clk_enable(ptr noundef %11) #6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  tail call void @clk_unprepare(ptr noundef %11) #6
  br label %18

18:                                               ; preds = %17, %9
  %19 = phi i32 [ %15, %17 ], [ %12, %9 ]
  %20 = load ptr, ptr %2, align 4
  tail call void @clk_disable(ptr noundef %20) #6
  br label %21

21:                                               ; preds = %18, %6
  %22 = phi ptr [ %20, %18 ], [ %3, %6 ]
  %23 = phi i32 [ %19, %18 ], [ %7, %6 ]
  tail call void @clk_unprepare(ptr noundef %22) #6
  br label %24

24:                                               ; preds = %21, %14, %1
  %25 = phi i32 [ 0, %14 ], [ %4, %1 ], [ %23, %21 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_simple(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_reset_control_array_get(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_gx_pwrc_vpu_power_off(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 232, i32 noundef 512, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 4294960) #6
  %6 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %0, i32 0, i32 2
  br label %7

7:                                                ; preds = %7, %1
  %8 = phi i32 [ 0, %1 ], [ %13, %7 ]
  %9 = load ptr, ptr %6, align 4
  %10 = shl i32 3, %8
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 260, i32 noundef %10, i32 noundef %10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 1073740) #6
  %13 = add nuw nsw i32 %8, 2
  %14 = icmp ult i32 %8, 30
  br i1 %14, label %7, label %47

15:                                               ; preds = %47
  %16 = load ptr, ptr %6, align 4
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 256, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 1073740) #6
  %19 = load ptr, ptr %6, align 4
  %20 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 256, i32 noundef 512, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 1073740) #6
  %22 = load ptr, ptr %6, align 4
  %23 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 256, i32 noundef 1024, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 1073740) #6
  %25 = load ptr, ptr %6, align 4
  %26 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 256, i32 noundef 2048, i32 noundef 2048, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 1073740) #6
  %28 = load ptr, ptr %6, align 4
  %29 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 256, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 1073740) #6
  %31 = load ptr, ptr %6, align 4
  %32 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 256, i32 noundef 8192, i32 noundef 8192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 1073740) #6
  %34 = load ptr, ptr %6, align 4
  %35 = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 256, i32 noundef 16384, i32 noundef 16384, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 1073740) #6
  %37 = load ptr, ptr %6, align 4
  %38 = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 256, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 1073740) #6
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 4294960) #6
  %41 = load ptr, ptr %2, align 8
  %42 = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 232, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @msleep(i32 noundef 20) #6
  %43 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %0, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  tail call void @clk_disable(ptr noundef %44) #6
  tail call void @clk_unprepare(ptr noundef %44) #6
  %45 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %0, i32 0, i32 5
  %46 = load ptr, ptr %45, align 8
  tail call void @clk_disable(ptr noundef %46) #6
  tail call void @clk_unprepare(ptr noundef %46) #6
  ret i32 0

47:                                               ; preds = %47, %7
  %48 = phi i32 [ %53, %47 ], [ 0, %7 ]
  %49 = load ptr, ptr %6, align 4
  %50 = shl i32 3, %48
  %51 = tail call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef 264, i32 noundef %50, i32 noundef %50, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 1073740) #6
  %53 = add nuw nsw i32 %48, 2
  %54 = icmp ult i32 %48, 30
  br i1 %54, label %47, label %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_gx_pwrc_vpu_power_on(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 232, i32 noundef 256, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 4294960) #6
  %6 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %0, i32 0, i32 2
  br label %7

7:                                                ; preds = %7, %1
  %8 = phi i32 [ 0, %1 ], [ %13, %7 ]
  %9 = load ptr, ptr %6, align 4
  %10 = shl i32 3, %8
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 260, i32 noundef %10, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 1073740) #6
  %13 = add nuw nsw i32 %8, 2
  %14 = icmp ult i32 %8, 30
  br i1 %14, label %7, label %45

15:                                               ; preds = %45
  %16 = load ptr, ptr %6, align 4
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 256, i32 noundef 256, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 1073740) #6
  %19 = load ptr, ptr %6, align 4
  %20 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 256, i32 noundef 512, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 1073740) #6
  %22 = load ptr, ptr %6, align 4
  %23 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 256, i32 noundef 1024, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 1073740) #6
  %25 = load ptr, ptr %6, align 4
  %26 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 256, i32 noundef 2048, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 1073740) #6
  %28 = load ptr, ptr %6, align 4
  %29 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 256, i32 noundef 4096, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 1073740) #6
  %31 = load ptr, ptr %6, align 4
  %32 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 256, i32 noundef 8192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 1073740) #6
  %34 = load ptr, ptr %6, align 4
  %35 = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 256, i32 noundef 16384, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 1073740) #6
  %37 = load ptr, ptr %6, align 4
  %38 = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 256, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 1073740) #6
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 4294960) #6
  %41 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %0, i32 0, i32 3
  %42 = load ptr, ptr %41, align 8
  %43 = tail call i32 @reset_control_assert(ptr noundef %42) #6
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %53, label %61

45:                                               ; preds = %45, %7
  %46 = phi i32 [ %51, %45 ], [ 0, %7 ]
  %47 = load ptr, ptr %6, align 4
  %48 = shl i32 3, %46
  %49 = tail call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 264, i32 noundef %48, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 1073740) #6
  %51 = add nuw nsw i32 %46, 2
  %52 = icmp ult i32 %46, 30
  br i1 %52, label %45, label %15

53:                                               ; preds = %15
  %54 = load ptr, ptr %2, align 8
  %55 = tail call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef 232, i32 noundef 512, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %56 = load ptr, ptr %41, align 8
  %57 = tail call i32 @reset_control_deassert(ptr noundef %56) #6
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = tail call fastcc i32 @meson_gx_pwrc_vpu_setup_clk(ptr noundef %0)
  br label %61

61:                                               ; preds = %59, %53, %15
  %62 = phi i32 [ %43, %15 ], [ %57, %53 ], [ %60, %59 ]
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_g12a_pwrc_vpu_power_off(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 232, i32 noundef 512, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 4294960) #6
  %6 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %0, i32 0, i32 2
  br label %7

7:                                                ; preds = %7, %1
  %8 = phi i32 [ 0, %1 ], [ %13, %7 ]
  %9 = load ptr, ptr %6, align 4
  %10 = shl i32 3, %8
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 260, i32 noundef %10, i32 noundef %10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 1073740) #6
  %13 = add nuw nsw i32 %8, 2
  %14 = icmp ult i32 %8, 30
  br i1 %14, label %7, label %15

15:                                               ; preds = %15, %7
  %16 = phi i32 [ %21, %15 ], [ 0, %7 ]
  %17 = load ptr, ptr %6, align 4
  %18 = shl i32 3, %16
  %19 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 264, i32 noundef %18, i32 noundef %18, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 1073740) #6
  %21 = add nuw nsw i32 %16, 2
  %22 = icmp ult i32 %16, 30
  br i1 %22, label %15, label %55

23:                                               ; preds = %55
  %24 = load ptr, ptr %6, align 4
  %25 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 256, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 1073740) #6
  %27 = load ptr, ptr %6, align 4
  %28 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 256, i32 noundef 512, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 1073740) #6
  %30 = load ptr, ptr %6, align 4
  %31 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 256, i32 noundef 1024, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 1073740) #6
  %33 = load ptr, ptr %6, align 4
  %34 = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 256, i32 noundef 2048, i32 noundef 2048, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 1073740) #6
  %36 = load ptr, ptr %6, align 4
  %37 = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 256, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 1073740) #6
  %39 = load ptr, ptr %6, align 4
  %40 = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 256, i32 noundef 8192, i32 noundef 8192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 1073740) #6
  %42 = load ptr, ptr %6, align 4
  %43 = tail call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef 256, i32 noundef 16384, i32 noundef 16384, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 1073740) #6
  %45 = load ptr, ptr %6, align 4
  %46 = tail call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 256, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 1073740) #6
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 4294960) #6
  %49 = load ptr, ptr %2, align 8
  %50 = tail call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef 232, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @msleep(i32 noundef 20) #6
  %51 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %0, i32 0, i32 4
  %52 = load ptr, ptr %51, align 4
  tail call void @clk_disable(ptr noundef %52) #6
  tail call void @clk_unprepare(ptr noundef %52) #6
  %53 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %0, i32 0, i32 5
  %54 = load ptr, ptr %53, align 8
  tail call void @clk_disable(ptr noundef %54) #6
  tail call void @clk_unprepare(ptr noundef %54) #6
  ret i32 0

55:                                               ; preds = %55, %15
  %56 = phi i32 [ %61, %55 ], [ 0, %15 ]
  %57 = load ptr, ptr %6, align 4
  %58 = shl i32 3, %56
  %59 = tail call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef 308, i32 noundef %58, i32 noundef %58, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 1073740) #6
  %61 = add nuw nsw i32 %56, 2
  %62 = icmp ult i32 %56, 30
  br i1 %62, label %55, label %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_g12a_pwrc_vpu_power_on(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 232, i32 noundef 256, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 4294960) #6
  %6 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %0, i32 0, i32 2
  br label %7

7:                                                ; preds = %7, %1
  %8 = phi i32 [ 0, %1 ], [ %13, %7 ]
  %9 = load ptr, ptr %6, align 4
  %10 = shl i32 3, %8
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 260, i32 noundef %10, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 1073740) #6
  %13 = add nuw nsw i32 %8, 2
  %14 = icmp ult i32 %8, 30
  br i1 %14, label %7, label %15

15:                                               ; preds = %15, %7
  %16 = phi i32 [ %21, %15 ], [ 0, %7 ]
  %17 = load ptr, ptr %6, align 4
  %18 = shl i32 3, %16
  %19 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 264, i32 noundef %18, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 1073740) #6
  %21 = add nuw nsw i32 %16, 2
  %22 = icmp ult i32 %16, 30
  br i1 %22, label %15, label %53

23:                                               ; preds = %53
  %24 = load ptr, ptr %6, align 4
  %25 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 256, i32 noundef 256, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 1073740) #6
  %27 = load ptr, ptr %6, align 4
  %28 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 256, i32 noundef 512, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 1073740) #6
  %30 = load ptr, ptr %6, align 4
  %31 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 256, i32 noundef 1024, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 1073740) #6
  %33 = load ptr, ptr %6, align 4
  %34 = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 256, i32 noundef 2048, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 1073740) #6
  %36 = load ptr, ptr %6, align 4
  %37 = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 256, i32 noundef 4096, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 1073740) #6
  %39 = load ptr, ptr %6, align 4
  %40 = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 256, i32 noundef 8192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 1073740) #6
  %42 = load ptr, ptr %6, align 4
  %43 = tail call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef 256, i32 noundef 16384, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 1073740) #6
  %45 = load ptr, ptr %6, align 4
  %46 = tail call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 256, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 1073740) #6
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 4294960) #6
  %49 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %0, i32 0, i32 3
  %50 = load ptr, ptr %49, align 8
  %51 = tail call i32 @reset_control_assert(ptr noundef %50) #6
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %61, label %69

53:                                               ; preds = %53, %15
  %54 = phi i32 [ %59, %53 ], [ 0, %15 ]
  %55 = load ptr, ptr %6, align 4
  %56 = shl i32 3, %54
  %57 = tail call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef 308, i32 noundef %56, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 1073740) #6
  %59 = add nuw nsw i32 %54, 2
  %60 = icmp ult i32 %54, 30
  br i1 %60, label %53, label %23

61:                                               ; preds = %23
  %62 = load ptr, ptr %2, align 8
  %63 = tail call i32 @regmap_update_bits_base(ptr noundef %62, i32 noundef 232, i32 noundef 512, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %64 = load ptr, ptr %49, align 8
  %65 = tail call i32 @reset_control_deassert(ptr noundef %64) #6
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = tail call fastcc i32 @meson_gx_pwrc_vpu_setup_clk(ptr noundef %0)
  br label %69

69:                                               ; preds = %67, %61, %23
  %70 = phi i32 [ %51, %23 ], [ %65, %61 ], [ %68, %67 ]
  ret i32 %70
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
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
!8 = !{!"auto-init"}
