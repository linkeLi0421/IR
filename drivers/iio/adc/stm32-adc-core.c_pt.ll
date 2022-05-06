; ModuleID = '/llk/IR/drivers/iio/adc/stm32-adc-core.c_pt.bc'
source_filename = "../drivers/iio/adc/stm32-adc-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.stm32_adc_priv_cfg = type { ptr, ptr, i32, i32, i32 }
%struct.stm32_adc_common_regs = type { i32, i32, [3 x i32], [3 x i32], i32, i32 }
%struct.stm32h7_adc_ck_spec = type { i32, i32, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.stm32_adc_priv = type { [3 x i32], ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.stm32_adc_common, i32, ptr }
%struct.stm32_adc_common = type { ptr, i32, i32, i32, %struct.spinlock }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@stm32_adc_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32f4-adc-core\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32f4_adc_priv_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32h7-adc-core\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32h7_adc_priv_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32mp1-adc-core\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32mp1_adc_priv_cfg }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author250 = internal constant [48 x i8] c"author=Fabrice Gasnier <fabrice.gasnier@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [53 x i8] c"description=STMicroelectronics STM32 ADC core driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias253 = internal constant [30 x i8] c"alias=platform:stm32-adc-core\00", section ".modinfo", align 1
@stm32f4_adc_priv_cfg = internal constant %struct.stm32_adc_priv_cfg { ptr @stm32f4_adc_common_regs, ptr @stm32f4_adc_clk_sel, i32 36000000, i32 0, i32 1 }, align 4
@stm32h7_adc_priv_cfg = internal constant %struct.stm32_adc_priv_cfg { ptr @stm32h7_adc_common_regs, ptr @stm32h7_adc_clk_sel, i32 36000000, i32 1, i32 1 }, align 4
@stm32mp1_adc_priv_cfg = internal constant %struct.stm32_adc_priv_cfg { ptr @stm32h7_adc_common_regs, ptr @stm32h7_adc_clk_sel, i32 40000000, i32 3, i32 2 }, align 4
@stm32f4_adc_common_regs = internal constant %struct.stm32_adc_common_regs { i32 768, i32 772, [3 x i32] [i32 2, i32 512, i32 131072], [3 x i32] [i32 32, i32 8192, i32 2097152], i32 4, i32 32 }, align 4
@.str = private unnamed_addr constant [22 x i8] c"No 'adc' clock found\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid clock rate: 0\0A\00", align 1
@stm32f4_pclk_div = internal unnamed_addr constant [4 x i32] [i32 2, i32 4, i32 6, i32 8], align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"adc clk selection failed\0A\00", align 1
@stm32h7_adc_common_regs = internal constant %struct.stm32_adc_common_regs { i32 768, i32 776, [3 x i32] [i32 4, i32 262144, i32 0], [3 x i32] [i32 16, i32 1048576, i32 0], i32 4, i32 4 }, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"No 'bus' clock found\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Invalid adc clock rate: 0\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"adc clock duty: %d\0A\00", align 1
@stm32h7_adc_ckmodes_spec = internal unnamed_addr constant [15 x %struct.stm32h7_adc_ck_spec] [%struct.stm32h7_adc_ck_spec { i32 0, i32 0, i32 1 }, %struct.stm32h7_adc_ck_spec { i32 0, i32 1, i32 2 }, %struct.stm32h7_adc_ck_spec { i32 0, i32 2, i32 4 }, %struct.stm32h7_adc_ck_spec { i32 0, i32 3, i32 6 }, %struct.stm32h7_adc_ck_spec { i32 0, i32 4, i32 8 }, %struct.stm32h7_adc_ck_spec { i32 0, i32 5, i32 10 }, %struct.stm32h7_adc_ck_spec { i32 0, i32 6, i32 12 }, %struct.stm32h7_adc_ck_spec { i32 0, i32 7, i32 16 }, %struct.stm32h7_adc_ck_spec { i32 0, i32 8, i32 32 }, %struct.stm32h7_adc_ck_spec { i32 0, i32 9, i32 64 }, %struct.stm32h7_adc_ck_spec { i32 0, i32 10, i32 128 }, %struct.stm32h7_adc_ck_spec { i32 0, i32 11, i32 256 }, %struct.stm32h7_adc_ck_spec { i32 1, i32 0, i32 1 }, %struct.stm32h7_adc_ck_spec { i32 2, i32 0, i32 2 }, %struct.stm32h7_adc_ck_spec { i32 3, i32 0, i32 4 }], align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"Invalid bus clock rate: 0\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"bus clock duty: %d\0A\00", align 1
@stm32_adc_driver = internal global %struct.platform_driver { ptr @stm32_adc_probe, ptr @stm32_adc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.8, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_adc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_adc_core_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.8 = private unnamed_addr constant [15 x i8] c"stm32-adc-core\00", align 1
@stm32_adc_core_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_adc_core_runtime_suspend, ptr @stm32_adc_core_runtime_resume, ptr @stm32_adc_core_runtime_idle }, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"vdda\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"vdda get failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"vref get failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"adc\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"Can't get 'adc' clock\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Can't get 'bus' clock\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"vref get voltage failed, %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"st,max-clk-rate-hz\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"failed to populate DT children\0A\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"st,syscfg\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"Can't probe syscfg\0A\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"booster-supply\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"booster\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"can't get booster\0A\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"vdd-supply\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"can't get vdd\0A\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"vdd enable failed %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"vdd get voltage failed %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"vdda enable failed %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"vdda get voltage failed, %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"vref enable failed\0A\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"bus clk enable failed\0A\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"adc clk enable failed\0A\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"vdd select failed, %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [26 x i8] c"booster enable failed %d\0A\00", align 1
@stm32_adc_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @stm32_adc_domain_map, ptr @stm32_adc_domain_unmap, ptr @irq_domain_xlate_onecell, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.37 = private unnamed_addr constant [26 x i8] c"Failed to add irq domain\0A\00", align 1
@dummy_irq_chip = external dso_local global %struct.irq_chip, align 4
@stm32_adc_offset = internal unnamed_addr constant [3 x i32] [i32 0, i32 256, i32 512], align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias253, ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license252], section "llvm.metadata"

