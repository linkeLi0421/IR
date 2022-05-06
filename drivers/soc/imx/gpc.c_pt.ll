; ModuleID = '/llk/IR/drivers/soc/imx/gpc.c_pt.bc'
source_filename = "../drivers/soc/imx/gpc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.imx_pm_domain = type { %struct.generic_pm_domain, ptr, ptr, [7 x ptr], i32, i32, i8, i32 }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, [1 x %struct.cpumask], ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.71 }
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
%union.anon.71 = type { %struct.mutex }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.genpd_power_state = type { i64, i64, i64, i64, i64, ptr, i64, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.genpd_onecell_data = type { ptr, i32, ptr }
%struct.imx_gpc_dt_data = type { i32, i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__initcall__kmod_gpc__247_240_imx_pgc_power_domain_driver_init6 = internal global ptr @imx_pgc_power_domain_driver_init, section ".initcall6.init", align 4
@__initcall__kmod_gpc__248_554_imx_gpc_driver_init6 = internal global ptr @imx_gpc_driver_init, section ".initcall6.init", align 4
@imx_pgc_power_domain_driver = internal global %struct.platform_driver { ptr @imx_pgc_power_domain_probe, ptr @imx_pgc_power_domain_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @imx_pgc_power_domain_id, i8 0 }, align 4
@.str = private unnamed_addr constant [11 x i8] c"imx-pgc-pd\00", align 1
@imx_pgc_power_domain_id = internal constant [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"imx-pgc-power-domain", i32 0 }, %struct.platform_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"more than %d clocks\0A\00", align 1
@imx_gpc_driver = internal global %struct.platform_driver { ptr @imx_gpc_probe, ptr @imx_gpc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_gpc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"imx-gpc\00", align 1
@imx_gpc_dt_ids = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-gpc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6q_dt_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6qp-gpc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6qp_dt_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sl-gpc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6sl_dt_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sx-gpc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6sx_dt_data }, %struct.of_device_id zeroinitializer], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"pgc\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"#power-domain-cells\00", align 1
@imx_gpc_regmap_config = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 684, ptr @access_table, ptr @access_table, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"failed to init regmap: %d\0A\00", align 1
@imx_gpc_domains = internal global [4 x %struct.imx_pm_domain] [%struct.imx_pm_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.10, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, [1 x %struct.cpumask] zeroinitializer, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 4, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.71 zeroinitializer }, ptr null, ptr null, [7 x ptr] zeroinitializer, i32 0, i32 0, i8 0, i32 0 }, %struct.imx_pm_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.11, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, [1 x %struct.cpumask] zeroinitializer, ptr @imx6_pm_domain_power_off, ptr @imx6_pm_domain_power_on, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr @imx6_pm_domain_pu_state, ptr null, i32 1, i32 0, i64 0, i64 0, ptr null, %union.anon.71 zeroinitializer }, ptr null, ptr null, [7 x ptr] zeroinitializer, i32 0, i32 608, i8 0, i32 0 }, %struct.imx_pm_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.12, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, [1 x %struct.cpumask] zeroinitializer, ptr @imx6_pm_domain_power_off, ptr @imx6_pm_domain_power_on, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.71 zeroinitializer }, ptr null, ptr null, [7 x ptr] zeroinitializer, i32 0, i32 576, i8 4, i32 0 }, %struct.imx_pm_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.13, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, [1 x %struct.cpumask] zeroinitializer, ptr @imx6_pm_domain_power_off, ptr @imx6_pm_domain_power_on, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.71 zeroinitializer }, ptr null, ptr null, [7 x ptr] zeroinitializer, i32 0, i32 512, i8 6, i32 0 }], align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"imx-pgc-power-domain\00", align 1
@access_table = internal constant %struct.regmap_access_table { ptr @yes_ranges, i32 4, ptr null, i32 0 }, align 4
@yes_ranges = internal constant [4 x %struct.regmap_range] [%struct.regmap_range zeroinitializer, %struct.regmap_range { i32 512, i32 524 }, %struct.regmap_range { i32 608, i32 620 }, %struct.regmap_range { i32 576, i32 588 }], align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"ARM\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"PU\00", align 1
@imx6_pm_domain_pu_state = internal global %struct.genpd_power_state { i64 25000, i64 2000000, i64 0, i64 0, i64 0, ptr null, i64 0, ptr null }, align 8
@.str.12 = private unnamed_addr constant [8 x i8] c"DISPLAY\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"PCI\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.14 = private unnamed_addr constant [38 x i8] c"\013%s: failed to enable regulator: %d\0A\00", align 1
@__func__.imx6_pm_domain_power_on = private unnamed_addr constant [24 x i8] c"imx6_pm_domain_power_on\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"\013powerup request on domain %s timed out\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"pu\00", align 1
@imx_gpc_onecell_data = internal global %struct.genpd_onecell_data { ptr @imx_gpc_onecell_domains, i32 2, ptr null }, align 4
@imx_gpc_onecell_domains = internal global [2 x ptr] [ptr @imx_gpc_domains, ptr getelementptr (i8, ptr @imx_gpc_domains, i64 856)], align 4
@imx6q_dt_data = internal constant %struct.imx_gpc_dt_data { i32 2, i8 0, i8 0 }, align 4
@imx6qp_dt_data = internal constant %struct.imx_gpc_dt_data { i32 2, i8 1, i8 0 }, align 4
@imx6sl_dt_data = internal constant %struct.imx_gpc_dt_data { i32 3, i8 0, i8 1 }, align 4
@imx6sx_dt_data = internal constant %struct.imx_gpc_dt_data { i32 4, i8 0, i8 0 }, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_gpc__247_240_imx_pgc_power_domain_driver_init6, ptr @__initcall__kmod_gpc__248_554_imx_gpc_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @imx_pgc_power_domain_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_pgc_power_domain_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @imx_gpc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_gpc_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_pgc_power_domain_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @devm_regulator_get_optional(ptr noundef %2, ptr noundef nonnull @.str.1) #5
  %10 = getelementptr inbounds %struct.imx_pm_domain, ptr %4, i32 0, i32 2
  store ptr %9, ptr %10, align 4
  %11 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = ptrtoint ptr %9 to i32
  %14 = icmp eq ptr %9, inttoptr (i32 -19 to ptr)
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  store ptr null, ptr %10, align 4
  br label %16

