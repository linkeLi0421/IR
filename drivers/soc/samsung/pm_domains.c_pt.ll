; ModuleID = '/llk/IR/drivers/soc/samsung/pm_domains.c_pt.bc'
source_filename = "../drivers/soc/samsung/pm_domains.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.exynos_pm_domain_config = type { i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.exynos_pm_domain = type { ptr, %struct.generic_pm_domain, i32 }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, [1 x %struct.cpumask], ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.5 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.5 = type { %struct.mutex }

@__initcall__kmod_pm_domains__167_166_exynos4_pm_init_power_domain1 = internal global ptr @exynos4_pm_init_power_domain, section ".initcall1.init", align 4
@exynos_pd_driver = internal global %struct.platform_driver { ptr @exynos_pd_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @exynos_pm_domain_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [10 x i8] c"exynos-pd\00", align 1
@exynos_pm_domain_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-pd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4210_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5433-pd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5433_cfg }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"power-domains\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"#power-domain-cells\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"\014%pOF failed to add subdomain: %pOF\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"\016%pOF has as child subdomain: %pOF.\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"\013Power domain %s %s failed\0A\00", align 1
@exynos4210_cfg = internal constant %struct.exynos_pm_domain_config { i32 7 }, align 4
@exynos5433_cfg = internal constant %struct.exynos_pm_domain_config { i32 15 }, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_pm_domains__167_166_exynos4_pm_init_power_domain1], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @exynos4_pm_init_power_domain() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos_pd_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_pd_probe(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false), !annotation !8
  %8 = tail call ptr @of_device_get_match_data(ptr noundef %5) #7
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 816, i32 noundef 3520) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %57, label %11

11:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store ptr null, ptr %2, align 4, !annotation !8
  %12 = call i32 @of_property_read_string(ptr noundef %7, ptr noundef nonnull @.str.5, ptr noundef nonnull %2) #7
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %2, align 4
  br label %23

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.device_node, ptr %7, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = call ptr @strrchr(ptr noundef %18, i32 noundef 47) #7
  %20 = icmp eq ptr %19, null
  %21 = getelementptr i8, ptr %19, i32 1
  %22 = select i1 %20, ptr %18, ptr %21
  store ptr %22, ptr %2, align 4
  br label %23

23:                                               ; preds = %16, %14
  %24 = phi ptr [ %15, %14 ], [ %22, %16 ]
  %25 = call ptr @kstrdup_const(ptr noundef %24, i32 noundef 3264) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %26 = getelementptr inbounds %struct.exynos_pm_domain, ptr %9, i32 0, i32 1
  %27 = getelementptr inbounds %struct.exynos_pm_domain, ptr %9, i32 0, i32 1, i32 10
  store ptr %25, ptr %27, align 4
  %28 = icmp eq ptr %25, null
  br i1 %28, label %57, label %29

29:                                               ; preds = %23
  %30 = call ptr @of_iomap(ptr noundef %7, i32 noundef 0) #7
  store ptr %30, ptr %9, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  call void @kfree_const(ptr noundef nonnull %25) #7
  br label %57

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.exynos_pm_domain, ptr %9, i32 0, i32 1, i32 18
  store ptr @exynos_pd_power_off, ptr %34, align 4
  %35 = getelementptr inbounds %struct.exynos_pm_domain, ptr %9, i32 0, i32 1, i32 19
  store ptr @exynos_pd_power_on, ptr %35, align 8
  %36 = load i32, ptr %8, align 4
  %37 = getelementptr inbounds %struct.exynos_pm_domain, ptr %9, i32 0, i32 2
  store i32 %36, ptr %37, align 8
  %38 = getelementptr i8, ptr %30, i32 4
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #7, !srcloc !9
  %40 = and i32 %36, %39
  %41 = icmp eq i32 %40, 0
  %42 = call i32 @pm_genpd_init(ptr noundef %26, ptr noundef null, i1 noundef zeroext %41) #7
  %43 = call i32 @of_genpd_add_provider_simple(ptr noundef %7, ptr noundef %26) #7
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %33
  %46 = call i32 @__of_parse_phandle_with_args(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %4) #7
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  store ptr %7, ptr %3, align 4
  %49 = getelementptr inbounds %struct.of_phandle_args, ptr %3, i32 0, i32 1
  store i32 0, ptr %49, align 4
  %50 = call i32 @of_genpd_add_subdomain(ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %51 = icmp eq i32 %50, 0
  %52 = load ptr, ptr %4, align 4
  %53 = load ptr, ptr %3, align 4
  %54 = select i1 %51, ptr @.str.4, ptr @.str.3
  %55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %54, ptr noundef %52, ptr noundef %53) #8
  br label %56

56:                                               ; preds = %48, %45, %33
  call void @pm_runtime_enable(ptr noundef %5) #7
  br label %57

