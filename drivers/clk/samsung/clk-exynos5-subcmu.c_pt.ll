; ModuleID = '/llk/IR/drivers/clk/samsung/clk-exynos5-subcmu.c_pt.bc'
source_filename = "../drivers/clk/samsung/clk-exynos5-subcmu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.exynos5_subcmu_info = type { ptr, i32, ptr, i32, ptr, i32, ptr }
%struct.samsung_gate_clock = type { i32, ptr, ptr, i32, i32, i8, i8 }
%struct.exynos5_subcmu_reg_dump = type { i32, i32, i32, i32 }
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
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.samsung_clk_provider = type { ptr, ptr, %struct.spinlock, %struct.clk_hw_onecell_data }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }

@ctx = internal unnamed_addr global ptr null, align 4
@cmu = internal unnamed_addr global ptr null, align 4
@nr_cmus = internal unnamed_addr global i32 0, align 4
@__initcall__kmod_clk_exynos5_subcmu__163_195_exynos5_clk_drv_init1 = internal global ptr @exynos5_clk_drv_init, section ".initcall1.init", align 4
@exynos5_clk_driver = internal global %struct.platform_driver { ptr @exynos5_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @exynos5_clk_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, section ".ref.data", align 4
@exynos5_subcmu_driver = internal global %struct.platform_driver { ptr @exynos5_subcmu_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos5_subcmu_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, section ".ref.data", align 4
@.str = private unnamed_addr constant [14 x i8] c"exynos5-clock\00", align 1
@exynos5_clk_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5800-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"samsung,exynos4210-pd\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"exynos5-subcmu\00", align 1
@exynos5_subcmu_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos5_subcmu_suspend, ptr @exynos5_subcmu_resume, ptr null }, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_clk_exynos5_subcmu__163_195_exynos5_clk_drv_init1], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos5_subcmus_init(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  store ptr %0, ptr @ctx, align 4
  store ptr %2, ptr @cmu, align 4
  store i32 %1, ptr @nr_cmus, align 4
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %65, label %5

5:                                                ; preds = %62, %3
  %6 = phi ptr [ %64, %62 ], [ %0, %3 ]
  %7 = phi ptr [ %63, %62 ], [ %2, %3 ]
  %8 = phi i32 [ %9, %62 ], [ %1, %3 ]
  %9 = add i32 %8, -1
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.exynos5_subcmu_info, ptr %10, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.exynos5_subcmu_info, ptr %10, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %17, %14
  %18 = phi i32 [ %20, %17 ], [ %12, %14 ]
  %19 = phi ptr [ %21, %17 ], [ %16, %14 ]
  %20 = add i32 %18, -1
  %21 = getelementptr %struct.samsung_gate_clock, ptr %19, i32 1
  %22 = load i32, ptr %19, align 4
  tail call void @samsung_clk_add_lookup(ptr noundef %6, ptr noundef nonnull inttoptr (i32 -517 to ptr), i32 noundef %22) #6
  %23 = icmp eq i32 %20, 0
  br i1 %23, label %24, label %17

24:                                               ; preds = %17
  %25 = load ptr, ptr @ctx, align 4
  %26 = load ptr, ptr %7, align 4
  br label %27

27:                                               ; preds = %24, %5
  %28 = phi ptr [ %26, %24 ], [ %10, %5 ]
  %29 = phi ptr [ %25, %24 ], [ %6, %5 ]
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.exynos5_subcmu_info, ptr %28, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %60, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.exynos5_subcmu_info, ptr %28, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  br label %37

37:                                               ; preds = %37, %34
  %38 = phi ptr [ %58, %37 ], [ %36, %34 ]
  %39 = phi i32 [ %57, %37 ], [ %32, %34 ]
  %40 = load i32, ptr %38, align 4
  %41 = getelementptr i8, ptr %30, i32 %40
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %43 = getelementptr inbounds %struct.exynos5_subcmu_reg_dump, ptr %38, i32 0, i32 3
  store i32 %42, ptr %43, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.exynos5_subcmu_reg_dump, ptr %38, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %44, %47
  %49 = getelementptr inbounds %struct.exynos5_subcmu_reg_dump, ptr %38, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = or i32 %48, %50
  %52 = load i32, ptr %38, align 4
  %53 = getelementptr i8, ptr %30, i32 %52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #6, !srcloc !11
  %54 = load i32, ptr %45, align 4
  %55 = load i32, ptr %43, align 4
  %56 = and i32 %55, %54
  store i32 %56, ptr %43, align 4
  %57 = add i32 %39, -1
  %58 = getelementptr %struct.exynos5_subcmu_reg_dump, ptr %38, i32 1
  %59 = icmp eq i32 %57, 0
  br i1 %59, label %60, label %37

60:                                               ; preds = %37, %27
  %61 = icmp eq i32 %9, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %60
  %63 = getelementptr ptr, ptr %7, i32 1
  %64 = load ptr, ptr @ctx, align 4
  br label %5

65:                                               ; preds = %60, %3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @exynos5_clk_drv_init() #1 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos5_clk_driver, ptr noundef null) #6
  %2 = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos5_subcmu_driver, ptr noundef null) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_add_lookup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @exynos5_clk_probe(ptr noundef %0) #1 section ".init.text" {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store ptr null, ptr %2, align 4, !annotation !12
  %3 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %38, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  br label %7

