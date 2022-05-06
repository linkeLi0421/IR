; ModuleID = '/llk/IR/drivers/pinctrl/mediatek/pinctrl-mtk-common.c_pt.bc'
source_filename = "../drivers/pinctrl/mediatek/pinctrl-mtk-common.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.63, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.63 = type { ptr }
%struct.mtk_eint_xt = type { ptr, ptr, ptr }
%struct.mtk_pin_ies_smt_set = type { i16, i16, i16, i8 }
%struct.mtk_pin_spec_pupd_set_samereg = type { i16, i16, i8, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.list_head = type { ptr, ptr }
%struct.mtk_pinctrl = type { ptr, ptr, %struct.pinctrl_desc, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mtk_pinctrl_devdata = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, %struct.mtk_eint_hw, ptr, i32, i32, i32 }
%struct.mtk_eint_hw = type { i8, i8, i32, i32 }
%struct.mtk_desc_pin = type { %struct.pinctrl_pin_desc, %struct.mtk_desc_eint, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.mtk_desc_eint = type { i8, i8 }
%struct.mtk_pinctrl_group = type { ptr, i32, i32 }
%struct.mtk_eint = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_pin_drv_grp = type { i16, i16, i8, i8 }
%struct.mtk_drv_group_desc = type { i8, i8, i8, i8, i8 }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.62 }
%union.anon.62 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }
%struct.mtk_desc_function = type { ptr, i8 }

@mtk_eint_pm_ops = dso_local local_unnamed_addr constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_eint_suspend, ptr @mtk_eint_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [18 x i8] c"pins-are-numbered\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"only support pins-are-numbered format\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"mediatek,pctl-regmap\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Pinctrl node has not register regmap.\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"build state failed: %d\0A\00", align 1
@mtk_pconf_ops = internal constant %struct.pinconf_ops { i8 0, ptr null, ptr null, ptr @mtk_pconf_group_get, ptr @mtk_pconf_group_set, ptr null, ptr null, ptr null }, align 4
@mtk_pctrl_ops = internal constant %struct.pinctrl_ops { ptr @mtk_pctrl_get_groups_count, ptr @mtk_pctrl_get_group_name, ptr @mtk_pctrl_get_group_pins, ptr null, ptr @mtk_pctrl_dt_node_to_map, ptr @pinctrl_utils_free_map }, align 4
@mtk_pmx_ops = internal constant %struct.pinmux_ops { ptr null, ptr null, ptr @mtk_pmx_get_funcs_cnt, ptr @mtk_pmx_get_func_name, ptr @mtk_pmx_get_func_groups, ptr @mtk_pmx_set_mux, ptr @mtk_pmx_gpio_request_enable, ptr null, ptr @mtk_pmx_gpio_set_direction, i8 0 }, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"couldn't register pinctrl driver\0A\00", align 1
@mtk_gpio_chip = internal unnamed_addr constant %struct.gpio_chip { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpiochip_generic_request, ptr @gpiochip_generic_free, ptr @mtk_gpio_get_direction, ptr @mtk_gpio_direction_input, ptr @mtk_gpio_direction_output, ptr @mtk_gpio_get, ptr null, ptr @mtk_gpio_set, ptr null, ptr @mtk_gpio_set_config, ptr @mtk_gpio_to_irq, ptr null, ptr null, ptr null, i32 0, i16 0, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 2, ptr null }, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"invalid pull-up argument %d on pin %d .\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"pinmux\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"missing pins property in node %pOFn .\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"invalid pins value.\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"unable to match pin %d to group\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"invalid function %d on pin %d .\0A\00", align 1
@mtk_gpio_functions = internal unnamed_addr constant [16 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"func0\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"func1\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"func2\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"func3\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"func4\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"func5\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"func6\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"func7\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"func8\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"func9\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"func10\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"func11\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"func12\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"func13\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"func14\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"func15\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"invalid function %d on group %d .\0A\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"invalid gpio pin %d.\0A\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"GPIO\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"interrupt-controller\00", align 1
@mtk_eint_xt = internal constant %struct.mtk_eint_xt { ptr @mtk_xt_get_gpio_n, ptr @mtk_xt_get_gpio_state, ptr @mtk_xt_set_gpio_as_eint }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtk_pconf_spec_set_ies_smt_range(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %19, %6
  %9 = phi i32 [ %20, %19 ], [ 0, %6 ]
  %10 = getelementptr %struct.mtk_pin_ies_smt_set, ptr %1, i32 %9
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  %13 = icmp ugt i32 %12, %3
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = getelementptr %struct.mtk_pin_ies_smt_set, ptr %1, i32 %9, i32 1
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  %18 = icmp ult i32 %17, %3
  br i1 %18, label %19, label %22

19:                                               ; preds = %14, %8
  %20 = add nuw i32 %9, 1
  %21 = icmp eq i32 %20, %2
  br i1 %21, label %39, label %8

22:                                               ; preds = %14, %6
  %23 = phi i32 [ 0, %6 ], [ %9, %14 ]
  %24 = icmp eq i32 %23, %2
  br i1 %24, label %39, label %25

25:                                               ; preds = %22
  %26 = icmp eq i32 %5, 0
  %27 = getelementptr %struct.mtk_pin_ies_smt_set, ptr %1, i32 %23, i32 2
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  %30 = zext i8 %4 to i32
  %31 = zext i1 %26 to i32
  %32 = shl nuw nsw i32 %30, %31
  %33 = add nuw nsw i32 %32, %29
  %34 = getelementptr %struct.mtk_pin_ies_smt_set, ptr %1, i32 %23, i32 3
  %35 = load i8, ptr %34, align 2
  %36 = zext i8 %35 to i32
  %37 = shl nuw i32 1, %36
  %38 = tail call i32 @regmap_write(ptr noundef %0, i32 noundef %33, i32 noundef %37) #10
  br label %39

39:                                               ; preds = %25, %22, %19
  %40 = phi i32 [ 0, %25 ], [ -22, %22 ], [ -22, %19 ]
  ret i32 %40
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtk_pctrl_spec_pull_set_samereg(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, i1 noundef zeroext %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %48, label %9

9:                                                ; preds = %15, %7
  %10 = phi i32 [ %16, %15 ], [ 0, %7 ]
  %11 = getelementptr %struct.mtk_pin_spec_pupd_set_samereg, ptr %1, i32 %10
  %12 = load i16, ptr %11, align 2
  %13 = zext i16 %12 to i32
  %14 = icmp eq i32 %13, %3
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = add nuw i32 %10, 1
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %48, label %9

18:                                               ; preds = %9
  %19 = getelementptr %struct.mtk_pin_spec_pupd_set_samereg, ptr %1, i32 %10, i32 1
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = zext i8 %4 to i32
  %23 = add nuw nsw i32 %21, %22
  %24 = shl nuw nsw i32 %22, 1
  %25 = add nuw nsw i32 %24, %21
  %26 = select i1 %5, i32 %25, i32 %23
  %27 = getelementptr %struct.mtk_pin_spec_pupd_set_samereg, ptr %1, i32 %10, i32 2
  %28 = load i8, ptr %27, align 2
  %29 = zext i8 %28 to i32
  %30 = shl nuw i32 1, %29
  %31 = tail call i32 @regmap_write(ptr noundef %0, i32 noundef %26, i32 noundef %30) #10
  %32 = getelementptr %struct.mtk_pin_spec_pupd_set_samereg, ptr %1, i32 %10, i32 4
  %33 = load i8, ptr %32, align 2
  %34 = zext i8 %33 to i32
  %35 = shl nuw i32 1, %34
  %36 = getelementptr %struct.mtk_pin_spec_pupd_set_samereg, ptr %1, i32 %10, i32 3
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl nuw i32 1, %38
  switch i32 %6, label %48 [
    i32 100, label %43
    i32 101, label %40
    i32 102, label %41
    i32 103, label %42
  ]

40:                                               ; preds = %18
  br label %43

41:                                               ; preds = %18
  br label %43

42:                                               ; preds = %18
  br label %43

43:                                               ; preds = %42, %41, %40, %18
  %44 = phi i32 [ %23, %40 ], [ %25, %41 ], [ %23, %42 ], [ %25, %18 ]
  %45 = phi i32 [ %25, %40 ], [ %23, %41 ], [ %23, %42 ], [ %25, %18 ]
  %46 = tail call i32 @regmap_write(ptr noundef %0, i32 noundef %44, i32 noundef %35) #10
  %47 = tail call i32 @regmap_write(ptr noundef %0, i32 noundef %45, i32 noundef %39) #10
  br label %48

48:                                               ; preds = %43, %18, %15, %7
  %49 = phi i32 [ -22, %18 ], [ -22, %7 ], [ 0, %43 ], [ -22, %15 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_eint_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mtk_pinctrl, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @mtk_eint_do_suspend(ptr noundef %5) #10
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_eint_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mtk_pinctrl, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @mtk_eint_do_resume(ptr noundef %5) #10
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtk_pctrl_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = alloca %struct.of_phandle_args, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 84, i32 noundef 3520) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %183, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %9, ptr %12, align 8
  %13 = tail call ptr @of_find_property(ptr noundef %8, ptr noundef nonnull @.str, ptr noundef null) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.1) #11
  br label %183

16:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false) #10, !annotation !8
  %17 = call i32 @__of_parse_phandle_with_args(ptr noundef %8, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5) #10
  %18 = icmp ne i32 %17, 0
  %19 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #10
  %20 = icmp eq ptr %19, null
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = call ptr @syscon_node_to_regmap(ptr noundef nonnull %19) #10
  store ptr %23, ptr %9, align 4
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = ptrtoint ptr %23 to i32
  br label %183

27:                                               ; preds = %16
  %28 = icmp eq ptr %2, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %27
  store ptr %2, ptr %9, align 4
  br label %31

30:                                               ; preds = %27
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.3) #11
  br label %183

31:                                               ; preds = %29, %22
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #10, !annotation !8
  %32 = call i32 @__of_parse_phandle_with_args(ptr noundef %8, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %4) #10
  %33 = icmp ne i32 %32, 0
  %34 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #10
  %35 = icmp eq ptr %34, null
  %36 = select i1 %33, i1 true, i1 %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = call ptr @syscon_node_to_regmap(ptr noundef nonnull %34) #10
  %39 = getelementptr inbounds %struct.mtk_pinctrl, ptr %9, i32 0, i32 1
  store ptr %38, ptr %39, align 4
  %40 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = ptrtoint ptr %38 to i32
  br label %183

