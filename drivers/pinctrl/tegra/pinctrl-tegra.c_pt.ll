; ModuleID = '/llk/IR/drivers/pinctrl/tegra/pinctrl-tegra.c_pt.bc'
source_filename = "../drivers/pinctrl/tegra/pinctrl-tegra.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cfg_param = type { ptr, i32 }
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
%struct.tegra_pmx = type { ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.tegra_pinctrl_soc_data = type { i32, ptr, ptr, i32, ptr, i32, ptr, i32, i8, i8, i8, i8 }
%struct.tegra_function = type { ptr, ptr, i32 }
%struct.tegra_pingroup = type { ptr, ptr, i8, [4 x i8], i32, i32, i32, i32, i64, i32, i32, i24, i32 }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@tegra_pinctrl_pm = dso_local local_unnamed_addr constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_pinctrl_suspend, ptr @tegra_pinctrl_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tegra_pinctrl_gpio_range = internal global %struct.pinctrl_gpio_range { %struct.list_head zeroinitializer, ptr @.str.1, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null }, align 4
@tegra_pinctrl_desc = internal global %struct.pinctrl_desc { ptr null, ptr null, i32 0, ptr @tegra_pinctrl_ops, ptr @tegra_pinmux_ops, ptr @tegra_pinconf_ops, ptr null, i32 0, ptr null, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [34 x i8] c"Couldn't register pinctrl driver\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Tegra GPIOs\00", align 1
@tegra_pinctrl_ops = internal constant %struct.pinctrl_ops { ptr @tegra_pinctrl_get_groups_count, ptr @tegra_pinctrl_get_group_name, ptr @tegra_pinctrl_get_group_pins, ptr @tegra_pinctrl_pin_dbg_show, ptr @tegra_pinctrl_dt_node_to_map, ptr @pinctrl_utils_free_map }, align 4
@tegra_pinmux_ops = internal constant %struct.pinmux_ops { ptr null, ptr null, ptr @tegra_pinctrl_get_funcs_count, ptr @tegra_pinctrl_get_func_name, ptr @tegra_pinctrl_get_func_groups, ptr @tegra_pinctrl_set_mux, ptr @tegra_pinctrl_gpio_request_enable, ptr @tegra_pinctrl_gpio_disable_free, ptr null, i8 0 }, align 4
@tegra_pinconf_ops = internal constant %struct.pinconf_ops { i8 0, ptr @tegra_pinconf_get, ptr @tegra_pinconf_set, ptr @tegra_pinconf_group_get, ptr @tegra_pinconf_group_set, ptr @tegra_pinconf_dbg_show, ptr @tegra_pinconf_group_dbg_show, ptr @tegra_pinconf_config_dbg_show }, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"nvidia,function\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"could not parse property nvidia,function\0A\00", align 1
@cfg_params = internal unnamed_addr constant [16 x %struct.cfg_param] [%struct.cfg_param { ptr @.str.8, i32 0 }, %struct.cfg_param { ptr @.str.9, i32 1 }, %struct.cfg_param { ptr @.str.10, i32 2 }, %struct.cfg_param { ptr @.str.11, i32 3 }, %struct.cfg_param { ptr @.str.12, i32 4 }, %struct.cfg_param { ptr @.str.13, i32 5 }, %struct.cfg_param { ptr @.str.14, i32 6 }, %struct.cfg_param { ptr @.str.15, i32 6 }, %struct.cfg_param { ptr @.str.16, i32 7 }, %struct.cfg_param { ptr @.str.17, i32 8 }, %struct.cfg_param { ptr @.str.18, i32 9 }, %struct.cfg_param { ptr @.str.19, i32 10 }, %struct.cfg_param { ptr @.str.20, i32 11 }, %struct.cfg_param { ptr @.str.21, i32 12 }, %struct.cfg_param { ptr @.str.22, i32 13 }, %struct.cfg_param { ptr @.str.23, i32 14 }], align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"could not parse property %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"nvidia,pins\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"could not parse property nvidia,pins\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"nvidia,pull\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"nvidia,tristate\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"nvidia,enable-input\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"nvidia,open-drain\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"nvidia,lock\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"nvidia,io-reset\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"nvidia,rcv-sel\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"nvidia,io-hv\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"nvidia,high-speed-mode\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"nvidia,schmitt\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"nvidia,low-power-mode\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"nvidia,pull-down-strength\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"nvidia,pull-up-strength\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"nvidia,slew-rate-falling\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"nvidia,slew-rate-rising\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"nvidia,drive-type\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"drivers/pinctrl/tegra/pinctrl-tegra.c\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"Pingroup not found for pin %u\0A\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"pin_config_get op not supported\0A\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"pin_config_set op not supported\0A\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"Invalid config param %04x\0A\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.30 = private unnamed_addr constant [50 x i8] c"Config param %04x (%s) not supported on group %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"LOCK bit cannot be cleared\0A\00", align 1
@.str.32 = private unnamed_addr constant [44 x i8] c"config %lx: %x too big for %d bit register\0A\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"\0A\09%s=%u\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"%s=%d\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"gpio-ranges\00", align 1
@switch.table.tegra_pinconf_config_dbg_show = private unnamed_addr constant [14 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15], align 4
@switch.table.tegra_pinconf_reg = private unnamed_addr constant [14 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pinctrl_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_pmx, ptr %3, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %41, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tegra_pmx, ptr %3, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %0, i32 -16
  %11 = getelementptr inbounds %struct.tegra_pmx, ptr %3, i32 0, i32 5
  br label %12

12:                                               ; preds = %36, %7
  %13 = phi ptr [ %9, %7 ], [ %37, %36 ]
  %14 = phi i32 [ 0, %7 ], [ %38, %36 ]
  %15 = tail call ptr @platform_get_resource(ptr noundef %10, i32 noundef 512, i32 noundef %14) #7
  %16 = getelementptr inbounds %struct.resource, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = load i32, ptr %15, align 4
  %19 = add i32 %17, 1
  %20 = sub i32 %19, %18
  %21 = icmp ult i32 %20, 4
  br i1 %21, label %36, label %22

22:                                               ; preds = %12
  %23 = load ptr, ptr %11, align 4
  %24 = getelementptr ptr, ptr %23, i32 %14
  %25 = load ptr, ptr %24, align 4
  %26 = lshr i32 %20, 2
  br label %27

27:                                               ; preds = %27, %22
  %28 = phi ptr [ %33, %27 ], [ %13, %22 ]
  %29 = phi i32 [ %34, %27 ], [ 0, %22 ]
  %30 = phi ptr [ %31, %27 ], [ %25, %22 ]
  %31 = getelementptr i32, ptr %30, i32 1
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #7, !srcloc !8
  %33 = getelementptr i32, ptr %28, i32 1
  store i32 %32, ptr %28, align 4
  %34 = add nuw nsw i32 %29, 1
  %35 = icmp eq i32 %34, %26
  br i1 %35, label %36, label %27

36:                                               ; preds = %27, %12
  %37 = phi ptr [ %13, %12 ], [ %33, %27 ]
  %38 = add nuw i32 %14, 1
  %39 = load i32, ptr %4, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %12, label %41

41:                                               ; preds = %36, %1
  %42 = getelementptr inbounds %struct.tegra_pmx, ptr %3, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 @pinctrl_force_sleep(ptr noundef %43) #7
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pinctrl_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_pmx, ptr %3, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %41, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tegra_pmx, ptr %3, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %0, i32 -16
  %11 = getelementptr inbounds %struct.tegra_pmx, ptr %3, i32 0, i32 5
  br label %12

12:                                               ; preds = %36, %7
  %13 = phi ptr [ %9, %7 ], [ %37, %36 ]
  %14 = phi i32 [ 0, %7 ], [ %38, %36 ]
  %15 = tail call ptr @platform_get_resource(ptr noundef %10, i32 noundef 512, i32 noundef %14) #7
  %16 = getelementptr inbounds %struct.resource, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = load i32, ptr %15, align 4
  %19 = add i32 %17, 1
  %20 = sub i32 %19, %18
  %21 = icmp ult i32 %20, 4
  br i1 %21, label %36, label %22

22:                                               ; preds = %12
  %23 = load ptr, ptr %11, align 4
  %24 = getelementptr ptr, ptr %23, i32 %14
  %25 = load ptr, ptr %24, align 4
  %26 = lshr i32 %20, 2
  br label %27

27:                                               ; preds = %27, %22
  %28 = phi ptr [ %31, %27 ], [ %13, %22 ]
  %29 = phi i32 [ %34, %27 ], [ 0, %22 ]
  %30 = phi ptr [ %33, %27 ], [ %25, %22 ]
  %31 = getelementptr i32, ptr %28, i32 1
  %32 = load i32, ptr %28, align 4
  %33 = getelementptr i32, ptr %30, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %32) #7, !srcloc !9
  %34 = add nuw nsw i32 %29, 1
  %35 = icmp eq i32 %34, %26
  br i1 %35, label %36, label %27

36:                                               ; preds = %27, %12
  %37 = phi ptr [ %13, %12 ], [ %31, %27 ]
  %38 = add nuw i32 %14, 1
  %39 = load i32, ptr %4, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %12, label %41

41:                                               ; preds = %36, %1
  %42 = getelementptr inbounds %struct.tegra_pmx, ptr %3, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_pinctrl_probe(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 28, i32 noundef 3520) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %230, label %6

6:                                                ; preds = %2
  store ptr %3, ptr %4, align 4
  %7 = getelementptr inbounds %struct.tegra_pmx, ptr %4, i32 0, i32 2
  store ptr %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %1, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = shl i32 %9, 2
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 4) #7
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.tegra_pmx, ptr %4, i32 0, i32 3
  store ptr null, ptr %14, align 4
  br label %230

15:                                               ; preds = %6
  %16 = extractvalue { i32, i1 } %11, 0
  %17 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %16, i32 noundef 3520) #7
  %18 = getelementptr inbounds %struct.tegra_pmx, ptr %4, i32 0, i32 3
  store ptr %17, ptr %18, align 4
  %19 = icmp eq ptr %17, null
  br i1 %19, label %230, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %1, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %92, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %1, i32 0, i32 4
  %26 = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %1, i32 0, i32 6
  br label %27

