; ModuleID = '/llk/IR/drivers/pinctrl/spear/pinctrl-spear.c_pt.bc'
source_filename = "../drivers/pinctrl/spear/pinctrl-spear.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.spear_gpio_pingroup = type { ptr, i32, ptr, i8 }
%struct.spear_muxreg = type { i16, i32, i32 }
%struct.spear_pinctrl_machdata = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i8, i16, ptr, i32 }
%struct.spear_pingroup = type { ptr, ptr, i32, ptr, i32 }
%struct.spear_modemux = type { i16, i8, ptr }
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
%struct.spear_pmx = type { ptr, ptr, ptr, ptr }
%struct.spear_pmx_mode = type { ptr, i16, i16, i16, i32 }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.62 }
%union.anon.62 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }
%struct.spear_function = type { ptr, ptr, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Init regmap failed (%pe).\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"st,pinmux-mode\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"OF: pinmux mode not passed\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"OF: Couldn't configure mode: %x\0A\00", align 1
@spear_pinctrl_desc = internal global %struct.pinctrl_desc { ptr @.str.7, ptr null, i32 0, ptr @spear_pinctrl_ops, ptr @spear_pinmux_ops, ptr null, ptr null, i32 0, ptr null, ptr null, i8 0 }, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Couldn't register pinctrl driver\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Configured Mode: %s with id: %x\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"no_name\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"spear-pinmux\00", align 1
@spear_pinctrl_ops = internal constant %struct.pinctrl_ops { ptr @spear_pinctrl_get_groups_cnt, ptr @spear_pinctrl_get_group_name, ptr @spear_pinctrl_get_group_pins, ptr @spear_pinctrl_pin_dbg_show, ptr @spear_pinctrl_dt_node_to_map, ptr @spear_pinctrl_dt_free_map }, align 4
@spear_pinmux_ops = internal constant %struct.pinmux_ops { ptr null, ptr null, ptr @spear_pinctrl_get_funcs_count, ptr @spear_pinctrl_get_func_name, ptr @spear_pinctrl_get_func_groups, ptr @spear_pinctrl_set_mux, ptr @gpio_request_enable, ptr @gpio_disable_free, ptr null, i8 0 }, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c" spear-pinmux\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"st,function\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"st,pins\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"No child nodes passed via DT\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"pinmux group: %s not supported\0A\00", align 1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pmx_init_gpio_pingroup_addr(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %20, %3
  %6 = phi i32 [ %21, %20 ], [ 0, %3 ]
  %7 = getelementptr %struct.spear_gpio_pingroup, ptr %0, i32 %6, i32 3
  %8 = load i8, ptr %7, align 4
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %5
  %11 = getelementptr %struct.spear_gpio_pingroup, ptr %0, i32 %6, i32 2
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i32 [ 0, %10 ], [ %16, %12 ]
  %14 = load ptr, ptr %11, align 4
  %15 = getelementptr %struct.spear_muxreg, ptr %14, i32 %13
  store i16 %2, ptr %15, align 4
  %16 = add nuw nsw i32 %13, 1
  %17 = load i8, ptr %7, align 4
  %18 = zext i8 %17 to i32
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %12, label %20

20:                                               ; preds = %12, %5
  %21 = add nuw i32 %6, 1
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %23, label %5

23:                                               ; preds = %20, %3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pmx_init_addr(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %54, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %0, i32 0, i32 4
  br label %8

8:                                                ; preds = %50, %6
  %9 = phi i32 [ %4, %6 ], [ %51, %50 ]
  %10 = phi i32 [ 0, %6 ], [ %52, %50 ]
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr ptr, ptr %11, i32 %10
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.spear_pingroup, ptr %13, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %50, label %17

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.spear_pingroup, ptr %13, i32 0, i32 3
  br label %19

19:                                               ; preds = %44, %17
  %20 = phi i32 [ %15, %17 ], [ %45, %44 ]
  %21 = phi i32 [ 0, %17 ], [ %46, %44 ]
  %22 = load ptr, ptr %18, align 4
  %23 = getelementptr %struct.spear_modemux, ptr %22, i32 %21, i32 1
  %24 = load i8, ptr %23, align 2
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %44, label %26

26:                                               ; preds = %19
  %27 = getelementptr %struct.spear_modemux, ptr %22, i32 %21, i32 2
  br label %28

28:                                               ; preds = %37, %26
  %29 = phi i8 [ %24, %26 ], [ %38, %37 ]
  %30 = phi i32 [ 0, %26 ], [ %39, %37 ]
  %31 = load ptr, ptr %27, align 4
  %32 = getelementptr %struct.spear_muxreg, ptr %31, i32 %30
  %33 = load i16, ptr %32, align 4
  %34 = icmp eq i16 %33, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  store i16 %1, ptr %32, align 4
  %36 = load i8, ptr %23, align 2
  br label %37

37:                                               ; preds = %35, %28
  %38 = phi i8 [ %29, %28 ], [ %36, %35 ]
  %39 = add nuw nsw i32 %30, 1
  %40 = zext i8 %38 to i32
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %28, label %42

42:                                               ; preds = %37
  %43 = load i32, ptr %14, align 4
  br label %44

44:                                               ; preds = %42, %19
  %45 = phi i32 [ %43, %42 ], [ %20, %19 ]
  %46 = add nuw i32 %21, 1
  %47 = icmp ult i32 %46, %45
  br i1 %47, label %19, label %48

48:                                               ; preds = %44
  %49 = load i32, ptr %3, align 4
  br label %50

50:                                               ; preds = %48, %8
  %51 = phi i32 [ %49, %48 ], [ %9, %8 ]
  %52 = add nuw i32 %10, 1
  %53 = icmp ult i32 %52, %51
  br i1 %53, label %8, label %54

54:                                               ; preds = %50, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spear_pinctrl_probe(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %1, null
  br i1 %8, label %88, label %9

9:                                                ; preds = %2
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 16, i32 noundef 3520) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %88, label %12

12:                                               ; preds = %9
  %13 = tail call ptr @device_node_to_regmap(ptr noundef %7) #7
  %14 = getelementptr inbounds %struct.spear_pmx, ptr %10, i32 0, i32 3
  store ptr %13, ptr %14, align 4
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull %13) #8
  %17 = ptrtoint ptr %13 to i32
  br label %88

18:                                               ; preds = %12
  store ptr %5, ptr %10, align 4
  %19 = getelementptr inbounds %struct.spear_pmx, ptr %10, i32 0, i32 2
  store ptr %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %1, i32 0, i32 9
  %21 = load i8, ptr %20, align 4, !range !8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %77, label %23

23:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4
  %24 = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #7
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  br label %88

27:                                               ; preds = %23
  %28 = load i32, ptr %4, align 4
  %29 = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %1, i32 0, i32 11
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %51, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %1, i32 0, i32 12
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %32
  %37 = shl nuw i32 1, %28
  br label %41

38:                                               ; preds = %41
  %39 = add nuw i32 %42, 1
  %40 = icmp eq i32 %39, %34
  br i1 %40, label %51, label %41

41:                                               ; preds = %38, %36
  %42 = phi i32 [ %39, %38 ], [ 0, %36 ]
  %43 = getelementptr ptr, ptr %30, i32 %42
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.spear_pmx_mode, ptr %44, i32 0, i32 1
  %46 = load i16, ptr %45, align 4
  %47 = zext i16 %46 to i32
  %48 = icmp eq i32 %37, %47
  br i1 %48, label %49, label %38

49:                                               ; preds = %41
  %50 = icmp eq ptr %44, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %49, %38, %32, %27
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.3, i32 noundef %28) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  br label %88

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.spear_pmx_mode, ptr %44, i32 0, i32 1
  %54 = getelementptr inbounds %struct.spear_pmx_mode, ptr %44, i32 0, i32 2
  %55 = load i16, ptr %54, align 2
  %56 = zext i16 %55 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !9
  %57 = call i32 @regmap_read(ptr noundef %13, i32 noundef %56, ptr noundef nonnull %3) #7
  %58 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %59 = getelementptr inbounds %struct.spear_pmx_mode, ptr %44, i32 0, i32 3
  %60 = load i16, ptr %59, align 4
  %61 = zext i16 %60 to i32
  %62 = xor i32 %61, -1
  %63 = and i32 %58, %62
  %64 = getelementptr inbounds %struct.spear_pmx_mode, ptr %44, i32 0, i32 4
  %65 = load i32, ptr %64, align 4
  %66 = or i32 %63, %65
  %67 = load i16, ptr %54, align 2
  %68 = zext i16 %67 to i32
  %69 = call i32 @regmap_write(ptr noundef %13, i32 noundef %68, i32 noundef %66) #7
  %70 = load i16, ptr %53, align 4
  %71 = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %1, i32 0, i32 10
  store i16 %70, ptr %71, align 2
  %72 = load ptr, ptr %44, align 4
  %73 = icmp eq ptr %72, null
  %74 = select i1 %73, ptr @.str.6, ptr %72
  %75 = load i16, ptr %54, align 2
  %76 = zext i16 %75 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.5, ptr noundef nonnull %74, i32 noundef %76) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  br label %77

