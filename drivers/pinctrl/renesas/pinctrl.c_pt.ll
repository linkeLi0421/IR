; ModuleID = '/llk/IR/drivers/pinctrl/renesas/pinctrl.c_pt.bc'
source_filename = "../drivers/pinctrl/renesas/pinctrl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sh_pfc_pinctrl = type { ptr, %struct.pinctrl_desc, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.sh_pfc = type { ptr, ptr, %struct.spinlock, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.sh_pfc_soc_info = type { ptr, ptr, %struct.pinmux_range, %struct.pinmux_range, ptr, i32, %struct.pinmux_range, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.pinmux_range = type { i16, i16, i16 }
%struct.sh_pfc_pin = type { ptr, i32, i16, i16 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.pinmux_bias_reg = type { i32, i32, [32 x i16] }
%struct.sh_pfc_soc_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.sh_pfc_pin_group = type { ptr, ptr, ptr, i32 }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.62 }
%union.anon.62 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }
%struct.pinctrl_map_mux = type { ptr, ptr }
%struct.sh_pfc_function = type { ptr, ptr, i32 }
%struct.sh_pfc_pin_config = type { i16 }
%struct.pinmux_drive_reg = type { i32, [8 x %struct.pinmux_drive_reg_field] }
%struct.pinmux_drive_reg_field = type { i16, i8, i8 }

@.str = private unnamed_addr constant [7 x i8] c"sh-pfc\00", align 1
@sh_pfc_pinctrl_ops = internal constant %struct.pinctrl_ops { ptr @sh_pfc_get_groups_count, ptr @sh_pfc_get_group_name, ptr @sh_pfc_get_group_pins, ptr @sh_pfc_pin_dbg_show, ptr @sh_pfc_dt_node_to_map, ptr @sh_pfc_dt_free_map }, align 4
@sh_pfc_pinmux_ops = internal constant %struct.pinmux_ops { ptr null, ptr null, ptr @sh_pfc_get_functions_count, ptr @sh_pfc_get_function_name, ptr @sh_pfc_get_function_groups, ptr @sh_pfc_func_set_mux, ptr @sh_pfc_gpio_request_enable, ptr @sh_pfc_gpio_disable_free, ptr @sh_pfc_gpio_set_direction, i8 0 }, align 4
@sh_pfc_pinconf_ops = internal constant %struct.pinconf_ops { i8 1, ptr @sh_pfc_pinconf_get, ptr @sh_pfc_pinconf_set, ptr null, ptr @sh_pfc_pinconf_group_set, ptr null, ptr null, ptr @pinconf_generic_dump_config }, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"could not register: %i\0A\00", align 1
@rcar_pin_to_bias_reg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"drivers/pinctrl/renesas/pinctrl.c\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Pin %u is not in bias info list\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"no mapping found in node %pOF\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"pins\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"renesas,function\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"renesas,groups\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"renesas,pins\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Invalid function in DT\0A\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"DT node must contain at least a function or config\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"Invalid pins list in DT\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"Invalid pin groups list in DT\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"No pin or group provided in DT node\0A\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"invalid pin %#x\00", align 1
@switch.table.sh_pfc_pinconf_set = private unnamed_addr constant [11 x i32] [i32 12, i32 8, i32 4, i32 12, i32 32, i32 12, i32 12, i32 12, i32 12, i32 12, i32 16], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sh_pfc_register_pinctrl(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 72, i32 noundef 3520) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %99, label %5, !prof !8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %3, i32 0, i32 2
  store ptr %0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.sh_pfc, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %8, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 12) #7
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %13, label %15, !prof !8

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %3, i32 0, i32 3
  br label %74

15:                                               ; preds = %5
  %16 = load ptr, ptr %0, align 4
  %17 = extractvalue { i32, i1 } %11, 0
  %18 = tail call noalias ptr @devm_kmalloc(ptr noundef %16, i32 noundef %17, i32 noundef 3520) #7
  %19 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %3, i32 0, i32 3
  store ptr %18, ptr %19, align 4
  %20 = icmp eq ptr %18, null
  br i1 %20, label %99, label %21, !prof !8

21:                                               ; preds = %15
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %22, i32 0, i32 8
  %24 = load i32, ptr %23, align 4
  %25 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %24, i32 2) #7
  %26 = extractvalue { i32, i1 } %25, 1
  br i1 %26, label %27, label %29, !prof !8

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %3, i32 0, i32 4
  br label %74

29:                                               ; preds = %21
  %30 = load ptr, ptr %0, align 4
  %31 = extractvalue { i32, i1 } %25, 0
  %32 = tail call noalias ptr @devm_kmalloc(ptr noundef %30, i32 noundef %31, i32 noundef 3520) #7
  %33 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %3, i32 0, i32 4
  store ptr %32, ptr %33, align 4
  %34 = icmp eq ptr %32, null
  br i1 %34, label %99, label %35, !prof !8

35:                                               ; preds = %29
  %36 = load ptr, ptr %7, align 4
  %37 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %36, i32 0, i32 8
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %79, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %36, i32 0, i32 7
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr %struct.sh_pfc_pin, ptr %42, i32 0, i32 2
  %44 = load i16, ptr %43, align 4
  %45 = icmp eq i16 %44, -1
  %46 = select i1 %45, i16 0, i16 %44
  %47 = zext i16 %46 to i32
  store i32 %47, ptr %18, align 4
  %48 = load ptr, ptr %42, align 4
  %49 = getelementptr %struct.pinctrl_pin_desc, ptr %18, i32 0, i32 1
  store ptr %48, ptr %49, align 4
  %50 = load ptr, ptr %7, align 4
  %51 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %50, i32 0, i32 8
  %52 = load i32, ptr %51, align 4
  %53 = icmp ugt i32 %52, 1
  br i1 %53, label %54, label %76

54:                                               ; preds = %54, %40
  %55 = phi ptr [ %70, %54 ], [ %50, %40 ]
  %56 = phi i32 [ %69, %54 ], [ 1, %40 ]
  %57 = load ptr, ptr %19, align 4
  %58 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %55, i32 0, i32 7
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr %struct.sh_pfc_pin, ptr %59, i32 %56
  %61 = getelementptr %struct.pinctrl_pin_desc, ptr %57, i32 %56
  %62 = getelementptr %struct.sh_pfc_pin, ptr %59, i32 %56, i32 2
  %63 = load i16, ptr %62, align 4
  %64 = icmp eq i16 %63, -1
  %65 = zext i16 %63 to i32
  %66 = select i1 %64, i32 %56, i32 %65
  store i32 %66, ptr %61, align 4
  %67 = load ptr, ptr %60, align 4
  %68 = getelementptr %struct.pinctrl_pin_desc, ptr %57, i32 %56, i32 1
  store ptr %67, ptr %68, align 4
  %69 = add nuw i32 %56, 1
  %70 = load ptr, ptr %7, align 4
  %71 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %70, i32 0, i32 8
  %72 = load i32, ptr %71, align 4
  %73 = icmp ult i32 %69, %72
  br i1 %73, label %54, label %76