27:                                               ; preds = %85, %24
  %28 = phi i32 [ 0, %24 ], [ %87, %85 ]
  %29 = phi ptr [ %17, %24 ], [ %86, %85 ]
  %30 = load ptr, ptr %25, align 4
  %31 = getelementptr %struct.tegra_function, ptr %30, i32 %28, i32 1
  store ptr %29, ptr %31, align 4
  %32 = load i32, ptr %8, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %85, label %34

34:                                               ; preds = %27
  %35 = getelementptr %struct.tegra_function, ptr %30, i32 %28, i32 2
  br label %36

36:                                               ; preds = %80, %34
  %37 = phi i32 [ %32, %34 ], [ %81, %80 ]
  %38 = phi i32 [ 0, %34 ], [ %83, %80 ]
  %39 = phi ptr [ %29, %34 ], [ %82, %80 ]
  %40 = load ptr, ptr %26, align 4
  %41 = getelementptr %struct.tegra_pingroup, ptr %40, i32 %38
  %42 = getelementptr %struct.tegra_pingroup, ptr %40, i32 %38, i32 4
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %80, label %45

45:                                               ; preds = %36
  %46 = getelementptr %struct.tegra_pingroup, ptr %40, i32 %38, i32 3, i32 0
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %28, %48
  br i1 %49, label %65, label %50

50:                                               ; preds = %45
  %51 = getelementptr %struct.tegra_pingroup, ptr %40, i32 %38, i32 3, i32 1
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %28, %53
  br i1 %54, label %65, label %55

55:                                               ; preds = %50
  %56 = getelementptr %struct.tegra_pingroup, ptr %40, i32 %38, i32 3, i32 2
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %28, %58
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = getelementptr %struct.tegra_pingroup, ptr %40, i32 %38, i32 3, i32 3
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp eq i32 %28, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %60, %55, %50, %45
  %66 = load ptr, ptr %18, align 4
  %67 = ptrtoint ptr %39 to i32
  %68 = ptrtoint ptr %66 to i32
  %69 = sub i32 %67, %68
  %70 = ashr exact i32 %69, 2
  %71 = shl i32 %37, 2
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %74, label %73, !prof !12

73:                                               ; preds = %65
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/tegra/pinctrl-tegra.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 828, 0\0A.popsection", ""() #7, !srcloc !13
  unreachable

74:                                               ; preds = %65
  %75 = load ptr, ptr %41, align 4
  %76 = getelementptr ptr, ptr %39, i32 1
  store ptr %75, ptr %39, align 4
  %77 = load i32, ptr %35, align 4
  %78 = add i32 %77, 1
  store i32 %78, ptr %35, align 4
  %79 = load i32, ptr %8, align 4
  br label %80

80:                                               ; preds = %74, %60, %36
  %81 = phi i32 [ %79, %74 ], [ %37, %36 ], [ %37, %60 ]
  %82 = phi ptr [ %76, %74 ], [ %39, %36 ], [ %39, %60 ]
  %83 = add nuw i32 %38, 1
  %84 = icmp ult i32 %83, %81
  br i1 %84, label %36, label %85

85:                                               ; preds = %80, %27
  %86 = phi ptr [ %29, %27 ], [ %82, %80 ]
  %87 = add nuw i32 %28, 1
  %88 = load i32, ptr %21, align 4
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %27, label %90

90:                                               ; preds = %85
  %91 = load ptr, ptr %7, align 4
  br label %92

92:                                               ; preds = %90, %20
  %93 = phi ptr [ %91, %90 ], [ %1, %20 ]
  %94 = load i32, ptr %93, align 4
  store i32 %94, ptr getelementptr inbounds (%struct.pinctrl_gpio_range, ptr @tegra_pinctrl_gpio_range, i32 0, i32 5), align 4
  %95 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load ptr, ptr %3, align 4
  br label %100

100:                                              ; preds = %98, %92
  %101 = phi ptr [ %99, %98 ], [ %96, %92 ]
  store ptr %101, ptr @tegra_pinctrl_desc, align 4
  %102 = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %93, i32 0, i32 2
  %103 = load ptr, ptr %102, align 4
  store ptr %103, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @tegra_pinctrl_desc, i32 0, i32 1), align 4
  %104 = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %93, i32 0, i32 3
  %105 = load i32, ptr %104, align 4
  store i32 %105, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @tegra_pinctrl_desc, i32 0, i32 2), align 4
  %106 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #7
  %107 = icmp eq ptr %106, null
  br i1 %107, label %121, label %108

108:                                              ; preds = %108, %100
  %109 = phi ptr [ %119, %108 ], [ %106, %100 ]
  %110 = phi i32 [ %117, %108 ], [ 0, %100 ]
  %111 = phi i32 [ %118, %108 ], [ 0, %100 ]
  %112 = getelementptr inbounds %struct.resource, ptr %109, i32 0, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = load i32, ptr %109, align 4
  %115 = add i32 %110, 1
  %116 = add i32 %115, %113
  %117 = sub i32 %116, %114
  %118 = add i32 %111, 1
  %119 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef %118) #7
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %108