@__mod_of__stm32_adc_of_match_device_table = dso_local alias [4 x %struct.of_device_id], ptr @stm32_adc_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_adc_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_adc_driver) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32f4_adc_clk_sel(ptr noundef %0, ptr nocapture noundef %1) #1 {
  %3 = getelementptr inbounds %struct.stm32_adc_priv, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str) #7
  br label %44

8:                                                ; preds = %2
  %9 = tail call i32 @clk_get_rate(ptr noundef nonnull %4) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.stm32_adc_priv, ptr %1, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %9, 1
  %15 = icmp ugt i32 %14, %13
  br i1 %15, label %18, label %29

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.1) #7
  br label %44

18:                                               ; preds = %11
  %19 = lshr i32 %9, 2
  %20 = icmp ugt i32 %19, %13
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = udiv i32 %9, 6
  %23 = icmp ugt i32 %22, %13
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = lshr i32 %9, 3
  %26 = icmp ugt i32 %25, %13
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.2) #7
  br label %44

29:                                               ; preds = %24, %21, %18, %11
  %30 = phi i32 [ 0, %11 ], [ 1, %18 ], [ 2, %21 ], [ 3, %24 ]
  %31 = getelementptr [4 x i32], ptr @stm32f4_pclk_div, i32 0, i32 %30
  %32 = load i32, ptr %31, align 4
  %33 = udiv i32 %9, %32
  %34 = getelementptr inbounds %struct.stm32_adc_priv, ptr %1, i32 0, i32 12
  %35 = getelementptr inbounds %struct.stm32_adc_priv, ptr %1, i32 0, i32 12, i32 2
  store i32 %33, ptr %35, align 4
  %36 = load ptr, ptr %34, align 4
  %37 = getelementptr i8, ptr %36, i32 772
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #6, !srcloc !8
  %39 = and i32 %38, -196609
  %40 = shl nuw nsw i32 %30, 16
  %41 = or i32 %39, %40
  %42 = load ptr, ptr %34, align 4
  %43 = getelementptr i8, ptr %42, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #6, !srcloc !9
  br label %44

44:                                               ; preds = %29, %27, %16, %6
  %45 = phi i32 [ -22, %27 ], [ 0, %29 ], [ -22, %16 ], [ -2, %6 ]
  ret i32 %45
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32h7_adc_clk_sel(ptr noundef %0, ptr nocapture noundef %1) #1 {
  %3 = getelementptr inbounds %struct.stm32_adc_priv, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.3) #7
  br label %98

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.stm32_adc_priv, ptr %1, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %45, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @clk_get_rate(ptr noundef nonnull %10) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.4) #7
  br label %98

17:                                               ; preds = %12
  %18 = load ptr, ptr %9, align 4
  %19 = tail call i32 @clk_get_scaled_duty_cycle(ptr noundef %18, i32 noundef 100) #6
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.5, i32 noundef %19) #7
  br label %23

23:                                               ; preds = %21, %17
  %24 = add i32 %19, -52
  %25 = icmp ult i32 %24, -3
  %26 = getelementptr inbounds %struct.stm32_adc_priv, ptr %1, i32 0, i32 4
  br label %27

27:                                               ; preds = %40, %23
  %28 = phi i32 [ 0, %23 ], [ %41, %40 ]
  %29 = getelementptr [15 x %struct.stm32h7_adc_ck_spec], ptr @stm32h7_adc_ckmodes_spec, i32 0, i32 %28
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr [15 x %struct.stm32h7_adc_ck_spec], ptr @stm32h7_adc_ckmodes_spec, i32 0, i32 %28, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %30, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  switch i32 %28, label %36 [
    i32 12, label %35
    i32 0, label %35
  ]

35:                                               ; preds = %34, %34
  br i1 %25, label %40, label %36

36:                                               ; preds = %35, %34
  %37 = udiv i32 %13, %32
  %38 = load i32, ptr %26, align 4
  %39 = icmp ugt i32 %37, %38
  br i1 %39, label %40, label %81

40:                                               ; preds = %36, %35, %27
  %41 = add nuw nsw i32 %28, 1
  %42 = icmp eq i32 %41, 15
  br i1 %42, label %43, label %27

43:                                               ; preds = %40
  %44 = load ptr, ptr %3, align 4
  br label %45

45:                                               ; preds = %43, %8
  %46 = phi ptr [ %44, %43 ], [ %4, %8 ]
  %47 = tail call i32 @clk_get_rate(ptr noundef %46) #6
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.6) #7
  br label %98

