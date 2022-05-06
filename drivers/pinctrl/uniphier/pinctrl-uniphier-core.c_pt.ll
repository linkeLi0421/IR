; ModuleID = '/llk/IR/drivers/pinctrl/uniphier/pinctrl-uniphier-core.c_pt.bc'
source_filename = "../drivers/pinctrl/uniphier/pinctrl-uniphier-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.uniphier_pinctrl_priv = type { %struct.pinctrl_desc, ptr, ptr, ptr, %struct.list_head }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.uniphier_pinctrl_reg_region = type { %struct.list_head, i32, i32, [0 x i32] }
%struct.uniphier_pinctrl_socdata = type { ptr, i32, ptr, i32, ptr, i32, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.uniphier_pinctrl_group = type { ptr, ptr, i32, ptr }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.pin_desc = type { ptr, ptr, i8, ptr, i32, ptr, ptr, ptr }
%struct.uniphier_pinmux_function = type { ptr, ptr, i32 }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }

@uniphier_pinctrl_pm_ops = dso_local local_unnamed_addr constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uniphier_pinctrl_suspend, ptr @uniphier_pinctrl_resume, ptr @uniphier_pinctrl_suspend, ptr @uniphier_pinctrl_resume, ptr @uniphier_pinctrl_suspend, ptr @uniphier_pinctrl_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [41 x i8] c"pinctrl socdata lacks necessary members\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"failed to get regmap\0A\00", align 1
@uniphier_pctlops = internal constant %struct.pinctrl_ops { ptr @uniphier_pctl_get_groups_count, ptr @uniphier_pctl_get_group_name, ptr @uniphier_pctl_get_group_pins, ptr @uniphier_pctl_pin_dbg_show, ptr @pinconf_generic_dt_node_to_map_all, ptr @pinctrl_utils_free_map }, align 4
@uniphier_pmxops = internal constant %struct.pinmux_ops { ptr null, ptr null, ptr @uniphier_pmx_get_functions_count, ptr @uniphier_pmx_get_function_name, ptr @uniphier_pmx_get_function_groups, ptr @uniphier_pmx_set_mux, ptr @uniphier_pmx_gpio_request_enable, ptr null, ptr null, i8 1 }, align 4
@uniphier_confops = internal constant %struct.pinconf_ops { i8 1, ptr @uniphier_conf_pin_config_get, ptr @uniphier_conf_pin_config_set, ptr null, ptr @uniphier_conf_pin_config_group_set, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"failed to register UniPhier pinctrl driver\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"DOWN\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"UP(FIXED)\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"DOWN(FIXED)\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"4/8(mA)\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"8/12/16/20(mA)\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"4/5/7/9/11/12/14/16(mA)\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"4(mA)\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"5(mA)\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"8(mA)\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c" PULL_DIR=%s  DRV_TYPE=%s\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"drivers/pinctrl/uniphier/pinctrl-uniphier-core.c\00", align 1
@uniphier_conf_drv_strengths_1bit = internal unnamed_addr constant [2 x i32] [i32 4, i32 8], align 4
@uniphier_conf_drv_strengths_2bit = internal unnamed_addr constant [4 x i32] [i32 8, i32 12, i32 16, i32 20], align 4
@uniphier_conf_drv_strengths_3bit = internal unnamed_addr constant [8 x i32] [i32 4, i32 5, i32 7, i32 9, i32 11, i32 12, i32 14, i32 16], align 4
@uniphier_conf_drv_strengths_fixed4 = internal unnamed_addr constant [1 x i32] [i32 4], align 4
@uniphier_conf_drv_strengths_fixed5 = internal unnamed_addr constant [1 x i32] [i32 5], align 4
@uniphier_conf_drv_strengths_fixed8 = internal unnamed_addr constant [1 x i32] [i32 8], align 4
@.str.16 = private unnamed_addr constant [40 x i8] c"unsupported configuration parameter %u\0A\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"can not disable pull register for pin %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"pull-up is unsupported for pin %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"pull-up can not be total\0A\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"pull-down is unsupported for pin %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"pull-down can not be total\0A\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"pull-up/down is unsupported for pin %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"cannot set drive strength for pin %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [45 x i8] c"unsupported drive strength %u mA for pin %s\0A\00", align 1
@switch.table.uniphier_pctl_pin_dbg_show = private unnamed_addr constant [5 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], align 4
@switch.table.uniphier_pctl_pin_dbg_show.25 = private unnamed_addr constant [7 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.7], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_pinctrl_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %3, i32 0, i32 4
  %5 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %3, i32 0, i32 2
  br label %6

6:                                                ; preds = %10, %1
  %7 = phi ptr [ %4, %1 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %4
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr inbounds %struct.uniphier_pinctrl_reg_region, ptr %8, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.uniphier_pinctrl_reg_region, ptr %8, i32 0, i32 3
  %15 = getelementptr inbounds %struct.uniphier_pinctrl_reg_region, ptr %8, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @regmap_bulk_read(ptr noundef %11, i32 noundef %13, ptr noundef %14, i32 noundef %16) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %6, label %19

19:                                               ; preds = %10, %6
  %20 = phi i32 [ %17, %10 ], [ 0, %6 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_pinctrl_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %3, i32 0, i32 4
  %5 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %3, i32 0, i32 2
  br label %6

6:                                                ; preds = %10, %1
  %7 = phi ptr [ %4, %1 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %4
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr inbounds %struct.uniphier_pinctrl_reg_region, ptr %8, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.uniphier_pinctrl_reg_region, ptr %8, i32 0, i32 3
  %15 = getelementptr inbounds %struct.uniphier_pinctrl_reg_region, ptr %8, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @regmap_bulk_write(ptr noundef %11, i32 noundef %13, ptr noundef %14, i32 noundef %16) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %6, label %31

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %3, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %21, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %19
  %27 = load ptr, ptr %5, align 4
  %28 = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 5888, i32 noundef 1) #6
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %19
  br label %31

31:                                               ; preds = %30, %26, %10
  %32 = phi i32 [ 0, %30 ], [ %28, %26 ], [ %17, %10 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uniphier_pinctrl_probe(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = icmp eq ptr %1, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %1, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %1, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %1, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %1, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %1, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %20, %16, %12, %8, %5, %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str) #7
  br label %204

29:                                               ; preds = %24
  %30 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 64, i32 noundef 3520) #6
  %31 = icmp eq ptr %30, null
  br i1 %31, label %204, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %34 = load ptr, ptr %33, align 8
  %35 = tail call ptr @of_get_parent(ptr noundef %34) #6
  %36 = tail call ptr @syscon_node_to_regmap(ptr noundef %35) #6
  %37 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %30, i32 0, i32 2
  store ptr %36, ptr %37, align 4
  tail call void @of_node_put(ptr noundef %35) #6
  %38 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #7
  %40 = ptrtoint ptr %36 to i32
  br label %204

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %30, i32 0, i32 3
  store ptr %1, ptr %42, align 4
  %43 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 6
  %44 = load ptr, ptr %43, align 8
  %45 = load ptr, ptr %44, align 4
  store ptr %45, ptr %30, align 4
  %46 = load ptr, ptr %1, align 4
  %47 = getelementptr inbounds %struct.pinctrl_desc, ptr %30, i32 0, i32 1
  store ptr %46, ptr %47, align 4
  %48 = load i32, ptr %9, align 4
  %49 = getelementptr inbounds %struct.pinctrl_desc, ptr %30, i32 0, i32 2
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.pinctrl_desc, ptr %30, i32 0, i32 3
  store ptr @uniphier_pctlops, ptr %50, align 4
  %51 = getelementptr inbounds %struct.pinctrl_desc, ptr %30, i32 0, i32 4
  store ptr @uniphier_pmxops, ptr %51, align 4
  %52 = getelementptr inbounds %struct.pinctrl_desc, ptr %30, i32 0, i32 5
  store ptr @uniphier_confops, ptr %52, align 4
  %53 = getelementptr inbounds %struct.device_driver, ptr %44, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.pinctrl_desc, ptr %30, i32 0, i32 6
  store ptr %54, ptr %55, align 4
  %56 = icmp eq i32 %48, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %41
  %58 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %30, i32 0, i32 4
  store volatile ptr %58, ptr %58, align 4
  %59 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %30, i32 0, i32 4, i32 1
  store ptr %58, ptr %59, align 4
  br label %195

60:                                               ; preds = %41
  %61 = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %1, i32 0, i32 7
  br label %62

62:                                               ; preds = %105, %60
  %63 = phi i32 [ 0, %60 ], [ %91, %105 ]
  %64 = phi i32 [ 0, %60 ], [ %90, %105 ]
  %65 = phi i32 [ 0, %60 ], [ %89, %105 ]
  %66 = phi i32 [ 0, %60 ], [ %96, %105 ]
  %67 = phi i32 [ 0, %60 ], [ %106, %105 ]
  %68 = phi i32 [ 0, %60 ], [ %107, %105 ]
  %69 = getelementptr %struct.pinctrl_pin_desc, ptr %46, i32 %68, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = ptrtoint ptr %70 to i32
  %72 = lshr i32 %71, 3
  %73 = and i32 %72, 511
  %74 = lshr i32 %71, 12
  %75 = and i32 %74, 7
  %76 = lshr i32 %71, 15
  %77 = and i32 %76, 511
  %78 = and i32 %71, 7
  switch i32 %75, label %88 [
    i32 0, label %79
    i32 1, label %82
    i32 2, label %85
  ]

79:                                               ; preds = %62
  %80 = add nuw nsw i32 %73, 1
  %81 = tail call i32 @llvm.umax.i32(i32 %63, i32 %80) #6
  br label %88

82:                                               ; preds = %62
  %83 = add nuw nsw i32 %73, 1
  %84 = tail call i32 @llvm.umax.i32(i32 %64, i32 %83) #6
  br label %88

85:                                               ; preds = %62
  %86 = add nuw nsw i32 %73, 1
  %87 = tail call i32 @llvm.umax.i32(i32 %65, i32 %86) #6
  br label %88

88:                                               ; preds = %85, %82, %79, %62
  %89 = phi i32 [ %65, %62 ], [ %87, %85 ], [ %65, %82 ], [ %65, %79 ]
  %90 = phi i32 [ %64, %62 ], [ %64, %85 ], [ %84, %82 ], [ %64, %79 ]
  %91 = phi i32 [ %63, %62 ], [ %63, %85 ], [ %63, %82 ], [ %81, %79 ]
  %92 = and i32 %71, 100663296
  %93 = icmp eq i32 %92, 0
  %94 = add nuw nsw i32 %77, 1
  %95 = tail call i32 @llvm.umax.i32(i32 %66, i32 %94) #6
  %96 = select i1 %93, i32 %95, i32 %66
  %97 = icmp eq i32 %78, 7
  br i1 %97, label %105, label %98

98:                                               ; preds = %88
  %99 = load i32, ptr %61, align 4
  %100 = and i32 %99, 2
  %101 = icmp eq i32 %100, 0
  %102 = select i1 %101, i32 %78, i32 %68
  %103 = add nuw i32 %102, 1
  %104 = tail call i32 @llvm.umax.i32(i32 %67, i32 %103) #6
  br label %105

105:                                              ; preds = %98, %88
  %106 = phi i32 [ %104, %98 ], [ %67, %88 ]
  %107 = add nuw i32 %68, 1
  %108 = icmp eq i32 %107, %48
  br i1 %108, label %109, label %62

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %30, i32 0, i32 4
  store volatile ptr %110, ptr %110, align 4
  %111 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %30, i32 0, i32 4, i32 1
  store ptr %110, ptr %111, align 4
  %112 = shl i32 %48, 3
  %113 = add i32 %112, 31
  %114 = lshr i32 %113, 5
  %115 = shl nuw nsw i32 %114, 2
  %116 = add nuw nsw i32 %115, 16
  %117 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %116, i32 noundef 3520) #6
  %118 = icmp eq ptr %117, null
  br i1 %118, label %204, label %119

119:                                              ; preds = %109
  %120 = getelementptr inbounds %struct.uniphier_pinctrl_reg_region, ptr %117, i32 0, i32 1
  store i32 4096, ptr %120, align 4
  %121 = getelementptr inbounds %struct.uniphier_pinctrl_reg_region, ptr %117, i32 0, i32 2
  store i32 %114, ptr %121, align 4
  %122 = load ptr, ptr %111, align 4
  store ptr %117, ptr %111, align 4
  store ptr %110, ptr %117, align 4
  %123 = getelementptr inbounds %struct.list_head, ptr %117, i32 0, i32 1
  store ptr %122, ptr %123, align 4
  store volatile ptr %117, ptr %122, align 4
  %124 = icmp eq i32 %91, 0
  br i1 %124, label %137, label %125

125:                                              ; preds = %119
  %126 = add i32 %91, 31
  %127 = lshr i32 %126, 5
  %128 = shl nuw nsw i32 %127, 2
  %129 = add nuw nsw i32 %128, 16
  %130 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %129, i32 noundef 3520) #6
  %131 = icmp eq ptr %130, null
  br i1 %131, label %204, label %132

132:                                              ; preds = %125
  %133 = getelementptr inbounds %struct.uniphier_pinctrl_reg_region, ptr %130, i32 0, i32 1
  store i32 6144, ptr %133, align 4
  %134 = getelementptr inbounds %struct.uniphier_pinctrl_reg_region, ptr %130, i32 0, i32 2
  store i32 %127, ptr %134, align 4
  %135 = load ptr, ptr %111, align 4
  store ptr %130, ptr %111, align 4
  store ptr %110, ptr %130, align 4
  %136 = getelementptr inbounds %struct.list_head, ptr %130, i32 0, i32 1
  store ptr %135, ptr %136, align 4
  store volatile ptr %130, ptr %135, align 4
  br label %137

137:                                              ; preds = %132, %119
  %138 = icmp eq i32 %90, 0
  br i1 %138, label %152, label %139

139:                                              ; preds = %137
  %140 = shl i32 %90, 1
  %141 = add i32 %140, 31
  %142 = lshr i32 %141, 5
  %143 = shl nuw nsw i32 %142, 2
  %144 = add nuw nsw i32 %143, 16
  %145 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %144, i32 noundef 3520) #6
  %146 = icmp eq ptr %145, null
  br i1 %146, label %204, label %147