121:                                              ; preds = %108, %100
  %122 = phi i32 [ 0, %100 ], [ %118, %108 ]
  %123 = phi i32 [ 0, %100 ], [ %117, %108 ]
  %124 = getelementptr inbounds %struct.tegra_pmx, ptr %4, i32 0, i32 4
  store i32 %122, ptr %124, align 4
  %125 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %122, i32 4) #7
  %126 = extractvalue { i32, i1 } %125, 1
  br i1 %126, label %127, label %129, !prof !11

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.tegra_pmx, ptr %4, i32 0, i32 5
  store ptr null, ptr %128, align 4
  br label %230

129:                                              ; preds = %121
  %130 = extractvalue { i32, i1 } %125, 0
  %131 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %130, i32 noundef 3520) #7
  %132 = getelementptr inbounds %struct.tegra_pmx, ptr %4, i32 0, i32 5
  store ptr %131, ptr %132, align 4
  %133 = icmp eq ptr %131, null
  br i1 %133, label %230, label %134

134:                                              ; preds = %129
  %135 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %123, i32 noundef 3520) #7
  %136 = getelementptr inbounds %struct.tegra_pmx, ptr %4, i32 0, i32 6
  store ptr %135, ptr %136, align 4
  %137 = icmp eq ptr %135, null
  br i1 %137, label %230, label %138

138:                                              ; preds = %134
  %139 = icmp eq i32 %122, 0
  br i1 %139, label %155, label %144

140:                                              ; preds = %144
  %141 = add nuw nsw i32 %146, 1
  %142 = load i32, ptr %124, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %155

144:                                              ; preds = %140, %138
  %145 = phi ptr [ %149, %140 ], [ %131, %138 ]
  %146 = phi i32 [ %141, %140 ], [ 0, %138 ]
  %147 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef %146) #7
  %148 = getelementptr ptr, ptr %145, i32 %146
  store ptr %147, ptr %148, align 4
  %149 = load ptr, ptr %132, align 4
  %150 = getelementptr ptr, ptr %149, i32 %146
  %151 = load ptr, ptr %150, align 4
  %152 = icmp ugt ptr %151, inttoptr (i32 -4096 to ptr)
  br i1 %152, label %153, label %140

153:                                              ; preds = %144
  %154 = ptrtoint ptr %151 to i32
  br label %230

155:                                              ; preds = %140, %138
  %156 = tail call ptr @devm_pinctrl_register(ptr noundef %3, ptr noundef nonnull @tegra_pinctrl_desc, ptr noundef nonnull %4) #7
  %157 = getelementptr inbounds %struct.tegra_pmx, ptr %4, i32 0, i32 1
  store ptr %156, ptr %157, align 4
  %158 = icmp ugt ptr %156, inttoptr (i32 -4096 to ptr)
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str) #8
  %160 = load ptr, ptr %157, align 4
  %161 = ptrtoint ptr %160 to i32
  br label %230

162:                                              ; preds = %155
  %163 = load ptr, ptr %7, align 4
  %164 = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %163, i32 0, i32 7
  %165 = load i32, ptr %164, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %214, label %167

167:                                              ; preds = %208, %162
  %168 = phi ptr [ %209, %208 ], [ %163, %162 ]
  %169 = phi i32 [ %210, %208 ], [ 0, %162 ]
  %170 = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %168, i32 0, i32 6
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr %struct.tegra_pingroup, ptr %171, i32 %169, i32 12
  %173 = load i32, ptr %172, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %208, label %175

175:                                              ; preds = %167
  %176 = getelementptr %struct.tegra_pingroup, ptr %171, i32 %169, i32 4
  %177 = load i32, ptr %176, align 4
  %178 = icmp eq i32 %177, -1
  %179 = getelementptr %struct.tegra_pingroup, ptr %171, i32 %169, i32 8
  %180 = load i64, ptr %179, align 4
  %181 = trunc i64 %180 to i32
  br i1 %178, label %182, label %186

182:                                              ; preds = %175
  %183 = lshr i32 %181, 6
  %184 = getelementptr %struct.tegra_pingroup, ptr %171, i32 %169, i32 7
  %185 = load i32, ptr %184, align 4
  br label %186

186:                                              ; preds = %182, %175
  %187 = phi i32 [ %183, %182 ], [ %181, %175 ]
  %188 = phi i32 [ %185, %182 ], [ %177, %175 ]
  %189 = and i32 %187, 3
  %190 = load ptr, ptr %132, align 4
  %191 = getelementptr ptr, ptr %190, i32 %189
  %192 = load ptr, ptr %191, align 4
  %193 = getelementptr i8, ptr %192, i32 %188
  %194 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %193) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %195 = load i32, ptr %172, align 4
  %196 = xor i32 %195, -1
  %197 = and i32 %194, %196
  %198 = load ptr, ptr %132, align 4
  %199 = getelementptr ptr, ptr %198, i32 %189
  %200 = load ptr, ptr %199, align 4
  %201 = getelementptr i8, ptr %200, i32 %188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %201, i32 %197) #7, !srcloc !9
  %202 = load ptr, ptr %132, align 4
  %203 = getelementptr ptr, ptr %202, i32 %189
  %204 = load ptr, ptr %203, align 4
  %205 = getelementptr i8, ptr %204, i32 %188
  %206 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %205) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %207 = load ptr, ptr %7, align 4
  br label %208

208:                                              ; preds = %186, %167
  %209 = phi ptr [ %168, %167 ], [ %207, %186 ]
  %210 = add nuw i32 %169, 1
  %211 = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %209, i32 0, i32 7
  %212 = load i32, ptr %211, align 4
  %213 = icmp ult i32 %210, %212
  br i1 %213, label %167, label %214

214:                                              ; preds = %208, %162
  %215 = phi ptr [ %163, %162 ], [ %209, %208 ]
  %216 = load i32, ptr %215, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %228, label %218

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %215, i32 0, i32 1
  %220 = load ptr, ptr %219, align 4
  %221 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef %220) #7
  %222 = icmp eq ptr %221, null
  br i1 %222, label %226, label %223

223:                                              ; preds = %218
  %224 = tail call ptr @of_find_property(ptr noundef nonnull %221, ptr noundef nonnull @.str.35, ptr noundef null) #7
  %225 = icmp eq ptr %224, null
  tail call void @of_node_put(ptr noundef nonnull %221) #7
  br i1 %225, label %226, label %228

226:                                              ; preds = %223, %218
  %227 = load ptr, ptr %157, align 4
  tail call void @pinctrl_add_gpio_range(ptr noundef %227, ptr noundef nonnull @tegra_pinctrl_gpio_range) #7
  br label %228

228:                                              ; preds = %226, %223, %214
  %229 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %229, align 8
  br label %230