51:                                               ; preds = %45
  %52 = load ptr, ptr %3, align 4
  %53 = tail call i32 @clk_get_scaled_duty_cycle(ptr noundef %52, i32 noundef 100) #6
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %56, ptr noundef nonnull @.str.7, i32 noundef %53) #7
  br label %57

57:                                               ; preds = %55, %51
  %58 = add i32 %53, -52
  %59 = icmp ult i32 %58, -3
  %60 = getelementptr inbounds %struct.stm32_adc_priv, ptr %1, i32 0, i32 4
  br label %61

61:                                               ; preds = %74, %57
  %62 = phi i32 [ 0, %57 ], [ %75, %74 ]
  %63 = getelementptr [15 x %struct.stm32h7_adc_ck_spec], ptr @stm32h7_adc_ckmodes_spec, i32 0, i32 %62
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr [15 x %struct.stm32h7_adc_ck_spec], ptr @stm32h7_adc_ckmodes_spec, i32 0, i32 %62, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %64, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %61
  switch i32 %62, label %70 [
    i32 12, label %69
    i32 0, label %69
  ]

69:                                               ; preds = %68, %68
  br i1 %59, label %74, label %70

70:                                               ; preds = %69, %68
  %71 = udiv i32 %47, %66
  %72 = load i32, ptr %60, align 4
  %73 = icmp ugt i32 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %70, %69, %61
  %75 = add nuw nsw i32 %62, 1
  %76 = icmp eq i32 %75, 15
  br i1 %76, label %77, label %61

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.2) #7
  br label %98

79:                                               ; preds = %70
  %80 = shl i32 %64, 16
  br label %81

81:                                               ; preds = %79, %36
  %82 = phi i32 [ %71, %79 ], [ %37, %36 ]
  %83 = phi i32 [ %62, %79 ], [ %28, %36 ]
  %84 = phi i32 [ %80, %79 ], [ 0, %36 ]
  %85 = getelementptr [15 x %struct.stm32h7_adc_ck_spec], ptr @stm32h7_adc_ckmodes_spec, i32 0, i32 %83, i32 1
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr inbounds %struct.stm32_adc_priv, ptr %1, i32 0, i32 12
  %88 = getelementptr inbounds %struct.stm32_adc_priv, ptr %1, i32 0, i32 12, i32 2
  store i32 %82, ptr %88, align 4
  %89 = load ptr, ptr %87, align 4
  %90 = getelementptr i8, ptr %89, i32 776
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #6, !srcloc !8
  %92 = and i32 %91, -4128769
  %93 = shl i32 %86, 18
  %94 = or i32 %84, %93
  %95 = or i32 %94, %92
  %96 = load ptr, ptr %87, align 4
  %97 = getelementptr i8, ptr %96, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %95) #6, !srcloc !9
  br label %98

98:                                               ; preds = %81, %77, %49, %15, %6
  %99 = phi i32 [ 0, %81 ], [ -22, %77 ], [ -22, %49 ], [ -22, %15 ], [ -2, %6 ]
  ret i32 %99
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_scaled_duty_cycle(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_adc_probe(ptr noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %115, label %7

7:                                                ; preds = %1
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 84, i32 noundef 3520) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %115, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.stm32_adc_priv, ptr %8, i32 0, i32 12
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %11, ptr %12, align 8
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 6
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.device_driver, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = tail call ptr @of_match_device(ptr noundef %16, ptr noundef %3) #6
  %18 = getelementptr inbounds %struct.of_device_id, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.stm32_adc_priv, ptr %8, i32 0, i32 11
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.stm32_adc_priv, ptr %8, i32 0, i32 12, i32 4
  store i32 0, ptr %21, align 4
  %22 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #6
  %23 = tail call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef %22) #6
  store ptr %23, ptr %11, align 4
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %27

25:                                               ; preds = %10
  %26 = ptrtoint ptr %23 to i32
  br label %115

27:                                               ; preds = %10
  %28 = load i32, ptr %22, align 4
  %29 = getelementptr inbounds %struct.stm32_adc_priv, ptr %8, i32 0, i32 12, i32 1
  store i32 %28, ptr %29, align 4
  %30 = tail call ptr @devm_regulator_get(ptr noundef %3, ptr noundef nonnull @.str.9) #6
  %31 = getelementptr inbounds %struct.stm32_adc_priv, ptr %8, i32 0, i32 7
  store ptr %30, ptr %31, align 4
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = ptrtoint ptr %30 to i32
  %35 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %3, i32 noundef %34, ptr noundef nonnull @.str.10) #6
  br label %115

36:                                               ; preds = %27
  %37 = tail call ptr @devm_regulator_get(ptr noundef %3, ptr noundef nonnull @.str.11) #6
  %38 = getelementptr inbounds %struct.stm32_adc_priv, ptr %8, i32 0, i32 8
  store ptr %37, ptr %38, align 4
  %39 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = ptrtoint ptr %37 to i32
  %42 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %3, i32 noundef %41, ptr noundef nonnull @.str.12) #6
  br label %115