74:                                               ; preds = %27, %13
  %75 = phi ptr [ %28, %27 ], [ %14, %13 ]
  store ptr null, ptr %75, align 4
  br label %99

76:                                               ; preds = %54, %40
  %77 = phi ptr [ %50, %40 ], [ %70, %54 ]
  %78 = load ptr, ptr %19, align 4
  br label %79

79:                                               ; preds = %76, %35
  %80 = phi ptr [ %77, %76 ], [ %36, %35 ]
  %81 = phi ptr [ %78, %76 ], [ %18, %35 ]
  %82 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %3, i32 0, i32 1
  store ptr @.str, ptr %82, align 4
  %83 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %3, i32 0, i32 1, i32 6
  store ptr null, ptr %83, align 4
  %84 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %3, i32 0, i32 1, i32 3
  store ptr @sh_pfc_pinctrl_ops, ptr %84, align 4
  %85 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %3, i32 0, i32 1, i32 4
  store ptr @sh_pfc_pinmux_ops, ptr %85, align 4
  %86 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %3, i32 0, i32 1, i32 5
  store ptr @sh_pfc_pinconf_ops, ptr %86, align 4
  %87 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %3, i32 0, i32 1, i32 1
  store ptr %81, ptr %87, align 4
  %88 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %80, i32 0, i32 8
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %3, i32 0, i32 1, i32 2
  store i32 %89, ptr %90, align 4
  %91 = load ptr, ptr %0, align 4
  %92 = tail call i32 @devm_pinctrl_register_and_init(ptr noundef %91, ptr noundef %82, ptr noundef nonnull %3, ptr noundef nonnull %3) #7
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %79
  %95 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.1, i32 noundef %92) #8
  br label %99

96:                                               ; preds = %79
  %97 = load ptr, ptr %3, align 4
  %98 = tail call i32 @pinctrl_enable(ptr noundef %97) #7
  br label %99

99:                                               ; preds = %96, %94, %74, %29, %15, %1
  %100 = phi i32 [ %92, %94 ], [ %98, %96 ], [ -12, %1 ], [ -12, %15 ], [ -12, %29 ], [ -12, %74 ]
  ret i32 %100
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pinctrl_register_and_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rcar_pin_to_bias_reg(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sh_pfc, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %5, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %32, %3
  %9 = phi i32 [ 0, %3 ], [ %33, %32 ]
  %10 = getelementptr %struct.pinmux_bias_reg, ptr %7, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = getelementptr %struct.pinmux_bias_reg, ptr %7, i32 %9, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %34, label %17

17:                                               ; preds = %13, %8
  br label %18

18:                                               ; preds = %29, %17
  %19 = phi i32 [ %30, %29 ], [ 0, %17 ]
  %20 = getelementptr %struct.pinmux_bias_reg, ptr %7, i32 %9, i32 2, i32 %19
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = icmp eq i32 %22, %1
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  store i32 %19, ptr %2, align 4
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %25, i32 0, i32 15
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr %struct.pinmux_bias_reg, ptr %27, i32 %9
  br label %37

29:                                               ; preds = %18
  %30 = add nuw nsw i32 %19, 1
  %31 = icmp eq i32 %30, 32
  br i1 %31, label %32, label %18

32:                                               ; preds = %29
  %33 = add i32 %9, 1
  br label %8

34:                                               ; preds = %13
  %35 = load i1, ptr @rcar_pin_to_bias_reg.__already_done, align 1
  br i1 %35, label %37, label %36, !prof !9

36:                                               ; preds = %34
  store i1 true, ptr @rcar_pin_to_bias_reg.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 852, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef %1) #7
  br label %37

37:                                               ; preds = %36, %34, %24
  %38 = phi ptr [ %28, %24 ], [ null, %36 ], [ null, %34 ]
  ret ptr %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rcar_pinmux_get_bias(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sh_pfc, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %4, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %26, %2
  %8 = phi i32 [ 0, %2 ], [ %27, %26 ]
  %9 = getelementptr %struct.pinmux_bias_reg, ptr %6, i32 %8
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = getelementptr %struct.pinmux_bias_reg, ptr %6, i32 %8, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %12, %7
  br label %17

17:                                               ; preds = %23, %16
  %18 = phi i32 [ %24, %23 ], [ 0, %16 ]
  %19 = getelementptr %struct.pinmux_bias_reg, ptr %6, i32 %8, i32 2, i32 %18
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %31, label %23

23:                                               ; preds = %17
  %24 = add nuw nsw i32 %18, 1
  %25 = icmp eq i32 %24, 32
  br i1 %25, label %26, label %17

26:                                               ; preds = %23
  %27 = add i32 %8, 1
  br label %7

28:                                               ; preds = %12
  %29 = load i1, ptr @rcar_pin_to_bias_reg.__already_done, align 1
  br i1 %29, label %56, label %30, !prof !9

30:                                               ; preds = %28
  store i1 true, ptr @rcar_pin_to_bias_reg.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 852, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef %1) #7
  br label %56

31:                                               ; preds = %17
  %32 = icmp eq ptr %9, null
  br i1 %32, label %56, label %33

33:                                               ; preds = %31
  br i1 %11, label %48, label %34

34:                                               ; preds = %33
  %35 = tail call i32 @sh_pfc_read(ptr noundef %0, i32 noundef %10) #7
  %36 = shl nuw i32 1, %18
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %56, label %39

39:                                               ; preds = %34
  %40 = getelementptr %struct.pinmux_bias_reg, ptr %6, i32 %8, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %39
  %44 = tail call i32 @sh_pfc_read(ptr noundef %0, i32 noundef %41) #7
  %45 = and i32 %44, %36
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i32 3, i32 5
  br label %56

48:                                               ; preds = %33
  %49 = getelementptr %struct.pinmux_bias_reg, ptr %6, i32 %8, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = tail call i32 @sh_pfc_read(ptr noundef %0, i32 noundef %50) #7
  %52 = shl nuw i32 1, %18
  %53 = and i32 %51, %52
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, i32 1, i32 3
  br label %56

56:                                               ; preds = %48, %43, %39, %34, %31, %30, %28
  %57 = phi i32 [ 1, %31 ], [ 1, %34 ], [ 5, %39 ], [ %55, %48 ], [ %47, %43 ], [ 1, %30 ], [ 1, %28 ]
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sh_pfc_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcar_pinmux_set_bias(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sh_pfc, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %5, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %27, %3
  %9 = phi i32 [ 0, %3 ], [ %28, %27 ]
  %10 = getelementptr %struct.pinmux_bias_reg, ptr %7, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = getelementptr %struct.pinmux_bias_reg, ptr %7, i32 %9, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13, %8
  br label %18

18:                                               ; preds = %24, %17
  %19 = phi i32 [ %25, %24 ], [ 0, %17 ]
  %20 = getelementptr %struct.pinmux_bias_reg, ptr %7, i32 %9, i32 2, i32 %19
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = icmp eq i32 %22, %1
  br i1 %23, label %32, label %24

24:                                               ; preds = %18
  %25 = add nuw nsw i32 %19, 1
  %26 = icmp eq i32 %25, 32
  br i1 %26, label %27, label %18

27:                                               ; preds = %24
  %28 = add i32 %9, 1
  br label %8

29:                                               ; preds = %13
  %30 = load i1, ptr @rcar_pin_to_bias_reg.__already_done, align 1
  br i1 %30, label %67, label %31, !prof !9

31:                                               ; preds = %29
  store i1 true, ptr @rcar_pin_to_bias_reg.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 852, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef %1) #7
  br label %67