16:                                               ; preds = %15, %8
  %17 = tail call fastcc i32 @imx_pgc_get_clocks(ptr noundef %2, ptr noundef %4) #5
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi i32 [ %17, %16 ], [ %13, %12 ]
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %18, %1
  %22 = getelementptr inbounds %struct.generic_pm_domain, ptr %4, i32 0, i32 19
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = tail call i32 %23(ptr noundef %4) #5
  br label %27

27:                                               ; preds = %25, %21
  %28 = tail call i32 @pm_genpd_init(ptr noundef %4, ptr noundef null, i1 noundef zeroext false) #5
  %29 = load ptr, ptr %5, align 8
  %30 = tail call i32 @of_genpd_add_provider_simple(ptr noundef %29, ptr noundef %4) #5
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = tail call ptr @device_link_add(ptr noundef %2, ptr noundef %34, i32 noundef 2) #5
  br label %48

36:                                               ; preds = %27
  %37 = tail call i32 @pm_genpd_remove(ptr noundef %4) #5
  %38 = getelementptr inbounds %struct.imx_pm_domain, ptr %4, i32 0, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, -1
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %42, label %48

42:                                               ; preds = %42, %36
  %43 = phi i32 [ %46, %42 ], [ %40, %36 ]
  %44 = getelementptr %struct.imx_pm_domain, ptr %4, i32 0, i32 3, i32 %43
  %45 = load ptr, ptr %44, align 4
  tail call void @clk_put(ptr noundef %45) #5
  %46 = add nsw i32 %43, -1
  %47 = icmp eq i32 %43, 0
  br i1 %47, label %48, label %42