43:                                               ; preds = %36
  %44 = tail call ptr @devm_clk_get_optional(ptr noundef %3, ptr noundef nonnull @.str.13) #6
  %45 = getelementptr inbounds %struct.stm32_adc_priv, ptr %8, i32 0, i32 2
  store ptr %44, ptr %45, align 4
  %46 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = ptrtoint ptr %44 to i32
  %49 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %3, i32 noundef %48, ptr noundef nonnull @.str.14) #6
  br label %115

50:                                               ; preds = %43
  %51 = tail call ptr @devm_clk_get_optional(ptr noundef %3, ptr noundef nonnull @.str.15) #6
  %52 = getelementptr inbounds %struct.stm32_adc_priv, ptr %8, i32 0, i32 3
  store ptr %51, ptr %52, align 4
  %53 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = ptrtoint ptr %51 to i32
  %56 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %3, i32 noundef %55, ptr noundef nonnull @.str.16) #6
  br label %115

57:                                               ; preds = %50
  %58 = tail call fastcc i32 @stm32_adc_core_switches_probe(ptr noundef %3, ptr noundef nonnull %8)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %115

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %61) #6, !srcloc !11
  %62 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %61, ptr %61, i32 1, ptr elementtype(i32) %61) #6, !srcloc !12
  %63 = tail call i32 @__pm_runtime_set_status(ptr noundef %3, i32 noundef 0) #6
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %3, i32 noundef 2000) #6
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %3, i1 noundef zeroext true) #6
  tail call void @pm_runtime_enable(ptr noundef %3) #6
  %64 = tail call fastcc i32 @stm32_adc_core_hw_start(ptr noundef %3)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %108

66:                                               ; preds = %60
  %67 = load ptr, ptr %38, align 4
  %68 = tail call i32 @regulator_get_voltage(ptr noundef %67) #6
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.17, i32 noundef %68) #7
  br label %106

71:                                               ; preds = %66
  %72 = udiv i32 %68, 1000
  %73 = getelementptr inbounds %struct.stm32_adc_priv, ptr %8, i32 0, i32 12, i32 3
  store i32 %72, ptr %73, align 4
  %74 = load ptr, ptr %4, align 8
  %75 = call i32 @of_property_read_variable_u32_array(ptr noundef %74, ptr noundef nonnull @.str.18, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #6
  %76 = icmp sgt i32 %75, -1
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load i32, ptr %2, align 4
  %79 = load ptr, ptr %20, align 4
  %80 = getelementptr inbounds %struct.stm32_adc_priv_cfg, ptr %79, i32 0, i32 2
  %81 = load i32, ptr %80, align 4
  %82 = call i32 @llvm.umin.i32(i32 %78, i32 %81)
  br label %87

83:                                               ; preds = %71
  %84 = load ptr, ptr %20, align 4
  %85 = getelementptr inbounds %struct.stm32_adc_priv_cfg, ptr %84, i32 0, i32 2
  %86 = load i32, ptr %85, align 4
  br label %87

87:                                               ; preds = %83, %77
  %88 = phi ptr [ %79, %77 ], [ %84, %83 ]
  %89 = phi i32 [ %82, %77 ], [ %86, %83 ]
  %90 = getelementptr inbounds %struct.stm32_adc_priv, ptr %8, i32 0, i32 4
  store i32 %89, ptr %90, align 4
  %91 = getelementptr inbounds %struct.stm32_adc_priv_cfg, ptr %88, i32 0, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = call i32 %92(ptr noundef %0, ptr noundef nonnull %8) #6
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %106, label %95

95:                                               ; preds = %87
  %96 = call fastcc i32 @stm32_adc_irq_probe(ptr noundef %0, ptr noundef nonnull %8)
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %95
  %99 = call i32 @of_platform_populate(ptr noundef nonnull %5, ptr noundef null, ptr noundef null, ptr noundef %3) #6
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.19) #7
  call fastcc void @stm32_adc_irq_remove(ptr noundef nonnull %8)
  br label %106

102:                                              ; preds = %98
  %103 = call i64 @ktime_get_mono_fast_ns() #6
  %104 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 22
  store volatile i64 %103, ptr %104, align 8
  %105 = call i32 @__pm_runtime_suspend(ptr noundef %3, i32 noundef 13) #6
  br label %115

106:                                              ; preds = %101, %95, %87, %70
  %107 = phi i32 [ %68, %70 ], [ %93, %87 ], [ %96, %95 ], [ %99, %101 ]
  call fastcc void @stm32_adc_core_hw_stop(ptr noundef %3)
  br label %108

108:                                              ; preds = %106, %60
  %109 = phi i32 [ %64, %60 ], [ %107, %106 ]
  call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #6
  %110 = call i32 @__pm_runtime_set_status(ptr noundef %3, i32 noundef 2) #6
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %61) #6, !srcloc !11
  %111 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %61, ptr %61, i32 0, i32 -1, ptr elementtype(i32) %61) #6, !srcloc !14
  %112 = extractvalue { i32, i32, i32 } %111, 0
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %108
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !15
  br label %115