43:                                               ; preds = %37, %31
  %44 = getelementptr inbounds %struct.mtk_pinctrl, ptr %9, i32 0, i32 9
  store ptr %1, ptr %44, align 4
  %45 = load ptr, ptr %12, align 8
  %46 = getelementptr inbounds %struct.mtk_pinctrl, ptr %45, i32 0, i32 9
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %47, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.mtk_pinctrl, ptr %45, i32 0, i32 6
  store i32 %49, ptr %50, align 4
  %51 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %49, i32 12) #10
  %52 = extractvalue { i32, i1 } %51, 1
  br i1 %52, label %53, label %55, !prof !9

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.mtk_pinctrl, ptr %45, i32 0, i32 5
  br label %95

55:                                               ; preds = %43
  %56 = extractvalue { i32, i1 } %51, 0
  %57 = call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef %56, i32 noundef 3520) #10
  %58 = getelementptr inbounds %struct.mtk_pinctrl, ptr %45, i32 0, i32 5
  store ptr %57, ptr %58, align 4
  %59 = icmp eq ptr %57, null
  br i1 %59, label %97, label %60

60:                                               ; preds = %55
  %61 = load i32, ptr %50, align 4
  %62 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %61, i32 4) #10
  %63 = extractvalue { i32, i1 } %62, 1
  br i1 %63, label %64, label %66, !prof !9

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.mtk_pinctrl, ptr %45, i32 0, i32 7
  br label %95

66:                                               ; preds = %60
  %67 = extractvalue { i32, i1 } %62, 0
  %68 = call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef %67, i32 noundef 3520) #10
  %69 = getelementptr inbounds %struct.mtk_pinctrl, ptr %45, i32 0, i32 7
  store ptr %68, ptr %69, align 4
  %70 = icmp eq ptr %68, null
  br i1 %70, label %97, label %71

71:                                               ; preds = %66
  %72 = load ptr, ptr %46, align 4
  %73 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %72, i32 0, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %98, label %76

76:                                               ; preds = %76, %71
  %77 = phi ptr [ %91, %76 ], [ %72, %71 ]
  %78 = phi i32 [ %90, %76 ], [ 0, %71 ]
  %79 = load ptr, ptr %77, align 4
  %80 = getelementptr %struct.mtk_desc_pin, ptr %79, i32 %78
  %81 = load ptr, ptr %58, align 4
  %82 = getelementptr %struct.mtk_pinctrl_group, ptr %81, i32 %78
  %83 = getelementptr inbounds %struct.pinctrl_pin_desc, ptr %80, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  store ptr %84, ptr %82, align 4
  %85 = load i32, ptr %80, align 4
  %86 = getelementptr %struct.mtk_pinctrl_group, ptr %81, i32 %78, i32 2
  store i32 %85, ptr %86, align 4
  %87 = load ptr, ptr %83, align 4
  %88 = load ptr, ptr %69, align 4
  %89 = getelementptr ptr, ptr %88, i32 %78
  store ptr %87, ptr %89, align 4
  %90 = add nuw i32 %78, 1
  %91 = load ptr, ptr %46, align 4
  %92 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %91, i32 0, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = icmp ult i32 %90, %93
  br i1 %94, label %76, label %98

95:                                               ; preds = %64, %53
  %96 = phi ptr [ %65, %64 ], [ %54, %53 ]
  store ptr null, ptr %96, align 4
  br label %97

97:                                               ; preds = %95, %66, %55
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.4, i32 noundef -12) #11
  br label %183

98:                                               ; preds = %76, %71
  %99 = load ptr, ptr %44, align 4
  %100 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %99, i32 0, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %101, i32 12) #10
  %103 = extractvalue { i32, i1 } %102, 1
  br i1 %103, label %183, label %104, !prof !9

104:                                              ; preds = %98
  %105 = extractvalue { i32, i1 } %102, 0
  %106 = call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef %105, i32 noundef 3520) #10
  %107 = icmp eq ptr %106, null
  br i1 %107, label %183, label %108

108:                                              ; preds = %104
  %109 = load ptr, ptr %44, align 4
  %110 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %109, i32 0, i32 1
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %113, %108
  %114 = phi i32 [ %118, %113 ], [ 0, %108 ]
  %115 = getelementptr %struct.pinctrl_pin_desc, ptr %106, i32 %114
  %116 = load ptr, ptr %109, align 4
  %117 = getelementptr %struct.mtk_desc_pin, ptr %116, i32 %114
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %115, ptr noundef align 4 dereferenceable(12) %117, i32 12, i1 false)
  %118 = add nuw i32 %114, 1
  %119 = load i32, ptr %110, align 4
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %113, label %121

121:                                              ; preds = %113, %108
  %122 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = load ptr, ptr %6, align 4
  br label %127

127:                                              ; preds = %125, %121
  %128 = phi ptr [ %126, %125 ], [ %123, %121 ]
  %129 = getelementptr inbounds %struct.mtk_pinctrl, ptr %9, i32 0, i32 2
  store ptr %128, ptr %129, align 4
  %130 = getelementptr inbounds %struct.mtk_pinctrl, ptr %9, i32 0, i32 2, i32 6
  store ptr null, ptr %130, align 4
  %131 = getelementptr inbounds %struct.mtk_pinctrl, ptr %9, i32 0, i32 2, i32 1
  store ptr %106, ptr %131, align 4
  %132 = load i32, ptr %110, align 4
  %133 = getelementptr inbounds %struct.mtk_pinctrl, ptr %9, i32 0, i32 2, i32 2
  store i32 %132, ptr %133, align 4
  %134 = getelementptr inbounds %struct.mtk_pinctrl, ptr %9, i32 0, i32 2, i32 5
  store ptr @mtk_pconf_ops, ptr %134, align 4
  %135 = getelementptr inbounds %struct.mtk_pinctrl, ptr %9, i32 0, i32 2, i32 3
  store ptr @mtk_pctrl_ops, ptr %135, align 4
  %136 = getelementptr inbounds %struct.mtk_pinctrl, ptr %9, i32 0, i32 2, i32 4
  store ptr @mtk_pmx_ops, ptr %136, align 4
  %137 = getelementptr inbounds %struct.mtk_pinctrl, ptr %9, i32 0, i32 3
  store ptr %6, ptr %137, align 4
  %138 = call ptr @devm_pinctrl_register(ptr noundef %6, ptr noundef %129, ptr noundef nonnull %9) #10
  %139 = getelementptr inbounds %struct.mtk_pinctrl, ptr %9, i32 0, i32 8
  store ptr %138, ptr %139, align 4
  %140 = icmp ugt ptr %138, inttoptr (i32 -4096 to ptr)
  br i1 %140, label %141, label %144

141:                                              ; preds = %127
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.5) #11
  %142 = load ptr, ptr %139, align 4
  %143 = ptrtoint ptr %142 to i32
  br label %183

144:                                              ; preds = %127
  %145 = call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 304, i32 noundef 3520) #10
  %146 = getelementptr inbounds %struct.mtk_pinctrl, ptr %9, i32 0, i32 4
  store ptr %145, ptr %146, align 4
  %147 = icmp eq ptr %145, null
  br i1 %147, label %183, label %148

148:                                              ; preds = %144
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(304) %145, ptr noundef nonnull align 4 dereferenceable(304) @mtk_gpio_chip, i32 304, i1 false)
  %149 = load ptr, ptr %44, align 4
  %150 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %149, i32 0, i32 1
  %151 = load i32, ptr %150, align 4
  %152 = trunc i32 %151 to i16
  %153 = getelementptr inbounds %struct.gpio_chip, ptr %145, i32 0, i32 20
  store i16 %152, ptr %153, align 4
  %154 = load ptr, ptr %122, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %158

156:                                              ; preds = %148
  %157 = load ptr, ptr %6, align 4
  br label %158

158:                                              ; preds = %156, %148
  %159 = phi ptr [ %157, %156 ], [ %154, %148 ]
  store ptr %159, ptr %145, align 4
  %160 = getelementptr inbounds %struct.gpio_chip, ptr %145, i32 0, i32 2
  store ptr %6, ptr %160, align 4
  %161 = getelementptr inbounds %struct.gpio_chip, ptr %145, i32 0, i32 19
  store i32 -1, ptr %161, align 4
  %162 = call i32 @gpiochip_add_data_with_key(ptr noundef nonnull %145, ptr noundef nonnull %9, ptr noundef null, ptr noundef null) #10
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %183

164:                                              ; preds = %158
  %165 = load ptr, ptr %146, align 4
  %166 = load ptr, ptr %122, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %170

168:                                              ; preds = %164
  %169 = load ptr, ptr %6, align 4
  br label %170

170:                                              ; preds = %168, %164
  %171 = phi ptr [ %169, %168 ], [ %166, %164 ]
  %172 = load ptr, ptr %44, align 4
  %173 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %172, i32 0, i32 1
  %174 = load i32, ptr %173, align 4
  %175 = call i32 @gpiochip_add_pin_range(ptr noundef %165, ptr noundef %171, i32 noundef 0, i32 noundef 0, i32 noundef %174) #10
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %170
  %178 = call fastcc i32 @mtk_eint_init(ptr noundef nonnull %9, ptr noundef %0)
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %177, %170
  %181 = phi i32 [ %178, %177 ], [ -22, %170 ]
  %182 = load ptr, ptr %146, align 4
  call void @gpiochip_remove(ptr noundef %182) #10
  br label %183

183:                                              ; preds = %180, %177, %158, %144, %141, %104, %98, %97, %41, %30, %25, %15, %3
  %184 = phi i32 [ %26, %25 ], [ %42, %41 ], [ -22, %97 ], [ %143, %141 ], [ %181, %180 ], [ -22, %30 ], [ -22, %15 ], [ -12, %3 ], [ -12, %104 ], [ -12, %144 ], [ -22, %158 ], [ 0, %177 ], [ -12, %98 ]
  ret i32 %184
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_pin_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mtk_eint_init(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.31, ptr noundef null) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %49, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mtk_pinctrl, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %10, i32 noundef 44, i32 noundef 3520) #10
  %12 = getelementptr inbounds %struct.mtk_pinctrl, ptr %0, i32 0, i32 10
  store ptr %11, ptr %12, align 4
  %13 = icmp eq ptr %11, null
  br i1 %13, label %49, label %14

14:                                               ; preds = %8
  %15 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %1, i32 noundef 0) #10
  %16 = load ptr, ptr %12, align 4
  %17 = getelementptr inbounds %struct.mtk_eint, ptr %16, i32 0, i32 1
  store ptr %15, ptr %17, align 4
  %18 = load ptr, ptr %12, align 4
  %19 = getelementptr inbounds %struct.mtk_eint, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = ptrtoint ptr %20 to i32
  br label %49

