; ModuleID = '/llk/IR/drivers/cpufreq/tegra124-cpufreq.c_pt.bc'
source_filename = "../drivers/cpufreq/tegra124-cpufreq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
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
%struct.tegra124_cpufreq_priv = type { ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_tegra124_cpufreq__174_220_tegra_cpufreq_init6 = internal global ptr @tegra_cpufreq_init, section ".initcall6.init", align 4
@__UNIQUE_ID_author175 = internal constant [65 x i8] c"tegra124_cpufreq.author=Tuomas Tynkkynen <ttynkkynen@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description176 = internal constant [64 x i8] c"tegra124_cpufreq.description=cpufreq driver for NVIDIA Tegra124\00", section ".modinfo", align 1
@__UNIQUE_ID_file177 = internal constant [55 x i8] c"tegra124_cpufreq.file=drivers/cpufreq/tegra124-cpufreq\00", section ".modinfo", align 1
@__UNIQUE_ID_license178 = internal constant [32 x i8] c"tegra124_cpufreq.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [16 x i8] c"nvidia,tegra124\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"nvidia,tegra210\00", align 1
@tegra124_cpufreq_platdrv = internal global %struct.platform_driver { ptr @tegra124_cpufreq_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra124_cpufreq_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"cpufreq-tegra124\00", align 1
@tegra124_cpufreq_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @tegra124_cpufreq_suspend, ptr @tegra124_cpufreq_resume, ptr @tegra124_cpufreq_suspend, ptr @tegra124_cpufreq_resume, ptr @tegra124_cpufreq_suspend, ptr @tegra124_cpufreq_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"cpu_g\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"dfll\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"pll_x\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"pll_p\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"cpufreq-dt\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"failed to reparent to PLLP: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"failed to enable DFLL clock for CPU: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"failed to reparent to DFLL clock: %d\0A\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author175, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file177, ptr @__UNIQUE_ID_license178, ptr @__initcall__kmod_tegra124_cpufreq__174_220_tegra_cpufreq_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tegra_cpufreq_init() #0 section ".init.text" {
  %1 = alloca %struct.platform_device_info, align 8
  %2 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str) #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.1) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %4, %0
  %8 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra124_cpufreq_platdrv, ptr noundef null) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #6
  %11 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false) #6
  store ptr @.str.2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 4
  store i32 -1, ptr %12, align 8
  %13 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %13, i8 0, i64 16, i1 false) #6
  %14 = call ptr @platform_device_register_full(ptr noundef nonnull %1) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %1) #6
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  call void @platform_driver_unregister(ptr noundef nonnull @tegra124_cpufreq_platdrv) #6
  %17 = ptrtoint ptr %14 to i32
  br label %18

18:                                               ; preds = %16, %10, %7, %4
  %19 = phi i32 [ %17, %16 ], [ -19, %4 ], [ %8, %7 ], [ 0, %10 ]
  ret i32 %19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra124_cpufreq_probe(ptr noundef %0) #3 {
  %2 = alloca %struct.platform_device_info, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i32 56, i1 false)
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 20, i32 noundef 3520) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %66, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @get_cpu_device(i32 noundef 0) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %66, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @get_cpu_device(i32 noundef 0) #6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call ptr @of_get_cpu_node(i32 noundef 0, ptr noundef null) #6
  br label %18

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 25
  %16 = load ptr, ptr %15, align 8
  %17 = tail call ptr @of_node_get(ptr noundef %16) #6
  br label %18