77:                                               ; preds = %52, %18
  %78 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %10, ptr %78, align 8
  %79 = load ptr, ptr %1, align 4
  store ptr %79, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @spear_pinctrl_desc, i32 0, i32 1), align 4
  %80 = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %1, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  store i32 %81, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @spear_pinctrl_desc, i32 0, i32 2), align 4
  %82 = call ptr @devm_pinctrl_register(ptr noundef %5, ptr noundef nonnull @spear_pinctrl_desc, ptr noundef nonnull %10) #7
  %83 = getelementptr inbounds %struct.spear_pmx, ptr %10, i32 0, i32 1
  store ptr %82, ptr %83, align 4
  %84 = icmp ugt ptr %82, inttoptr (i32 -4096 to ptr)
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.4) #8
  %86 = load ptr, ptr %83, align 4
  %87 = ptrtoint ptr %86 to i32
  br label %88

88:                                               ; preds = %85, %77, %51, %26, %16, %9, %2
  %89 = phi i32 [ %17, %16 ], [ %87, %85 ], [ -19, %2 ], [ -12, %9 ], [ -22, %51 ], [ -22, %26 ], [ 0, %77 ]
  ret i32 %89
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_node_to_regmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_pinctrl_get_groups_cnt(ptr noundef %0) #2 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %3 = getelementptr inbounds %struct.spear_pmx, ptr %2, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @spear_pinctrl_get_group_name(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.spear_pmx, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr ptr, ptr %7, i32 %1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_pinctrl_get_group_pins(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.spear_pmx, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr ptr, ptr %9, i32 %1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.spear_pingroup, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  store ptr %13, ptr %2, align 4
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %14, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr ptr, ptr %16, i32 %1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.spear_pingroup, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  store i32 %20, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @spear_pinctrl_pin_dbg_show(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #2 {
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_pinctrl_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = alloca ptr, align 4
  %6 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store ptr null, ptr %5, align 4, !annotation !9
  %7 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %19, %4
  %10 = phi i32 [ %20, %19 ], [ 0, %4 ]
  %11 = phi ptr [ %21, %19 ], [ %7, %4 ]
  %12 = call i32 @of_property_read_string(ptr noundef nonnull %11, ptr noundef nonnull @.str.9, ptr noundef nonnull %5) #7
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  call void @of_node_put(ptr noundef nonnull %11) #7
  br label %63

15:                                               ; preds = %9
  %16 = call i32 @of_property_read_string_helper(ptr noundef nonnull %11, ptr noundef nonnull @.str.10, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  call void @of_node_put(ptr noundef nonnull %11) #7
  br label %63

19:                                               ; preds = %15
  %20 = add i32 %16, %10
  %21 = call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %11) #7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %9

23:                                               ; preds = %19
  %24 = icmp eq i32 %20, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %23, %4
  %26 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.11) #8
  br label %63