57:                                               ; preds = %56, %32, %23, %1
  %58 = phi i32 [ %43, %56 ], [ -19, %32 ], [ -12, %1 ], [ -12, %23 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #7
  ret i32 %58
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_pd_power_off(ptr nocapture noundef readonly %0) #2 {
  %2 = tail call fastcc i32 @exynos_pd_power(ptr noundef %0, i1 noundef zeroext false)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_pd_power_on(ptr nocapture noundef readonly %0) #2 {
  %2 = tail call fastcc i32 @exynos_pd_power(ptr noundef %0, i1 noundef zeroext true)
  ret i32 %2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_simple(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_subdomain(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @exynos_pd_power(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load ptr, ptr %3, align 8
  br i1 %1, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr i8, ptr %0, i32 800
  %7 = load i32, ptr %6, align 8
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi i32 [ %7, %5 ], [ 0, %2 ]
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %9) #7, !srcloc !10
  %10 = getelementptr i8, ptr %4, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !9
  %12 = getelementptr i8, ptr %0, i32 800
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, %11
  %15 = icmp eq i32 %14, %9
  br i1 %15, label %71, label %16

16:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !12
  tail call void @usleep_range_state(i32 noundef 80, i32 noundef 100, i32 noundef 2) #7
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !9
  %18 = load i32, ptr %12, align 8
  %19 = and i32 %18, %17
  %20 = icmp eq i32 %19, %9
  br i1 %20, label %71, label %26

21:                                               ; preds = %66
  %22 = select i1 %1, ptr @.str.6, ptr @.str.7
  %23 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 10
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %24, ptr noundef nonnull %22) #8
  br label %71

26:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !12
  tail call void @usleep_range_state(i32 noundef 80, i32 noundef 100, i32 noundef 2) #7
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !9
  %28 = load i32, ptr %12, align 8
  %29 = and i32 %28, %27
  %30 = icmp eq i32 %29, %9
  br i1 %30, label %71, label %31

31:                                               ; preds = %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !12
  tail call void @usleep_range_state(i32 noundef 80, i32 noundef 100, i32 noundef 2) #7
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !9
  %33 = load i32, ptr %12, align 8
  %34 = and i32 %33, %32
  %35 = icmp eq i32 %34, %9
  br i1 %35, label %71, label %36

36:                                               ; preds = %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !12
  tail call void @usleep_range_state(i32 noundef 80, i32 noundef 100, i32 noundef 2) #7
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !9
  %38 = load i32, ptr %12, align 8
  %39 = and i32 %38, %37
  %40 = icmp eq i32 %39, %9
  br i1 %40, label %71, label %41

41:                                               ; preds = %36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !12
  tail call void @usleep_range_state(i32 noundef 80, i32 noundef 100, i32 noundef 2) #7
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !9
  %43 = load i32, ptr %12, align 8
  %44 = and i32 %43, %42
  %45 = icmp eq i32 %44, %9
  br i1 %45, label %71, label %46

46:                                               ; preds = %41
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !12
  tail call void @usleep_range_state(i32 noundef 80, i32 noundef 100, i32 noundef 2) #7
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !9
  %48 = load i32, ptr %12, align 8
  %49 = and i32 %48, %47
  %50 = icmp eq i32 %49, %9
  br i1 %50, label %71, label %51

51:                                               ; preds = %46
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !12
  tail call void @usleep_range_state(i32 noundef 80, i32 noundef 100, i32 noundef 2) #7
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !9
  %53 = load i32, ptr %12, align 8
  %54 = and i32 %53, %52
  %55 = icmp eq i32 %54, %9
  br i1 %55, label %71, label %56

56:                                               ; preds = %51
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !12
  tail call void @usleep_range_state(i32 noundef 80, i32 noundef 100, i32 noundef 2) #7
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !9
  %58 = load i32, ptr %12, align 8
  %59 = and i32 %58, %57
  %60 = icmp eq i32 %59, %9
  br i1 %60, label %71, label %61

61:                                               ; preds = %56
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !12
  tail call void @usleep_range_state(i32 noundef 80, i32 noundef 100, i32 noundef 2) #7
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !9
  %63 = load i32, ptr %12, align 8
  %64 = and i32 %63, %62
  %65 = icmp eq i32 %64, %9
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !12
  tail call void @usleep_range_state(i32 noundef 80, i32 noundef 100, i32 noundef 2) #7
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !9
  %68 = load i32, ptr %12, align 8
  %69 = and i32 %68, %67
  %70 = icmp eq i32 %69, %9
  br i1 %70, label %71, label %21

71:                                               ; preds = %66, %61, %56, %51, %46, %41, %36, %31, %26, %21, %16, %8
  %72 = phi i32 [ -110, %21 ], [ 0, %8 ], [ 0, %66 ], [ 0, %61 ], [ 0, %56 ], [ 0, %51 ], [ 0, %46 ], [ 0, %41 ], [ 0, %36 ], [ 0, %31 ], [ 0, %26 ], [ 0, %16 ]
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!9 = !{i64 363412}
!10 = !{i64 362994}
!11 = !{i64 2151504779}
!12 = !{i64 2151504621}