230:                                              ; preds = %228, %159, %153, %134, %129, %127, %15, %13, %2
  %231 = phi i32 [ %154, %153 ], [ %161, %159 ], [ 0, %228 ], [ -12, %2 ], [ -12, %15 ], [ -12, %129 ], [ -12, %134 ], [ -12, %13 ], [ -12, %127 ]
  ret i32 %231
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_add_gpio_range(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_force_sleep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pinctrl_get_groups_count(ptr noundef %0) #0 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %3 = getelementptr inbounds %struct.tegra_pmx, ptr %2, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %4, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra_pinctrl_get_group_name(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.tegra_pmx, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.tegra_pingroup, ptr %7, i32 %1
  %9 = load ptr, ptr %8, align 4
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pinctrl_get_group_pins(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.tegra_pmx, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.tegra_pingroup, ptr %9, i32 %1, i32 1
  %11 = load ptr, ptr %10, align 4
  store ptr %11, ptr %2, align 4
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %12, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr %struct.tegra_pingroup, ptr %14, i32 %1, i32 2
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i32
  store i32 %17, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_pinctrl_pin_dbg_show(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = load ptr, ptr %5, align 4
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi ptr [ %10, %9 ], [ %7, %3 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef %12) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pinctrl_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  store i32 0, ptr %9, align 4
  store ptr null, ptr %2, align 4
  store i32 0, ptr %3, align 4
  %10 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %87, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  br label %14

14:                                               ; preds = %83, %12
  %15 = phi ptr [ %10, %12 ], [ %85, %83 ]
  %16 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store ptr null, ptr %5, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store ptr null, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  store i32 0, ptr %8, align 4
  %17 = call i32 @of_property_read_string(ptr noundef nonnull %15, ptr noundef nonnull @.str.3, ptr noundef nonnull %5) #7
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = icmp eq i32 %17, -22
  br i1 %20, label %22, label %21

21:                                               ; preds = %19
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.4) #8
  br label %22

22:                                               ; preds = %21, %19
  store ptr null, ptr %5, align 4
  br label %23

23:                                               ; preds = %22, %14
  br label %24

24:                                               ; preds = %39, %23
  %25 = phi i32 [ %40, %39 ], [ 0, %23 ]
  %26 = getelementptr [16 x %struct.cfg_param], ptr @cfg_params, i32 0, i32 %25
  %27 = load ptr, ptr %26, align 4
  %28 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %15, ptr noundef %27, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #7
  %29 = call i32 @llvm.smin.i32(i32 %28, i32 0) #7
  switch i32 %29, label %38 [
    i32 0, label %30
    i32 -22, label %39
  ]

30:                                               ; preds = %24
  %31 = getelementptr [16 x %struct.cfg_param], ptr @cfg_params, i32 0, i32 %25, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = shl i32 %32, 16
  %34 = load i32, ptr %6, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @pinctrl_utils_add_config(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef %35) #7
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %78, label %39

38:                                               ; preds = %24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.5, ptr noundef %27) #8
  br label %39

39:                                               ; preds = %38, %30, %24
  %40 = add nuw nsw i32 %25, 1
  %41 = icmp eq i32 %40, 16
  br i1 %41, label %42, label %24

42:                                               ; preds = %39
  %43 = load ptr, ptr %5, align 4
  %44 = load i32, ptr %8, align 4
  %45 = call i32 @of_property_read_string_helper(ptr noundef nonnull %15, ptr noundef nonnull @.str.6, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.7) #8
  br label %78

48:                                               ; preds = %42
  %49 = icmp eq i32 %44, 0
  %50 = icmp ne ptr %43, null
  %51 = zext i1 %50 to i32
  %52 = select i1 %50, i32 2, i32 1
  %53 = select i1 %49, i32 %51, i32 %52
  %54 = mul nuw i32 %53, %45
  %55 = call i32 @pinctrl_utils_reserve_map(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %9, ptr noundef %3, i32 noundef %54) #7
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %78, label %57

57:                                               ; preds = %48
  %58 = call ptr @of_find_property(ptr noundef nonnull %15, ptr noundef nonnull @.str.6, ptr noundef null) #7
  %59 = call ptr @of_prop_next_string(ptr noundef %58, ptr noundef null) #7
  %60 = icmp eq ptr %59, null
  br i1 %60, label %83, label %61

61:                                               ; preds = %75, %57
  %62 = phi ptr [ %76, %75 ], [ %59, %57 ]
  %63 = load ptr, ptr %5, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = call i32 @pinctrl_utils_add_map_mux(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %9, ptr noundef %3, ptr noundef nonnull %62, ptr noundef nonnull %63) #7
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %65, %61
  %69 = load i32, ptr %8, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = load ptr, ptr %7, align 4
  %73 = call i32 @pinctrl_utils_add_map_configs(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %9, ptr noundef %3, ptr noundef nonnull %62, ptr noundef %72, i32 noundef %69, i32 noundef 4) #7
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %71, %68
  %76 = call ptr @of_prop_next_string(ptr noundef %58, ptr noundef nonnull %62) #7
  %77 = icmp eq ptr %76, null
  br i1 %77, label %83, label %61

78:                                               ; preds = %71, %65, %48, %47, %30
  %79 = phi i32 [ %45, %47 ], [ %73, %71 ], [ %66, %65 ], [ %36, %30 ], [ %55, %48 ]
  %80 = load ptr, ptr %7, align 4
  call void @kfree(ptr noundef %80) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  %81 = load ptr, ptr %2, align 4
  %82 = load i32, ptr %3, align 4
  call void @pinctrl_utils_free_map(ptr noundef %0, ptr noundef %81, i32 noundef %82) #7
  call void @of_node_put(ptr noundef nonnull %15) #7
  br label %87

83:                                               ; preds = %75, %57
  %84 = load ptr, ptr %7, align 4
  call void @kfree(ptr noundef %84) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  %85 = call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %15) #7
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %14