27:                                               ; preds = %23
  %28 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %20, i32 28) #7
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %30, label %31, !prof !10

30:                                               ; preds = %27
  store ptr null, ptr %2, align 4
  br label %63

31:                                               ; preds = %27
  %32 = extractvalue { i32, i1 } %28, 0
  %33 = call noalias align 64 ptr @__kmalloc(i32 noundef %32, i32 noundef 3520) #9
  store ptr %33, ptr %2, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %63, label %35

35:                                               ; preds = %31
  %36 = call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #7
  %37 = icmp eq ptr %36, null
  br i1 %37, label %62, label %38

38:                                               ; preds = %58, %35
  %39 = phi i32 [ %59, %58 ], [ 0, %35 ]
  %40 = phi ptr [ %60, %58 ], [ %36, %35 ]
  %41 = call i32 @of_property_read_string(ptr noundef nonnull %40, ptr noundef nonnull @.str.9, ptr noundef nonnull %5) #7
  %42 = call ptr @of_find_property(ptr noundef nonnull %40, ptr noundef nonnull @.str.10, ptr noundef null) #7
  %43 = call ptr @of_prop_next_string(ptr noundef %42, ptr noundef null) #7
  %44 = icmp eq ptr %43, null
  br i1 %44, label %58, label %45

45:                                               ; preds = %45, %38
  %46 = phi i32 [ %55, %45 ], [ %39, %38 ]
  %47 = phi ptr [ %56, %45 ], [ %43, %38 ]
  %48 = load ptr, ptr %2, align 4
  %49 = getelementptr %struct.pinctrl_map, ptr %48, i32 %46, i32 2
  store i32 2, ptr %49, align 4
  %50 = load ptr, ptr %2, align 4
  %51 = getelementptr %struct.pinctrl_map, ptr %50, i32 %46, i32 4
  store ptr %47, ptr %51, align 4
  %52 = load ptr, ptr %5, align 4
  %53 = load ptr, ptr %2, align 4
  %54 = getelementptr %struct.pinctrl_map, ptr %53, i32 %46, i32 4, i32 0, i32 1
  store ptr %52, ptr %54, align 4
  %55 = add i32 %46, 1
  %56 = call ptr @of_prop_next_string(ptr noundef %42, ptr noundef nonnull %47) #7
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %45