115:                                              ; preds = %114, %108, %102, %57, %54, %47, %40, %33, %25, %7, %1
  %116 = phi i32 [ %26, %25 ], [ %35, %33 ], [ %42, %40 ], [ %49, %47 ], [ %56, %54 ], [ 0, %102 ], [ -19, %1 ], [ -12, %7 ], [ %58, %57 ], [ %109, %108 ], [ %109, %114 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %116
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_adc_remove(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -56
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #6
  tail call void @of_platform_depopulate(ptr noundef %5) #6
  tail call fastcc void @stm32_adc_irq_remove(ptr noundef %4)
  tail call fastcc void @stm32_adc_core_hw_stop(ptr noundef %5)
  tail call void @__pm_runtime_disable(ptr noundef %5, i1 noundef zeroext true) #6
  %7 = tail call i32 @__pm_runtime_set_status(ptr noundef %5, i32 noundef 2) #6
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #6, !srcloc !11
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 0, i32 -1, ptr elementtype(i32) %8) #6, !srcloc !14
  %10 = extractvalue { i32, i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !15
  br label %13

13:                                               ; preds = %12, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_adc_core_switches_probe(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %4, ptr noundef nonnull @.str.20) #6
  %6 = getelementptr inbounds %struct.stm32_adc_priv, ptr %1, i32 0, i32 14
  store ptr %5, ptr %6, align 4
  %7 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = icmp eq ptr %5, inttoptr (i32 -19 to ptr)
  br i1 %9, label %13, label %10

10:                                               ; preds = %8
  %11 = ptrtoint ptr %5 to i32
  %12 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %0, i32 noundef %11, ptr noundef nonnull @.str.21) #6
  br label %72

13:                                               ; preds = %8
  store ptr null, ptr %6, align 4
  br label %14

14:                                               ; preds = %13, %2
  %15 = getelementptr inbounds %struct.stm32_adc_priv, ptr %1, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.stm32_adc_priv_cfg, ptr %16, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %14
  %22 = tail call ptr @of_find_property(ptr noundef %4, ptr noundef nonnull @.str.22, ptr noundef null) #6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %21
  %25 = tail call ptr @devm_regulator_get_optional(ptr noundef %0, ptr noundef nonnull @.str.23) #6
  %26 = getelementptr inbounds %struct.stm32_adc_priv, ptr %1, i32 0, i32 5
  store ptr %25, ptr %26, align 4
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = icmp eq ptr %25, inttoptr (i32 -19 to ptr)
  br i1 %29, label %33, label %30

30:                                               ; preds = %28
  %31 = ptrtoint ptr %25 to i32
  %32 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %0, i32 noundef %31, ptr noundef nonnull @.str.24) #6
  br label %72

33:                                               ; preds = %28
  store ptr null, ptr %26, align 4
  br label %34

34:                                               ; preds = %33, %24, %21, %14
  %35 = load ptr, ptr %15, align 4
  %36 = getelementptr inbounds %struct.stm32_adc_priv_cfg, ptr %35, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %34
  %41 = tail call ptr @of_find_property(ptr noundef %4, ptr noundef nonnull @.str.25, ptr noundef null) #6
  %42 = icmp eq ptr %41, null
  br i1 %42, label %53, label %43

43:                                               ; preds = %40
  %44 = tail call ptr @devm_regulator_get_optional(ptr noundef %0, ptr noundef nonnull @.str.26) #6
  %45 = getelementptr inbounds %struct.stm32_adc_priv, ptr %1, i32 0, i32 6
  store ptr %44, ptr %45, align 4
  %46 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = icmp eq ptr %44, inttoptr (i32 -19 to ptr)
  br i1 %48, label %52, label %49

49:                                               ; preds = %47
  %50 = ptrtoint ptr %44 to i32
  %51 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %0, i32 noundef %50, ptr noundef nonnull @.str.27) #6
  br label %72

52:                                               ; preds = %47
  store ptr null, ptr %45, align 4
  br label %53

53:                                               ; preds = %52, %43, %40, %34
  %54 = getelementptr inbounds %struct.stm32_adc_priv, ptr %1, i32 0, i32 6
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %72, label %57

57:                                               ; preds = %53
  %58 = tail call i32 @regulator_enable(ptr noundef nonnull %55) #6
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %58) #7
  br label %72

61:                                               ; preds = %57
  %62 = load ptr, ptr %54, align 4
  %63 = tail call i32 @regulator_get_voltage(ptr noundef %62) #6
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.29, i32 noundef %63) #7
  %66 = load ptr, ptr %54, align 4
  %67 = tail call i32 @regulator_disable(ptr noundef %66) #6
  br label %72

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.stm32_adc_priv, ptr %1, i32 0, i32 9
  store i32 %63, ptr %69, align 4
  %70 = load ptr, ptr %54, align 4
  %71 = tail call i32 @regulator_disable(ptr noundef %70) #6
  br label %72

72:                                               ; preds = %68, %65, %60, %53, %49, %30, %10
  %73 = phi i32 [ %12, %10 ], [ %32, %30 ], [ %51, %49 ], [ %58, %60 ], [ %63, %65 ], [ 0, %68 ], [ 0, %53 ]
  ret i32 %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_adc_core_hw_start(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -20
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regulator_enable(ptr noundef %5) #6
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.30, i32 noundef %6) #7
  br label %120

9:                                                ; preds = %1
  %10 = load ptr, ptr %4, align 4
  %11 = tail call i32 @regulator_get_voltage(ptr noundef %10) #6
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef %11) #7
  br label %116

14:                                               ; preds = %9
  %15 = getelementptr i8, ptr %3, i32 -8
  store i32 %11, ptr %15, align 4
  %16 = icmp ult i32 %11, 2700000
  br i1 %16, label %17, label %46