87:                                               ; preds = %83, %78, %4
  %88 = phi i32 [ %79, %78 ], [ 0, %4 ], [ 0, %83 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  ret i32 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_add_config(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_reserve_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_add_map_mux(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_add_map_configs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pinctrl_get_funcs_count(ptr noundef %0) #0 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %3 = getelementptr inbounds %struct.tegra_pmx, ptr %2, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra_pinctrl_get_func_name(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.tegra_pmx, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.tegra_function, ptr %7, i32 %1
  %9 = load ptr, ptr %8, align 4
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pinctrl_get_func_groups(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.tegra_pmx, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.tegra_function, ptr %9, i32 %1, i32 1
  %11 = load ptr, ptr %10, align 4
  store ptr %11, ptr %2, align 4
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr %struct.tegra_function, ptr %14, i32 %1, i32 2
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pinctrl_set_mux(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.tegra_pmx, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.tegra_pingroup, ptr %8, i32 %2, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %17, label %12, !prof !11

12:                                               ; preds = %3
  %13 = getelementptr %struct.tegra_pingroup, ptr %8, i32 %2, i32 3, i32 0
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %34, label %18

17:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 260, i32 noundef 9, ptr noundef null) #7
  br label %67

18:                                               ; preds = %12
  %19 = getelementptr %struct.tegra_pingroup, ptr %8, i32 %2, i32 3, i32 1
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %34, label %23

23:                                               ; preds = %18
  %24 = getelementptr %struct.tegra_pingroup, ptr %8, i32 %2, i32 3, i32 2
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, %1
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = getelementptr %struct.tegra_pingroup, ptr %8, i32 %2, i32 3, i32 3
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %31, %1
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 267, i32 noundef 9, ptr noundef null) #7
  br label %67

34:                                               ; preds = %28, %23, %18, %12
  %35 = phi i32 [ 0, %12 ], [ 1, %18 ], [ 2, %23 ], [ 3, %28 ]
  %36 = getelementptr %struct.tegra_pingroup, ptr %8, i32 %2, i32 8
  %37 = load i64, ptr %36, align 4
  %38 = trunc i64 %37 to i32
  %39 = and i32 %38, 3
  %40 = getelementptr inbounds %struct.tegra_pmx, ptr %4, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr ptr, ptr %41, i32 %39
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 %10
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %46 = load i64, ptr %36, align 4
  %47 = shl i64 %46, 50
  %48 = ashr i64 %47, 58
  %49 = trunc i64 %48 to i32
  %50 = shl i32 3, %49
  %51 = xor i32 %50, -1
  %52 = and i32 %45, %51
  %53 = shl i32 %35, %49
  %54 = or i32 %52, %53
  %55 = trunc i64 %46 to i32
  %56 = and i32 %55, 3
  %57 = load i32, ptr %9, align 4
  %58 = load ptr, ptr %40, align 4
  %59 = getelementptr ptr, ptr %58, i32 %56
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i8, ptr %60, i32 %57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %54) #7, !srcloc !9
  %62 = load ptr, ptr %40, align 4
  %63 = getelementptr ptr, ptr %62, i32 %56
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr i8, ptr %64, i32 %57
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  br label %67

67:                                               ; preds = %34, %33, %17
  %68 = phi i32 [ -22, %17 ], [ -22, %33 ], [ 0, %34 ]
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pinctrl_gpio_request_enable(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.tegra_pmx, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %6, i32 0, i32 11
  %8 = load i8, ptr %7, align 1, !range !16
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %92, label %10

10:                                               ; preds = %3
  %11 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %12 = getelementptr inbounds %struct.tegra_pmx, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %13, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %44, label %17

17:                                               ; preds = %38, %10
  %18 = phi i32 [ %39, %38 ], [ 0, %10 ]
  %19 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %20 = getelementptr inbounds %struct.tegra_pmx, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %21, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr %struct.tegra_pingroup, ptr %23, i32 %18, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr %struct.tegra_pingroup, ptr %23, i32 %18, i32 2
  %27 = load i8, ptr %26, align 4
  %28 = zext i8 %27 to i32
  %29 = icmp eq i8 %27, 0
  br i1 %29, label %38, label %33

30:                                               ; preds = %33
  %31 = add nuw nsw i32 %34, 1
  %32 = icmp eq i32 %31, %28
  br i1 %32, label %38, label %33

33:                                               ; preds = %30, %17
  %34 = phi i32 [ %31, %30 ], [ 0, %17 ]
  %35 = getelementptr i32, ptr %25, i32 %34
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, %2
  br i1 %37, label %47, label %30

38:                                               ; preds = %30, %17
  %39 = add nuw i32 %18, 1
  %40 = load ptr, ptr %12, align 4
  %41 = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %40, i32 0, i32 7
  %42 = load i32, ptr %41, align 4
  %43 = icmp ult i32 %39, %42
  br i1 %43, label %17, label %44

44:                                               ; preds = %38, %10
  %45 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %46 = load ptr, ptr %45, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.25, i32 noundef %2) #8
  br label %92

47:                                               ; preds = %33
  %48 = load ptr, ptr %12, align 4
  %49 = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %48, i32 0, i32 6
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr %struct.tegra_pingroup, ptr %50, i32 %18
  %52 = icmp eq ptr %51, null
  br i1 %52, label %92, label %53

53:                                               ; preds = %47
  %54 = getelementptr %struct.tegra_pingroup, ptr %50, i32 %18, i32 4
  %55 = load i32, ptr %54, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %92, label %57

57:                                               ; preds = %53
  %58 = getelementptr %struct.tegra_pingroup, ptr %50, i32 %18, i32 9
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %92

62:                                               ; preds = %57
  %63 = getelementptr %struct.tegra_pingroup, ptr %50, i32 %18, i32 8
  %64 = load i64, ptr %63, align 4
  %65 = trunc i64 %64 to i32
  %66 = and i32 %65, 3
  %67 = getelementptr inbounds %struct.tegra_pmx, ptr %4, i32 0, i32 5
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr ptr, ptr %68, i32 %66
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr i8, ptr %70, i32 %55
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %73 = load i32, ptr %58, align 4
  %74 = shl i32 %73, 26
  %75 = ashr exact i32 %74, 26
  %76 = shl nuw i32 1, %75
  %77 = xor i32 %76, -1
  %78 = and i32 %72, %77
  %79 = load i64, ptr %63, align 4
  %80 = trunc i64 %79 to i32
  %81 = and i32 %80, 3
  %82 = load i32, ptr %54, align 4
  %83 = load ptr, ptr %67, align 4
  %84 = getelementptr ptr, ptr %83, i32 %81
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr i8, ptr %85, i32 %82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %78) #7, !srcloc !9
  %87 = load ptr, ptr %67, align 4
  %88 = getelementptr ptr, ptr %87, i32 %81
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr i8, ptr %89, i32 %82
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  br label %92

92:                                               ; preds = %62, %57, %53, %47, %44, %3
  %93 = phi i32 [ 0, %62 ], [ 0, %3 ], [ -22, %47 ], [ -22, %57 ], [ -22, %53 ], [ -22, %44 ]
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_pinctrl_gpio_disable_free(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.tegra_pmx, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %6, i32 0, i32 11
  %8 = load i8, ptr %7, align 1, !range !16
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %91, label %10

10:                                               ; preds = %3
  %11 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %12 = getelementptr inbounds %struct.tegra_pmx, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %13, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %44, label %17

17:                                               ; preds = %38, %10
  %18 = phi i32 [ %39, %38 ], [ 0, %10 ]
  %19 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %20 = getelementptr inbounds %struct.tegra_pmx, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %21, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr %struct.tegra_pingroup, ptr %23, i32 %18, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr %struct.tegra_pingroup, ptr %23, i32 %18, i32 2
  %27 = load i8, ptr %26, align 4
  %28 = zext i8 %27 to i32
  %29 = icmp eq i8 %27, 0
  br i1 %29, label %38, label %33

30:                                               ; preds = %33
  %31 = add nuw nsw i32 %34, 1
  %32 = icmp eq i32 %31, %28
  br i1 %32, label %38, label %33

33:                                               ; preds = %30, %17
  %34 = phi i32 [ %31, %30 ], [ 0, %17 ]
  %35 = getelementptr i32, ptr %25, i32 %34
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, %2
  br i1 %37, label %47, label %30

38:                                               ; preds = %30, %17
  %39 = add nuw i32 %18, 1
  %40 = load ptr, ptr %12, align 4
  %41 = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %40, i32 0, i32 7
  %42 = load i32, ptr %41, align 4
  %43 = icmp ult i32 %39, %42
  br i1 %43, label %17, label %44

44:                                               ; preds = %38, %10
  %45 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %46 = load ptr, ptr %45, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.25, i32 noundef %2) #8
  br label %91

47:                                               ; preds = %33
  %48 = load ptr, ptr %12, align 4
  %49 = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %48, i32 0, i32 6
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr %struct.tegra_pingroup, ptr %50, i32 %18
  %52 = icmp eq ptr %51, null
  br i1 %52, label %91, label %53

53:                                               ; preds = %47
  %54 = getelementptr %struct.tegra_pingroup, ptr %50, i32 %18, i32 4
  %55 = load i32, ptr %54, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %91, label %57

57:                                               ; preds = %53
  %58 = getelementptr %struct.tegra_pingroup, ptr %50, i32 %18, i32 9
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %91

62:                                               ; preds = %57
  %63 = getelementptr %struct.tegra_pingroup, ptr %50, i32 %18, i32 8
  %64 = load i64, ptr %63, align 4
  %65 = trunc i64 %64 to i32
  %66 = and i32 %65, 3
  %67 = getelementptr inbounds %struct.tegra_pmx, ptr %4, i32 0, i32 5
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr ptr, ptr %68, i32 %66
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr i8, ptr %70, i32 %55
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %73 = load i32, ptr %58, align 4
  %74 = shl i32 %73, 26
  %75 = ashr exact i32 %74, 26
  %76 = shl nuw i32 1, %75
  %77 = or i32 %76, %72
  %78 = load i64, ptr %63, align 4
  %79 = trunc i64 %78 to i32
  %80 = and i32 %79, 3
  %81 = load i32, ptr %54, align 4
  %82 = load ptr, ptr %67, align 4
  %83 = getelementptr ptr, ptr %82, i32 %80
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr i8, ptr %84, i32 %81
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %77) #7, !srcloc !9
  %86 = load ptr, ptr %67, align 4
  %87 = getelementptr ptr, ptr %86, i32 %80
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr i8, ptr %88, i32 %81
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  br label %91