147:                                              ; preds = %139
  %148 = getelementptr inbounds %struct.uniphier_pinctrl_reg_region, ptr %145, i32 0, i32 1
  store i32 6400, ptr %148, align 4
  %149 = getelementptr inbounds %struct.uniphier_pinctrl_reg_region, ptr %145, i32 0, i32 2
  store i32 %142, ptr %149, align 4
  %150 = load ptr, ptr %111, align 4
  store ptr %145, ptr %111, align 4
  store ptr %110, ptr %145, align 4
  %151 = getelementptr inbounds %struct.list_head, ptr %145, i32 0, i32 1
  store ptr %150, ptr %151, align 4
  store volatile ptr %145, ptr %150, align 4
  br label %152

152:                                              ; preds = %147, %137
  %153 = icmp eq i32 %89, 0
  br i1 %153, label %167, label %154

154:                                              ; preds = %152
  %155 = mul i32 %89, 3
  %156 = add i32 %155, 31
  %157 = lshr i32 %156, 5
  %158 = shl nuw nsw i32 %157, 2
  %159 = add nuw nsw i32 %158, 16
  %160 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %159, i32 noundef 3520) #6
  %161 = icmp eq ptr %160, null
  br i1 %161, label %204, label %162

162:                                              ; preds = %154
  %163 = getelementptr inbounds %struct.uniphier_pinctrl_reg_region, ptr %160, i32 0, i32 1
  store i32 6528, ptr %163, align 4
  %164 = getelementptr inbounds %struct.uniphier_pinctrl_reg_region, ptr %160, i32 0, i32 2
  store i32 %157, ptr %164, align 4
  %165 = load ptr, ptr %111, align 4
  store ptr %160, ptr %111, align 4
  store ptr %110, ptr %160, align 4
  %166 = getelementptr inbounds %struct.list_head, ptr %160, i32 0, i32 1
  store ptr %165, ptr %166, align 4
  store volatile ptr %160, ptr %165, align 4
  br label %167