24:                                               ; preds = %14
  %25 = tail call i32 @irq_of_parse_and_map(ptr noundef %5, i32 noundef 0) #10
  %26 = load ptr, ptr %12, align 4
  %27 = getelementptr inbounds %struct.mtk_eint, ptr %26, i32 0, i32 3
  store i32 %25, ptr %27, align 4
  %28 = load ptr, ptr %12, align 4
  %29 = getelementptr inbounds %struct.mtk_eint, ptr %28, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %49, label %32

32:                                               ; preds = %24
  store ptr %3, ptr %28, align 4
  %33 = getelementptr inbounds %struct.mtk_pinctrl, ptr %0, i32 0, i32 9
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %34, i32 0, i32 25
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %12, align 4
  %38 = getelementptr inbounds %struct.mtk_eint, ptr %37, i32 0, i32 8
  store ptr %36, ptr %38, align 4
  %39 = load ptr, ptr %33, align 4
  %40 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %39, i32 0, i32 24
  %41 = load ptr, ptr %12, align 4
  %42 = getelementptr inbounds %struct.mtk_eint, ptr %41, i32 0, i32 7
  store ptr %40, ptr %42, align 4
  %43 = load ptr, ptr %12, align 4
  %44 = getelementptr inbounds %struct.mtk_eint, ptr %43, i32 0, i32 9
  store ptr %0, ptr %44, align 4
  %45 = load ptr, ptr %12, align 4
  %46 = getelementptr inbounds %struct.mtk_eint, ptr %45, i32 0, i32 10
  store ptr @mtk_eint_xt, ptr %46, align 4
  %47 = load ptr, ptr %12, align 4
  %48 = tail call i32 @mtk_eint_do_init(ptr noundef %47) #10
  br label %49