7:                                                ; preds = %35, %5
  %8 = phi ptr [ %3, %5 ], [ %36, %35 ]
  %9 = call i32 @of_property_read_string(ptr noundef nonnull %8, ptr noundef nonnull @.str.2, ptr noundef nonnull %2) #6
  %10 = icmp sgt i32 %9, -1
  %11 = load i32, ptr @nr_cmus, align 4
  %12 = icmp sgt i32 %11, 0
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %35

14:                                               ; preds = %7
  %15 = load ptr, ptr @cmu, align 4
  br label %16

16:                                               ; preds = %30, %14
  %17 = phi i32 [ %31, %30 ], [ %11, %14 ]
  %18 = phi ptr [ %32, %30 ], [ %15, %14 ]
  %19 = phi i32 [ %33, %30 ], [ 0, %14 ]
  %20 = getelementptr ptr, ptr %18, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.exynos5_subcmu_info, ptr %21, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %2, align 4
  %25 = call i32 @strcmp(ptr noundef %23, ptr noundef %24)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  call fastcc void @exynos5_clk_register_subcmu(ptr noundef %6, ptr noundef %21, ptr noundef nonnull %8) #7
  %28 = load ptr, ptr @cmu, align 4
  %29 = load i32, ptr @nr_cmus, align 4
  br label %30

30:                                               ; preds = %27, %16
  %31 = phi i32 [ %17, %16 ], [ %29, %27 ]
  %32 = phi ptr [ %18, %16 ], [ %28, %27 ]
  %33 = add nuw nsw i32 %19, 1
  %34 = icmp slt i32 %33, %31
  br i1 %34, label %16, label %35

35:                                               ; preds = %30, %7
  %36 = call ptr @of_find_compatible_node(ptr noundef nonnull %8, ptr noundef null, ptr noundef nonnull @.str.1) #6
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %7

38:                                               ; preds = %35, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @exynos5_clk_register_subcmu(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 section ".init.text" {
  %4 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #6
  %5 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %5, i8 0, i64 68, i1 false)
  store ptr %2, ptr %4, align 4
  %6 = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str.3, i32 noundef -2) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %10 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3, i32 1
  store ptr %0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3, i32 8
  store ptr %1, ptr %11, align 8
  %12 = call i32 @of_genpd_add_device(ptr noundef nonnull %4, ptr noundef %9) #6
  %13 = call i32 @platform_device_add(ptr noundef nonnull %6) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  call void @platform_device_put(ptr noundef nonnull %6) #6
  br label %16