18:                                               ; preds = %14, %12
  %19 = phi ptr [ %17, %14 ], [ %13, %12 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %66, label %21

21:                                               ; preds = %18
  %22 = tail call ptr @of_clk_get_by_name(ptr noundef nonnull %19, ptr noundef nonnull @.str.3) #6
  store ptr %22, ptr %4, align 4
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = ptrtoint ptr %22 to i32
  br label %64

26:                                               ; preds = %21
  %27 = tail call ptr @of_clk_get_by_name(ptr noundef nonnull %19, ptr noundef nonnull @.str.4) #6
  %28 = getelementptr inbounds %struct.tegra124_cpufreq_priv, ptr %4, i32 0, i32 3
  store ptr %27, ptr %28, align 4
  %29 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = ptrtoint ptr %27 to i32
  br label %62

32:                                               ; preds = %26
  %33 = tail call ptr @of_clk_get_by_name(ptr noundef nonnull %19, ptr noundef nonnull @.str.5) #6
  %34 = getelementptr inbounds %struct.tegra124_cpufreq_priv, ptr %4, i32 0, i32 2
  store ptr %33, ptr %34, align 4
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = ptrtoint ptr %33 to i32
  br label %60

38:                                               ; preds = %32
  %39 = tail call ptr @of_clk_get_by_name(ptr noundef nonnull %19, ptr noundef nonnull @.str.6) #6
  %40 = getelementptr inbounds %struct.tegra124_cpufreq_priv, ptr %4, i32 0, i32 1
  store ptr %39, ptr %40, align 4
  %41 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = ptrtoint ptr %39 to i32
  br label %58

44:                                               ; preds = %38
  %45 = tail call fastcc i32 @tegra124_cpu_switch_to_dfll(ptr noundef nonnull %4)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 3
  store ptr @.str.7, ptr %48, align 4
  store ptr %3, ptr %2, align 8
  %49 = call ptr @platform_device_register_full(ptr noundef nonnull %2) #6
  %50 = getelementptr inbounds %struct.tegra124_cpufreq_priv, ptr %4, i32 0, i32 4
  store ptr %49, ptr %50, align 4
  %51 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = ptrtoint ptr %49 to i32
  br label %56

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %55, align 8
  br label %64

56:                                               ; preds = %52, %44
  %57 = phi i32 [ %45, %44 ], [ %53, %52 ]
  call void @clk_put(ptr noundef %39) #6
  br label %58

58:                                               ; preds = %56, %42
  %59 = phi i32 [ %43, %42 ], [ %57, %56 ]
  call void @clk_put(ptr noundef %33) #6
  br label %60

60:                                               ; preds = %58, %36
  %61 = phi i32 [ %37, %36 ], [ %59, %58 ]
  call void @clk_put(ptr noundef %27) #6
  br label %62

62:                                               ; preds = %60, %30
  %63 = phi i32 [ %31, %30 ], [ %61, %60 ]
  call void @clk_put(ptr noundef %22) #6
  br label %64

64:                                               ; preds = %62, %54, %24
  %65 = phi i32 [ 0, %54 ], [ %25, %24 ], [ %63, %62 ]
  call void @of_node_put(ptr noundef nonnull %19) #6
  br label %66

66:                                               ; preds = %64, %18, %6, %1
  %67 = phi i32 [ -12, %1 ], [ -19, %6 ], [ -19, %18 ], [ %65, %64 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #6
  ret i32 %67
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra124_cpu_switch_to_dfll(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.tegra124_cpufreq_priv, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = tail call i32 @clk_get_rate(ptr noundef %4) #6
  %6 = tail call i32 @clk_set_rate(ptr noundef %3, i32 noundef %5) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %1
  %9 = load ptr, ptr %0, align 4
  %10 = tail call ptr @clk_get_parent(ptr noundef %9) #6
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.tegra124_cpufreq_priv, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @clk_set_parent(ptr noundef %11, ptr noundef %13) #6
  %15 = load ptr, ptr %2, align 4
  %16 = tail call i32 @clk_prepare(ptr noundef %15) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %8
  %19 = tail call i32 @clk_enable(ptr noundef %15) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @clk_unprepare(ptr noundef %15) #6
  br label %24

22:                                               ; preds = %18
  %23 = load ptr, ptr %2, align 4
  br label %24

24:                                               ; preds = %22, %21, %8
  %25 = phi ptr [ %23, %22 ], [ %10, %8 ], [ %10, %21 ]
  %26 = phi i32 [ 0, %22 ], [ %16, %8 ], [ %19, %21 ]
  %27 = load ptr, ptr %0, align 4
  %28 = tail call i32 @clk_set_parent(ptr noundef %27, ptr noundef %25) #6
  br label %29

29:                                               ; preds = %24, %1
  %30 = phi i32 [ %6, %1 ], [ %26, %24 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra124_cpufreq_suspend(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra124_cpufreq_priv, ptr %3, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @clk_set_parent(ptr noundef %4, ptr noundef %6) #6
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %7) #7
  br label %13

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.tegra124_cpufreq_priv, ptr %3, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  tail call void @clk_disable(ptr noundef %12) #6
  tail call void @clk_unprepare(ptr noundef %12) #6
  br label %13

13:                                               ; preds = %10, %9
  %14 = phi i32 [ %7, %9 ], [ 0, %10 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra124_cpufreq_resume(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra124_cpufreq_priv, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %12

12:                                               ; preds = %11, %1
  %13 = phi i32 [ %6, %1 ], [ %9, %11 ]
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %13) #7
  br label %23

16:                                               ; preds = %12, %8
  %17 = load ptr, ptr %3, align 4
  %18 = load ptr, ptr %4, align 4
  %19 = tail call i32 @clk_set_parent(ptr noundef %17, ptr noundef %18) #6
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %19) #7
  %22 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %22) #6
  tail call void @clk_unprepare(ptr noundef %22) #6
  br label %23

23:                                               ; preds = %21, %15
  %24 = phi i32 [ %13, %15 ], [ %19, %21 ]
  tail call void @disable_cpufreq() #6
  br label %25

25:                                               ; preds = %23, %16
  %26 = phi i32 [ %24, %23 ], [ 0, %16 ]
  ret i32 %26
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_cpufreq() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