49:                                               ; preds = %32, %24, %22, %8, %2
  %50 = phi i32 [ %23, %22 ], [ %48, %32 ], [ -19, %2 ], [ -12, %8 ], [ -22, %24 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_eint_do_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_eint_do_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_pconf_group_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %5 = getelementptr inbounds %struct.mtk_pinctrl, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.mtk_pinctrl_group, ptr %6, i32 %1, i32 1
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_pconf_group_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %9 = icmp eq i32 %3, 0
  br i1 %9, label %323, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.mtk_pinctrl, ptr %8, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr %struct.mtk_pinctrl_group, ptr %12, i32 %1, i32 2
  %14 = getelementptr %struct.mtk_pinctrl_group, ptr %12, i32 %1, i32 1
  br label %15

15:                                               ; preds = %319, %10
  %16 = phi i32 [ 0, %10 ], [ %321, %319 ]
  %17 = load i32, ptr %13, align 4
  %18 = getelementptr i32, ptr %2, i32 %16
  %19 = load i32, ptr %18, align 4
  %20 = lshr i32 %19, 8
  %21 = call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %22 = trunc i32 %19 to i8
  switch i8 %22, label %323 [
    i8 1, label %23
    i8 5, label %25
    i8 3, label %27
    i8 12, label %29
    i8 17, label %81
    i8 14, label %176
    i8 9, label %228
  ]

23:                                               ; preds = %15
  %24 = call fastcc i32 @mtk_pconf_set_pull_select(ptr noundef %21, i32 noundef %17, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef %20) #10
  br label %316

25:                                               ; preds = %15
  %26 = call fastcc i32 @mtk_pconf_set_pull_select(ptr noundef %21, i32 noundef %17, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef %20) #10
  br label %316

27:                                               ; preds = %15
  %28 = call fastcc i32 @mtk_pconf_set_pull_select(ptr noundef %21, i32 noundef %17, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef %20) #10
  br label %316

29:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  %30 = call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %31 = getelementptr inbounds %struct.mtk_pinctrl, ptr %30, i32 0, i32 9
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %32, i32 0, i32 28
  %34 = load i32, ptr %33, align 4
  %35 = lshr i32 %17, %34
  %36 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %32, i32 0, i32 22
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %35, %38
  %40 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %32, i32 0, i32 21
  %41 = load i8, ptr %40, align 4
  %42 = zext i8 %41 to i32
  %43 = shl i32 %39, %42
  %44 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %32, i32 0, i32 10
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %43, %45
  store i32 %46, ptr %7, align 4
  %47 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %32, i32 0, i32 26
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %32, i32 0, i32 9
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %29
  call void %50(ptr noundef nonnull %7, i32 noundef %17) #10
  %53 = load i32, ptr %7, align 4
  %54 = load ptr, ptr %31, align 4
  br label %55

55:                                               ; preds = %52, %29
  %56 = phi ptr [ %54, %52 ], [ %32, %29 ]
  %57 = phi i32 [ %53, %52 ], [ %46, %29 ]
  %58 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %56, i32 0, i32 23
  %59 = load i8, ptr %58, align 2
  %60 = zext i8 %59 to i32
  %61 = shl nuw nsw i32 %60, 1
  %62 = add i32 %61, %57
  store i32 %62, ptr %7, align 4
  %63 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %56, i32 0, i32 19
  %64 = load i16, ptr %63, align 4
  %65 = zext i16 %64 to i32
  %66 = icmp ult i32 %17, %65
  br i1 %66, label %74, label %67

67:                                               ; preds = %55
  %68 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %56, i32 0, i32 20
  %69 = load i16, ptr %68, align 2
  %70 = zext i16 %69 to i32
  %71 = icmp ult i32 %17, %70
  %72 = getelementptr inbounds %struct.mtk_pinctrl, ptr %30, i32 0, i32 1
  %73 = select i1 %71, ptr %72, ptr %30
  br label %74

74:                                               ; preds = %67, %55
  %75 = phi ptr [ %30, %55 ], [ %73, %67 ]
  %76 = and i32 %48, %17
  %77 = shl nuw i32 1, %76
  %78 = load ptr, ptr %75, align 4
  %79 = call i32 @regmap_write(ptr noundef %78, i32 noundef %62, i32 noundef %77) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  %80 = call fastcc i32 @mtk_pconf_set_ies_smt(ptr noundef %21, i32 noundef %17, i32 noundef %20, i32 noundef 12) #10
  br label %316

81:                                               ; preds = %15
  %82 = getelementptr inbounds %struct.mtk_pinctrl, ptr %21, i32 0, i32 4
  %83 = load ptr, ptr %82, align 4
  %84 = call ptr @gpiochip_get_data(ptr noundef %83) #10
  %85 = getelementptr inbounds %struct.mtk_pinctrl, ptr %84, i32 0, i32 9
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %86, i32 0, i32 28
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %86, i32 0, i32 22
  %90 = load i8, ptr %89, align 1
  %91 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %86, i32 0, i32 21
  %92 = load i8, ptr %91, align 4
  %93 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %86, i32 0, i32 16
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %86, i32 0, i32 26
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %86, i32 0, i32 23
  %98 = load i8, ptr %97, align 2
  %99 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %86, i32 0, i32 19
  %100 = load i16, ptr %99, align 4
  %101 = zext i16 %100 to i32
  %102 = icmp ult i32 %17, %101
  br i1 %102, label %110, label %103

103:                                              ; preds = %81
  %104 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %86, i32 0, i32 20
  %105 = load i16, ptr %104, align 2
  %106 = zext i16 %105 to i32
  %107 = icmp ult i32 %17, %106
  %108 = getelementptr inbounds %struct.mtk_pinctrl, ptr %84, i32 0, i32 1
  %109 = select i1 %107, ptr %108, ptr %84
  br label %110

110:                                              ; preds = %103, %81
  %111 = phi ptr [ %84, %81 ], [ %109, %103 ]
  %112 = icmp ult i32 %19, 256
  %113 = zext i8 %98 to i32
  %114 = zext i1 %112 to i32
  %115 = shl nuw nsw i32 %113, %114
  %116 = and i32 %96, %17
  %117 = shl nuw i32 1, %116
  %118 = lshr i32 %17, %88
  %119 = zext i8 %90 to i32
  %120 = and i32 %118, %119
  %121 = zext i8 %92 to i32
  %122 = shl i32 %120, %121
  %123 = add i32 %122, %94
  %124 = add i32 %123, %115
  %125 = load ptr, ptr %111, align 4
  %126 = call i32 @regmap_write(ptr noundef %125, i32 noundef %124, i32 noundef %117) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  %127 = call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %128 = getelementptr inbounds %struct.mtk_pinctrl, ptr %127, i32 0, i32 9
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %129, i32 0, i32 28
  %131 = load i32, ptr %130, align 4
  %132 = lshr i32 %17, %131
  %133 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %129, i32 0, i32 22
  %134 = load i8, ptr %133, align 1
  %135 = zext i8 %134 to i32
  %136 = and i32 %132, %135
  %137 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %129, i32 0, i32 21
  %138 = load i8, ptr %137, align 4
  %139 = zext i8 %138 to i32
  %140 = shl i32 %136, %139
  %141 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %129, i32 0, i32 10
  %142 = load i32, ptr %141, align 4
  %143 = add i32 %140, %142
  store i32 %143, ptr %6, align 4
  %144 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %129, i32 0, i32 26
  %145 = load i32, ptr %144, align 4
  %146 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %129, i32 0, i32 9
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %152, label %149

149:                                              ; preds = %110
  call void %147(ptr noundef nonnull %6, i32 noundef %17) #10
  %150 = load i32, ptr %6, align 4
  %151 = load ptr, ptr %128, align 4
  br label %152

152:                                              ; preds = %149, %110
  %153 = phi ptr [ %151, %149 ], [ %129, %110 ]
  %154 = phi i32 [ %150, %149 ], [ %143, %110 ]
  %155 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %153, i32 0, i32 23
  %156 = load i8, ptr %155, align 2
  %157 = zext i8 %156 to i32
  %158 = add i32 %154, %157
  store i32 %158, ptr %6, align 4
  %159 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %153, i32 0, i32 19
  %160 = load i16, ptr %159, align 4
  %161 = zext i16 %160 to i32
  %162 = icmp ult i32 %17, %161
  br i1 %162, label %170, label %163

163:                                              ; preds = %152
  %164 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %153, i32 0, i32 20
  %165 = load i16, ptr %164, align 2
  %166 = zext i16 %165 to i32
  %167 = icmp ult i32 %17, %166
  %168 = getelementptr inbounds %struct.mtk_pinctrl, ptr %127, i32 0, i32 1
  %169 = select i1 %167, ptr %168, ptr %127
  br label %170

170:                                              ; preds = %163, %152
  %171 = phi ptr [ %127, %152 ], [ %169, %163 ]
  %172 = and i32 %145, %17
  %173 = shl nuw i32 1, %172
  %174 = load ptr, ptr %171, align 4
  %175 = call i32 @regmap_write(ptr noundef %174, i32 noundef %158, i32 noundef %173) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  br label %319

176:                                              ; preds = %15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %177 = call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %178 = getelementptr inbounds %struct.mtk_pinctrl, ptr %177, i32 0, i32 9
  %179 = load ptr, ptr %178, align 4
  %180 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %179, i32 0, i32 28
  %181 = load i32, ptr %180, align 4
  %182 = lshr i32 %17, %181
  %183 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %179, i32 0, i32 22
  %184 = load i8, ptr %183, align 1
  %185 = zext i8 %184 to i32
  %186 = and i32 %182, %185
  %187 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %179, i32 0, i32 21
  %188 = load i8, ptr %187, align 4
  %189 = zext i8 %188 to i32
  %190 = shl i32 %186, %189
  %191 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %179, i32 0, i32 10
  %192 = load i32, ptr %191, align 4
  %193 = add i32 %190, %192
  store i32 %193, ptr %5, align 4
  %194 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %179, i32 0, i32 26
  %195 = load i32, ptr %194, align 4
  %196 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %179, i32 0, i32 9
  %197 = load ptr, ptr %196, align 4
  %198 = icmp eq ptr %197, null
  br i1 %198, label %202, label %199

199:                                              ; preds = %176
  call void %197(ptr noundef nonnull %5, i32 noundef %17) #10
  %200 = load i32, ptr %5, align 4
  %201 = load ptr, ptr %178, align 4
  br label %202

202:                                              ; preds = %199, %176
  %203 = phi ptr [ %201, %199 ], [ %179, %176 ]
  %204 = phi i32 [ %200, %199 ], [ %193, %176 ]
  %205 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %203, i32 0, i32 23
  %206 = load i8, ptr %205, align 2
  %207 = zext i8 %206 to i32
  %208 = shl nuw nsw i32 %207, 1
  %209 = add i32 %208, %204
  store i32 %209, ptr %5, align 4
  %210 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %203, i32 0, i32 19
  %211 = load i16, ptr %210, align 4
  %212 = zext i16 %211 to i32
  %213 = icmp ult i32 %17, %212
  br i1 %213, label %221, label %214

214:                                              ; preds = %202
  %215 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %203, i32 0, i32 20
  %216 = load i16, ptr %215, align 2
  %217 = zext i16 %216 to i32
  %218 = icmp ult i32 %17, %217
  %219 = getelementptr inbounds %struct.mtk_pinctrl, ptr %177, i32 0, i32 1
  %220 = select i1 %218, ptr %219, ptr %177
  br label %221

221:                                              ; preds = %214, %202
  %222 = phi ptr [ %177, %202 ], [ %220, %214 ]
  %223 = and i32 %195, %17
  %224 = shl nuw i32 1, %223
  %225 = load ptr, ptr %222, align 4
  %226 = call i32 @regmap_write(ptr noundef %225, i32 noundef %209, i32 noundef %224) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  %227 = call fastcc i32 @mtk_pconf_set_ies_smt(ptr noundef %21, i32 noundef %17, i32 noundef %20, i32 noundef 14) #10
  br label %316

228:                                              ; preds = %15
  %229 = trunc i32 %20 to i8
  %230 = getelementptr inbounds %struct.mtk_pinctrl, ptr %21, i32 0, i32 9
  %231 = load ptr, ptr %230, align 4
  %232 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %231, i32 0, i32 1
  %233 = load i32, ptr %232, align 4
  %234 = icmp ugt i32 %233, %17
  br i1 %234, label %235, label %323

235:                                              ; preds = %228
  %236 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %231, i32 0, i32 5
  %237 = load i32, ptr %236, align 4
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %323, label %239

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %231, i32 0, i32 4
  %241 = load ptr, ptr %240, align 4
  br label %245

242:                                              ; preds = %245
  %243 = add nuw i32 %246, 1
  %244 = icmp eq i32 %243, %237
  br i1 %244, label %323, label %245

245:                                              ; preds = %242, %239
  %246 = phi i32 [ 0, %239 ], [ %243, %242 ]
  %247 = getelementptr %struct.mtk_pin_drv_grp, ptr %241, i32 %246
  %248 = load i16, ptr %247, align 2
  %249 = zext i16 %248 to i32
  %250 = icmp eq i32 %17, %249
  br i1 %250, label %251, label %242

251:                                              ; preds = %245
  %252 = icmp eq ptr %247, null
  br i1 %252, label %323, label %253

253:                                              ; preds = %251
  %254 = getelementptr %struct.mtk_pin_drv_grp, ptr %241, i32 %246, i32 3
  %255 = load i8, ptr %254, align 1
  %256 = zext i8 %255 to i32
  %257 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %231, i32 0, i32 3
  %258 = load i32, ptr %257, align 4
  %259 = icmp ult i32 %258, %256
  br i1 %259, label %323, label %260

260:                                              ; preds = %253
  %261 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %231, i32 0, i32 2
  %262 = load ptr, ptr %261, align 4
  %263 = getelementptr %struct.mtk_drv_group_desc, ptr %262, i32 %256
  %264 = load i8, ptr %263, align 1
  %265 = icmp ugt i8 %264, %229
  br i1 %265, label %323, label %266

266:                                              ; preds = %260
  %267 = getelementptr %struct.mtk_drv_group_desc, ptr %262, i32 %256, i32 1
  %268 = load i8, ptr %267, align 1
  %269 = icmp ult i8 %268, %229
  br i1 %269, label %323, label %270

270:                                              ; preds = %266
  %271 = getelementptr %struct.mtk_drv_group_desc, ptr %262, i32 %256, i32 4
  %272 = load i8, ptr %271, align 1
  %273 = freeze i8 %229
  %274 = freeze i8 %272
  %275 = udiv i8 %273, %274
  %276 = mul i8 %275, %274
  %277 = sub i8 %273, %276
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %279, label %323

279:                                              ; preds = %270
  %280 = zext i8 %275 to i32
  %281 = add nsw i32 %280, -1
  %282 = getelementptr %struct.mtk_drv_group_desc, ptr %262, i32 %256, i32 3
  %283 = load i8, ptr %282, align 1
  %284 = zext i8 %283 to i32
  %285 = getelementptr %struct.mtk_drv_group_desc, ptr %262, i32 %256, i32 2
  %286 = load i8, ptr %285, align 1
  %287 = zext i8 %286 to i32
  %288 = add nuw nsw i32 %284, 1
  %289 = sub nsw i32 %288, %287
  %290 = shl nsw i32 -1, %289
  %291 = xor i32 %290, -1
  %292 = getelementptr %struct.mtk_pin_drv_grp, ptr %241, i32 %246, i32 2
  %293 = load i8, ptr %292, align 2
  %294 = zext i8 %293 to i32
  %295 = add nuw nsw i32 %294, %287
  %296 = shl i32 %291, %295
  %297 = shl i32 %281, %295
  %298 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %231, i32 0, i32 19
  %299 = load i16, ptr %298, align 4
  %300 = zext i16 %299 to i32
  %301 = icmp ult i32 %17, %300
  br i1 %301, label %309, label %302

302:                                              ; preds = %279
  %303 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %231, i32 0, i32 20
  %304 = load i16, ptr %303, align 2
  %305 = zext i16 %304 to i32
  %306 = icmp ult i32 %17, %305
  %307 = getelementptr inbounds %struct.mtk_pinctrl, ptr %21, i32 0, i32 1
  %308 = select i1 %306, ptr %307, ptr %21
  br label %309

309:                                              ; preds = %302, %279
  %310 = phi ptr [ %21, %279 ], [ %308, %302 ]
  %311 = load ptr, ptr %310, align 4
  %312 = getelementptr %struct.mtk_pin_drv_grp, ptr %241, i32 %246, i32 1
  %313 = load i16, ptr %312, align 2
  %314 = zext i16 %313 to i32
  %315 = call i32 @regmap_update_bits_base(ptr noundef %311, i32 noundef %314, i32 noundef %296, i32 noundef %297, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %316

316:                                              ; preds = %309, %221, %74, %27, %25, %23
  %317 = phi i32 [ %227, %221 ], [ %80, %74 ], [ %28, %27 ], [ %26, %25 ], [ %24, %23 ], [ %315, %309 ]
  %318 = icmp slt i32 %317, 0
  br i1 %318, label %323, label %319

319:                                              ; preds = %316, %170
  %320 = load i32, ptr %18, align 4
  store i32 %320, ptr %14, align 4
  %321 = add nuw i32 %16, 1
  %322 = icmp eq i32 %321, %3
  br i1 %322, label %323, label %15

323:                                              ; preds = %319, %316, %270, %266, %260, %253, %251, %242, %235, %228, %15, %4
  %324 = phi i32 [ 0, %4 ], [ -22, %242 ], [ %317, %316 ], [ 0, %319 ], [ -22, %15 ], [ -22, %228 ], [ -22, %253 ], [ -22, %251 ], [ -22, %270 ], [ -22, %266 ], [ -22, %260 ], [ -22, %235 ]
  ret i32 %324
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mtk_pconf_set_pull_select(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.mtk_pinctrl, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %5
  %12 = select i1 %2, i32 %4, i32 100
  %13 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %7, i32 0, i32 19
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  %16 = icmp ugt i32 %15, %1
  br i1 %16, label %24, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %7, i32 0, i32 20
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = icmp ugt i32 %20, %1
  %22 = getelementptr inbounds %struct.mtk_pinctrl, ptr %0, i32 0, i32 1
  %23 = select i1 %21, ptr %22, ptr %0
  br label %24

24:                                               ; preds = %17, %11
  %25 = phi ptr [ %0, %11 ], [ %23, %17 ]
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %7, i32 0, i32 23
  %28 = load i8, ptr %27, align 2
  %29 = tail call i32 %9(ptr noundef %26, i32 noundef %1, i8 noundef zeroext %28, i1 noundef zeroext %3, i32 noundef %12) #10
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %107, label %31

31:                                               ; preds = %24, %5
  %32 = icmp ugt i32 %4, 1
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.mtk_pinctrl, ptr %0, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.6, i32 noundef %4, i32 noundef %1) #11
  br label %107

36:                                               ; preds = %31
  %37 = load ptr, ptr %6, align 4
  %38 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %37, i32 0, i32 26
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, %1
  %41 = shl nuw i32 1, %40
  %42 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %37, i32 0, i32 28
  %43 = load i32, ptr %42, align 4
  %44 = lshr i32 %1, %43
  %45 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %37, i32 0, i32 22
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %44, %47
  %49 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %37, i32 0, i32 21
  %50 = load i8, ptr %49, align 4
  %51 = zext i8 %50 to i32
  %52 = shl i32 %48, %51
  %53 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %37, i32 0, i32 13
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %52, %54
  %56 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %37, i32 0, i32 23
  %57 = load i8, ptr %56, align 2
  %58 = zext i8 %57 to i32
  %59 = xor i1 %2, true
  %60 = zext i1 %59 to i32
  %61 = shl nuw nsw i32 %58, %60
  %62 = add i32 %55, %61
  %63 = lshr i32 %1, %43
  %64 = zext i8 %46 to i32
  %65 = and i32 %63, %64
  %66 = zext i8 %50 to i32
  %67 = shl i32 %65, %66
  %68 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %37, i32 0, i32 14
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %67, %69
  %71 = zext i8 %57 to i32
  %72 = xor i1 %3, true
  %73 = zext i1 %72 to i32
  %74 = shl nuw nsw i32 %71, %73
  %75 = add i32 %70, %74
  %76 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %37, i32 0, i32 19
  %77 = load i16, ptr %76, align 4
  %78 = zext i16 %77 to i32
  %79 = icmp ugt i32 %78, %1
  br i1 %79, label %87, label %80

80:                                               ; preds = %36
  %81 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %37, i32 0, i32 20
  %82 = load i16, ptr %81, align 2
  %83 = zext i16 %82 to i32
  %84 = icmp ugt i32 %83, %1
  %85 = getelementptr inbounds %struct.mtk_pinctrl, ptr %0, i32 0, i32 1
  %86 = select i1 %84, ptr %85, ptr %0
  br label %87

87:                                               ; preds = %80, %36
  %88 = phi ptr [ %0, %36 ], [ %86, %80 ]
  %89 = load ptr, ptr %88, align 4
  %90 = tail call i32 @regmap_write(ptr noundef %89, i32 noundef %62, i32 noundef %41) #10
  %91 = load ptr, ptr %6, align 4
  %92 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %91, i32 0, i32 19
  %93 = load i16, ptr %92, align 4
  %94 = zext i16 %93 to i32
  %95 = icmp ugt i32 %94, %1
  br i1 %95, label %103, label %96

96:                                               ; preds = %87
  %97 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %91, i32 0, i32 20
  %98 = load i16, ptr %97, align 2
  %99 = zext i16 %98 to i32
  %100 = icmp ugt i32 %99, %1
  %101 = getelementptr inbounds %struct.mtk_pinctrl, ptr %0, i32 0, i32 1
  %102 = select i1 %100, ptr %101, ptr %0
  br label %103

103:                                              ; preds = %96, %87
  %104 = phi ptr [ %0, %87 ], [ %102, %96 ]
  %105 = load ptr, ptr %104, align 4
  %106 = tail call i32 @regmap_write(ptr noundef %105, i32 noundef %75, i32 noundef %41) #10
  br label %107

107:                                              ; preds = %103, %33, %24
  %108 = phi i32 [ -22, %33 ], [ 0, %103 ], [ 0, %24 ]
  ret i32 %108
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_pmx_gpio_set_direction(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, i1 noundef zeroext %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %6 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %7 = getelementptr inbounds %struct.mtk_pinctrl, ptr %6, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %8, i32 0, i32 28
  %10 = load i32, ptr %9, align 4
  %11 = lshr i32 %2, %10
  %12 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %8, i32 0, i32 22
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %11, %14
  %16 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %8, i32 0, i32 21
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i32
  %19 = shl i32 %15, %18
  %20 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %8, i32 0, i32 10
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %19, %21
  store i32 %22, ptr %5, align 4
  %23 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %8, i32 0, i32 26
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %8, i32 0, i32 9
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %4
  call void %26(ptr noundef nonnull %5, i32 noundef %2) #10
  br label %29

29:                                               ; preds = %28, %4
  %30 = load i32, ptr %5, align 4
  %31 = load ptr, ptr %7, align 4
  %32 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %31, i32 0, i32 23
  %33 = load i8, ptr %32, align 2
  %34 = zext i8 %33 to i32
  %35 = zext i1 %3 to i32
  %36 = shl nuw nsw i32 %34, %35
  %37 = add i32 %30, %36
  store i32 %37, ptr %5, align 4
  %38 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %31, i32 0, i32 19
  %39 = load i16, ptr %38, align 4
  %40 = zext i16 %39 to i32
  %41 = icmp ugt i32 %40, %2
  br i1 %41, label %49, label %42

42:                                               ; preds = %29
  %43 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %31, i32 0, i32 20
  %44 = load i16, ptr %43, align 2
  %45 = zext i16 %44 to i32
  %46 = icmp ugt i32 %45, %2
  %47 = getelementptr inbounds %struct.mtk_pinctrl, ptr %6, i32 0, i32 1
  %48 = select i1 %46, ptr %47, ptr %6
  br label %49

49:                                               ; preds = %42, %29
  %50 = phi ptr [ %6, %29 ], [ %48, %42 ]
  %51 = and i32 %24, %2
  %52 = shl nuw i32 1, %51
  %53 = load ptr, ptr %50, align 4
  %54 = call i32 @regmap_write(ptr noundef %53, i32 noundef %37, i32 noundef %52) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mtk_pconf_set_ies_smt(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.mtk_pinctrl, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %6, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %6, i32 0, i32 11
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 65535
  %14 = icmp eq i32 %3, 12
  %15 = and i1 %14, %13
  br i1 %15, label %81, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %6, i32 0, i32 12
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 65535
  %20 = icmp eq i32 %3, 14
  %21 = and i1 %20, %19
  br i1 %21, label %81, label %40

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %6, i32 0, i32 19
  %24 = load i16, ptr %23, align 4
  %25 = zext i16 %24 to i32
  %26 = icmp ugt i32 %25, %1
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %6, i32 0, i32 20
  %29 = load i16, ptr %28, align 2
  %30 = zext i16 %29 to i32
  %31 = icmp ugt i32 %30, %1
  %32 = getelementptr inbounds %struct.mtk_pinctrl, ptr %0, i32 0, i32 1
  %33 = select i1 %31, ptr %32, ptr %0
  br label %34

34:                                               ; preds = %27, %22
  %35 = phi ptr [ %0, %22 ], [ %33, %27 ]
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %6, i32 0, i32 23
  %38 = load i8, ptr %37, align 2
  %39 = tail call i32 %8(ptr noundef %36, i32 noundef %1, i8 noundef zeroext %38, i32 noundef %2, i32 noundef %3) #10
  br label %81

40:                                               ; preds = %16
  %41 = select i1 %14, ptr %11, ptr %17
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %6, i32 0, i32 26
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, %42
  %46 = shl nuw i32 1, %45
  %47 = icmp eq i32 %2, 0
  %48 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %6, i32 0, i32 28
  %49 = load i32, ptr %48, align 4
  %50 = lshr i32 %1, %49
  %51 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %6, i32 0, i32 22
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %50, %53
  %55 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %6, i32 0, i32 21
  %56 = load i8, ptr %55, align 4
  %57 = zext i8 %56 to i32
  %58 = shl i32 %54, %57
  %59 = add i32 %58, %42
  %60 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %6, i32 0, i32 23
  %61 = load i8, ptr %60, align 2
  %62 = zext i8 %61 to i32
  %63 = zext i1 %47 to i32
  %64 = shl nuw nsw i32 %62, %63
  %65 = add i32 %59, %64
  %66 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %6, i32 0, i32 19
  %67 = load i16, ptr %66, align 4
  %68 = zext i16 %67 to i32
  %69 = icmp ugt i32 %68, %1
  br i1 %69, label %77, label %70

70:                                               ; preds = %40
  %71 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %6, i32 0, i32 20
  %72 = load i16, ptr %71, align 2
  %73 = zext i16 %72 to i32
  %74 = icmp ugt i32 %73, %1
  %75 = getelementptr inbounds %struct.mtk_pinctrl, ptr %0, i32 0, i32 1
  %76 = select i1 %74, ptr %75, ptr %0
  br label %77

77:                                               ; preds = %70, %40
  %78 = phi ptr [ %0, %40 ], [ %76, %70 ]
  %79 = load ptr, ptr %78, align 4
  %80 = tail call i32 @regmap_write(ptr noundef %79, i32 noundef %65, i32 noundef %46) #10
  br label %81

81:                                               ; preds = %77, %34, %16, %10
  %82 = phi i32 [ %39, %34 ], [ 0, %77 ], [ -22, %10 ], [ -22, %16 ]
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mtk_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #10
  %5 = getelementptr inbounds %struct.mtk_pinctrl, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %6, i32 0, i32 28
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %6, i32 0, i32 22
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %6, i32 0, i32 21
  %12 = load i8, ptr %11, align 4
  %13 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %6, i32 0, i32 16
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %6, i32 0, i32 26
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %6, i32 0, i32 23
  %18 = load i8, ptr %17, align 2
  %19 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %6, i32 0, i32 19
  %20 = load i16, ptr %19, align 4
  %21 = zext i16 %20 to i32
  %22 = icmp ugt i32 %21, %1
  br i1 %22, label %30, label %23

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %6, i32 0, i32 20
  %25 = load i16, ptr %24, align 2
  %26 = zext i16 %25 to i32
  %27 = icmp ugt i32 %26, %1
  %28 = getelementptr inbounds %struct.mtk_pinctrl, ptr %4, i32 0, i32 1
  %29 = select i1 %27, ptr %28, ptr %4
  br label %30

30:                                               ; preds = %23, %3
  %31 = phi ptr [ %4, %3 ], [ %29, %23 ]
  %32 = icmp eq i32 %2, 0
  %33 = zext i8 %18 to i32
  %34 = zext i1 %32 to i32
  %35 = shl nuw nsw i32 %33, %34
  %36 = and i32 %16, %1
  %37 = shl nuw i32 1, %36
  %38 = lshr i32 %1, %8
  %39 = zext i8 %10 to i32
  %40 = and i32 %38, %39
  %41 = zext i8 %12 to i32
  %42 = shl i32 %40, %41
  %43 = add i32 %42, %14
  %44 = add i32 %43, %35
  %45 = load ptr, ptr %31, align 4
  %46 = tail call i32 @regmap_write(ptr noundef %45, i32 noundef %44, i32 noundef %37) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_pctrl_get_groups_count(ptr noundef %0) #0 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %3 = getelementptr inbounds %struct.mtk_pinctrl, ptr %2, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @mtk_pctrl_get_group_name(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.mtk_pinctrl, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.mtk_pinctrl_group, ptr %5, i32 %1
  %7 = load ptr, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_pctrl_get_group_pins(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %6 = getelementptr inbounds %struct.mtk_pinctrl, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.mtk_pinctrl_group, ptr %7, i32 %1, i32 2
  store ptr %8, ptr %2, align 4
  store i32 1, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_pctrl_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  store ptr null, ptr %2, align 4
  store i32 0, ptr %3, align 4
  store i32 0, ptr %8, align 4
  %9 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %147, label %11

11:                                               ; preds = %144, %4
  %12 = phi ptr [ %145, %144 ], [ %9, %4 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store ptr null, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4, !annotation !8
  %13 = call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %14 = call ptr @of_find_property(ptr noundef nonnull %12, ptr noundef nonnull @.str.7, ptr noundef null) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.mtk_pinctrl, ptr %13, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.8, ptr noundef nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  br label %140

19:                                               ; preds = %11
  %20 = call i32 @pinconf_generic_parse_dt_config(ptr noundef nonnull %12, ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7) #10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %137

22:                                               ; preds = %19
  %23 = load i32, ptr %7, align 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds %struct.property, ptr %14, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = lshr i32 %26, 2
  %28 = icmp ugt i32 %26, 3
  br i1 %28, label %29, label %134

29:                                               ; preds = %22
  %30 = select i1 %24, i32 1, i32 2
  %31 = mul nuw nsw i32 %30, %27
  %32 = call i32 @pinctrl_utils_reserve_map(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %8, ptr noundef %3, i32 noundef %31) #10
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %134, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.mtk_pinctrl, ptr %13, i32 0, i32 9
  %36 = getelementptr inbounds %struct.mtk_pinctrl, ptr %13, i32 0, i32 6
  %37 = getelementptr inbounds %struct.mtk_pinctrl, ptr %13, i32 0, i32 5
  %38 = call i32 @llvm.smax.i32(i32 %27, i32 1) #10
  br label %39

39:                                               ; preds = %131, %34
  %40 = phi i32 [ 0, %34 ], [ %132, %131 ]
  %41 = call i32 @of_property_read_u32_index(ptr noundef nonnull %12, ptr noundef nonnull @.str.7, i32 noundef %40, ptr noundef nonnull %5) #10
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %134

43:                                               ; preds = %39
  %44 = load i32, ptr %5, align 4
  %45 = lshr i32 %44, 8
  %46 = and i32 %44, 15
  %47 = load ptr, ptr %35, align 4
  %48 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %47, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp ult i32 %45, %49
  br i1 %50, label %54, label %51

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.mtk_pinctrl, ptr %13, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.9) #11
  br label %134

54:                                               ; preds = %43
  %55 = load i32, ptr %36, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %70, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %37, align 4
  br label %59

59:                                               ; preds = %64, %57
  %60 = phi i32 [ 0, %57 ], [ %65, %64 ]
  %61 = getelementptr %struct.mtk_pinctrl_group, ptr %58, i32 %60, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, %45
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = add nuw i32 %60, 1
  %66 = icmp eq i32 %65, %55
  br i1 %66, label %70, label %59

67:                                               ; preds = %59
  %68 = getelementptr %struct.mtk_pinctrl_group, ptr %58, i32 %60
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67, %64, %54
  %71 = getelementptr inbounds %struct.mtk_pinctrl, ptr %13, i32 0, i32 3
  %72 = load ptr, ptr %71, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.10, i32 noundef %45) #11
  br label %134

73:                                               ; preds = %67
  %74 = load i32, ptr %3, align 4
  %75 = load i32, ptr %8, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %134, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr %2, align 4
  %79 = getelementptr %struct.pinctrl_map, ptr %78, i32 %74, i32 2
  store i32 2, ptr %79, align 4
  %80 = load ptr, ptr %68, align 4
  %81 = load ptr, ptr %2, align 4
  %82 = load i32, ptr %3, align 4
  %83 = getelementptr %struct.pinctrl_map, ptr %81, i32 %82, i32 4
  store ptr %80, ptr %83, align 4
  %84 = load ptr, ptr %35, align 4
  %85 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %84, i32 0, i32 1
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %114, label %88

88:                                               ; preds = %77
  %89 = load ptr, ptr %84, align 4
  br label %90

90:                                               ; preds = %111, %88
  %91 = phi i32 [ 0, %88 ], [ %112, %111 ]
  %92 = getelementptr %struct.mtk_desc_pin, ptr %89, i32 %91
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, %45
  br i1 %94, label %95, label %111

95:                                               ; preds = %90
  %96 = getelementptr %struct.mtk_desc_pin, ptr %89, i32 %91, i32 2
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %114, label %102

99:                                               ; preds = %106
  %100 = getelementptr %struct.mtk_desc_function, ptr %103, i32 1
  %101 = icmp eq ptr %100, null
  br i1 %101, label %114, label %102

102:                                              ; preds = %99, %95
  %103 = phi ptr [ %100, %99 ], [ %97, %95 ]
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %114, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.mtk_desc_function, ptr %103, i32 0, i32 1
  %108 = load i8, ptr %107, align 4
  %109 = zext i8 %108 to i32
  %110 = icmp eq i32 %46, %109
  br i1 %110, label %117, label %99

111:                                              ; preds = %90
  %112 = add nuw i32 %91, 1
  %113 = icmp eq i32 %112, %86
  br i1 %113, label %114, label %90

114:                                              ; preds = %111, %102, %99, %95, %77
  %115 = getelementptr inbounds %struct.mtk_pinctrl, ptr %13, i32 0, i32 3
  %116 = load ptr, ptr %115, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.11, i32 noundef %46, i32 noundef %45) #11
  br label %134

117:                                              ; preds = %106
  %118 = getelementptr [16 x ptr], ptr @mtk_gpio_functions, i32 0, i32 %46
  %119 = load ptr, ptr %118, align 4
  %120 = load ptr, ptr %2, align 4
  %121 = load i32, ptr %3, align 4
  %122 = getelementptr %struct.pinctrl_map, ptr %120, i32 %121, i32 4, i32 0, i32 1
  store ptr %119, ptr %122, align 4
  %123 = load i32, ptr %3, align 4
  %124 = add i32 %123, 1
  store i32 %124, ptr %3, align 4
  br i1 %24, label %131, label %125

125:                                              ; preds = %117
  %126 = load ptr, ptr %68, align 4
  %127 = load ptr, ptr %6, align 4
  %128 = load i32, ptr %7, align 4
  %129 = call i32 @pinctrl_utils_add_map_configs(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %8, ptr noundef %3, ptr noundef %126, ptr noundef %127, i32 noundef %128, i32 noundef 4) #10
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %125, %117
  %132 = add nuw nsw i32 %40, 1
  %133 = icmp eq i32 %132, %38
  br i1 %133, label %134, label %39

134:                                              ; preds = %131, %125, %114, %73, %70, %51, %39, %29, %22
  %135 = phi i32 [ %32, %29 ], [ -22, %51 ], [ -22, %70 ], [ -22, %22 ], [ -22, %114 ], [ -28, %73 ], [ 0, %131 ], [ %129, %125 ], [ %41, %39 ]
  %136 = load ptr, ptr %6, align 4
  call void @kfree(ptr noundef %136) #10
  br label %137

137:                                              ; preds = %134, %19
  %138 = phi i32 [ %135, %134 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %137, %16
  %141 = phi i32 [ -22, %16 ], [ %138, %137 ]
  %142 = load ptr, ptr %2, align 4
  %143 = load i32, ptr %3, align 4
  call void @pinctrl_utils_free_map(ptr noundef %0, ptr noundef %142, i32 noundef %143) #10
  call void @of_node_put(ptr noundef nonnull %12) #10
  br label %147

144:                                              ; preds = %137
  %145 = call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %12) #10
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %11

147:                                              ; preds = %144, %140, %4
  %148 = phi i32 [ %141, %140 ], [ 0, %4 ], [ 0, %144 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  ret i32 %148
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_parse_dt_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_reserve_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_add_map_configs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @mtk_pmx_get_funcs_cnt(ptr nocapture noundef readnone %0) #7 {
  ret i32 16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal ptr @mtk_pmx_get_func_name(ptr nocapture noundef readnone %0, i32 noundef %1) #7 {
  %3 = getelementptr [16 x ptr], ptr @mtk_gpio_functions, i32 0, i32 %1
  %4 = load ptr, ptr %3, align 4
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_pmx_get_func_groups(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %6 = getelementptr inbounds %struct.mtk_pinctrl, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  store ptr %7, ptr %2, align 4
  %8 = getelementptr inbounds %struct.mtk_pinctrl, ptr %5, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_pmx_set_mux(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %5 = getelementptr inbounds %struct.mtk_pinctrl, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.mtk_pinctrl_group, ptr %6, i32 %2, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mtk_pinctrl, ptr %4, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %40, label %14

14:                                               ; preds = %3
  %15 = load ptr, ptr %10, align 4
  br label %16

16:                                               ; preds = %37, %14
  %17 = phi i32 [ 0, %14 ], [ %38, %37 ]
  %18 = getelementptr %struct.mtk_desc_pin, ptr %15, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %8
  br i1 %20, label %21, label %37

21:                                               ; preds = %16
  %22 = getelementptr %struct.mtk_desc_pin, ptr %15, i32 %17, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %40, label %28

25:                                               ; preds = %32
  %26 = getelementptr %struct.mtk_desc_function, ptr %29, i32 1
  %27 = icmp eq ptr %26, null
  br i1 %27, label %40, label %28

28:                                               ; preds = %25, %21
  %29 = phi ptr [ %26, %25 ], [ %23, %21 ]
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.mtk_desc_function, ptr %29, i32 0, i32 1
  %34 = load i8, ptr %33, align 4
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %35, %1
  br i1 %36, label %43, label %25

37:                                               ; preds = %16
  %38 = add nuw i32 %17, 1
  %39 = icmp eq i32 %38, %12
  br i1 %39, label %40, label %16

40:                                               ; preds = %37, %28, %25, %21, %3
  %41 = getelementptr inbounds %struct.mtk_pinctrl, ptr %4, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.28, i32 noundef %1, i32 noundef %2) #11
  br label %60

43:                                               ; preds = %32
  %44 = getelementptr %struct.mtk_desc_pin, ptr %15, i32 %8, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %60, label %47

47:                                               ; preds = %56, %43
  %48 = phi ptr [ %57, %56 ], [ %45, %43 ]
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %60, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.mtk_desc_function, ptr %48, i32 0, i32 1
  %53 = load i8, ptr %52, align 4
  %54 = zext i8 %53 to i32
  %55 = icmp eq i32 %54, %1
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = getelementptr %struct.mtk_desc_function, ptr %48, i32 1
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %47

59:                                               ; preds = %51
  tail call fastcc void @mtk_pmx_set_mode(ptr noundef %0, i32 noundef %8, i32 noundef %1)
  br label %60

60:                                               ; preds = %59, %56, %47, %43, %40
  %61 = phi i32 [ 0, %59 ], [ -22, %40 ], [ -22, %43 ], [ -22, %47 ], [ -22, %56 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_pmx_gpio_request_enable(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %5 = getelementptr inbounds %struct.mtk_pinctrl, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.mtk_desc_pin, ptr %7, i32 %2, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %29, label %11

11:                                               ; preds = %18, %3
  %12 = phi ptr [ %19, %18 ], [ %9, %3 ]
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @strncmp(ptr noundef nonnull %13, ptr noundef nonnull dereferenceable(5) @.str.30, i32 noundef 4) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = getelementptr %struct.mtk_desc_function, ptr %12, i32 1
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %11

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.mtk_desc_function, ptr %12, i32 0, i32 1
  %23 = load i8, ptr %22, align 4
  %24 = zext i8 %23 to i32
  tail call fastcc void @mtk_pmx_set_mode(ptr noundef %0, i32 noundef %2, i32 noundef %24)
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %25, i32 0, i32 7
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %61

29:                                               ; preds = %18, %11, %3
  %30 = getelementptr inbounds %struct.mtk_pinctrl, ptr %4, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.29, i32 noundef %2) #11
  br label %90

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %25, i32 0, i32 11
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 65535
  br i1 %35, label %90, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %25, i32 0, i32 26
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, %34
  %40 = shl nuw i32 1, %39
  %41 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %25, i32 0, i32 28
  %42 = load i32, ptr %41, align 4
  %43 = lshr i32 %2, %42
  %44 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %25, i32 0, i32 22
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %43, %46
  %48 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %25, i32 0, i32 21
  %49 = load i8, ptr %48, align 4
  %50 = zext i8 %49 to i32
  %51 = shl i32 %47, %50
  %52 = add i32 %51, %34
  %53 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %25, i32 0, i32 23
  %54 = load i8, ptr %53, align 2
  %55 = zext i8 %54 to i32
  %56 = add i32 %52, %55
  %57 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %25, i32 0, i32 19
  %58 = load i16, ptr %57, align 4
  %59 = zext i16 %58 to i32
  %60 = icmp ugt i32 %59, %2
  br i1 %60, label %86, label %79

61:                                               ; preds = %21
  %62 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %25, i32 0, i32 19
  %63 = load i16, ptr %62, align 4
  %64 = zext i16 %63 to i32
  %65 = icmp ugt i32 %64, %2
  br i1 %65, label %73, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %25, i32 0, i32 20
  %68 = load i16, ptr %67, align 2
  %69 = zext i16 %68 to i32
  %70 = icmp ugt i32 %69, %2
  %71 = getelementptr inbounds %struct.mtk_pinctrl, ptr %4, i32 0, i32 1
  %72 = select i1 %70, ptr %71, ptr %4
  br label %73

73:                                               ; preds = %66, %61
  %74 = phi ptr [ %4, %61 ], [ %72, %66 ]
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %25, i32 0, i32 23
  %77 = load i8, ptr %76, align 2
  %78 = tail call i32 %27(ptr noundef %75, i32 noundef %2, i8 noundef zeroext %77, i32 noundef 1, i32 noundef 12) #10
  br label %90

79:                                               ; preds = %36
  %80 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %25, i32 0, i32 20
  %81 = load i16, ptr %80, align 2
  %82 = zext i16 %81 to i32
  %83 = icmp ugt i32 %82, %2
  %84 = getelementptr inbounds %struct.mtk_pinctrl, ptr %4, i32 0, i32 1
  %85 = select i1 %83, ptr %84, ptr %4
  br label %86

86:                                               ; preds = %79, %36
  %87 = phi ptr [ %4, %36 ], [ %85, %79 ]
  %88 = load ptr, ptr %87, align 4
  %89 = tail call i32 @regmap_write(ptr noundef %88, i32 noundef %56, i32 noundef %40) #10
  br label %90

90:                                               ; preds = %86, %73, %32, %29
  %91 = phi i32 [ -22, %29 ], [ 0, %32 ], [ 0, %73 ], [ 0, %86 ]
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mtk_pmx_set_mode(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %5 = getelementptr inbounds %struct.mtk_pinctrl, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %6, i32 0, i32 19
  %12 = load i16, ptr %11, align 4
  %13 = zext i16 %12 to i32
  %14 = icmp ugt i32 %13, %1
  br i1 %14, label %22, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %6, i32 0, i32 20
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = icmp ugt i32 %18, %1
  %20 = getelementptr inbounds %struct.mtk_pinctrl, ptr %4, i32 0, i32 1
  %21 = select i1 %19, ptr %20, ptr %4
  br label %22

22:                                               ; preds = %15, %10
  %23 = phi ptr [ %4, %10 ], [ %21, %15 ]
  %24 = load ptr, ptr %23, align 4
  tail call void %8(ptr noundef %24, i32 noundef %1, i32 noundef %2) #10
  %25 = load ptr, ptr %5, align 4
  br label %26

26:                                               ; preds = %22, %3
  %27 = phi ptr [ %25, %22 ], [ %6, %3 ]
  %28 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %27, i32 0, i32 27
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %27, i32 0, i32 21
  %31 = load i8, ptr %30, align 4
  %32 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %27, i32 0, i32 18
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %27, i32 0, i32 19
  %35 = load i16, ptr %34, align 4
  %36 = zext i16 %35 to i32
  %37 = icmp ugt i32 %36, %1
  br i1 %37, label %45, label %38

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %27, i32 0, i32 20
  %40 = load i16, ptr %39, align 2
  %41 = zext i16 %40 to i32
  %42 = icmp ugt i32 %41, %1
  %43 = getelementptr inbounds %struct.mtk_pinctrl, ptr %4, i32 0, i32 1
  %44 = select i1 %42, ptr %43, ptr %4
  br label %45

45:                                               ; preds = %38, %26
  %46 = phi ptr [ %4, %26 ], [ %44, %38 ]
  %47 = and i32 %2, 7
  %48 = freeze i32 %29
  %49 = udiv i32 %1, %48
  %50 = mul i32 %49, %48
  %51 = sub i32 %1, %50
  %52 = and i32 %51, 255
  %53 = mul nuw nsw i32 %52, 3
  %54 = shl i32 %47, %53
  %55 = shl i32 7, %53
  %56 = zext i8 %31 to i32
  %57 = shl i32 %49, %56
  %58 = add i32 %57, %33
  %59 = load ptr, ptr %46, align 4
  %60 = tail call i32 @regmap_update_bits_base(ptr noundef %59, i32 noundef %58, i32 noundef %55, i32 noundef %54, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_gpio_get_direction(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %0) #10
  %6 = getelementptr inbounds %struct.mtk_pinctrl, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %7, i32 0, i32 28
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %1, %9
  %11 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %7, i32 0, i32 22
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = and i32 %10, %13
  %15 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %7, i32 0, i32 21
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i32
  %18 = shl i32 %14, %17
  %19 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %7, i32 0, i32 10
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %18, %20
  store i32 %21, ptr %3, align 4
  %22 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %7, i32 0, i32 26
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %7, i32 0, i32 9
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  call void %25(ptr noundef nonnull %3, i32 noundef %1) #10
  %28 = load i32, ptr %3, align 4
  br label %29

29:                                               ; preds = %27, %2
  %30 = phi i32 [ %28, %27 ], [ %21, %2 ]
  %31 = and i32 %23, %1
  %32 = load ptr, ptr %5, align 4
  %33 = call i32 @regmap_read(ptr noundef %32, i32 noundef %30, ptr noundef nonnull %4) #10
  %34 = load i32, ptr %4, align 4
  %35 = xor i32 %34, -1
  %36 = lshr i32 %35, %31
  %37 = and i32 %36, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_gpio_direction_input(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, %1
  %6 = tail call i32 @pinctrl_gpio_direction_input(i32 noundef %5) #10
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_gpio_direction_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #10
  %5 = getelementptr inbounds %struct.mtk_pinctrl, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %6, i32 0, i32 28
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %6, i32 0, i32 22
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %6, i32 0, i32 21
  %12 = load i8, ptr %11, align 4
  %13 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %6, i32 0, i32 16
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %6, i32 0, i32 26
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %6, i32 0, i32 23
  %18 = load i8, ptr %17, align 2
  %19 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %6, i32 0, i32 19
  %20 = load i16, ptr %19, align 4
  %21 = zext i16 %20 to i32
  %22 = icmp ugt i32 %21, %1
  br i1 %22, label %30, label %23

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %6, i32 0, i32 20
  %25 = load i16, ptr %24, align 2
  %26 = zext i16 %25 to i32
  %27 = icmp ugt i32 %26, %1
  %28 = getelementptr inbounds %struct.mtk_pinctrl, ptr %4, i32 0, i32 1
  %29 = select i1 %27, ptr %28, ptr %4
  br label %30

30:                                               ; preds = %23, %3
  %31 = phi ptr [ %4, %3 ], [ %29, %23 ]
  %32 = icmp eq i32 %2, 0
  %33 = zext i8 %18 to i32
  %34 = zext i1 %32 to i32
  %35 = shl nuw nsw i32 %33, %34
  %36 = and i32 %16, %1
  %37 = shl nuw i32 1, %36
  %38 = lshr i32 %1, %8
  %39 = zext i8 %10 to i32
  %40 = and i32 %38, %39
  %41 = zext i8 %12 to i32
  %42 = shl i32 %40, %41
  %43 = add i32 %42, %14
  %44 = add i32 %43, %35
  %45 = load ptr, ptr %31, align 4
  %46 = tail call i32 @regmap_write(ptr noundef %45, i32 noundef %44, i32 noundef %37) #10
  %47 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, %1
  %50 = tail call i32 @pinctrl_gpio_direction_output(i32 noundef %49) #10
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_gpio_get(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #10
  %5 = getelementptr inbounds %struct.mtk_pinctrl, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %6, i32 0, i32 28
  %8 = load i32, ptr %7, align 4
  %9 = lshr i32 %1, %8
  %10 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %6, i32 0, i32 22
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = and i32 %9, %12
  %14 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %6, i32 0, i32 21
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i32
  %17 = shl i32 %13, %16
  %18 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %6, i32 0, i32 17
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %17, %19
  %21 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %6, i32 0, i32 26
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, %1
  %24 = load ptr, ptr %4, align 4
  %25 = call i32 @regmap_read(ptr noundef %24, i32 noundef %20, ptr noundef nonnull %3) #10
  %26 = load i32, ptr %3, align 4
  %27 = lshr i32 %26, %23
  %28 = and i32 %27, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_gpio_set_config(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #10
  %5 = and i32 %2, 255
  %6 = icmp eq i32 %5, 11
  br i1 %6, label %7, label %20

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.mtk_pinctrl, ptr %4, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.mtk_desc_pin, ptr %10, i32 %1, i32 1, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, -1
  br i1 %13, label %20, label %14

14:                                               ; preds = %7
  %15 = lshr i32 %2, 8
  %16 = zext i8 %12 to i32
  %17 = getelementptr inbounds %struct.mtk_pinctrl, ptr %4, i32 0, i32 10
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @mtk_eint_set_debounce(ptr noundef %18, i32 noundef %16, i32 noundef %15) #10
  br label %20

20:                                               ; preds = %14, %7, %3
  %21 = phi i32 [ %19, %14 ], [ -524, %3 ], [ -22, %7 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_gpio_to_irq(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.mtk_pinctrl, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.mtk_desc_pin, ptr %6, i32 %1, i32 1, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, -1
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = zext i8 %8 to i32
  %12 = getelementptr inbounds %struct.mtk_pinctrl, ptr %3, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @mtk_eint_find_irq(ptr noundef %13, i32 noundef %11) #10
  br label %15

15:                                               ; preds = %10, %2
  %16 = phi i32 [ %14, %10 ], [ -22, %2 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_input(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_output(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_eint_set_debounce(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_eint_find_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_eint_do_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_xt_get_gpio_n(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #9 {
  %5 = getelementptr inbounds %struct.mtk_pinctrl, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr %6, align 4
  br label %12

12:                                               ; preds = %18, %10
  %13 = phi i32 [ 0, %10 ], [ %19, %18 ]
  %14 = getelementptr %struct.mtk_desc_pin, ptr %11, i32 %13, i32 1, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = add nuw i32 %13, 1
  %20 = icmp eq i32 %19, %8
  br i1 %20, label %28, label %12

21:                                               ; preds = %12
  %22 = getelementptr %struct.mtk_desc_pin, ptr %11, i32 %13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.mtk_pinctrl, ptr %0, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  store ptr %26, ptr %3, align 4
  %27 = load i32, ptr %22, align 4
  store i32 %27, ptr %2, align 4
  br label %28

28:                                               ; preds = %24, %21, %18, %4
  %29 = phi i32 [ 0, %24 ], [ -22, %21 ], [ -22, %4 ], [ -22, %18 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_xt_get_gpio_state(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.mtk_pinctrl, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %52, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 4
  br label %11

11:                                               ; preds = %17, %9
  %12 = phi i32 [ 0, %9 ], [ %18, %17 ]
  %13 = getelementptr %struct.mtk_desc_pin, ptr %10, i32 %12, i32 1, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = add nuw i32 %12, 1
  %19 = icmp eq i32 %18, %7
  br i1 %19, label %52, label %11

20:                                               ; preds = %11
  %21 = getelementptr %struct.mtk_desc_pin, ptr %10, i32 %12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %52, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.mtk_pinctrl, ptr %0, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4
  %27 = tail call ptr @gpiochip_get_data(ptr noundef %25) #10
  %28 = getelementptr inbounds %struct.mtk_pinctrl, ptr %27, i32 0, i32 9
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %29, i32 0, i32 28
  %31 = load i32, ptr %30, align 4
  %32 = lshr i32 %26, %31
  %33 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %29, i32 0, i32 22
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %32, %35
  %37 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %29, i32 0, i32 21
  %38 = load i8, ptr %37, align 4
  %39 = zext i8 %38 to i32
  %40 = shl i32 %36, %39
  %41 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %29, i32 0, i32 17
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %40, %42
  %44 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %29, i32 0, i32 26
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, %26
  %47 = load ptr, ptr %27, align 4
  %48 = call i32 @regmap_read(ptr noundef %47, i32 noundef %43, ptr noundef nonnull %3) #10
  %49 = load i32, ptr %3, align 4
  %50 = lshr i32 %49, %46
  %51 = and i32 %50, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br label %52

52:                                               ; preds = %23, %20, %17, %2
  %53 = phi i32 [ %51, %23 ], [ -22, %20 ], [ -22, %2 ], [ -22, %17 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_xt_set_gpio_as_eint(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.mtk_pinctrl, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %145, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 4
  br label %11

11:                                               ; preds = %17, %9
  %12 = phi i32 [ 0, %9 ], [ %18, %17 ]
  %13 = getelementptr %struct.mtk_desc_pin, ptr %10, i32 %12, i32 1, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = add nuw i32 %12, 1
  %19 = icmp eq i32 %18, %7
  br i1 %19, label %145, label %11

20:                                               ; preds = %11
  %21 = getelementptr %struct.mtk_desc_pin, ptr %10, i32 %12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %145, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.mtk_pinctrl, ptr %0, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %21, align 4
  %27 = getelementptr %struct.mtk_desc_pin, ptr %10, i32 %12, i32 1
  %28 = load i8, ptr %27, align 4
  %29 = zext i8 %28 to i32
  tail call fastcc void @mtk_pmx_set_mode(ptr noundef %25, i32 noundef %26, i32 noundef %29)
  %30 = load ptr, ptr %24, align 4
  %31 = load i32, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %32 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %30) #10
  %33 = getelementptr inbounds %struct.mtk_pinctrl, ptr %32, i32 0, i32 9
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %34, i32 0, i32 28
  %36 = load i32, ptr %35, align 4
  %37 = lshr i32 %31, %36
  %38 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %34, i32 0, i32 22
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = and i32 %37, %40
  %42 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %34, i32 0, i32 21
  %43 = load i8, ptr %42, align 4
  %44 = zext i8 %43 to i32
  %45 = shl i32 %41, %44
  %46 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %34, i32 0, i32 10
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %45, %47
  store i32 %48, ptr %3, align 4
  %49 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %34, i32 0, i32 26
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %34, i32 0, i32 9
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %23
  call void %52(ptr noundef nonnull %3, i32 noundef %31) #10
  %55 = load i32, ptr %3, align 4
  %56 = load ptr, ptr %33, align 4
  br label %57

57:                                               ; preds = %54, %23
  %58 = phi ptr [ %56, %54 ], [ %34, %23 ]
  %59 = phi i32 [ %55, %54 ], [ %48, %23 ]
  %60 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %58, i32 0, i32 23
  %61 = load i8, ptr %60, align 2
  %62 = zext i8 %61 to i32
  %63 = shl nuw nsw i32 %62, 1
  %64 = add i32 %63, %59
  store i32 %64, ptr %3, align 4
  %65 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %58, i32 0, i32 19
  %66 = load i16, ptr %65, align 4
  %67 = zext i16 %66 to i32
  %68 = icmp ult i32 %31, %67
  br i1 %68, label %76, label %69

69:                                               ; preds = %57
  %70 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %58, i32 0, i32 20
  %71 = load i16, ptr %70, align 2
  %72 = zext i16 %71 to i32
  %73 = icmp ult i32 %31, %72
  %74 = getelementptr inbounds %struct.mtk_pinctrl, ptr %32, i32 0, i32 1
  %75 = select i1 %73, ptr %74, ptr %32
  br label %76

76:                                               ; preds = %69, %57
  %77 = phi ptr [ %32, %57 ], [ %75, %69 ]
  %78 = and i32 %50, %31
  %79 = shl nuw i32 1, %78
  %80 = load ptr, ptr %77, align 4
  %81 = call i32 @regmap_write(ptr noundef %80, i32 noundef %64, i32 noundef %79) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  %82 = load i32, ptr %21, align 4
  %83 = load ptr, ptr %4, align 4
  %84 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %83, i32 0, i32 7
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %116

87:                                               ; preds = %76
  %88 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %83, i32 0, i32 11
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 65535
  br i1 %90, label %145, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %83, i32 0, i32 26
  %93 = load i32, ptr %92, align 4
  %94 = and i32 %93, %89
  %95 = shl nuw i32 1, %94
  %96 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %83, i32 0, i32 28
  %97 = load i32, ptr %96, align 4
  %98 = lshr i32 %82, %97
  %99 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %83, i32 0, i32 22
  %100 = load i8, ptr %99, align 1
  %101 = zext i8 %100 to i32
  %102 = and i32 %98, %101
  %103 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %83, i32 0, i32 21
  %104 = load i8, ptr %103, align 4
  %105 = zext i8 %104 to i32
  %106 = shl i32 %102, %105
  %107 = add i32 %106, %89
  %108 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %83, i32 0, i32 23
  %109 = load i8, ptr %108, align 2
  %110 = zext i8 %109 to i32
  %111 = add i32 %107, %110
  %112 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %83, i32 0, i32 19
  %113 = load i16, ptr %112, align 4
  %114 = zext i16 %113 to i32
  %115 = icmp ult i32 %82, %114
  br i1 %115, label %141, label %134

116:                                              ; preds = %76
  %117 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %83, i32 0, i32 19
  %118 = load i16, ptr %117, align 4
  %119 = zext i16 %118 to i32
  %120 = icmp ult i32 %82, %119
  br i1 %120, label %128, label %121

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %83, i32 0, i32 20
  %123 = load i16, ptr %122, align 2
  %124 = zext i16 %123 to i32
  %125 = icmp ult i32 %82, %124
  %126 = getelementptr inbounds %struct.mtk_pinctrl, ptr %0, i32 0, i32 1
  %127 = select i1 %125, ptr %126, ptr %0
  br label %128

128:                                              ; preds = %121, %116
  %129 = phi ptr [ %0, %116 ], [ %127, %121 ]
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %83, i32 0, i32 23
  %132 = load i8, ptr %131, align 2
  %133 = call i32 %85(ptr noundef %130, i32 noundef %82, i8 noundef zeroext %132, i32 noundef 1, i32 noundef 12) #10
  br label %145

134:                                              ; preds = %91
  %135 = getelementptr inbounds %struct.mtk_pinctrl_devdata, ptr %83, i32 0, i32 20
  %136 = load i16, ptr %135, align 2
  %137 = zext i16 %136 to i32
  %138 = icmp ult i32 %82, %137
  %139 = getelementptr inbounds %struct.mtk_pinctrl, ptr %0, i32 0, i32 1
  %140 = select i1 %138, ptr %139, ptr %0
  br label %141

141:                                              ; preds = %134, %91
  %142 = phi ptr [ %0, %91 ], [ %140, %134 ]
  %143 = load ptr, ptr %142, align 4
  %144 = call i32 @regmap_write(ptr noundef %143, i32 noundef %111, i32 noundef %95) #10
  br label %145

145:                                              ; preds = %141, %128, %87, %20, %17, %2
  %146 = phi i32 [ -22, %20 ], [ 0, %87 ], [ 0, %128 ], [ 0, %141 ], [ -22, %2 ], [ -22, %17 ]
  ret i32 %146
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