48:                                               ; preds = %42, %36, %32, %18
  %49 = phi i32 [ 0, %32 ], [ %19, %18 ], [ %30, %36 ], [ %30, %42 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_pgc_power_domain_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  tail call void @of_genpd_del_provider(ptr noundef %5) #5
  %6 = tail call i32 @pm_genpd_remove(ptr noundef %3) #5
  %7 = getelementptr inbounds %struct.imx_pm_domain, ptr %3, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -1
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %17

11:                                               ; preds = %11, %1
  %12 = phi i32 [ %15, %11 ], [ %9, %1 ]
  %13 = getelementptr %struct.imx_pm_domain, ptr %3, i32 0, i32 3, i32 %12
  %14 = load ptr, ptr %13, align 4
  tail call void @clk_put(ptr noundef %14) #5
  %15 = add nsw i32 %12, -1
  %16 = icmp eq i32 %12, 0
  br i1 %16, label %17, label %11

17:                                               ; preds = %11, %1
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_simple(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @imx_pgc_get_clocks(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_clk_get(ptr noundef %4, i32 noundef 0) #5
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %50, label %7

7:                                                ; preds = %2
  %8 = getelementptr %struct.imx_pm_domain, ptr %1, i32 0, i32 3, i32 0
  store ptr %5, ptr %8, align 4
  %9 = load ptr, ptr %3, align 8
  %10 = tail call ptr @of_clk_get(ptr noundef %9, i32 noundef 1) #5
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %50, label %20

12:                                               ; preds = %45
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef 7) #6
  %13 = load ptr, ptr %46, align 4
  tail call void @clk_put(ptr noundef %13) #5
  %14 = load ptr, ptr %41, align 4
  tail call void @clk_put(ptr noundef %14) #5
  %15 = load ptr, ptr %36, align 4
  tail call void @clk_put(ptr noundef %15) #5
  %16 = load ptr, ptr %31, align 4
  tail call void @clk_put(ptr noundef %16) #5
  %17 = load ptr, ptr %26, align 4
  tail call void @clk_put(ptr noundef %17) #5
  %18 = load ptr, ptr %21, align 4
  tail call void @clk_put(ptr noundef %18) #5
  %19 = load ptr, ptr %8, align 4
  tail call void @clk_put(ptr noundef %19) #5
  br label %53

20:                                               ; preds = %7
  %21 = getelementptr %struct.imx_pm_domain, ptr %1, i32 0, i32 3, i32 1
  store ptr %10, ptr %21, align 4
  %22 = load ptr, ptr %3, align 8
  %23 = tail call ptr @of_clk_get(ptr noundef %22, i32 noundef 2) #5
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %50, label %25

25:                                               ; preds = %20
  %26 = getelementptr %struct.imx_pm_domain, ptr %1, i32 0, i32 3, i32 2
  store ptr %23, ptr %26, align 4
  %27 = load ptr, ptr %3, align 8
  %28 = tail call ptr @of_clk_get(ptr noundef %27, i32 noundef 3) #5
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %50, label %30

30:                                               ; preds = %25
  %31 = getelementptr %struct.imx_pm_domain, ptr %1, i32 0, i32 3, i32 3
  store ptr %28, ptr %31, align 4
  %32 = load ptr, ptr %3, align 8
  %33 = tail call ptr @of_clk_get(ptr noundef %32, i32 noundef 4) #5
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %50, label %35

35:                                               ; preds = %30
  %36 = getelementptr %struct.imx_pm_domain, ptr %1, i32 0, i32 3, i32 4
  store ptr %33, ptr %36, align 4
  %37 = load ptr, ptr %3, align 8
  %38 = tail call ptr @of_clk_get(ptr noundef %37, i32 noundef 5) #5
  %39 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %50, label %40

40:                                               ; preds = %35
  %41 = getelementptr %struct.imx_pm_domain, ptr %1, i32 0, i32 3, i32 5
  store ptr %38, ptr %41, align 4
  %42 = load ptr, ptr %3, align 8
  %43 = tail call ptr @of_clk_get(ptr noundef %42, i32 noundef 6) #5
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = getelementptr %struct.imx_pm_domain, ptr %1, i32 0, i32 3, i32 6
  store ptr %43, ptr %46, align 4
  %47 = load ptr, ptr %3, align 8
  %48 = tail call ptr @of_clk_get(ptr noundef %47, i32 noundef 7) #5
  %49 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %50, label %12

50:                                               ; preds = %45, %40, %35, %30, %25, %20, %7, %2
  %51 = phi i32 [ 0, %2 ], [ 1, %7 ], [ 2, %20 ], [ 3, %25 ], [ 4, %30 ], [ 5, %35 ], [ 6, %40 ], [ 7, %45 ]
  %52 = getelementptr inbounds %struct.imx_pm_domain, ptr %1, i32 0, i32 4
  store i32 %51, ptr %52, align 4
  br label %53

53:                                               ; preds = %50, %12
  %54 = phi i32 [ 0, %50 ], [ -22, %12 ]
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_genpd_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_gpc_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call ptr @of_match_device(ptr noundef nonnull @imx_gpc_dt_ids, ptr noundef %3) #5
  %5 = getelementptr inbounds %struct.of_device_id, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @of_get_child_by_name(ptr noundef %8, ptr noundef nonnull @.str.4) #5
  %10 = load ptr, ptr %7, align 8
  %11 = tail call ptr @of_find_property(ptr noundef %10, ptr noundef nonnull @.str.5, ptr noundef null) #5
  %12 = icmp ne ptr %11, null
  %13 = icmp ne ptr %9, null
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %15, label %141

15:                                               ; preds = %1
  %16 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = ptrtoint ptr %16 to i32
  br label %141

20:                                               ; preds = %15
  %21 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %3, ptr noundef null, ptr noundef %16, ptr noundef nonnull @imx_gpc_regmap_config, ptr noundef null, ptr noundef null) #5
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = ptrtoint ptr %21 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %24) #6
  br label %141

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.imx_gpc_dt_data, ptr %6, i32 0, i32 1
  %27 = load i8, ptr %26, align 4, !range !8
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr getelementptr inbounds ([4 x %struct.imx_pm_domain], ptr @imx_gpc_domains, i32 0, i32 1, i32 0, i32 32), align 4
  %31 = or i32 %30, 32
  store i32 %31, ptr getelementptr inbounds ([4 x %struct.imx_pm_domain], ptr @imx_gpc_domains, i32 0, i32 1, i32 0, i32 32), align 4
  br label %32