32:                                               ; preds = %18
  %33 = icmp eq ptr %10, null
  br i1 %33, label %67, label %34

34:                                               ; preds = %32
  br i1 %12, label %56, label %35

35:                                               ; preds = %34
  %36 = tail call i32 @sh_pfc_read(ptr noundef %0, i32 noundef %11) #7
  %37 = shl nuw i32 1, %19
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = icmp eq i32 %2, 1
  br i1 %40, label %53, label %41

41:                                               ; preds = %35
  %42 = or i32 %36, %37
  %43 = getelementptr %struct.pinmux_bias_reg, ptr %7, i32 %9, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %41
  %47 = tail call i32 @sh_pfc_read(ptr noundef %0, i32 noundef %44) #7
  %48 = and i32 %47, %38
  %49 = icmp eq i32 %2, 5
  %50 = or i32 %47, %37
  %51 = select i1 %49, i32 %50, i32 %48
  %52 = load i32, ptr %43, align 4
  tail call void @sh_pfc_write(ptr noundef %0, i32 noundef %52, i32 noundef %51) #7
  br label %53

53:                                               ; preds = %46, %41, %35
  %54 = phi i32 [ %42, %46 ], [ %42, %41 ], [ %39, %35 ]
  %55 = load i32, ptr %10, align 4
  tail call void @sh_pfc_write(ptr noundef %0, i32 noundef %55, i32 noundef %54) #7
  br label %67

56:                                               ; preds = %34
  %57 = getelementptr %struct.pinmux_bias_reg, ptr %7, i32 %9, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = tail call i32 @sh_pfc_read(ptr noundef %0, i32 noundef %58) #7
  %60 = shl nuw i32 1, %19
  %61 = xor i32 %60, -1
  %62 = and i32 %59, %61
  %63 = icmp eq i32 %2, 3
  %64 = or i32 %59, %60
  %65 = select i1 %63, i32 %64, i32 %62
  %66 = load i32, ptr %57, align 4
  tail call void @sh_pfc_write(ptr noundef %0, i32 noundef %66, i32 noundef %65) #7
  br label %67