58:                                               ; preds = %45, %38
  %59 = phi i32 [ %39, %38 ], [ %55, %45 ]
  %60 = call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %40) #7
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %38

62:                                               ; preds = %58, %35
  store i32 %20, ptr %3, align 4
  br label %63

63:                                               ; preds = %62, %31, %30, %25, %18, %14
  %64 = phi i32 [ %12, %14 ], [ %16, %18 ], [ 0, %62 ], [ -19, %25 ], [ -12, %31 ], [ -12, %30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @spear_pinctrl_dt_free_map(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #2 {
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_pinctrl_get_funcs_count(ptr noundef %0) #2 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %3 = getelementptr inbounds %struct.spear_pmx, ptr %2, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @spear_pinctrl_get_func_name(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.spear_pmx, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr ptr, ptr %7, i32 %1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_pinctrl_get_func_groups(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.spear_pmx, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr ptr, ptr %9, i32 %1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.spear_function, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  store ptr %13, ptr %2, align 4
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr ptr, ptr %16, i32 %1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.spear_function, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  store i32 %20, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_pinctrl_set_mux(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.spear_pmx, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr ptr, ptr %9, i32 %2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.spear_pingroup, ptr %11, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %73, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.spear_pingroup, ptr %11, i32 0, i32 3
  %17 = getelementptr inbounds %struct.spear_pmx, ptr %5, i32 0, i32 3
  br label %18

18:                                               ; preds = %70, %15
  %19 = phi i32 [ %13, %15 ], [ %66, %70 ]
  %20 = phi ptr [ %7, %15 ], [ %71, %70 ]
  %21 = phi i1 [ false, %15 ], [ %67, %70 ]
  %22 = phi i32 [ 0, %15 ], [ %68, %70 ]
  %23 = load ptr, ptr %16, align 4
  %24 = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %20, i32 0, i32 9
  %25 = load i8, ptr %24, align 4, !range !8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %18
  %28 = getelementptr %struct.spear_modemux, ptr %23, i32 %22
  %29 = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %20, i32 0, i32 10
  %30 = load i16, ptr %29, align 2
  %31 = load i16, ptr %28, align 4
  %32 = and i16 %31, %30
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %65, label %34

34:                                               ; preds = %27, %18
  %35 = getelementptr %struct.spear_modemux, ptr %23, i32 %22, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr %struct.spear_modemux, ptr %23, i32 %22, i32 1
  %38 = load i8, ptr %37, align 2
  %39 = zext i8 %38 to i32
  %40 = icmp eq i8 %38, 0
  br i1 %40, label %65, label %41

41:                                               ; preds = %41, %34
  %42 = phi i32 [ %61, %41 ], [ 0, %34 ]
  %43 = getelementptr %struct.spear_muxreg, ptr %36, i32 %42
  %44 = load i16, ptr %43, align 4
  %45 = zext i16 %44 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !9
  %46 = load ptr, ptr %17, align 4
  %47 = call i32 @regmap_read(ptr noundef %46, i32 noundef %45, ptr noundef nonnull %4) #7
  %48 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %49 = getelementptr %struct.spear_muxreg, ptr %36, i32 %42, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %48, %51
  %53 = getelementptr %struct.spear_muxreg, ptr %36, i32 %42, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, %50
  %56 = or i32 %55, %52
  %57 = load i16, ptr %43, align 4
  %58 = zext i16 %57 to i32
  %59 = load ptr, ptr %17, align 4
  %60 = call i32 @regmap_write(ptr noundef %59, i32 noundef %58, i32 noundef %56) #7
  %61 = add nuw nsw i32 %42, 1
  %62 = icmp eq i32 %61, %39
  br i1 %62, label %63, label %41

63:                                               ; preds = %41
  %64 = load i32, ptr %12, align 4
  br label %65

65:                                               ; preds = %63, %34, %27
  %66 = phi i32 [ %19, %27 ], [ %19, %34 ], [ %64, %63 ]
  %67 = phi i1 [ %21, %27 ], [ true, %34 ], [ true, %63 ]
  %68 = add nuw i32 %22, 1
  %69 = icmp ult i32 %68, %66
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load ptr, ptr %6, align 4
  br label %18

72:                                               ; preds = %65
  br i1 %67, label %76, label %73

73:                                               ; preds = %72, %3
  %74 = load ptr, ptr %5, align 4
  %75 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.12, ptr noundef %75) #8
  br label %76

76:                                               ; preds = %73, %72
  %77 = phi i32 [ -19, %73 ], [ 0, %72 ]
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_request_enable(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  tail call fastcc void @gpio_request_endisable(ptr noundef %0, i32 noundef %2, i1 noundef zeroext true)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gpio_disable_free(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  tail call fastcc void @gpio_request_endisable(ptr noundef %0, i32 noundef %2, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gpio_request_endisable(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #2 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.spear_pmx, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %70, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %7, i32 0, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %70, label %15

15:                                               ; preds = %31, %11
  %16 = phi i32 [ %32, %31 ], [ 0, %11 ]
  %17 = getelementptr %struct.spear_gpio_pingroup, ptr %9, i32 %16
  %18 = getelementptr %struct.spear_gpio_pingroup, ptr %9, i32 %16, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr %17, align 4
  br label %26

23:                                               ; preds = %26
  %24 = add nuw i32 %27, 1
  %25 = icmp eq i32 %24, %19
  br i1 %25, label %31, label %26

26:                                               ; preds = %23, %21
  %27 = phi i32 [ 0, %21 ], [ %24, %23 ]
  %28 = getelementptr i32, ptr %22, i32 %27
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, %1
  br i1 %30, label %34, label %23

31:                                               ; preds = %23, %15
  %32 = add nuw i32 %16, 1
  %33 = icmp eq i32 %32, %13
  br i1 %33, label %70, label %15

34:                                               ; preds = %26
  %35 = icmp eq ptr %17, null
  br i1 %35, label %70, label %36

36:                                               ; preds = %34
  %37 = getelementptr %struct.spear_gpio_pingroup, ptr %9, i32 %16, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr %struct.spear_gpio_pingroup, ptr %9, i32 %16, i32 3
  %40 = load i8, ptr %39, align 4
  %41 = zext i8 %40 to i32
  %42 = icmp eq i8 %40, 0
  br i1 %42, label %70, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.spear_pmx, ptr %5, i32 0, i32 3
  %45 = xor i1 %2, true
  %46 = sext i1 %45 to i32
  br label %47

47:                                               ; preds = %47, %43
  %48 = phi i32 [ 0, %43 ], [ %68, %47 ]
  %49 = getelementptr %struct.spear_muxreg, ptr %38, i32 %48
  %50 = load i16, ptr %49, align 4
  %51 = zext i16 %50 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !9
  %52 = load ptr, ptr %44, align 4
  %53 = call i32 @regmap_read(ptr noundef %52, i32 noundef %51, ptr noundef nonnull %4) #7
  %54 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %55 = getelementptr %struct.spear_muxreg, ptr %38, i32 %48, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %54, %57
  %59 = getelementptr %struct.spear_muxreg, ptr %38, i32 %48, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = xor i32 %60, %46
  %62 = and i32 %61, %56
  %63 = or i32 %62, %58
  %64 = load i16, ptr %49, align 4
  %65 = zext i16 %64 to i32
  %66 = load ptr, ptr %44, align 4
  %67 = call i32 @regmap_write(ptr noundef %66, i32 noundef %65, i32 noundef %63) #7
  %68 = add nuw nsw i32 %48, 1
  %69 = icmp eq i32 %68, %41
  br i1 %69, label %70, label %47

70:                                               ; preds = %47, %36, %34, %31, %11, %3
  %71 = getelementptr inbounds %struct.spear_pinctrl_machdata, ptr %7, i32 0, i32 7
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  call void %72(ptr noundef %5, i32 noundef %1, i1 noundef zeroext %2) #7
  br label %75

75:                                               ; preds = %74, %70
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(0) }

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
!10 = !{!"branch_weights", i32 1, i32 2000}