167:                                              ; preds = %162, %152
  %168 = icmp eq i32 %96, 0
  br i1 %168, label %181, label %169

169:                                              ; preds = %167
  %170 = add i32 %96, 31
  %171 = lshr i32 %170, 5
  %172 = shl nuw nsw i32 %171, 2
  %173 = add nuw nsw i32 %172, 16
  %174 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %173, i32 noundef 3520) #6
  %175 = icmp eq ptr %174, null
  br i1 %175, label %204, label %176

176:                                              ; preds = %169
  %177 = getelementptr inbounds %struct.uniphier_pinctrl_reg_region, ptr %174, i32 0, i32 1
  store i32 6656, ptr %177, align 4
  %178 = getelementptr inbounds %struct.uniphier_pinctrl_reg_region, ptr %174, i32 0, i32 2
  store i32 %171, ptr %178, align 4
  %179 = load ptr, ptr %111, align 4
  store ptr %174, ptr %111, align 4
  store ptr %110, ptr %174, align 4
  %180 = getelementptr inbounds %struct.list_head, ptr %174, i32 0, i32 1
  store ptr %179, ptr %180, align 4
  store volatile ptr %174, ptr %179, align 4
  br label %181

181:                                              ; preds = %176, %167
  %182 = icmp eq i32 %106, 0
  br i1 %182, label %195, label %183

183:                                              ; preds = %181
  %184 = add i32 %106, 31
  %185 = lshr i32 %184, 5
  %186 = shl nuw nsw i32 %185, 2
  %187 = add nuw nsw i32 %186, 16
  %188 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %187, i32 noundef 3520) #6
  %189 = icmp eq ptr %188, null
  br i1 %189, label %204, label %190