17:                                               ; preds = %14
  %18 = getelementptr i8, ptr %3, i32 24
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %38, label %21

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %3, i32 -12
  %23 = load i32, ptr %22, align 4
  %24 = icmp sgt i32 %23, 2700000
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %3, i32 -24
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @regulator_enable(ptr noundef %27) #6
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %28) #7
  br label %116

31:                                               ; preds = %25
  %32 = load ptr, ptr %18, align 4
  %33 = tail call i32 @regmap_write(ptr noundef %32, i32 noundef 4, i32 noundef 512) #6
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load ptr, ptr %26, align 4
  %37 = tail call i32 @regulator_disable(ptr noundef %36) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.35, i32 noundef %33) #7
  br label %116

38:                                               ; preds = %21, %17
  %39 = getelementptr i8, ptr %3, i32 -28
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = tail call i32 @regulator_enable(ptr noundef nonnull %40) #6
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef %43) #7
  br label %116

46:                                               ; preds = %42, %38, %31, %14
  %47 = getelementptr i8, ptr %3, i32 -16
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 @regulator_enable(ptr noundef %48) #6
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.32) #7
  br label %93

52:                                               ; preds = %46
  %53 = getelementptr i8, ptr %3, i32 -36
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 @clk_prepare(ptr noundef %54) #6
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = tail call i32 @clk_enable(ptr noundef %54) #6
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  tail call void @clk_unprepare(ptr noundef %54) #6
  br label %61

61:                                               ; preds = %60, %52
  %62 = phi i32 [ %55, %52 ], [ %58, %60 ]
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.33) #7
  br label %89

65:                                               ; preds = %61, %57
  %66 = getelementptr i8, ptr %3, i32 -40
  %67 = load ptr, ptr %66, align 4
  %68 = tail call i32 @clk_prepare(ptr noundef %67) #6
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = tail call i32 @clk_enable(ptr noundef %67) #6
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %70
  tail call void @clk_unprepare(ptr noundef %67) #6
  br label %74

74:                                               ; preds = %73, %65
  %75 = phi i32 [ %68, %65 ], [ %71, %73 ]
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.34) #7
  %78 = load ptr, ptr %53, align 4
  tail call void @clk_disable(ptr noundef %78) #6
  tail call void @clk_unprepare(ptr noundef %78) #6
  br label %89

79:                                               ; preds = %74, %70
  %80 = getelementptr i8, ptr %3, i32 20
  %81 = load i32, ptr %80, align 4
  %82 = load ptr, ptr %3, align 4
  %83 = getelementptr i8, ptr %3, i32 -4
  %84 = load ptr, ptr %83, align 4
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.stm32_adc_common_regs, ptr %85, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr i8, ptr %82, i32 %87
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %81) #6, !srcloc !9
  br label %120

89:                                               ; preds = %77, %64
  %90 = phi i32 [ %62, %64 ], [ %75, %77 ]
  %91 = load ptr, ptr %47, align 4
  %92 = tail call i32 @regulator_disable(ptr noundef %91) #6
  br label %93

93:                                               ; preds = %89, %51
  %94 = phi i32 [ %49, %51 ], [ %90, %89 ]
  %95 = load i32, ptr %15, align 4
  %96 = icmp slt i32 %95, 2700000
  br i1 %96, label %97, label %116

97:                                               ; preds = %93
  %98 = getelementptr i8, ptr %3, i32 24
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %110, label %101

101:                                              ; preds = %97
  %102 = getelementptr i8, ptr %3, i32 -12
  %103 = load i32, ptr %102, align 4
  %104 = icmp sgt i32 %103, 2700000
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = tail call i32 @regmap_write(ptr noundef nonnull %99, i32 noundef 68, i32 noundef 512) #6
  %107 = getelementptr i8, ptr %3, i32 -24
  %108 = load ptr, ptr %107, align 4
  %109 = tail call i32 @regulator_disable(ptr noundef %108) #6
  br label %116

110:                                              ; preds = %101, %97
  %111 = getelementptr i8, ptr %3, i32 -28
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %110
  %115 = tail call i32 @regulator_disable(ptr noundef nonnull %112) #6
  br label %116

116:                                              ; preds = %114, %110, %105, %93, %45, %35, %30, %13
  %117 = phi i32 [ %11, %13 ], [ %28, %30 ], [ %33, %35 ], [ %43, %45 ], [ %94, %93 ], [ %94, %105 ], [ %94, %110 ], [ %94, %114 ]
  %118 = load ptr, ptr %4, align 4
  %119 = tail call i32 @regulator_disable(ptr noundef %118) #6
  br label %120

120:                                              ; preds = %116, %79, %8
  %121 = phi i32 [ %6, %8 ], [ %117, %116 ], [ 0, %79 ]
  ret i32 %121
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_adc_irq_probe(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.stm32_adc_priv, ptr %1, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stm32_adc_priv_cfg, ptr %7, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %22, label %17

11:                                               ; preds = %17
  %12 = add nuw i32 %18, 1
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr inbounds %struct.stm32_adc_priv_cfg, ptr %13, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %11, %2
  %18 = phi i32 [ %12, %11 ], [ 0, %2 ]
  %19 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef %18) #6
  %20 = getelementptr [3 x i32], ptr %1, i32 0, i32 %18
  store i32 %19, ptr %20, align 4
  %21 = icmp slt i32 %19, 0
  br i1 %21, label %46, label %11