91:                                               ; preds = %62, %57, %53, %47, %44, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pinconf_get(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.26) #8
  ret i32 -524
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pinconf_set(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.27) #8
  ret i32 -524
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pinconf_group_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %9 = load i32, ptr %2, align 4
  %10 = lshr i32 %9, 16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 0, ptr %4, align 1, !annotation !15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  store i8 0, ptr %5, align 1, !annotation !15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #7
  store i8 0, ptr %6, align 1, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4, !annotation !15
  %11 = getelementptr inbounds %struct.tegra_pmx, ptr %8, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %12, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr %struct.tegra_pingroup, ptr %14, i32 %1
  %16 = call fastcc i32 @tegra_pinconf_reg(ptr noundef %8, ptr noundef %15, i32 noundef %10, i1 noundef zeroext true, ptr noundef nonnull %4, ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %39, label %18

18:                                               ; preds = %3
  %19 = load i8, ptr %4, align 1
  %20 = sext i8 %19 to i32
  %21 = load i32, ptr %7, align 4
  %22 = getelementptr inbounds %struct.tegra_pmx, ptr %8, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr ptr, ptr %23, i32 %20
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 %21
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %28 = load i8, ptr %6, align 1
  %29 = zext i8 %28 to i32
  %30 = shl nsw i32 -1, %29
  %31 = load i8, ptr %5, align 1
  %32 = zext i8 %31 to i32
  %33 = lshr i32 %27, %32
  %34 = and i32 %9, -65536
  %35 = and i32 %30, 65535
  %36 = xor i32 %35, 65535
  %37 = and i32 %36, %33
  %38 = or i32 %37, %34
  store i32 %38, ptr %2, align 4
  br label %39

39:                                               ; preds = %18, %3
  %40 = phi i32 [ 0, %18 ], [ %16, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_pinconf_group_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  store i8 0, ptr %5, align 1, !annotation !15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #7
  store i8 0, ptr %6, align 1, !annotation !15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #7
  store i8 0, ptr %7, align 1, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  store i32 0, ptr %8, align 4, !annotation !15
  %10 = getelementptr inbounds %struct.tegra_pmx, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %11, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.tegra_pingroup, ptr %13, i32 %1
  %15 = icmp eq i32 %3, 0
  br i1 %15, label %84, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.tegra_pmx, ptr %9, i32 0, i32 5
  br label %18

18:                                               ; preds = %64, %16
  %19 = phi i32 [ 0, %16 ], [ %82, %64 ]
  %20 = getelementptr i32, ptr %2, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = lshr i32 %21, 16
  %23 = trunc i32 %21 to i16
  %24 = call fastcc i32 @tegra_pinconf_reg(ptr noundef %9, ptr noundef %14, i32 noundef %22, i1 noundef zeroext true, ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %84, label %26

26:                                               ; preds = %18
  %27 = load i8, ptr %5, align 1
  %28 = sext i8 %27 to i32
  %29 = load i32, ptr %8, align 4
  %30 = load ptr, ptr %17, align 4
  %31 = getelementptr ptr, ptr %30, i32 %28
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 %29
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %35 = icmp eq i32 %22, 4
  br i1 %35, label %36, label %47

36:                                               ; preds = %26
  %37 = load i8, ptr %6, align 1
  %38 = zext i8 %37 to i32
  %39 = shl nuw i32 1, %38
  %40 = and i32 %39, %34
  %41 = icmp eq i32 %40, 0
  %42 = icmp ne i16 %23, 0
  %43 = select i1 %41, i1 true, i1 %42
  br i1 %43, label %47, label %44

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %46 = load ptr, ptr %45, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.31) #8
  br label %84

47:                                               ; preds = %36, %26
  %48 = load i8, ptr %7, align 1
  %49 = icmp eq i8 %48, 1
  %50 = icmp ne i16 %23, 0
  %51 = zext i1 %50 to i32
  %52 = select i1 %49, i32 %51, i32 %21
  %53 = zext i8 %48 to i32
  %54 = shl nsw i32 -1, %53
  %55 = and i32 %52, 65535
  %56 = and i32 %55, %54
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %47
  %59 = getelementptr i32, ptr %2, i32 %19
  %60 = sext i8 %48 to i32
  %61 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %62 = load ptr, ptr %61, align 4
  %63 = load i32, ptr %59, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.32, i32 noundef %63, i32 noundef %55, i32 noundef %60) #8
  br label %84

64:                                               ; preds = %47
  %65 = xor i32 %54, -1
  %66 = load i8, ptr %6, align 1
  %67 = sext i8 %66 to i32
  %68 = shl i32 %65, %67
  %69 = xor i32 %68, -1
  %70 = and i32 %34, %69
  %71 = shl i32 %55, %67
  %72 = or i32 %70, %71
  %73 = load ptr, ptr %17, align 4
  %74 = getelementptr ptr, ptr %73, i32 %28
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr i8, ptr %75, i32 %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %72) #7, !srcloc !9
  %77 = load ptr, ptr %17, align 4
  %78 = getelementptr ptr, ptr %77, i32 %28
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr i8, ptr %79, i32 %29
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %82 = add nuw i32 %19, 1
  %83 = icmp eq i32 %82, %3
  br i1 %83, label %84, label %18