190:                                              ; preds = %183
  %191 = getelementptr inbounds %struct.uniphier_pinctrl_reg_region, ptr %188, i32 0, i32 1
  store i32 7424, ptr %191, align 4
  %192 = getelementptr inbounds %struct.uniphier_pinctrl_reg_region, ptr %188, i32 0, i32 2
  store i32 %185, ptr %192, align 4
  %193 = load ptr, ptr %111, align 4
  store ptr %188, ptr %111, align 4
  store ptr %110, ptr %188, align 4
  %194 = getelementptr inbounds %struct.list_head, ptr %188, i32 0, i32 1
  store ptr %193, ptr %194, align 4
  store volatile ptr %188, ptr %193, align 4
  br label %195

195:                                              ; preds = %190, %181, %57
  %196 = tail call ptr @devm_pinctrl_register(ptr noundef %3, ptr noundef nonnull %30, ptr noundef nonnull %30) #6
  %197 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %30, i32 0, i32 1
  store ptr %196, ptr %197, align 4
  %198 = icmp ugt ptr %196, inttoptr (i32 -4096 to ptr)
  br i1 %198, label %199, label %202

199:                                              ; preds = %195
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #7
  %200 = load ptr, ptr %197, align 4
  %201 = ptrtoint ptr %200 to i32
  br label %204

202:                                              ; preds = %195
  %203 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %30, ptr %203, align 8
  br label %204