67:                                               ; preds = %56, %53, %32, %31, %29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sh_pfc_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rmobile_pinmux_get_bias(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sh_pfc, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sh_pfc_soc_operations, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr %8(ptr noundef %0, i32 noundef %1) #7
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %11 = and i8 %10, -64
  %12 = icmp eq i8 %11, -128
  %13 = select i1 %12, i32 3, i32 1
  %14 = icmp ugt i8 %10, -65
  %15 = select i1 %14, i32 5, i32 %13
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rmobile_pinmux_set_bias(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sh_pfc, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sh_pfc_soc_operations, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr %9(ptr noundef %0, i32 noundef %1) #7
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %10) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %12 = and i8 %11, 63
  switch i32 %2, label %17 [
    i32 5, label %13
    i32 3, label %15
  ]

13:                                               ; preds = %3
  %14 = or i8 %11, -64
  br label %17

15:                                               ; preds = %3
  %16 = or i8 %12, -128
  br label %17

17:                                               ; preds = %15, %13, %3
  %18 = phi i8 [ %12, %3 ], [ %16, %15 ], [ %14, %13 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %10, i8 %18) #7, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_pfc_get_groups_count(ptr noundef %0) #0 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %3 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %2, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sh_pfc, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %6, i32 0, i32 10
  %8 = load i32, ptr %7, align 4
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @sh_pfc_get_group_name(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sh_pfc, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %7, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.sh_pfc_pin_group, ptr %9, i32 %1
  %11 = load ptr, ptr %10, align 4
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_pfc_get_group_pins(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sh_pfc, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %9, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.sh_pfc_pin_group, ptr %11, i32 %1, i32 1
  %13 = load ptr, ptr %12, align 4
  store ptr %13, ptr %2, align 4
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr inbounds %struct.sh_pfc, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %16, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr %struct.sh_pfc_pin_group, ptr %18, i32 %1, i32 3
  %20 = load i32, ptr %19, align 4
  store i32 %20, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_pfc_pin_dbg_show(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_pfc_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %7 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store ptr null, ptr %2, align 4
  store i32 0, ptr %3, align 4
  store i32 0, ptr %5, align 4
  %10 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %17, %4
  %13 = phi ptr [ %18, %17 ], [ %10, %4 ]
  %14 = call fastcc i32 @sh_pfc_dt_subnode_to_map(ptr noundef %0, ptr noundef nonnull %13, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call void @of_node_put(ptr noundef nonnull %13) #7
  br label %30

17:                                               ; preds = %12
  %18 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %13) #7
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %12

20:                                               ; preds = %17, %4
  %21 = load i32, ptr %3, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %20
  %24 = call fastcc i32 @sh_pfc_dt_subnode_to_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5)
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load i32, ptr %3, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.4, ptr noundef %1) #8
  br label %30

30:                                               ; preds = %29, %23, %16
  %31 = phi i32 [ %14, %16 ], [ %24, %23 ], [ -22, %29 ]
  %32 = load ptr, ptr %2, align 4
  %33 = load i32, ptr %3, align 4
  %34 = icmp eq ptr %32, null
  br i1 %34, label %50, label %35

35:                                               ; preds = %30
  %36 = icmp eq i32 %33, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %46, %35
  %38 = phi i32 [ %47, %46 ], [ 0, %35 ]
  %39 = getelementptr %struct.pinctrl_map, ptr %32, i32 %38, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, -3
  %42 = icmp ult i32 %41, 2
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = getelementptr %struct.pinctrl_map, ptr %32, i32 %38, i32 4, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  tail call void @kfree(ptr noundef %45) #7
  br label %46

46:                                               ; preds = %43, %37
  %47 = add nuw i32 %38, 1
  %48 = icmp eq i32 %47, %33
  br i1 %48, label %49, label %37

49:                                               ; preds = %46, %35
  tail call void @kfree(ptr noundef nonnull %32) #7
  br label %50

50:                                               ; preds = %49, %30, %26, %20
  %51 = phi i32 [ 0, %26 ], [ %31, %30 ], [ %31, %49 ], [ 0, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_pfc_dt_free_map(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %3
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %16, %5
  %8 = phi i32 [ %17, %16 ], [ 0, %5 ]
  %9 = getelementptr %struct.pinctrl_map, ptr %1, i32 %8, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -3
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = getelementptr %struct.pinctrl_map, ptr %1, i32 %8, i32 4, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void @kfree(ptr noundef %15) #7
  br label %16

16:                                               ; preds = %13, %7
  %17 = add nuw i32 %8, 1
  %18 = icmp eq i32 %17, %2
  br i1 %18, label %19, label %7

19:                                               ; preds = %16, %5
  tail call void @kfree(ptr noundef nonnull %1) #7
  br label %20

20:                                               ; preds = %19, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sh_pfc_dt_subnode_to_map(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %10 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %2, align 4
  %14 = load i32, ptr %3, align 4
  %15 = load i32, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store ptr null, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  store ptr null, ptr %8, align 4, !annotation !14
  %16 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %9, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %5
  %20 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef null) #7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef null) #7
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %25, %22, %19
  %27 = phi ptr [ @.str.8, %25 ], [ @.str.7, %22 ], [ @.str.7, %19 ]
  %28 = phi ptr [ @.str.9, %25 ], [ @.str.5, %22 ], [ @.str.5, %19 ]
  %29 = phi ptr [ @.str.10, %25 ], [ @.str.6, %22 ], [ @.str.6, %19 ]
  store ptr %27, ptr %16, align 4
  %30 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %9, i32 0, i32 6
  store ptr %28, ptr %30, align 4
  %31 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %9, i32 0, i32 7
  store ptr %29, ptr %31, align 4
  br label %32

32:                                               ; preds = %26, %5
  %33 = phi ptr [ %17, %5 ], [ %27, %26 ]
  %34 = call i32 @of_property_read_string(ptr noundef %1, ptr noundef nonnull %33, ptr noundef nonnull %7) #7
  %35 = icmp slt i32 %34, 0
  %36 = icmp ne i32 %34, -22
  %37 = and i1 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.11) #8
  br label %150

39:                                               ; preds = %32
  %40 = call i32 @pinconf_generic_parse_dt_config(ptr noundef %1, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %6) #7
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %150, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %7, align 4
  %44 = icmp eq ptr %43, null
  %45 = load i32, ptr %6, align 4
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %143, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %9, i32 0, i32 7
  %50 = load ptr, ptr %49, align 4
  %51 = call i32 @of_property_read_string_helper(ptr noundef %1, ptr noundef %50, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  %52 = icmp eq i32 %51, -22
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = icmp slt i32 %51, 0
  br i1 %54, label %143, label %55

55:                                               ; preds = %53, %48
  %56 = phi i32 [ 0, %48 ], [ %51, %53 ]
  %57 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %9, i32 0, i32 6
  %58 = load ptr, ptr %57, align 4
  %59 = call i32 @of_property_read_string_helper(ptr noundef %1, ptr noundef %58, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  %60 = icmp eq i32 %59, -22
  br i1 %60, label %63, label %61

61:                                               ; preds = %55
  %62 = icmp slt i32 %59, 0
  br i1 %62, label %143, label %63

63:                                               ; preds = %61, %55
  %64 = phi i32 [ 0, %55 ], [ %59, %61 ]
  %65 = icmp ne i32 %56, 0
  %66 = icmp ne i32 %64, 0
  %67 = select i1 %65, i1 true, i1 %66
  br i1 %67, label %68, label %143

68:                                               ; preds = %63
  %69 = load ptr, ptr %7, align 4
  %70 = icmp eq ptr %69, null
  %71 = select i1 %70, i32 0, i32 %64
  %72 = add i32 %71, %14
  %73 = load ptr, ptr %8, align 4
  %74 = icmp eq ptr %73, null
  %75 = add nuw i32 %64, %56
  %76 = select i1 %74, i32 0, i32 %75
  %77 = add i32 %72, %76
  %78 = mul i32 %77, 28
  %79 = call noalias ptr @krealloc(ptr noundef %13, i32 noundef %78, i32 noundef 3264) #9
  %80 = icmp eq ptr %79, null
  br i1 %80, label %146, label %81

81:                                               ; preds = %68
  store ptr %79, ptr %2, align 4
  store i32 %77, ptr %3, align 4
  %82 = load ptr, ptr %57, align 4
  %83 = call ptr @of_find_property(ptr noundef %1, ptr noundef %82, ptr noundef null) #7
  %84 = call ptr @of_prop_next_string(ptr noundef %83, ptr noundef null) #7
  %85 = icmp eq ptr %84, null
  br i1 %85, label %117, label %86

86:                                               ; preds = %112, %81
  %87 = phi i32 [ %114, %112 ], [ %59, %81 ]
  %88 = phi ptr [ %115, %112 ], [ %84, %81 ]
  %89 = phi i32 [ %113, %112 ], [ %15, %81 ]
  %90 = load ptr, ptr %7, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %97, label %92

92:                                               ; preds = %86
  %93 = getelementptr %struct.pinctrl_map, ptr %79, i32 %89, i32 2
  store i32 2, ptr %93, align 4
  %94 = getelementptr %struct.pinctrl_map, ptr %79, i32 %89, i32 4
  store ptr %88, ptr %94, align 4
  %95 = getelementptr inbounds %struct.pinctrl_map_mux, ptr %94, i32 0, i32 1
  store ptr %90, ptr %95, align 4
  %96 = add i32 %89, 1
  br label %97

97:                                               ; preds = %92, %86
  %98 = phi i32 [ %96, %92 ], [ %89, %86 ]
  %99 = load ptr, ptr %8, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %112, label %101

101:                                              ; preds = %97
  %102 = load i32, ptr %6, align 4
  %103 = shl i32 %102, 2
  %104 = call ptr @kmemdup(ptr noundef nonnull %99, i32 noundef %103, i32 noundef 3264) #7
  %105 = icmp eq ptr %104, null
  br i1 %105, label %146, label %106

106:                                              ; preds = %101
  %107 = getelementptr %struct.pinctrl_map, ptr %79, i32 %98, i32 2
  store i32 4, ptr %107, align 4
  %108 = getelementptr %struct.pinctrl_map, ptr %79, i32 %98, i32 4
  store ptr %88, ptr %108, align 4
  %109 = getelementptr %struct.pinctrl_map, ptr %79, i32 %98, i32 4, i32 0, i32 1
  store ptr %104, ptr %109, align 4
  %110 = getelementptr %struct.pinctrl_map, ptr %79, i32 %98, i32 4, i32 0, i32 2
  store i32 %102, ptr %110, align 4
  %111 = add i32 %98, 1
  br label %112

112:                                              ; preds = %106, %97
  %113 = phi i32 [ %111, %106 ], [ %98, %97 ]
  %114 = phi i32 [ 0, %106 ], [ %87, %97 ]
  %115 = call ptr @of_prop_next_string(ptr noundef %83, ptr noundef nonnull %88) #7
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %86

117:                                              ; preds = %112, %81
  %118 = phi i32 [ %15, %81 ], [ %113, %112 ]
  %119 = phi i32 [ %59, %81 ], [ %114, %112 ]
  %120 = load ptr, ptr %8, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %146, label %122

122:                                              ; preds = %117
  %123 = load ptr, ptr %49, align 4
  %124 = call ptr @of_find_property(ptr noundef %1, ptr noundef %123, ptr noundef null) #7
  %125 = call ptr @of_prop_next_string(ptr noundef %124, ptr noundef null) #7
  %126 = icmp eq ptr %125, null
  br i1 %126, label %146, label %127

127:                                              ; preds = %135, %122
  %128 = phi ptr [ %141, %135 ], [ %125, %122 ]
  %129 = phi i32 [ %140, %135 ], [ %118, %122 ]
  %130 = load ptr, ptr %8, align 4
  %131 = load i32, ptr %6, align 4
  %132 = shl i32 %131, 2
  %133 = call ptr @kmemdup(ptr noundef %130, i32 noundef %132, i32 noundef 3264) #7
  %134 = icmp eq ptr %133, null
  br i1 %134, label %146, label %135

135:                                              ; preds = %127
  %136 = getelementptr %struct.pinctrl_map, ptr %79, i32 %129, i32 2
  store i32 3, ptr %136, align 4
  %137 = getelementptr %struct.pinctrl_map, ptr %79, i32 %129, i32 4
  store ptr %128, ptr %137, align 4
  %138 = getelementptr %struct.pinctrl_map, ptr %79, i32 %129, i32 4, i32 0, i32 1
  store ptr %133, ptr %138, align 4
  %139 = getelementptr %struct.pinctrl_map, ptr %79, i32 %129, i32 4, i32 0, i32 2
  store i32 %131, ptr %139, align 4
  %140 = add i32 %129, 1
  %141 = call ptr @of_prop_next_string(ptr noundef %124, ptr noundef nonnull %128) #7
  %142 = icmp eq ptr %141, null
  br i1 %142, label %146, label %127

143:                                              ; preds = %63, %61, %53, %42
  %144 = phi ptr [ @.str.12, %42 ], [ @.str.13, %53 ], [ @.str.14, %61 ], [ @.str.15, %63 ]
  %145 = phi i32 [ -19, %42 ], [ %51, %53 ], [ %59, %61 ], [ -19, %63 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull %144) #8
  br label %146

146:                                              ; preds = %143, %135, %127, %122, %117, %101, %68
  %147 = phi i32 [ %15, %68 ], [ %118, %117 ], [ %118, %122 ], [ %15, %143 ], [ %140, %135 ], [ %129, %127 ], [ %98, %101 ]
  %148 = phi i32 [ -12, %68 ], [ 0, %117 ], [ %119, %122 ], [ %145, %143 ], [ 0, %135 ], [ -12, %127 ], [ -12, %101 ]
  store i32 %147, ptr %4, align 4
  %149 = load ptr, ptr %8, align 4
  call void @kfree(ptr noundef %149) #7
  br label %150

150:                                              ; preds = %146, %39, %38
  %151 = phi i32 [ %34, %38 ], [ %148, %146 ], [ %40, %39 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  ret i32 %151
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_parse_dt_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_pfc_get_functions_count(ptr noundef %0) #0 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %3 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %2, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sh_pfc, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %6, i32 0, i32 12
  %8 = load i32, ptr %7, align 4
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @sh_pfc_get_function_name(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sh_pfc, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.sh_pfc_function, ptr %9, i32 %1
  %11 = load ptr, ptr %10, align 4
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_pfc_get_function_groups(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sh_pfc, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %9, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.sh_pfc_function, ptr %11, i32 %1, i32 1
  %13 = load ptr, ptr %12, align 4
  store ptr %13, ptr %2, align 4
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr inbounds %struct.sh_pfc, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %16, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr %struct.sh_pfc_function, ptr %18, i32 %1, i32 2
  %20 = load i32, ptr %19, align 4
  store i32 %20, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_pfc_func_set_mux(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sh_pfc, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %8, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sh_pfc, ptr %6, i32 0, i32 2
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #7
  %13 = getelementptr %struct.sh_pfc_pin_group, ptr %10, i32 %2, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %66, label %16

16:                                               ; preds = %3
  %17 = getelementptr %struct.sh_pfc_pin_group, ptr %10, i32 %2, i32 1
  %18 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %4, i32 0, i32 4
  %19 = getelementptr %struct.sh_pfc_pin_group, ptr %10, i32 %2, i32 2
  br label %30

20:                                               ; preds = %41
  %21 = add nuw i32 %31, 1
  %22 = load i32, ptr %13, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = icmp eq i32 %22, 0
  br i1 %25, label %66, label %26

26:                                               ; preds = %24
  %27 = getelementptr %struct.sh_pfc_pin_group, ptr %10, i32 %2, i32 1
  %28 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %4, i32 0, i32 4
  %29 = getelementptr %struct.sh_pfc_pin_group, ptr %10, i32 %2, i32 2
  br label %47

30:                                               ; preds = %20, %16
  %31 = phi i32 [ 0, %16 ], [ %21, %20 ]
  %32 = load ptr, ptr %17, align 4
  %33 = getelementptr i32, ptr %32, i32 %31
  %34 = load i32, ptr %33, align 4
  %35 = tail call i32 @sh_pfc_get_pin_index(ptr noundef %6, i32 noundef %34) #7
  %36 = load ptr, ptr %18, align 4
  %37 = getelementptr %struct.sh_pfc_pin_config, ptr %36, i32 %35
  %38 = load i16, ptr %37, align 2
  %39 = and i16 %38, 1
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %30
  %42 = load ptr, ptr %19, align 4
  %43 = getelementptr i32, ptr %42, i32 %31
  %44 = load i32, ptr %43, align 4
  %45 = tail call i32 @sh_pfc_config_mux(ptr noundef %6, i32 noundef %44, i32 noundef 1) #7
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %66, label %20

47:                                               ; preds = %47, %26
  %48 = phi i32 [ 0, %26 ], [ %63, %47 ]
  %49 = load ptr, ptr %27, align 4
  %50 = getelementptr i32, ptr %49, i32 %48
  %51 = load i32, ptr %50, align 4
  %52 = tail call i32 @sh_pfc_get_pin_index(ptr noundef %6, i32 noundef %51) #7
  %53 = load ptr, ptr %28, align 4
  %54 = getelementptr %struct.sh_pfc_pin_config, ptr %53, i32 %52
  %55 = load ptr, ptr %29, align 4
  %56 = getelementptr i32, ptr %55, i32 %48
  %57 = load i32, ptr %56, align 4
  %58 = trunc i32 %57 to i16
  %59 = load i16, ptr %54, align 2
  %60 = shl i16 %58, 1
  %61 = and i16 %59, 1
  %62 = or i16 %61, %60
  store i16 %62, ptr %54, align 2
  %63 = add nuw i32 %48, 1
  %64 = load i32, ptr %13, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %47, label %66

66:                                               ; preds = %47, %41, %30, %24, %3
  %67 = phi i32 [ %45, %24 ], [ 0, %3 ], [ %45, %47 ], [ %45, %41 ], [ -16, %30 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #7
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_pfc_gpio_request_enable(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @sh_pfc_get_pin_index(ptr noundef %6, i32 noundef %2) #7
  %8 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %4, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.sh_pfc_pin_config, ptr %9, i32 %7
  %11 = getelementptr inbounds %struct.sh_pfc, ptr %6, i32 0, i32 2
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #7
  %13 = getelementptr inbounds %struct.sh_pfc, ptr %6, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.sh_pfc, ptr %6, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %18, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr %struct.sh_pfc_pin, ptr %20, i32 %7, i32 3
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = tail call i32 @sh_pfc_config_mux(ptr noundef %6, i32 noundef %23, i32 noundef 2) #7
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %16, %3
  %27 = load i16, ptr %10, align 2
  %28 = or i16 %27, 1
  store i16 %28, ptr %10, align 2
  br label %29

29:                                               ; preds = %26, %16
  %30 = phi i32 [ 0, %26 ], [ %24, %16 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #7
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_pfc_gpio_disable_free(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @sh_pfc_get_pin_index(ptr noundef %6, i32 noundef %2) #7
  %8 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %4, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.sh_pfc_pin_config, ptr %9, i32 %7
  %11 = getelementptr inbounds %struct.sh_pfc, ptr %6, i32 0, i32 2
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #7
  %13 = load i16, ptr %10, align 2
  %14 = and i16 %13, -2
  store i16 %14, ptr %10, align 2
  %15 = icmp ult i16 %13, 2
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = lshr i16 %13, 1
  %18 = zext i16 %17 to i32
  %19 = tail call i32 @sh_pfc_config_mux(ptr noundef %6, i32 noundef %18, i32 noundef 1) #7
  br label %20

20:                                               ; preds = %16, %3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_pfc_gpio_set_direction(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, i1 noundef zeroext %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = select i1 %3, i32 4, i32 3
  %9 = tail call i32 @sh_pfc_get_pin_index(ptr noundef %7, i32 noundef %2) #7
  %10 = getelementptr inbounds %struct.sh_pfc, ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %11, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.sh_pfc_pin, ptr %13, i32 %9, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = select i1 %3, i32 1, i32 2
  %19 = and i32 %15, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %17, %4
  %22 = getelementptr inbounds %struct.sh_pfc, ptr %7, i32 0, i32 2
  %23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %22) #7
  %24 = getelementptr %struct.sh_pfc_pin, ptr %13, i32 %9, i32 3
  %25 = load i16, ptr %24, align 2
  %26 = zext i16 %25 to i32
  %27 = tail call i32 @sh_pfc_config_mux(ptr noundef %7, i32 noundef %26, i32 noundef %8) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %23) #7
  br label %28

28:                                               ; preds = %21, %17
  %29 = phi i32 [ %27, %21 ], [ -22, %17 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sh_pfc_get_pin_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sh_pfc_config_mux(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_pfc_pinconf_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %8 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %2, align 4
  %11 = and i32 %10, 255
  %12 = tail call i32 @sh_pfc_get_pin_index(ptr noundef %9, i32 noundef %1) #7
  %13 = getelementptr inbounds %struct.sh_pfc, ptr %9, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %14, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = add nsw i32 %11, -1
  %18 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 31) #7
  %19 = icmp ult i32 %18, 11
  br i1 %19, label %20, label %102

20:                                               ; preds = %3
  %21 = trunc i32 %18 to i16
  %22 = lshr i16 1047, %21
  %23 = and i16 %22, 1
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %102, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds [11 x i32], ptr @switch.table.sh_pfc_pinconf_set, i32 0, i32 %18
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr %struct.sh_pfc_pin, ptr %16, i32 %12, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, %27
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %102, label %32

32:                                               ; preds = %25
  switch i32 %18, label %102 [
    i32 0, label %33
    i32 2, label %33
    i32 1, label %33
    i32 4, label %51
    i32 10, label %68
  ]

33:                                               ; preds = %32, %32, %32
  %34 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %14, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %102, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.sh_pfc_soc_operations, ptr %35, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %102, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.sh_pfc, ptr %9, i32 0, i32 2
  %43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %42) #7
  %44 = load ptr, ptr %13, align 4
  %45 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.sh_pfc_soc_operations, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 %48(ptr noundef %9, i32 noundef %1) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %42, i32 noundef %43) #7
  %50 = icmp eq i32 %49, %11
  br i1 %50, label %98, label %102

51:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !14
  %52 = call fastcc i32 @sh_pfc_pinconf_find_drive_strength_reg(ptr noundef %9, i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #7
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  br label %102

55:                                               ; preds = %51
  %56 = tail call i32 @sh_pfc_read(ptr noundef %9, i32 noundef %52) #7
  %57 = load i32, ptr %4, align 4
  %58 = lshr i32 %56, %57
  %59 = load i32, ptr %5, align 4
  %60 = sub i32 32, %59
  %61 = lshr i32 -1, %60
  %62 = and i32 %61, %58
  %63 = add i32 %62, 1
  %64 = icmp eq i32 %59, 2
  %65 = select i1 %64, i32 6, i32 3
  %66 = mul i32 %63, %65
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %102, label %98

68:                                               ; preds = %32
  %69 = tail call i32 @sh_pfc_get_pin_index(ptr noundef %9, i32 noundef %1) #7
  %70 = load ptr, ptr %13, align 4
  %71 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %70, i32 0, i32 7
  %72 = load ptr, ptr %71, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !14
  %73 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %70, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %84, label %76

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.sh_pfc_soc_operations, ptr %74, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = call i32 %78(ptr noundef %9, i32 noundef %1, ptr noundef nonnull %6) #7
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %86, !prof !8

83:                                               ; preds = %80
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 643, i32 noundef 9, ptr noundef nonnull @.str.16, i32 noundef %1) #7
  br label %84

84:                                               ; preds = %83, %76, %68
  %85 = phi i32 [ -524, %68 ], [ -524, %76 ], [ %81, %83 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  br label %102

86:                                               ; preds = %80
  %87 = load i32, ptr %6, align 4
  %88 = call i32 @sh_pfc_read(ptr noundef %9, i32 noundef %87) #7
  %89 = getelementptr %struct.sh_pfc_pin, ptr %72, i32 %69, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = and i32 %90, 64
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i32 1800, i32 2500
  %94 = shl nuw i32 1, %81
  %95 = and i32 %88, %94
  %96 = icmp eq i32 %95, 0
  %97 = select i1 %96, i32 %93, i32 3300
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  br label %98

98:                                               ; preds = %86, %55, %41
  %99 = phi i32 [ %97, %86 ], [ %66, %55 ], [ 0, %41 ]
  %100 = shl i32 %99, 8
  %101 = or i32 %100, %11
  store i32 %101, ptr %2, align 4
  br label %102

102:                                              ; preds = %98, %84, %55, %54, %41, %37, %33, %32, %25, %20, %3
  %103 = phi i32 [ 0, %98 ], [ %66, %55 ], [ -22, %41 ], [ -524, %25 ], [ -524, %32 ], [ -22, %54 ], [ %85, %84 ], [ -524, %3 ], [ -524, %37 ], [ -524, %33 ], [ -524, %20 ]
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_pfc_pinconf_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %9 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %132, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.sh_pfc, ptr %10, i32 0, i32 1
  %14 = getelementptr inbounds %struct.sh_pfc, ptr %10, i32 0, i32 2
  br label %15

15:                                               ; preds = %129, %12
  %16 = phi i32 [ 0, %12 ], [ %130, %129 ]
  %17 = getelementptr i32, ptr %2, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 255
  %20 = call i32 @sh_pfc_get_pin_index(ptr noundef %10, i32 noundef %1) #7
  %21 = load ptr, ptr %13, align 4
  %22 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %21, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = add nsw i32 %19, -1
  %25 = call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 31) #7
  %26 = icmp ult i32 %25, 11
  br i1 %26, label %27, label %132

27:                                               ; preds = %15
  %28 = trunc i32 %25 to i16
  %29 = lshr i16 1047, %28
  %30 = and i16 %29, 1
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %132, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds [11 x i32], ptr @switch.table.sh_pfc_pinconf_set, i32 0, i32 %25
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr %struct.sh_pfc_pin, ptr %23, i32 %20, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, %34
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %132, label %39

39:                                               ; preds = %32
  switch i32 %25, label %132 [
    i32 2, label %40
    i32 1, label %40
    i32 0, label %40
    i32 4, label %55
    i32 10, label %89
  ]

40:                                               ; preds = %39, %39, %39
  %41 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %21, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %132, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.sh_pfc_soc_operations, ptr %42, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %132, label %48

48:                                               ; preds = %44
  %49 = call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #7
  %50 = load ptr, ptr %13, align 4
  %51 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %50, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.sh_pfc_soc_operations, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  call void %54(ptr noundef %10, i32 noundef %1, i32 noundef %19) #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %49) #7
  br label %129

55:                                               ; preds = %39
  %56 = load i32, ptr %17, align 4
  %57 = lshr i32 %56, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !14
  %58 = call fastcc i32 @sh_pfc_pinconf_find_drive_strength_reg(ptr noundef %10, i32 noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #7
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %55
  %61 = trunc i32 %57 to i16
  %62 = load i32, ptr %6, align 4
  %63 = icmp eq i32 %62, 2
  %64 = select i1 %63, i32 6, i32 3
  %65 = and i32 %57, 65535
  %66 = icmp ugt i32 %64, %65
  %67 = icmp ugt i16 %61, 24
  %68 = or i1 %67, %66
  br i1 %68, label %69, label %70

69:                                               ; preds = %60, %55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  br label %132

70:                                               ; preds = %60
  %71 = trunc i32 %57 to i8
  %72 = trunc i32 %64 to i8
  %73 = udiv i8 %71, %72
  %74 = zext i8 %73 to i32
  %75 = call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #7
  %76 = call i32 @sh_pfc_read(ptr noundef %10, i32 noundef %58) #7
  %77 = load i32, ptr %5, align 4
  %78 = shl nsw i32 -1, %77
  %79 = add i32 %62, %77
  %80 = sub i32 32, %79
  %81 = lshr i32 -1, %80
  %82 = and i32 %81, %78
  %83 = xor i32 %82, -1
  %84 = and i32 %76, %83
  %85 = add nuw nsw i32 %74, 65535
  %86 = and i32 %85, 65535
  %87 = shl i32 %86, %77
  %88 = or i32 %84, %87
  call void @sh_pfc_write(ptr noundef %10, i32 noundef %58, i32 noundef %88) #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %75) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  br label %129

89:                                               ; preds = %39
  %90 = load i32, ptr %17, align 4
  %91 = lshr i32 %90, 8
  %92 = call i32 @sh_pfc_get_pin_index(ptr noundef %10, i32 noundef %1) #7
  %93 = load ptr, ptr %13, align 4
  %94 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %93, i32 0, i32 7
  %95 = load ptr, ptr %94, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4, !annotation !14
  %96 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %93, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %127, label %99

99:                                               ; preds = %89
  %100 = getelementptr inbounds %struct.sh_pfc_soc_operations, ptr %97, i32 0, i32 3
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %127, label %103

103:                                              ; preds = %99
  %104 = call i32 %101(ptr noundef %10, i32 noundef %1, ptr noundef nonnull %7) #7
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107, !prof !8

106:                                              ; preds = %103
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 715, i32 noundef 9, ptr noundef nonnull @.str.16, i32 noundef %1) #7
  br label %127

107:                                              ; preds = %103
  %108 = getelementptr %struct.sh_pfc_pin, ptr %95, i32 %92, i32 1
  %109 = load i32, ptr %108, align 4
  %110 = and i32 %109, 64
  %111 = icmp eq i32 %110, 0
  %112 = select i1 %111, i32 1800, i32 2500
  %113 = icmp ne i32 %91, %112
  %114 = icmp ne i32 %91, 3300
  %115 = and i1 %114, %113
  br i1 %115, label %127, label %116

116:                                              ; preds = %107
  %117 = call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #7
  %118 = load i32, ptr %7, align 4
  %119 = call i32 @sh_pfc_read(ptr noundef %10, i32 noundef %118) #7
  %120 = icmp eq i32 %91, 3300
  %121 = shl nuw i32 1, %104
  %122 = or i32 %119, %121
  %123 = xor i32 %121, -1
  %124 = and i32 %119, %123
  %125 = select i1 %120, i32 %122, i32 %124
  %126 = load i32, ptr %7, align 4
  call void @sh_pfc_write(ptr noundef %10, i32 noundef %126, i32 noundef %125) #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %117) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  br label %129

127:                                              ; preds = %107, %106, %99, %89
  %128 = phi i32 [ %104, %106 ], [ -524, %99 ], [ -524, %89 ], [ -22, %107 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  br label %132

129:                                              ; preds = %116, %70, %48
  %130 = add nuw i32 %16, 1
  %131 = icmp eq i32 %130, %3
  br i1 %131, label %132, label %15

132:                                              ; preds = %129, %127, %69, %44, %40, %39, %32, %27, %15, %4
  %133 = phi i32 [ -22, %69 ], [ %128, %127 ], [ 0, %4 ], [ -524, %27 ], [ -524, %32 ], [ -524, %44 ], [ -524, %40 ], [ -524, %39 ], [ 0, %129 ], [ -524, %15 ]
  ret i32 %133
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_pfc_pinconf_group_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.sh_pfc_pinctrl, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sh_pfc, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %9, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.sh_pfc_pin_group, ptr %11, i32 %1, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.sh_pfc_pin_group, ptr %11, i32 %1, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %20

17:                                               ; preds = %20
  %18 = add nuw i32 %21, 1
  %19 = icmp eq i32 %18, %15
  br i1 %19, label %26, label %20

20:                                               ; preds = %17, %4
  %21 = phi i32 [ %18, %17 ], [ 0, %4 ]
  %22 = getelementptr i32, ptr %13, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @sh_pfc_pinconf_set(ptr noundef %0, i32 noundef %23, ptr noundef %2, i32 noundef %3)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %17, label %26

26:                                               ; preds = %20, %17, %4
  %27 = phi i32 [ 0, %4 ], [ 0, %17 ], [ %24, %20 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinconf_generic_dump_config(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sh_pfc_pinconf_find_drive_strength_reg(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #6 {
  %5 = getelementptr inbounds %struct.sh_pfc, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %6, i32 0, i32 14
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %113, label %11

11:                                               ; preds = %109, %4
  %12 = phi ptr [ %110, %109 ], [ %8, %4 ]
  %13 = getelementptr %struct.pinmux_drive_reg, ptr %12, i32 0, i32 1, i32 0, i32 2
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %46, label %16

16:                                               ; preds = %11
  %17 = getelementptr %struct.pinmux_drive_reg, ptr %12, i32 0, i32 1, i32 0
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %35, label %46

21:                                               ; preds = %104
  %22 = getelementptr %struct.pinmux_drive_reg, ptr %12, i32 0, i32 1, i32 7, i32 2
  br label %37

23:                                               ; preds = %95
  %24 = getelementptr %struct.pinmux_drive_reg, ptr %12, i32 0, i32 1, i32 6, i32 2
  br label %37

25:                                               ; preds = %86
  %26 = getelementptr %struct.pinmux_drive_reg, ptr %12, i32 0, i32 1, i32 5, i32 2
  br label %37

27:                                               ; preds = %77
  %28 = getelementptr %struct.pinmux_drive_reg, ptr %12, i32 0, i32 1, i32 4, i32 2
  br label %37

29:                                               ; preds = %68
  %30 = getelementptr %struct.pinmux_drive_reg, ptr %12, i32 0, i32 1, i32 3, i32 2
  br label %37

31:                                               ; preds = %59
  %32 = getelementptr %struct.pinmux_drive_reg, ptr %12, i32 0, i32 1, i32 2, i32 2
  br label %37

33:                                               ; preds = %50
  %34 = getelementptr %struct.pinmux_drive_reg, ptr %12, i32 0, i32 1, i32 1, i32 2
  br label %37

35:                                               ; preds = %16
  %36 = getelementptr %struct.pinmux_drive_reg, ptr %12, i32 0, i32 1, i32 0, i32 2
  br label %37

37:                                               ; preds = %35, %33, %31, %29, %27, %25, %23, %21
  %38 = phi i32 [ 7, %21 ], [ 6, %23 ], [ 5, %25 ], [ 4, %27 ], [ 3, %29 ], [ 2, %31 ], [ 1, %33 ], [ 0, %35 ]
  %39 = phi ptr [ %22, %21 ], [ %24, %23 ], [ %26, %25 ], [ %28, %27 ], [ %30, %29 ], [ %32, %31 ], [ %34, %33 ], [ %36, %35 ]
  %40 = getelementptr %struct.pinmux_drive_reg, ptr %12, i32 0, i32 1, i32 %38, i32 1
  %41 = load i8, ptr %40, align 2
  %42 = zext i8 %41 to i32
  store i32 %42, ptr %2, align 4
  %43 = load i8, ptr %39, align 1
  %44 = zext i8 %43 to i32
  store i32 %44, ptr %3, align 4
  %45 = load i32, ptr %12, align 4
  br label %113

46:                                               ; preds = %16, %11
  %47 = getelementptr %struct.pinmux_drive_reg, ptr %12, i32 0, i32 1, i32 1, i32 2
  %48 = load i8, ptr %47, align 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = getelementptr %struct.pinmux_drive_reg, ptr %12, i32 0, i32 1, i32 1
  %52 = load i16, ptr %51, align 2
  %53 = zext i16 %52 to i32
  %54 = icmp eq i32 %53, %1
  br i1 %54, label %33, label %55

55:                                               ; preds = %50, %46
  %56 = getelementptr %struct.pinmux_drive_reg, ptr %12, i32 0, i32 1, i32 2, i32 2
  %57 = load i8, ptr %56, align 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %55
  %60 = getelementptr %struct.pinmux_drive_reg, ptr %12, i32 0, i32 1, i32 2
  %61 = load i16, ptr %60, align 2
  %62 = zext i16 %61 to i32
  %63 = icmp eq i32 %62, %1
  br i1 %63, label %31, label %64

64:                                               ; preds = %59, %55
  %65 = getelementptr %struct.pinmux_drive_reg, ptr %12, i32 0, i32 1, i32 3, i32 2
  %66 = load i8, ptr %65, align 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %64
  %69 = getelementptr %struct.pinmux_drive_reg, ptr %12, i32 0, i32 1, i32 3
  %70 = load i16, ptr %69, align 2
  %71 = zext i16 %70 to i32
  %72 = icmp eq i32 %71, %1
  br i1 %72, label %29, label %73

73:                                               ; preds = %68, %64
  %74 = getelementptr %struct.pinmux_drive_reg, ptr %12, i32 0, i32 1, i32 4, i32 2
  %75 = load i8, ptr %74, align 1
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %73
  %78 = getelementptr %struct.pinmux_drive_reg, ptr %12, i32 0, i32 1, i32 4
  %79 = load i16, ptr %78, align 2
  %80 = zext i16 %79 to i32
  %81 = icmp eq i32 %80, %1
  br i1 %81, label %27, label %82

82:                                               ; preds = %77, %73
  %83 = getelementptr %struct.pinmux_drive_reg, ptr %12, i32 0, i32 1, i32 5, i32 2
  %84 = load i8, ptr %83, align 1
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %82
  %87 = getelementptr %struct.pinmux_drive_reg, ptr %12, i32 0, i32 1, i32 5
  %88 = load i16, ptr %87, align 2
  %89 = zext i16 %88 to i32
  %90 = icmp eq i32 %89, %1
  br i1 %90, label %25, label %91

91:                                               ; preds = %86, %82
  %92 = getelementptr %struct.pinmux_drive_reg, ptr %12, i32 0, i32 1, i32 6, i32 2
  %93 = load i8, ptr %92, align 1
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %91
  %96 = getelementptr %struct.pinmux_drive_reg, ptr %12, i32 0, i32 1, i32 6
  %97 = load i16, ptr %96, align 2
  %98 = zext i16 %97 to i32
  %99 = icmp eq i32 %98, %1
  br i1 %99, label %23, label %100

100:                                              ; preds = %95, %91
  %101 = getelementptr %struct.pinmux_drive_reg, ptr %12, i32 0, i32 1, i32 7, i32 2
  %102 = load i8, ptr %101, align 1
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %100
  %105 = getelementptr %struct.pinmux_drive_reg, ptr %12, i32 0, i32 1, i32 7
  %106 = load i16, ptr %105, align 2
  %107 = zext i16 %106 to i32
  %108 = icmp eq i32 %107, %1
  br i1 %108, label %21, label %109

109:                                              ; preds = %104, %100
  %110 = getelementptr %struct.pinmux_drive_reg, ptr %12, i32 1
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %11

113:                                              ; preds = %109, %37, %4
  %114 = phi i32 [ %45, %37 ], [ 0, %4 ], [ 0, %109 ]
  ret i32 %114
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(1) }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 3627793}
!11 = !{i64 2151166520}
!12 = !{i64 2151167818}
!13 = !{i64 3627398}
!14 = !{!"auto-init"}