84:                                               ; preds = %64, %58, %44, %18, %4
  %85 = phi i32 [ -22, %58 ], [ -22, %44 ], [ 0, %4 ], [ %24, %18 ], [ 0, %64 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  ret i32 %85
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @tegra_pinconf_dbg_show(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) #5 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_pinconf_group_dbg_show(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 0, ptr %4, align 1, !annotation !15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  store i8 0, ptr %5, align 1, !annotation !15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #7
  store i8 0, ptr %6, align 1, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4, !annotation !15
  %9 = getelementptr inbounds %struct.tegra_pmx, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %10, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr %struct.tegra_pingroup, ptr %12, i32 %2
  %14 = getelementptr inbounds %struct.tegra_pmx, ptr %8, i32 0, i32 5
  br label %15

15:                                               ; preds = %44, %3
  %16 = phi i32 [ 0, %3 ], [ %45, %44 ]
  %17 = getelementptr [16 x %struct.cfg_param], ptr @cfg_params, i32 0, i32 %16, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = call fastcc i32 @tegra_pinconf_reg(ptr noundef %8, ptr noundef %13, i32 noundef %18, i1 noundef zeroext false, ptr noundef nonnull %4, ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %44, label %21

21:                                               ; preds = %15
  %22 = getelementptr [16 x %struct.cfg_param], ptr @cfg_params, i32 0, i32 %16
  %23 = load i8, ptr %4, align 1
  %24 = sext i8 %23 to i32
  %25 = load i32, ptr %7, align 4
  %26 = load ptr, ptr %14, align 4
  %27 = getelementptr ptr, ptr %26, i32 %24
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 %25
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %31 = load i8, ptr %5, align 1
  %32 = zext i8 %31 to i32
  %33 = lshr i32 %30, %32
  %34 = load i8, ptr %6, align 1
  %35 = zext i8 %34 to i32
  %36 = shl nsw i32 -1, %35
  %37 = xor i32 %36, -1
  %38 = and i32 %33, %37
  %39 = load ptr, ptr %22, align 4
  %40 = tail call ptr @strchr(ptr noundef %39, i32 noundef 44) #7
  %41 = icmp eq ptr %40, null
  %42 = getelementptr i8, ptr %40, i32 1
  %43 = select i1 %41, ptr %39, ptr %42
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.33, ptr noundef %43, i32 noundef %38) #7
  br label %44

44:                                               ; preds = %21, %15
  %45 = add nuw nsw i32 %16, 1
  %46 = icmp eq i32 %45, 16
  br i1 %46, label %47, label %15

47:                                               ; preds = %44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_pinconf_config_dbg_show(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp ult i32 %2, 65536
  br i1 %4, label %9, label %13

5:                                                ; preds = %13
  %6 = sext i16 %16 to i32
  %7 = getelementptr inbounds [14 x i32], ptr @switch.table.tegra_pinconf_config_dbg_show, i32 0, i32 %6
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %5, %3
  %10 = phi i32 [ 0, %3 ], [ %8, %5 ]
  %11 = getelementptr [16 x %struct.cfg_param], ptr @cfg_params, i32 0, i32 %10
  %12 = load ptr, ptr %11, align 4
  br label %18

13:                                               ; preds = %3
  %14 = lshr i32 %2, 16
  %15 = trunc i32 %14 to i16
  %16 = add i16 %15, -1
  %17 = icmp ult i16 %16, 14
  br i1 %17, label %5, label %18

18:                                               ; preds = %13, %9
  %19 = phi ptr [ %12, %9 ], [ @.str.29, %13 ]
  %20 = tail call ptr @strchr(ptr noundef %19, i32 noundef 44) #7
  %21 = icmp eq ptr %20, null
  %22 = getelementptr i8, ptr %20, i32 1
  %23 = select i1 %21, ptr %19, ptr %22
  %24 = and i32 %2, 65535
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.34, ptr noundef %23, i32 noundef %24) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_pinconf_reg(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, i1 noundef zeroext %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef %5, ptr nocapture noundef %6, ptr nocapture noundef writeonly %7) unnamed_addr #0 {
  switch i32 %2, label %237 [
    i32 0, label %9
    i32 1, label %21
    i32 2, label %33
    i32 3, label %44
    i32 4, label %55
    i32 5, label %66
    i32 6, label %77
    i32 7, label %88
    i32 8, label %111
    i32 9, label %134
    i32 10, label %146
    i32 11, label %163
    i32 12, label %180
    i32 13, label %197
    i32 14, label %214
  ]

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 8
  %11 = load i64, ptr %10, align 4
  %12 = trunc i64 %11 to i8
  %13 = lshr i8 %12, 2
  %14 = and i8 %13, 3
  store i8 %14, ptr %4, align 1
  %15 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %5, align 4
  %17 = load i64, ptr %10, align 4
  %18 = shl i64 %17, 44
  %19 = ashr i64 %18, 58
  %20 = trunc i64 %19 to i8
  store i8 %20, ptr %6, align 1
  br label %239

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 8
  %23 = load i64, ptr %22, align 4
  %24 = trunc i64 %23 to i8
  %25 = lshr i8 %24, 4
  %26 = and i8 %25, 3
  store i8 %26, ptr %4, align 1
  %27 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 6
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %5, align 4
  %29 = load i64, ptr %22, align 4
  %30 = shl i64 %29, 38
  %31 = ashr i64 %30, 58
  %32 = trunc i64 %31 to i8
  store i8 %32, ptr %6, align 1
  br label %239

33:                                               ; preds = %8
  %34 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 8
  %35 = load i64, ptr %34, align 4
  %36 = trunc i64 %35 to i8
  %37 = and i8 %36, 3
  store i8 %37, ptr %4, align 1
  %38 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 4
  %39 = load i32, ptr %38, align 4
  store i32 %39, ptr %5, align 4
  %40 = load i64, ptr %34, align 4
  %41 = shl i64 %40, 32
  %42 = ashr i64 %41, 58
  %43 = trunc i64 %42 to i8
  store i8 %43, ptr %6, align 1
  br label %239

44:                                               ; preds = %8
  %45 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 8
  %46 = load i64, ptr %45, align 4
  %47 = trunc i64 %46 to i8
  %48 = and i8 %47, 3
  store i8 %48, ptr %4, align 1
  %49 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 4
  %50 = load i32, ptr %49, align 4
  store i32 %50, ptr %5, align 4
  %51 = load i64, ptr %45, align 4
  %52 = shl i64 %51, 26
  %53 = ashr i64 %52, 58
  %54 = trunc i64 %53 to i8
  store i8 %54, ptr %6, align 1
  br label %239

55:                                               ; preds = %8
  %56 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 8
  %57 = load i64, ptr %56, align 4
  %58 = trunc i64 %57 to i8
  %59 = and i8 %58, 3
  store i8 %59, ptr %4, align 1
  %60 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 4
  %61 = load i32, ptr %60, align 4
  store i32 %61, ptr %5, align 4
  %62 = load i64, ptr %56, align 4
  %63 = shl i64 %62, 20
  %64 = ashr i64 %63, 58
  %65 = trunc i64 %64 to i8
  store i8 %65, ptr %6, align 1
  br label %239

66:                                               ; preds = %8
  %67 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 8
  %68 = load i64, ptr %67, align 4
  %69 = trunc i64 %68 to i8
  %70 = and i8 %69, 3
  store i8 %70, ptr %4, align 1
  %71 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 4
  %72 = load i32, ptr %71, align 4
  store i32 %72, ptr %5, align 4
  %73 = load i64, ptr %67, align 4
  %74 = shl i64 %73, 14
  %75 = ashr i64 %74, 58
  %76 = trunc i64 %75 to i8
  store i8 %76, ptr %6, align 1
  br label %239

77:                                               ; preds = %8
  %78 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 8
  %79 = load i64, ptr %78, align 4
  %80 = trunc i64 %79 to i8
  %81 = and i8 %80, 3
  store i8 %81, ptr %4, align 1
  %82 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 4
  %83 = load i32, ptr %82, align 4
  store i32 %83, ptr %5, align 4
  %84 = load i64, ptr %78, align 4
  %85 = shl i64 %84, 8
  %86 = ashr i64 %85, 58
  %87 = trunc i64 %86 to i8
  store i8 %87, ptr %6, align 1
  br label %239

88:                                               ; preds = %8
  %89 = getelementptr inbounds %struct.tegra_pmx, ptr %0, i32 0, i32 2
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %90, i32 0, i32 8
  %92 = load i8, ptr %91, align 4, !range !16
  %93 = icmp eq i8 %92, 0
  %94 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 8
  %95 = load i64, ptr %94, align 4
  %96 = trunc i64 %95 to i8
  br i1 %93, label %100, label %97

97:                                               ; preds = %88
  %98 = and i8 %96, 3
  store i8 %98, ptr %4, align 1
  %99 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 4
  br label %103

100:                                              ; preds = %88
  %101 = lshr i8 %96, 6
  store i8 %101, ptr %4, align 1
  %102 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 7
  br label %103

103:                                              ; preds = %100, %97
  %104 = phi ptr [ %102, %100 ], [ %99, %97 ]
  %105 = load i32, ptr %104, align 4
  store i32 %105, ptr %5, align 4
  %106 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 8
  %107 = load i64, ptr %106, align 4
  %108 = shl i64 %107, 2
  %109 = ashr i64 %108, 58
  %110 = trunc i64 %109 to i8
  store i8 %110, ptr %6, align 1
  br label %239

111:                                              ; preds = %8
  %112 = getelementptr inbounds %struct.tegra_pmx, ptr %0, i32 0, i32 2
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %113, i32 0, i32 9
  %115 = load i8, ptr %114, align 1, !range !16
  %116 = icmp eq i8 %115, 0
  %117 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 8
  %118 = load i64, ptr %117, align 4
  %119 = trunc i64 %118 to i8
  br i1 %116, label %123, label %120

120:                                              ; preds = %111
  %121 = and i8 %119, 3
  store i8 %121, ptr %4, align 1
  %122 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 4
  br label %126

123:                                              ; preds = %111
  %124 = lshr i8 %119, 6
  store i8 %124, ptr %4, align 1
  %125 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 7
  br label %126

126:                                              ; preds = %123, %120
  %127 = phi ptr [ %125, %123 ], [ %122, %120 ]
  %128 = load i32, ptr %127, align 4
  store i32 %128, ptr %5, align 4
  %129 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 9
  %130 = load i32, ptr %129, align 4
  %131 = shl i32 %130, 20
  %132 = ashr i32 %131, 26
  %133 = trunc i32 %132 to i8
  store i8 %133, ptr %6, align 1
  br label %239

134:                                              ; preds = %8
  %135 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 8
  %136 = load i64, ptr %135, align 4
  %137 = trunc i64 %136 to i8
  %138 = lshr i8 %137, 6
  store i8 %138, ptr %4, align 1
  %139 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 7
  %140 = load i32, ptr %139, align 4
  store i32 %140, ptr %5, align 4
  %141 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 9
  %142 = load i32, ptr %141, align 4
  %143 = shl i32 %142, 14
  %144 = ashr i32 %143, 26
  %145 = trunc i32 %144 to i8
  store i8 %145, ptr %6, align 1
  br label %239

146:                                              ; preds = %8
  %147 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 8
  %148 = load i64, ptr %147, align 4
  %149 = trunc i64 %148 to i8
  %150 = lshr i8 %149, 6
  store i8 %150, ptr %4, align 1
  %151 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 7
  %152 = load i32, ptr %151, align 4
  store i32 %152, ptr %5, align 4
  %153 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 9
  %154 = load i32, ptr %153, align 4
  %155 = shl i32 %154, 8
  %156 = ashr i32 %155, 26
  %157 = trunc i32 %156 to i8
  store i8 %157, ptr %6, align 1
  %158 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 10
  %159 = load i32, ptr %158, align 4
  %160 = shl i32 %159, 2
  %161 = ashr i32 %160, 26
  %162 = trunc i32 %161 to i8
  br label %239

163:                                              ; preds = %8
  %164 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 8
  %165 = load i64, ptr %164, align 4
  %166 = trunc i64 %165 to i8
  %167 = lshr i8 %166, 6
  store i8 %167, ptr %4, align 1
  %168 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 7
  %169 = load i32, ptr %168, align 4
  store i32 %169, ptr %5, align 4
  %170 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 9
  %171 = load i32, ptr %170, align 4
  %172 = shl i32 %171, 2
  %173 = ashr i32 %172, 26
  %174 = trunc i32 %173 to i8
  store i8 %174, ptr %6, align 1
  %175 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 11
  %176 = load i32, ptr %175, align 4
  %177 = shl i32 %176, 26
  %178 = ashr exact i32 %177, 26
  %179 = trunc i32 %178 to i8
  br label %239

180:                                              ; preds = %8
  %181 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 8
  %182 = load i64, ptr %181, align 4
  %183 = trunc i64 %182 to i8
  %184 = lshr i8 %183, 6
  store i8 %184, ptr %4, align 1
  %185 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 7
  %186 = load i32, ptr %185, align 4
  store i32 %186, ptr %5, align 4
  %187 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 10
  %188 = load i32, ptr %187, align 4
  %189 = shl i32 %188, 20
  %190 = ashr i32 %189, 26
  %191 = trunc i32 %190 to i8
  store i8 %191, ptr %6, align 1
  %192 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 11
  %193 = load i32, ptr %192, align 4
  %194 = shl i32 %193, 14
  %195 = ashr i32 %194, 26
  %196 = trunc i32 %195 to i8
  br label %239

197:                                              ; preds = %8
  %198 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 8
  %199 = load i64, ptr %198, align 4
  %200 = trunc i64 %199 to i8
  %201 = lshr i8 %200, 6
  store i8 %201, ptr %4, align 1
  %202 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 7
  %203 = load i32, ptr %202, align 4
  store i32 %203, ptr %5, align 4
  %204 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 10
  %205 = load i32, ptr %204, align 4
  %206 = shl i32 %205, 26
  %207 = ashr exact i32 %206, 26
  %208 = trunc i32 %207 to i8
  store i8 %208, ptr %6, align 1
  %209 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 11
  %210 = load i32, ptr %209, align 4
  %211 = shl i32 %210, 20
  %212 = ashr i32 %211, 26
  %213 = trunc i32 %212 to i8
  br label %239

214:                                              ; preds = %8
  %215 = getelementptr inbounds %struct.tegra_pmx, ptr %0, i32 0, i32 2
  %216 = load ptr, ptr %215, align 4
  %217 = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %216, i32 0, i32 10
  %218 = load i8, ptr %217, align 2, !range !16
  %219 = icmp eq i8 %218, 0
  %220 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 8
  %221 = load i64, ptr %220, align 4
  %222 = trunc i64 %221 to i8
  br i1 %219, label %226, label %223

223:                                              ; preds = %214
  %224 = and i8 %222, 3
  store i8 %224, ptr %4, align 1
  %225 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 4
  br label %229

226:                                              ; preds = %214
  %227 = lshr i8 %222, 6
  store i8 %227, ptr %4, align 1
  %228 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 7
  br label %229

229:                                              ; preds = %226, %223
  %230 = phi ptr [ %228, %226 ], [ %225, %223 ]
  %231 = load i32, ptr %230, align 4
  store i32 %231, ptr %5, align 4
  %232 = getelementptr inbounds %struct.tegra_pingroup, ptr %1, i32 0, i32 10
  %233 = load i32, ptr %232, align 4
  %234 = shl i32 %233, 8
  %235 = ashr i32 %234, 26
  %236 = trunc i32 %235 to i8
  store i8 %236, ptr %6, align 1
  br label %239

237:                                              ; preds = %8
  %238 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %238, ptr noundef nonnull @.str.28, i32 noundef %2) #8
  br label %261