22:                                               ; preds = %11, %2
  %23 = icmp eq ptr %5, null
  %24 = getelementptr inbounds %struct.device_node, ptr %5, i32 0, i32 3
  %25 = select i1 %23, ptr null, ptr %24
  %26 = tail call ptr @irq_domain_create_simple(ptr noundef %25, i32 noundef 3, i32 noundef 0, ptr noundef nonnull @stm32_adc_domain_ops, ptr noundef %1) #6
  %27 = getelementptr inbounds %struct.stm32_adc_priv, ptr %1, i32 0, i32 1
  store ptr %26, ptr %27, align 4
  %28 = icmp eq ptr %26, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %22
  %30 = load ptr, ptr %6, align 4
  %31 = getelementptr inbounds %struct.stm32_adc_priv_cfg, ptr %30, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %46, label %35

34:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.37) #7
  br label %46

35:                                               ; preds = %35, %29
  %36 = phi i32 [ %41, %35 ], [ 0, %29 ]
  %37 = getelementptr [3 x i32], ptr %1, i32 0, i32 %36
  %38 = load i32, ptr %37, align 4
  tail call void @__irq_set_handler(i32 noundef %38, ptr noundef nonnull @stm32_adc_irq_handler, i32 noundef 1, ptr noundef null) #6
  %39 = load i32, ptr %37, align 4
  %40 = tail call i32 @irq_set_handler_data(i32 noundef %39, ptr noundef %1) #6
  %41 = add nuw i32 %36, 1
  %42 = load ptr, ptr %6, align 4
  %43 = getelementptr inbounds %struct.stm32_adc_priv_cfg, ptr %42, i32 0, i32 4
  %44 = load i32, ptr %43, align 4
  %45 = icmp ult i32 %41, %44
  br i1 %45, label %35, label %46