32:                                               ; preds = %29, %25
  %33 = getelementptr inbounds %struct.imx_gpc_dt_data, ptr %6, i32 0, i32 2
  %34 = load i8, ptr %33, align 1, !range !8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i32, ptr getelementptr inbounds ([4 x %struct.imx_pm_domain], ptr @imx_gpc_domains, i32 0, i32 2, i32 0, i32 32), align 4
  %38 = or i32 %37, 4
  store i32 %38, ptr getelementptr inbounds ([4 x %struct.imx_pm_domain], ptr @imx_gpc_domains, i32 0, i32 2, i32 0, i32 32), align 4
  br label %39

39:                                               ; preds = %36, %32
  br i1 %13, label %96, label %40

40:                                               ; preds = %39
  %41 = load i32, ptr %6, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %74, label %43

43:                                               ; preds = %61, %40
  %44 = phi i32 [ %62, %61 ], [ 0, %40 ]
  %45 = getelementptr [4 x %struct.imx_pm_domain], ptr @imx_gpc_domains, i32 0, i32 %44
  %46 = getelementptr [4 x %struct.imx_pm_domain], ptr @imx_gpc_domains, i32 0, i32 %44, i32 1
  store ptr %21, ptr %46, align 8
  %47 = getelementptr [4 x %struct.imx_pm_domain], ptr @imx_gpc_domains, i32 0, i32 %44, i32 7
  store i32 66, ptr %47, align 8
  %48 = icmp eq i32 %44, 1
  br i1 %48, label %49, label %61

49:                                               ; preds = %43
  %50 = tail call ptr @devm_regulator_get(ptr noundef %3, ptr noundef nonnull @.str.16) #5
  store ptr %50, ptr getelementptr inbounds ([4 x %struct.imx_pm_domain], ptr @imx_gpc_domains, i32 0, i32 1, i32 2), align 4
  %51 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = ptrtoint ptr %50 to i32
  br label %141

54:                                               ; preds = %49
  %55 = tail call fastcc i32 @imx_pgc_get_clocks(ptr noundef %3, ptr noundef %45) #5
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %141

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.generic_pm_domain, ptr %45, i32 0, i32 19
  %59 = load ptr, ptr %58, align 8
  %60 = tail call i32 %59(ptr noundef %45) #5
  br label %61

61:                                               ; preds = %57, %43
  %62 = add nuw i32 %44, 1
  %63 = icmp eq i32 %62, %41
  br i1 %63, label %64, label %43

64:                                               ; preds = %64, %61
  %65 = phi i32 [ %68, %64 ], [ 0, %61 ]
  %66 = getelementptr [4 x %struct.imx_pm_domain], ptr @imx_gpc_domains, i32 0, i32 %65
  %67 = tail call i32 @pm_genpd_init(ptr noundef %66, ptr noundef null, i1 noundef zeroext false) #5
  %68 = add nuw i32 %65, 1
  %69 = icmp eq i32 %68, %41
  br i1 %69, label %70, label %64