239:                                              ; preds = %229, %197, %180, %163, %146, %134, %126, %103, %77, %66, %55, %44, %33, %21, %9
  %240 = phi i8 [ 2, %229 ], [ %213, %197 ], [ %196, %180 ], [ %179, %163 ], [ %162, %146 ], [ 2, %134 ], [ 1, %126 ], [ 1, %103 ], [ 1, %77 ], [ 1, %66 ], [ 1, %55 ], [ 1, %44 ], [ 1, %33 ], [ 1, %21 ], [ 2, %9 ]
  store i8 %240, ptr %7, align 1
  %241 = load i32, ptr %5, align 4
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %249, label %243

243:                                              ; preds = %239
  %244 = load i8, ptr %6, align 1
  %245 = icmp sgt i8 %244, -1
  %246 = xor i1 %3, true
  %247 = or i1 %245, %246
  %248 = select i1 %245, i32 0, i32 -524
  br i1 %247, label %261, label %250

249:                                              ; preds = %239
  br i1 %3, label %250, label %261

250:                                              ; preds = %249, %243
  %251 = icmp ult i32 %2, 14
  br i1 %251, label %252, label %255

252:                                              ; preds = %250
  %253 = getelementptr inbounds [14 x i32], ptr @switch.table.tegra_pinconf_reg, i32 0, i32 %2
  %254 = load i32, ptr %253, align 4
  br label %255

255:                                              ; preds = %252, %250
  %256 = phi i32 [ %254, %252 ], [ 15, %250 ]
  %257 = getelementptr [16 x %struct.cfg_param], ptr @cfg_params, i32 0, i32 %256
  %258 = load ptr, ptr %257, align 4
  %259 = load ptr, ptr %0, align 4
  %260 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %259, ptr noundef nonnull @.str.30, i32 noundef %2, ptr noundef %258, ptr noundef %260) #8
  br label %261

261:                                              ; preds = %255, %249, %243, %237
  %262 = phi i32 [ -524, %237 ], [ -524, %255 ], [ -524, %249 ], [ %248, %243 ]
  ret i32 %262
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 380866}
!9 = !{i64 380448}
!10 = !{i64 2152197198}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2152198035, i64 2152198537, i64 2152198072, i64 2152198128, i64 2152198162, i64 2152198186, i64 2152198227, i64 2152198248, i64 2152198276, i64 2152198310}
!14 = !{i64 2152184392}
!15 = !{!"auto-init"}
!16 = !{i8 0, i8 2}