46:                                               ; preds = %35, %34, %29, %17
  %47 = phi i32 [ -12, %34 ], [ 0, %29 ], [ 0, %35 ], [ %19, %17 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stm32_adc_irq_remove(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.stm32_adc_priv, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !10
  %5 = call ptr @__irq_resolve_mapping(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %2) #6
  %6 = icmp eq ptr %5, null
  %7 = load i32, ptr %2, align 4
  %8 = select i1 %6, i32 0, i32 %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  call void @irq_dispose_mapping(i32 noundef %8) #6
  %9 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !10
  %10 = call ptr @__irq_resolve_mapping(ptr noundef %9, i32 noundef 1, ptr noundef nonnull %2) #6
  %11 = icmp eq ptr %10, null
  %12 = load i32, ptr %2, align 4
  %13 = select i1 %11, i32 0, i32 %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  call void @irq_dispose_mapping(i32 noundef %13) #6
  %14 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !10
  %15 = call ptr @__irq_resolve_mapping(ptr noundef %14, i32 noundef 2, ptr noundef nonnull %2) #6
  %16 = icmp eq ptr %15, null
  %17 = load i32, ptr %2, align 4
  %18 = select i1 %16, i32 0, i32 %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  call void @irq_dispose_mapping(i32 noundef %18) #6
  %19 = load ptr, ptr %3, align 4
  call void @irq_domain_remove(ptr noundef %19) #6
  %20 = getelementptr inbounds %struct.stm32_adc_priv, ptr %0, i32 0, i32 11
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.stm32_adc_priv_cfg, ptr %21, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %25, %1
  %26 = phi i32 [ %29, %25 ], [ 0, %1 ]
  %27 = getelementptr [3 x i32], ptr %0, i32 0, i32 %26
  %28 = load i32, ptr %27, align 4
  call void @__irq_set_handler(i32 noundef %28, ptr noundef null, i32 noundef 1, ptr noundef null) #6
  %29 = add nuw i32 %26, 1
  %30 = load ptr, ptr %20, align 4
  %31 = getelementptr inbounds %struct.stm32_adc_priv_cfg, ptr %30, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %25, label %34

34:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stm32_adc_core_hw_stop(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %3, i32 -4
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stm32_adc_common_regs, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %4, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !8
  %12 = getelementptr i8, ptr %3, i32 20
  store i32 %11, ptr %12, align 4
  %13 = getelementptr i8, ptr %3, i32 -40
  %14 = load ptr, ptr %13, align 4
  tail call void @clk_disable(ptr noundef %14) #6
  tail call void @clk_unprepare(ptr noundef %14) #6
  %15 = getelementptr i8, ptr %3, i32 -36
  %16 = load ptr, ptr %15, align 4
  tail call void @clk_disable(ptr noundef %16) #6
  tail call void @clk_unprepare(ptr noundef %16) #6
  %17 = getelementptr i8, ptr %3, i32 -16
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @regulator_disable(ptr noundef %18) #6
  %20 = getelementptr i8, ptr %3, i32 -8
  %21 = load i32, ptr %20, align 4
  %22 = icmp slt i32 %21, 2700000
  br i1 %22, label %23, label %42

23:                                               ; preds = %1
  %24 = getelementptr i8, ptr %3, i32 24
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %3, i32 -12
  %29 = load i32, ptr %28, align 4
  %30 = icmp sgt i32 %29, 2700000
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = tail call i32 @regmap_write(ptr noundef nonnull %25, i32 noundef 68, i32 noundef 512) #6
  %33 = getelementptr i8, ptr %3, i32 -24
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @regulator_disable(ptr noundef %34) #6
  br label %42

36:                                               ; preds = %27, %23
  %37 = getelementptr i8, ptr %3, i32 -28
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = tail call i32 @regulator_disable(ptr noundef nonnull %38) #6
  br label %42

42:                                               ; preds = %40, %36, %31, %1
  %43 = getelementptr i8, ptr %3, i32 -20
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 @regulator_disable(ptr noundef %44) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_adc_irq_handler(ptr noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %12(ptr noundef %15) #6
  br label %24

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %18(ptr noundef %19) #6
  %20 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  tail call void %21(ptr noundef %19) #6
  br label %24

24:                                               ; preds = %23, %16, %14, %1
  %25 = getelementptr inbounds %struct.stm32_adc_priv, ptr %4, i32 0, i32 12
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.stm32_adc_priv, ptr %4, i32 0, i32 11
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %28, align 4
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr i8, ptr %26, i32 %30
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #6, !srcloc !8
  %33 = load ptr, ptr %27, align 4
  %34 = getelementptr inbounds %struct.stm32_adc_priv_cfg, ptr %33, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %83, label %37

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.stm32_adc_priv, ptr %4, i32 0, i32 1
  br label %39

39:                                               ; preds = %77, %37
  %40 = phi ptr [ %33, %37 ], [ %78, %77 ]
  %41 = phi i32 [ 0, %37 ], [ %79, %77 ]
  %42 = load ptr, ptr %40, align 4
  %43 = getelementptr %struct.stm32_adc_common_regs, ptr %42, i32 0, i32 2, i32 %41
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, %32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %39
  %48 = getelementptr [3 x i32], ptr @stm32_adc_offset, i32 0, i32 %41
  %49 = load i32, ptr %48, align 4
  %50 = load ptr, ptr %25, align 4
  %51 = getelementptr i8, ptr %50, i32 %49
  %52 = getelementptr inbounds %struct.stm32_adc_common_regs, ptr %42, i32 0, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr i8, ptr %51, i32 %53
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #6, !srcloc !8
  %56 = load ptr, ptr %27, align 4
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.stm32_adc_common_regs, ptr %57, i32 0, i32 5
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, %55
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %47, %39
  %63 = phi ptr [ %56, %47 ], [ %40, %39 ]
  %64 = phi ptr [ %57, %47 ], [ %42, %39 ]
  %65 = getelementptr %struct.stm32_adc_common_regs, ptr %64, i32 0, i32 3, i32 %41
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, %32
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %62, %47
  %70 = load ptr, ptr %38, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !10
  %71 = call ptr @__irq_resolve_mapping(ptr noundef %70, i32 noundef %41, ptr noundef nonnull %2) #6
  %72 = icmp eq ptr %71, null
  %73 = load i32, ptr %2, align 4
  %74 = select i1 %72, i32 0, i32 %73
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %75 = call i32 @generic_handle_irq(i32 noundef %74) #6
  %76 = load ptr, ptr %27, align 4
  br label %77

77:                                               ; preds = %69, %62
  %78 = phi ptr [ %63, %62 ], [ %76, %69 ]
  %79 = add nuw i32 %41, 1
  %80 = getelementptr inbounds %struct.stm32_adc_priv_cfg, ptr %78, i32 0, i32 4
  %81 = load i32, ptr %80, align 4
  %82 = icmp ult i32 %79, %81
  br i1 %82, label %39, label %83

83:                                               ; preds = %77, %24
  %84 = load ptr, ptr %7, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 9
  %88 = load ptr, ptr %87, align 4
  br label %89

89:                                               ; preds = %86, %83
  %90 = phi ptr [ %88, %86 ], [ %84, %83 ]
  %91 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  call void %90(ptr noundef %91) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_handler_data(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_simple(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_adc_domain_map(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef %5) #6
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef nonnull @dummy_irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_adc_domain_unmap(ptr nocapture noundef readnone %0, i32 noundef %1) #1 {
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #6
  %3 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef null) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_onecell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_adc_core_runtime_suspend(ptr nocapture noundef readonly %0) #1 {
  tail call fastcc void @stm32_adc_core_hw_stop(ptr noundef %0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_adc_core_runtime_resume(ptr noundef %0) #1 {
  %2 = tail call fastcc i32 @stm32_adc_core_hw_start(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_adc_core_runtime_idle(ptr noundef %0) #1 {
  %2 = tail call i64 @ktime_get_mono_fast_ns() #6
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 22
  store volatile i64 %2, ptr %3, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 3102720}
!9 = !{i64 3102302}
!10 = !{!"auto-init"}
!11 = !{i64 461593, i64 2147951564, i64 2147951590, i64 2147951637, i64 2147951659, i64 2147951687, i64 2147951707}
!12 = !{i64 2147963776, i64 2147963802, i64 2147963831, i64 2147963865, i64 2147963896, i64 2147963919}
!13 = !{i64 2147963283}
!14 = !{i64 448162, i64 448187, i64 448209, i64 448225, i64 448237, i64 448257, i64 448281, i64 448297, i64 448309}
!15 = !{i64 2147963409}