70:                                               ; preds = %64
  %71 = load ptr, ptr %7, align 8
  %72 = tail call i32 @of_genpd_add_provider_onecell(ptr noundef %71, ptr noundef nonnull @imx_gpc_onecell_data) #5
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %141, label %78

74:                                               ; preds = %40
  %75 = load ptr, ptr %7, align 8
  %76 = tail call i32 @of_genpd_add_provider_onecell(ptr noundef %75, ptr noundef nonnull @imx_gpc_onecell_data) #5
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %141, label %85

78:                                               ; preds = %70
  br i1 %42, label %85, label %79

79:                                               ; preds = %79, %78
  %80 = phi i32 [ %83, %79 ], [ 0, %78 ]
  %81 = getelementptr [4 x %struct.imx_pm_domain], ptr @imx_gpc_domains, i32 0, i32 %80
  %82 = tail call i32 @pm_genpd_remove(ptr noundef %81) #5
  %83 = add nuw i32 %80, 1
  %84 = icmp eq i32 %83, %41
  br i1 %84, label %85, label %79

85:                                               ; preds = %79, %78, %74
  %86 = phi i32 [ %72, %78 ], [ %76, %74 ], [ %72, %79 ]
  %87 = load i32, ptr getelementptr inbounds ([4 x %struct.imx_pm_domain], ptr @imx_gpc_domains, i32 0, i32 1, i32 4), align 4
  %88 = add i32 %87, -1
  %89 = icmp sgt i32 %88, -1
  br i1 %89, label %90, label %141

90:                                               ; preds = %90, %85
  %91 = phi i32 [ %94, %90 ], [ %88, %85 ]
  %92 = getelementptr [4 x %struct.imx_pm_domain], ptr @imx_gpc_domains, i32 0, i32 1, i32 3, i32 %91
  %93 = load ptr, ptr %92, align 4
  tail call void @clk_put(ptr noundef %93) #5
  %94 = add nsw i32 %91, -1
  %95 = icmp eq i32 %91, 0
  br i1 %95, label %141, label %90

96:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !9
  %97 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.7) #5
  %98 = icmp ugt ptr %97, inttoptr (i32 -4096 to ptr)
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = ptrtoint ptr %97 to i32
  br label %138

101:                                              ; preds = %96
  %102 = tail call i32 @clk_get_rate(ptr noundef %97) #5
  %103 = udiv i32 %102, 1000000
  %104 = tail call ptr @of_get_next_child(ptr noundef nonnull %9, ptr noundef null) #5
  %105 = icmp eq ptr %104, null
  br i1 %105, label %140, label %106

106:                                              ; preds = %135, %101
  %107 = phi ptr [ %136, %135 ], [ %104, %101 ]
  %108 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %107, ptr noundef nonnull @.str.8, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #5
  %109 = icmp sgt i32 %108, -1
  br i1 %109, label %111, label %110

110:                                              ; preds = %106
  call void @of_node_put(ptr noundef nonnull %107) #5
  br label %138

111:                                              ; preds = %106
  %112 = load i32, ptr %2, align 4
  %113 = load i32, ptr %6, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %135

115:                                              ; preds = %111
  %116 = call ptr @platform_device_alloc(ptr noundef nonnull @.str.9, i32 noundef %112) #5
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  call void @of_node_put(ptr noundef nonnull %107) #5
  br label %138

119:                                              ; preds = %115
  %120 = load i32, ptr %2, align 4
  %121 = getelementptr [4 x %struct.imx_pm_domain], ptr @imx_gpc_domains, i32 0, i32 %120
  %122 = call i32 @platform_device_add_data(ptr noundef nonnull %116, ptr noundef %121, i32 noundef 856) #5
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %119
  call void @platform_device_put(ptr noundef nonnull %116) #5
  call void @of_node_put(ptr noundef nonnull %107) #5
  br label %138

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.platform_device, ptr %116, i32 0, i32 3, i32 7
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.imx_pm_domain, ptr %127, i32 0, i32 1
  store ptr %21, ptr %128, align 8
  %129 = getelementptr inbounds %struct.imx_pm_domain, ptr %127, i32 0, i32 7
  store i32 %103, ptr %129, align 8
  %130 = getelementptr inbounds %struct.platform_device, ptr %116, i32 0, i32 3, i32 1
  store ptr %3, ptr %130, align 4
  %131 = getelementptr inbounds %struct.platform_device, ptr %116, i32 0, i32 3, i32 25
  store ptr %107, ptr %131, align 8
  %132 = call i32 @platform_device_add(ptr noundef nonnull %116) #5
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %125
  call void @platform_device_put(ptr noundef nonnull %116) #5
  call void @of_node_put(ptr noundef nonnull %107) #5
  br label %138