16:                                               ; preds = %15, %8, %3
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #6
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @exynos5_subcmu_probe(ptr noundef %0) #1 section ".init.text" {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @__pm_runtime_set_status(ptr noundef %2, i32 noundef 2) #6
  tail call void @pm_runtime_enable(ptr noundef %2) #6
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 5) #6
  %7 = load ptr, ptr @ctx, align 4
  %8 = getelementptr inbounds %struct.samsung_clk_provider, ptr %7, i32 0, i32 1
  store ptr %2, ptr %8, align 4
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr inbounds %struct.exynos5_subcmu_info, ptr %4, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void @samsung_clk_register_div(ptr noundef %7, ptr noundef %9, i32 noundef %11) #6
  %12 = load ptr, ptr @ctx, align 4
  %13 = getelementptr inbounds %struct.exynos5_subcmu_info, ptr %4, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.exynos5_subcmu_info, ptr %4, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  tail call void @samsung_clk_register_gate(ptr noundef %12, ptr noundef %14, i32 noundef %16) #6
  %17 = load ptr, ptr @ctx, align 4
  %18 = getelementptr inbounds %struct.samsung_clk_provider, ptr %17, i32 0, i32 1
  store ptr null, ptr %18, align 4
  %19 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 4) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_div(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_gate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos5_subcmu_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr @ctx, align 4
  %5 = getelementptr inbounds %struct.samsung_clk_provider, ptr %4, i32 0, i32 2
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #6
  %7 = load ptr, ptr @ctx, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.exynos5_subcmu_info, ptr %3, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %40, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.exynos5_subcmu_info, ptr %3, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %15, %12
  %16 = phi ptr [ %36, %15 ], [ %14, %12 ]
  %17 = phi i32 [ %35, %15 ], [ %10, %12 ]
  %18 = load i32, ptr %16, align 4
  %19 = getelementptr i8, ptr %8, i32 %18
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %21 = getelementptr inbounds %struct.exynos5_subcmu_reg_dump, ptr %16, i32 0, i32 3
  store i32 %20, ptr %21, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.exynos5_subcmu_reg_dump, ptr %16, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %22, %25
  %27 = getelementptr inbounds %struct.exynos5_subcmu_reg_dump, ptr %16, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %26, %28
  %30 = load i32, ptr %16, align 4
  %31 = getelementptr i8, ptr %8, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #6, !srcloc !11
  %32 = load i32, ptr %23, align 4
  %33 = load i32, ptr %21, align 4
  %34 = and i32 %33, %32
  store i32 %34, ptr %21, align 4
  %35 = add i32 %17, -1
  %36 = getelementptr %struct.exynos5_subcmu_reg_dump, ptr %16, i32 1
  %37 = icmp eq i32 %35, 0
  br i1 %37, label %38, label %15

38:                                               ; preds = %15
  %39 = load ptr, ptr @ctx, align 4
  br label %40

40:                                               ; preds = %38, %1
  %41 = phi ptr [ %39, %38 ], [ %7, %1 ]
  %42 = getelementptr inbounds %struct.samsung_clk_provider, ptr %41, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %42, i32 noundef %6) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos5_subcmu_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr @ctx, align 4
  %5 = getelementptr inbounds %struct.samsung_clk_provider, ptr %4, i32 0, i32 2
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #6
  %7 = load ptr, ptr @ctx, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.exynos5_subcmu_info, ptr %3, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.exynos5_subcmu_info, ptr %3, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %15, %12
  %16 = phi ptr [ %31, %15 ], [ %14, %12 ]
  %17 = phi i32 [ %30, %15 ], [ %10, %12 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  %18 = load i32, ptr %16, align 4
  %19 = getelementptr i8, ptr %8, i32 %18
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !14
  %21 = getelementptr inbounds %struct.exynos5_subcmu_reg_dump, ptr %16, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %20, %23
  %25 = getelementptr inbounds %struct.exynos5_subcmu_reg_dump, ptr %16, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %24, %26
  %28 = load i32, ptr %16, align 4
  %29 = getelementptr i8, ptr %8, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #6, !srcloc !11
  %30 = add i32 %17, -1
  %31 = getelementptr %struct.exynos5_subcmu_reg_dump, ptr %16, i32 1
  %32 = icmp eq i32 %30, 0
  br i1 %32, label %33, label %15

33:                                               ; preds = %15
  %34 = load ptr, ptr @ctx, align 4
  br label %35

35:                                               ; preds = %33, %1
  %36 = phi ptr [ %34, %33 ], [ %7, %1 ]
  %37 = getelementptr inbounds %struct.samsung_clk_provider, ptr %36, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %37, i32 noundef %6) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }
attributes #7 = { cold }

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
!8 = !{i64 364949}
!9 = !{i64 2151454634}
!10 = !{i64 2151454850}
!11 = !{i64 364531}
!12 = !{!"auto-init"}
!13 = !{i64 2151455758}
!14 = !{i64 2151456257}