204:                                              ; preds = %202, %199, %183, %169, %154, %139, %125, %109, %39, %29, %28
  %205 = phi i32 [ %40, %39 ], [ %201, %199 ], [ 0, %202 ], [ -22, %28 ], [ -12, %29 ], [ -12, %109 ], [ -12, %125 ], [ -12, %139 ], [ -12, %154 ], [ -12, %169 ], [ -12, %183 ]
  ret i32 %205
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_pctl_get_groups_count(ptr noundef %0) #0 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %3 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %2, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @uniphier_pctl_get_group_name(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.uniphier_pinctrl_group, ptr %7, i32 %1
  %9 = load ptr, ptr %8, align 4
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_pctl_get_group_pins(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.uniphier_pinctrl_group, ptr %9, i32 %1, i32 1
  %11 = load ptr, ptr %10, align 4
  store ptr %11, ptr %2, align 4
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr %struct.uniphier_pinctrl_group, ptr %14, i32 %1, i32 2
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uniphier_pctl_pin_dbg_show(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 2
  %5 = tail call ptr @radix_tree_lookup(ptr noundef %4, i32 noundef %2) #6
  %6 = getelementptr inbounds %struct.pin_desc, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = lshr i32 %8, 24
  %10 = and i32 %9, 7
  %11 = icmp ult i32 %10, 5
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/uniphier/pinctrl-uniphier-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 95, 0\0A.popsection", ""() #6, !srcloc !8
  unreachable

13:                                               ; preds = %3
  %14 = lshr i32 %8, 12
  %15 = and i32 %14, 7
  %16 = icmp eq i32 %15, 7
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/uniphier/pinctrl-uniphier-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 121, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

18:                                               ; preds = %13
  %19 = getelementptr inbounds [5 x ptr], ptr @switch.table.uniphier_pctl_pin_dbg_show, i32 0, i32 %10
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds [7 x ptr], ptr @switch.table.uniphier_pctl_pin_dbg_show.25, i32 0, i32 %15
  %22 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull %20, ptr noundef nonnull %22) #6
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_all(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #4 {
  %5 = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0) #6
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_pmx_get_functions_count(ptr noundef %0) #0 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %3 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %2, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @uniphier_pmx_get_function_name(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.uniphier_pinmux_function, ptr %7, i32 %1
  %9 = load ptr, ptr %8, align 4
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_pmx_get_function_groups(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.uniphier_pinmux_function, ptr %9, i32 %1, i32 1
  %11 = load ptr, ptr %10, align 4
  store ptr %11, ptr %2, align 4
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr %struct.uniphier_pinmux_function, ptr %14, i32 %1, i32 2
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_pmx_set_mux(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.uniphier_pinctrl_group, ptr %8, i32 %2, i32 1
  %10 = getelementptr %struct.uniphier_pinctrl_group, ptr %8, i32 %2, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %3
  %14 = getelementptr %struct.uniphier_pinctrl_group, ptr %8, i32 %2, i32 3
  br label %19

15:                                               ; preds = %19
  %16 = add nuw i32 %20, 1
  %17 = load i32, ptr %10, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %15, %13
  %20 = phi i32 [ 0, %13 ], [ %16, %15 ]
  %21 = load ptr, ptr %9, align 4
  %22 = getelementptr i32, ptr %21, i32 %20
  %23 = load i32, ptr %22, align 4
  %24 = load ptr, ptr %14, align 4
  %25 = getelementptr i32, ptr %24, i32 %20
  %26 = load i32, ptr %25, align 4
  %27 = tail call fastcc i32 @uniphier_pmx_set_one_mux(ptr noundef %0, i32 noundef %23, i32 noundef %26)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %15, label %29

29:                                               ; preds = %19, %15, %3
  %30 = phi i32 [ 0, %3 ], [ 0, %15 ], [ %27, %19 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_pmx_gpio_request_enable(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %1, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %1, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %17, %8
  %13 = phi i32 [ %18, %17 ], [ 0, %8 ]
  %14 = getelementptr i32, ptr %6, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %2
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = add nuw i32 %13, 1
  %19 = icmp eq i32 %18, %10
  br i1 %19, label %23, label %12

20:                                               ; preds = %12, %8
  %21 = phi i32 [ 0, %8 ], [ %13, %12 ]
  %22 = icmp eq i32 %21, %10
  br i1 %22, label %23, label %28, !prof !10

23:                                               ; preds = %20, %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 674, i32 noundef 9, ptr noundef null) #6
  br label %39

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %1, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = sub i32 %2, %26
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i32 [ %27, %24 ], [ %21, %20 ]
  %30 = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %1, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, %29
  %33 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %4, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %34, i32 0, i32 6
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 %36(i32 noundef %2, i32 noundef %32) #6
  %38 = tail call fastcc i32 @uniphier_pmx_set_one_mux(ptr noundef %0, i32 noundef %2, i32 noundef %37)
  br label %39

39:                                               ; preds = %28, %23
  %40 = phi i32 [ -22, %23 ], [ %38, %28 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uniphier_pmx_set_one_mux(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 2
  %7 = tail call ptr @radix_tree_lookup(ptr noundef %6, i32 noundef %1) #6
  %8 = getelementptr inbounds %struct.pin_desc, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = and i32 %10, 7
  %12 = icmp eq i32 %11, 7
  br i1 %12, label %30, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %5, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %15, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 %11, i32 %1
  %21 = lshr i32 %20, 3
  %22 = and i32 %21, 536870908
  %23 = add nuw nsw i32 %22, 7424
  %24 = and i32 %20, 31
  %25 = shl nuw i32 1, %24
  %26 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %5, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef %23, i32 noundef %25, i32 noundef %25, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %68

30:                                               ; preds = %13, %3
  %31 = icmp slt i32 %2, 0
  br i1 %31, label %68, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %4, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %34, i32 0, i32 7
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 8, i32 4
  %40 = select i1 %38, i32 4, i32 8
  %41 = mul i32 %39, %1
  %42 = lshr i32 %41, 5
  %43 = mul nuw nsw i32 %42, %40
  %44 = add nuw nsw i32 %43, 4096
  %45 = add nuw nsw i32 %44, %40
  %46 = and i32 %41, 28
  %47 = shl nsw i32 -1, %39
  %48 = xor i32 %47, -1
  %49 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %4, i32 0, i32 2
  %50 = shl i32 %48, %46
  br label %51

51:                                               ; preds = %58, %32
  %52 = phi i32 [ %44, %32 ], [ %60, %58 ]
  %53 = phi i32 [ %2, %32 ], [ %59, %58 ]
  %54 = load ptr, ptr %49, align 4
  %55 = shl i32 %53, %46
  %56 = tail call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef %52, i32 noundef %50, i32 noundef %55, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %51
  %59 = ashr i32 %53, %39
  %60 = add nuw nsw i32 %52, 4
  %61 = icmp ult i32 %60, %45
  br i1 %61, label %51, label %62

62:                                               ; preds = %58
  br i1 %38, label %67, label %63

63:                                               ; preds = %62
  %64 = load ptr, ptr %49, align 4
  %65 = tail call i32 @regmap_write(ptr noundef %64, i32 noundef 5888, i32 noundef 1) #6
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63, %62
  br label %68

68:                                               ; preds = %67, %63, %51, %30, %13
  %69 = phi i32 [ 0, %67 ], [ %28, %13 ], [ 0, %30 ], [ %65, %63 ], [ %56, %51 ]
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_conf_pin_config_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, ptr %2, align 4
  %8 = and i32 %7, 255
  %9 = trunc i32 %7 to i8
  switch i8 %9, label %127 [
    i8 1, label %10
    i8 5, label %10
    i8 3, label %10
    i8 9, label %48
    i8 12, label %85
  ]

10:                                               ; preds = %3, %3, %3
  %11 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %12 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 2
  %13 = tail call ptr @radix_tree_lookup(ptr noundef %12, i32 noundef %1) #6
  %14 = getelementptr inbounds %struct.pin_desc, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = lshr i32 %16, 24
  %18 = and i32 %17, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !annotation !11
  switch i8 %9, label %28 [
    i8 1, label %19
    i8 5, label %24
    i8 3, label %26
  ]

19:                                               ; preds = %10
  %20 = icmp eq i32 %18, 4
  br i1 %20, label %46, label %21

21:                                               ; preds = %19
  %22 = and i32 %16, 100663296
  %23 = icmp eq i32 %22, 33554432
  br i1 %23, label %46, label %29

24:                                               ; preds = %10
  switch i32 %18, label %25 [
    i32 2, label %46
    i32 0, label %29
  ]

25:                                               ; preds = %24
  br label %46

26:                                               ; preds = %10
  switch i32 %18, label %27 [
    i32 3, label %46
    i32 1, label %29
  ]

27:                                               ; preds = %26
  br label %46

28:                                               ; preds = %10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/uniphier/pinctrl-uniphier-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 238, 0\0A.popsection", ""() #6, !srcloc !12
  unreachable

29:                                               ; preds = %26, %24, %21
  %30 = phi i32 [ 0, %21 ], [ 1, %24 ], [ %18, %26 ]
  %31 = lshr i32 %16, 18
  %32 = and i32 %31, 60
  %33 = or i32 %32, 6656
  %34 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %11, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = call i32 @regmap_read(ptr noundef %35, i32 noundef %33, ptr noundef nonnull %6) #6
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %29
  %39 = lshr i32 %16, 15
  %40 = and i32 %39, 31
  %41 = load i32, ptr %6, align 4
  %42 = lshr i32 %41, %40
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, %30
  %45 = select i1 %44, i32 0, i32 -22
  br label %46

46:                                               ; preds = %38, %29, %27, %26, %25, %24, %21, %19
  %47 = phi i32 [ -22, %27 ], [ %45, %38 ], [ -22, %25 ], [ 0, %19 ], [ -22, %21 ], [ 0, %24 ], [ 0, %26 ], [ %36, %29 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  br label %127

48:                                               ; preds = %3
  %49 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !11
  %50 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 2
  %51 = tail call ptr @radix_tree_lookup(ptr noundef %50, i32 noundef %1) #6
  %52 = getelementptr inbounds %struct.pin_desc, ptr %51, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = ptrtoint ptr %53 to i32
  %55 = lshr i32 %54, 12
  %56 = and i32 %55, 7
  switch i32 %56, label %118 [
    i32 0, label %61
    i32 1, label %57
    i32 2, label %58
    i32 3, label %83
    i32 4, label %59
    i32 5, label %60
  ]

57:                                               ; preds = %48
  br label %61

58:                                               ; preds = %48
  br label %61

59:                                               ; preds = %48
  br label %83

60:                                               ; preds = %48
  br label %83

61:                                               ; preds = %58, %57, %48
  %62 = phi ptr [ @uniphier_conf_drv_strengths_3bit, %58 ], [ @uniphier_conf_drv_strengths_2bit, %57 ], [ @uniphier_conf_drv_strengths_1bit, %48 ]
  %63 = phi i32 [ 6528, %58 ], [ 6400, %57 ], [ 6144, %48 ]
  %64 = phi i32 [ 4, %58 ], [ 2, %57 ], [ 1, %48 ]
  %65 = phi i32 [ 3, %58 ], [ 2, %57 ], [ 1, %48 ]
  %66 = lshr i32 %54, 3
  %67 = and i32 %66, 511
  %68 = mul nuw nsw i32 %64, %67
  %69 = lshr i32 %68, 3
  %70 = and i32 %69, 508
  %71 = add nuw nsw i32 %70, %63
  %72 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %49, i32 0, i32 2
  %73 = load ptr, ptr %72, align 4
  %74 = call i32 @regmap_read(ptr noundef %73, i32 noundef %71, ptr noundef nonnull %5) #6
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %118

76:                                               ; preds = %61
  %77 = shl nsw i32 -1, %65
  %78 = xor i32 %77, -1
  %79 = and i32 %68, 31
  %80 = load i32, ptr %5, align 4
  %81 = lshr i32 %80, %79
  %82 = and i32 %81, %78
  br label %120

83:                                               ; preds = %60, %59, %48
  %84 = phi ptr [ @uniphier_conf_drv_strengths_fixed5, %59 ], [ @uniphier_conf_drv_strengths_fixed8, %60 ], [ @uniphier_conf_drv_strengths_fixed4, %48 ]
  store i32 0, ptr %5, align 4
  br label %120

85:                                               ; preds = %3
  %86 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %87 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 2
  %88 = tail call ptr @radix_tree_lookup(ptr noundef %87, i32 noundef %1) #6
  %89 = getelementptr inbounds %struct.pin_desc, ptr %88, i32 0, i32 3
  %90 = load ptr, ptr %89, align 4
  %91 = ptrtoint ptr %90 to i32
  %92 = and i32 %91, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !11
  %93 = icmp eq i32 %92, 7
  br i1 %93, label %116, label %94

94:                                               ; preds = %85
  %95 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %86, i32 0, i32 3
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %96, i32 0, i32 7
  %98 = load i32, ptr %97, align 4
  %99 = and i32 %98, 2
  %100 = icmp eq i32 %99, 0
  %101 = select i1 %100, i32 %92, i32 %1
  %102 = lshr i32 %101, 3
  %103 = and i32 %102, 536870908
  %104 = add nuw nsw i32 %103, 7424
  %105 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %86, i32 0, i32 2
  %106 = load ptr, ptr %105, align 4
  %107 = call i32 @regmap_read(ptr noundef %106, i32 noundef %104, ptr noundef nonnull %4) #6
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %94
  %110 = and i32 %101, 31
  %111 = shl nuw i32 1, %110
  %112 = load i32, ptr %4, align 4
  %113 = and i32 %112, %111
  %114 = icmp eq i32 %113, 0
  %115 = select i1 %114, i32 -22, i32 0
  br label %116

116:                                              ; preds = %109, %94, %85
  %117 = phi i32 [ %115, %109 ], [ 0, %85 ], [ %107, %94 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  br label %127

118:                                              ; preds = %61, %48
  %119 = phi i32 [ -22, %48 ], [ %74, %61 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  br label %127

120:                                              ; preds = %83, %76
  %121 = phi ptr [ %62, %76 ], [ %84, %83 ]
  %122 = phi i32 [ %82, %76 ], [ 0, %83 ]
  %123 = getelementptr i32, ptr %121, i32 %122
  %124 = load i32, ptr %123, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  %125 = shl i32 %124, 8
  %126 = or i32 %125, %8
  store i32 %126, ptr %2, align 4
  br label %127

127:                                              ; preds = %120, %118, %116, %46, %3
  %128 = phi i32 [ 0, %120 ], [ %119, %118 ], [ -22, %3 ], [ %47, %46 ], [ %117, %116 ]
  ret i32 %128
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_conf_pin_config_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %212, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 2
  br label %8

8:                                                ; preds = %209, %6
  %9 = phi i32 [ 0, %6 ], [ %210, %209 ]
  %10 = getelementptr i32, ptr %2, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %11, 8
  %13 = trunc i32 %11 to i8
  switch i8 %13, label %202 [
    i8 1, label %14
    i8 5, label %14
    i8 3, label %14
    i8 4, label %14
    i8 9, label %86
    i8 12, label %172
  ]

14:                                               ; preds = %8, %8, %8, %8
  %15 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %16 = tail call ptr @radix_tree_lookup(ptr noundef %7, i32 noundef %1) #6
  %17 = getelementptr inbounds %struct.pin_desc, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = ptrtoint ptr %18 to i32
  %20 = lshr i32 %19, 24
  %21 = and i32 %20, 7
  switch i8 %13, label %73 [
    i8 1, label %22
    i8 5, label %32
    i8 3, label %48
    i8 4, label %64
  ]

22:                                               ; preds = %14
  %23 = icmp eq i32 %21, 4
  br i1 %23, label %209, label %24

24:                                               ; preds = %22
  %25 = and i32 %19, 100663296
  %26 = icmp eq i32 %25, 33554432
  br i1 %26, label %27, label %74

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.pin_desc, ptr %16, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.17, ptr noundef %31) #7
  br label %212

32:                                               ; preds = %14
  %33 = icmp eq i32 %21, 2
  %34 = icmp ugt i32 %11, 255
  %35 = and i1 %34, %33
  br i1 %35, label %209, label %36

36:                                               ; preds = %32
  %37 = icmp eq i32 %21, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.pin_desc, ptr %16, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.18, ptr noundef %42) #7
  br label %212

43:                                               ; preds = %36
  %44 = icmp ult i32 %11, 256
  br i1 %44, label %45, label %74

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %47 = load ptr, ptr %46, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.19) #7
  br label %212

48:                                               ; preds = %14
  %49 = icmp eq i32 %21, 3
  %50 = icmp ugt i32 %11, 255
  %51 = and i1 %50, %49
  br i1 %51, label %209, label %52

52:                                               ; preds = %48
  %53 = icmp eq i32 %21, 1
  br i1 %53, label %59, label %54

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.pin_desc, ptr %16, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.20, ptr noundef %58) #7
  br label %212

59:                                               ; preds = %52
  %60 = icmp ult i32 %11, 256
  br i1 %60, label %61, label %74

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %63 = load ptr, ptr %62, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.21) #7
  br label %212

64:                                               ; preds = %14
  %65 = icmp eq i32 %21, 4
  br i1 %65, label %66, label %71

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.pin_desc, ptr %16, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.22, ptr noundef %70) #7
  br label %212

71:                                               ; preds = %64
  %72 = icmp ult i32 %11, 256
  br i1 %72, label %209, label %74

73:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/uniphier/pinctrl-uniphier-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 405, 0\0A.popsection", ""() #6, !srcloc !13
  unreachable

74:                                               ; preds = %71, %59, %43, %24
  %75 = phi i32 [ 1, %71 ], [ 1, %59 ], [ 1, %43 ], [ 0, %24 ]
  %76 = lshr i32 %19, 15
  %77 = lshr i32 %19, 18
  %78 = and i32 %77, 60
  %79 = or i32 %78, 6656
  %80 = and i32 %76, 31
  %81 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %15, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  %83 = shl nuw i32 1, %80
  %84 = shl nuw i32 %75, %80
  %85 = tail call i32 @regmap_update_bits_base(ptr noundef %82, i32 noundef %79, i32 noundef %83, i32 noundef %84, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %206

86:                                               ; preds = %8
  %87 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %88 = tail call ptr @radix_tree_lookup(ptr noundef %7, i32 noundef %1) #6
  %89 = tail call ptr @radix_tree_lookup(ptr noundef %7, i32 noundef %1) #6
  %90 = getelementptr inbounds %struct.pin_desc, ptr %89, i32 0, i32 3
  %91 = load ptr, ptr %90, align 4
  %92 = ptrtoint ptr %91 to i32
  %93 = lshr i32 %92, 12
  %94 = and i32 %93, 7
  switch i32 %94, label %120 [
    i32 0, label %100
    i32 1, label %95
    i32 2, label %96
    i32 3, label %97
    i32 4, label %98
    i32 5, label %99
  ]

95:                                               ; preds = %86
  br label %100

96:                                               ; preds = %86
  br label %100

97:                                               ; preds = %86
  br label %100

98:                                               ; preds = %86
  br label %100

99:                                               ; preds = %86
  br label %100

100:                                              ; preds = %99, %98, %97, %96, %95, %86
  %101 = phi ptr [ @uniphier_conf_drv_strengths_fixed8, %99 ], [ @uniphier_conf_drv_strengths_fixed5, %98 ], [ @uniphier_conf_drv_strengths_fixed4, %97 ], [ @uniphier_conf_drv_strengths_3bit, %96 ], [ @uniphier_conf_drv_strengths_2bit, %95 ], [ @uniphier_conf_drv_strengths_1bit, %86 ]
  %102 = phi i32 [ 0, %99 ], [ 0, %98 ], [ 0, %97 ], [ 6528, %96 ], [ 6400, %95 ], [ 6144, %86 ]
  %103 = phi i32 [ 0, %99 ], [ 0, %98 ], [ 0, %97 ], [ 4, %96 ], [ 2, %95 ], [ 1, %86 ]
  %104 = phi i1 [ true, %99 ], [ true, %98 ], [ true, %97 ], [ false, %96 ], [ false, %95 ], [ false, %86 ]
  %105 = phi i1 [ false, %99 ], [ false, %98 ], [ false, %97 ], [ false, %96 ], [ false, %95 ], [ true, %86 ]
  %106 = phi i1 [ false, %99 ], [ false, %98 ], [ false, %97 ], [ false, %96 ], [ true, %95 ], [ false, %86 ]
  %107 = phi i32 [ 0, %99 ], [ 0, %98 ], [ 0, %97 ], [ 3, %96 ], [ 2, %95 ], [ 1, %86 ]
  %108 = lshr i32 %92, 3
  %109 = and i32 %108, 511
  %110 = mul nuw nsw i32 %103, %109
  %111 = lshr i32 %110, 3
  %112 = and i32 %111, 508
  %113 = add nuw nsw i32 %112, %102
  %114 = and i32 %110, 31
  %115 = shl nsw i32 -1, %107
  %116 = xor i32 %115, -1
  %117 = sub nsw i32 0, %115
  %118 = load i32, ptr %101, align 4
  %119 = icmp ugt i32 %118, %12
  br i1 %119, label %156, label %125

120:                                              ; preds = %86
  %121 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr inbounds %struct.pin_desc, ptr %88, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %122, ptr noundef nonnull @.str.23, ptr noundef %124) #7
  br label %212

125:                                              ; preds = %100
  br i1 %104, label %163, label %126

126:                                              ; preds = %125
  %127 = getelementptr i32, ptr %101, i32 1
  %128 = load i32, ptr %127, align 4
  %129 = icmp ugt i32 %128, %12
  br i1 %129, label %156, label %130

130:                                              ; preds = %126
  br i1 %105, label %163, label %131

131:                                              ; preds = %130
  %132 = getelementptr i32, ptr %101, i32 2
  %133 = load i32, ptr %132, align 4
  %134 = icmp ugt i32 %133, %12
  br i1 %134, label %156, label %135

135:                                              ; preds = %131
  %136 = getelementptr i32, ptr %101, i32 3
  %137 = load i32, ptr %136, align 4
  %138 = icmp ugt i32 %137, %12
  br i1 %138, label %156, label %139

139:                                              ; preds = %135
  br i1 %106, label %163, label %140

140:                                              ; preds = %139
  %141 = getelementptr i32, ptr %101, i32 4
  %142 = load i32, ptr %141, align 4
  %143 = icmp ugt i32 %142, %12
  br i1 %143, label %156, label %144

144:                                              ; preds = %140
  %145 = getelementptr i32, ptr %101, i32 5
  %146 = load i32, ptr %145, align 4
  %147 = icmp ugt i32 %146, %12
  br i1 %147, label %156, label %148

148:                                              ; preds = %144
  %149 = getelementptr i32, ptr %101, i32 6
  %150 = load i32, ptr %149, align 4
  %151 = icmp ugt i32 %150, %12
  br i1 %151, label %156, label %152

152:                                              ; preds = %148
  %153 = getelementptr i32, ptr %101, i32 7
  %154 = load i32, ptr %153, align 4
  %155 = icmp ugt i32 %154, %12
  br i1 %155, label %156, label %163

156:                                              ; preds = %152, %148, %144, %140, %135, %131, %126, %100
  %157 = phi i32 [ 0, %100 ], [ 1, %126 ], [ 2, %131 ], [ 3, %135 ], [ 4, %140 ], [ 5, %144 ], [ 6, %148 ], [ 7, %152 ]
  br i1 %119, label %158, label %163

158:                                              ; preds = %156
  %159 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %160 = load ptr, ptr %159, align 4
  %161 = getelementptr inbounds %struct.pin_desc, ptr %88, i32 0, i32 1
  %162 = load ptr, ptr %161, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %160, ptr noundef nonnull @.str.24, i32 noundef %12, ptr noundef %162) #7
  br label %212

163:                                              ; preds = %156, %152, %139, %130, %125
  %164 = phi i32 [ %157, %156 ], [ %117, %152 ], [ %117, %139 ], [ %117, %130 ], [ %117, %125 ]
  br i1 %104, label %209, label %165

165:                                              ; preds = %163
  %166 = add nsw i32 %164, -1
  %167 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %87, i32 0, i32 2
  %168 = load ptr, ptr %167, align 4
  %169 = shl i32 %116, %114
  %170 = shl i32 %166, %114
  %171 = tail call i32 @regmap_update_bits_base(ptr noundef %168, i32 noundef %113, i32 noundef %169, i32 noundef %170, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %206

172:                                              ; preds = %8
  %173 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %174 = tail call ptr @radix_tree_lookup(ptr noundef %7, i32 noundef %1) #6
  %175 = getelementptr inbounds %struct.pin_desc, ptr %174, i32 0, i32 3
  %176 = load ptr, ptr %175, align 4
  %177 = ptrtoint ptr %176 to i32
  %178 = and i32 %177, 7
  %179 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %173, i32 0, i32 3
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %180, i32 0, i32 7
  %182 = load i32, ptr %181, align 4
  %183 = and i32 %182, 2
  %184 = icmp eq i32 %183, 0
  %185 = icmp ult i32 %11, 256
  %186 = or i32 %183, %12
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %212, label %188

188:                                              ; preds = %172
  %189 = icmp eq i32 %178, 7
  br i1 %189, label %190, label %191

190:                                              ; preds = %188
  br i1 %185, label %212, label %209

191:                                              ; preds = %188
  %192 = select i1 %184, i32 %178, i32 %1
  %193 = lshr i32 %192, 3
  %194 = and i32 %193, 536870908
  %195 = add nuw nsw i32 %194, 7424
  %196 = and i32 %192, 31
  %197 = shl nuw i32 1, %196
  %198 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %173, i32 0, i32 2
  %199 = load ptr, ptr %198, align 4
  %200 = select i1 %185, i32 0, i32 %197
  %201 = tail call i32 @regmap_update_bits_base(ptr noundef %199, i32 noundef %195, i32 noundef %197, i32 noundef %200, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %206

202:                                              ; preds = %8
  %203 = and i32 %11, 255
  %204 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %205 = load ptr, ptr %204, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %205, ptr noundef nonnull @.str.16, i32 noundef %203) #7
  br label %212

206:                                              ; preds = %191, %165, %74
  %207 = phi i32 [ %85, %74 ], [ %171, %165 ], [ %201, %191 ]
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %206, %190, %163, %71, %48, %32, %22
  %210 = add nuw i32 %9, 1
  %211 = icmp eq i32 %210, %3
  br i1 %211, label %212, label %8

212:                                              ; preds = %209, %206, %202, %190, %172, %158, %120, %66, %61, %54, %45, %38, %27, %4
  %213 = phi i32 [ -22, %202 ], [ -22, %66 ], [ -22, %54 ], [ -22, %61 ], [ -22, %38 ], [ -22, %45 ], [ -22, %27 ], [ -22, %120 ], [ -22, %158 ], [ 0, %4 ], [ %207, %206 ], [ 0, %209 ], [ -22, %172 ], [ -22, %190 ]
  ret i32 %213
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_conf_pin_config_group_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.uniphier_pinctrl_group, ptr %9, i32 %1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.uniphier_pinctrl_group, ptr %9, i32 %1, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %24, label %18

15:                                               ; preds = %18
  %16 = add nuw i32 %19, 1
  %17 = icmp eq i32 %16, %13
  br i1 %17, label %24, label %18

18:                                               ; preds = %15, %4
  %19 = phi i32 [ %16, %15 ], [ 0, %4 ]
  %20 = getelementptr i32, ptr %11, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @uniphier_conf_pin_config_set(ptr noundef %0, i32 noundef %21, ptr noundef %2, i32 noundef %3)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %15, label %24

24:                                               ; preds = %18, %15, %4
  %25 = phi i32 [ 0, %4 ], [ 0, %15 ], [ %22, %18 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 2152170932, i64 2152171444, i64 2152170969, i64 2152171025, i64 2152171059, i64 2152171083, i64 2152171124, i64 2152171145, i64 2152171173, i64 2152171207}
!9 = !{i64 2152171932, i64 2152172445, i64 2152171969, i64 2152172025, i64 2152172059, i64 2152172083, i64 2152172124, i64 2152172145, i64 2152172173, i64 2152172207}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"auto-init"}
!12 = !{i64 2152172966, i64 2152173479, i64 2152173003, i64 2152173059, i64 2152173093, i64 2152173117, i64 2152173158, i64 2152173179, i64 2152173207, i64 2152173241}
!13 = !{i64 2152178038, i64 2152178551, i64 2152178075, i64 2152178131, i64 2152178165, i64 2152178189, i64 2152178230, i64 2152178251, i64 2152178279, i64 2152178313}