135:                                              ; preds = %125, %111
  %136 = call ptr @of_get_next_child(ptr noundef nonnull %9, ptr noundef nonnull %107) #5
  %137 = icmp eq ptr %136, null
  br i1 %137, label %140, label %106

138:                                              ; preds = %134, %124, %118, %110, %99
  %139 = phi i32 [ -12, %118 ], [ %132, %134 ], [ %122, %124 ], [ %108, %110 ], [ %100, %99 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  br label %141

140:                                              ; preds = %135, %101
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  br label %141

141:                                              ; preds = %140, %138, %90, %85, %74, %70, %54, %52, %23, %18, %1
  %142 = phi i32 [ %19, %18 ], [ %24, %23 ], [ 0, %1 ], [ %139, %138 ], [ %53, %52 ], [ %86, %85 ], [ 0, %70 ], [ 0, %140 ], [ 0, %74 ], [ %86, %90 ], [ %55, %54 ]
  ret i32 %142
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_gpc_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @of_get_child_by_name(ptr noundef %3, ptr noundef nonnull @.str.4) #5
  %5 = load ptr, ptr %2, align 8
  %6 = tail call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.5, ptr noundef null) #5
  %7 = icmp ne ptr %6, null
  %8 = icmp ne ptr %4, null
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %1
  br i1 %8, label %28, label %11

11:                                               ; preds = %10
  %12 = load ptr, ptr %2, align 8
  tail call void @of_genpd_del_provider(ptr noundef %12) #5
  %13 = tail call i32 @pm_genpd_remove(ptr noundef getelementptr inbounds ([4 x %struct.imx_pm_domain], ptr @imx_gpc_domains, i32 0, i32 1)) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %11
  %16 = load i32, ptr getelementptr inbounds ([4 x %struct.imx_pm_domain], ptr @imx_gpc_domains, i32 0, i32 1, i32 4), align 4
  %17 = add i32 %16, -1
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %25

19:                                               ; preds = %19, %15
  %20 = phi i32 [ %23, %19 ], [ %17, %15 ]
  %21 = getelementptr [4 x %struct.imx_pm_domain], ptr @imx_gpc_domains, i32 0, i32 1, i32 3, i32 %20
  %22 = load ptr, ptr %21, align 4
  tail call void @clk_put(ptr noundef %22) #5
  %23 = add nsw i32 %20, -1
  %24 = icmp eq i32 %20, 0
  br i1 %24, label %25, label %19

25:                                               ; preds = %19, %15
  %26 = tail call i32 @pm_genpd_remove(ptr noundef nonnull @imx_gpc_domains) #5
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %10
  br label %29

29:                                               ; preds = %28, %25, %11, %1
  %30 = phi i32 [ 0, %28 ], [ 0, %1 ], [ %13, %11 ], [ %26, %25 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx6_pm_domain_power_off(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !9
  %3 = getelementptr inbounds %struct.imx_pm_domain, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.imx_pm_domain, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = add i32 %6, 8
  %8 = call i32 @regmap_read(ptr noundef %4, i32 noundef %7, ptr noundef nonnull %2) #5
  %9 = load i32, ptr %2, align 4
  %10 = load ptr, ptr %3, align 8
  %11 = load i32, ptr %5, align 8
  %12 = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef %11, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %13 = getelementptr inbounds %struct.imx_pm_domain, ptr %0, i32 0, i32 6
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  %16 = shl nuw i32 1, %15
  store i32 %16, ptr %2, align 4
  %17 = load ptr, ptr %3, align 8
  %18 = call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 0, i32 noundef %16, i32 noundef %16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %19 = and i32 %9, 63
  %20 = add nsw i32 %19, -1
  %21 = lshr i32 %9, 8
  %22 = and i32 %21, 63
  %23 = add nsw i32 %20, %22
  %24 = getelementptr inbounds %struct.imx_pm_domain, ptr %0, i32 0, i32 7
  %25 = load i32, ptr %24, align 8
  %26 = add i32 %23, %25
  %27 = udiv i32 %26, %25
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %28(i32 noundef %27) #5
  %29 = getelementptr inbounds %struct.imx_pm_domain, ptr %0, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %1
  %33 = call i32 @regulator_disable(ptr noundef nonnull %30) #5
  br label %34

34:                                               ; preds = %32, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx6_pm_domain_power_on(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !9
  %3 = getelementptr inbounds %struct.imx_pm_domain, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @regulator_enable(ptr noundef nonnull %4) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.imx6_pm_domain_power_on, i32 noundef %7) #6
  br label %80

11:                                               ; preds = %6, %1
  %12 = getelementptr inbounds %struct.imx_pm_domain, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %25, %11
  %16 = phi i32 [ %26, %25 ], [ 0, %11 ]
  %17 = getelementptr %struct.imx_pm_domain, ptr %0, i32 0, i32 3, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @clk_prepare(ptr noundef %18) #5
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = tail call i32 @clk_enable(ptr noundef %18) #5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @clk_unprepare(ptr noundef %18) #5
  br label %25

25:                                               ; preds = %24, %21, %15
  %26 = add nuw nsw i32 %16, 1
  %27 = load i32, ptr %12, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %15, label %29

29:                                               ; preds = %25, %11
  %30 = getelementptr inbounds %struct.imx_pm_domain, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.imx_pm_domain, ptr %0, i32 0, i32 5
  %33 = load i32, ptr %32, align 8
  %34 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef %33, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %35 = getelementptr inbounds %struct.imx_pm_domain, ptr %0, i32 0, i32 6
  %36 = load i8, ptr %35, align 4
  %37 = sext i8 %36 to i32
  %38 = add nsw i32 %37, 1
  %39 = shl nuw i32 1, %38
  %40 = load ptr, ptr %30, align 8
  %41 = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 0, i32 noundef %39, i32 noundef %39, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %42 = tail call i64 @ktime_get() #5
  %43 = add i64 %42, 50000
  %44 = load ptr, ptr %30, align 8
  %45 = call i32 @regmap_read(ptr noundef %44, i32 noundef 0, ptr noundef nonnull %2) #5
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %54, %29
  %48 = load i32, ptr %2, align 4
  %49 = and i32 %48, %39
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %70, label %51

51:                                               ; preds = %47
  %52 = call i64 @ktime_get() #5
  %53 = icmp sgt i64 %52, %43
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #5
  %55 = load ptr, ptr %30, align 8
  %56 = call i32 @regmap_read(ptr noundef %55, i32 noundef 0, ptr noundef nonnull %2) #5
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %47, label %66

58:                                               ; preds = %51
  %59 = load ptr, ptr %30, align 8
  %60 = call i32 @regmap_read(ptr noundef %59, i32 noundef 0, ptr noundef nonnull %2) #5
  %61 = icmp eq i32 %60, 0
  %62 = load i32, ptr %2, align 4
  %63 = and i32 %62, %39
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %61, i1 %64, i1 false
  br i1 %65, label %70, label %66

66:                                               ; preds = %58, %54, %29
  %67 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 10
  %68 = load ptr, ptr %67, align 4
  %69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %68) #6
  br label %70

70:                                               ; preds = %66, %58, %47
  call void @usleep_range_state(i32 noundef 5, i32 noundef 10, i32 noundef 2) #5
  %71 = load i32, ptr %12, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %73, %70
  %74 = phi i32 [ %77, %73 ], [ 0, %70 ]
  %75 = getelementptr %struct.imx_pm_domain, ptr %0, i32 0, i32 3, i32 %74
  %76 = load ptr, ptr %75, align 4
  call void @clk_disable(ptr noundef %76) #5
  call void @clk_unprepare(ptr noundef %76) #5
  %77 = add nuw nsw i32 %74, 1
  %78 = load i32, ptr %12, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %73, label %80

80:                                               ; preds = %73, %70, %9
  %81 = phi i32 [ %7, %9 ], [ 0, %70 ], [ 0, %73 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret i32 %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_onecell(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
