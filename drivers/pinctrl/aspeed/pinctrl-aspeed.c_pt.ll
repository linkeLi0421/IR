; ModuleID = '/llk/IR/drivers/pinctrl/aspeed/pinctrl-aspeed.c_pt.bc'
source_filename = "../drivers/pinctrl/aspeed/pinctrl-aspeed.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.aspeed_pinctrl_data = type { ptr, ptr, i32, ptr, i32, %struct.aspeed_pinmux_data, ptr, i32 }
%struct.aspeed_pinmux_data = type { ptr, [3 x ptr], ptr, ptr, i32, ptr, i32 }
%struct.aspeed_pin_group = type { ptr, ptr, i32 }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.aspeed_pin_function = type { ptr, ptr, i32 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.aspeed_pin_desc = type { ptr, ptr }
%struct.aspeed_sig_expr = type { ptr, ptr, i32, ptr }
%struct.aspeed_pinmux_ops = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.aspeed_pin_config = type { i32, [2 x i32], i32, i32 }
%struct.aspeed_pin_config_map = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.1 = private unnamed_addr constant [78 x i8] c"\014No function %s found on pin %s (%d). Found signal(s) %s for function(s) %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"\014No GPIO signal type found on pin %s (%d). Found: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"No parent for syscon pincontroller\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"No regmap for syscon pincontroller parent\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Failed to register pinctrl\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"drivers/pinctrl/aspeed/pinctrl-aspeed.c\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"GPI\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @aspeed_pinctrl_get_groups_count(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %3 = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %2, i32 0, i32 5, i32 4
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @aspeed_pinctrl_get_group_name(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %3, i32 0, i32 5, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.aspeed_pin_group, ptr %5, i32 %1
  %7 = load ptr, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @aspeed_pinctrl_get_group_pins(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %5, i32 0, i32 5, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.aspeed_pin_group, ptr %7, i32 %1, i32 1
  %9 = load ptr, ptr %8, align 4
  store ptr %9, ptr %2, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr %struct.aspeed_pin_group, ptr %10, i32 %1, i32 2
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @aspeed_pinctrl_pin_dbg_show(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
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
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef %12) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @aspeed_pinmux_get_fn_count(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %3 = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %2, i32 0, i32 5, i32 6
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @aspeed_pinmux_get_fn_name(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %3, i32 0, i32 5, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.aspeed_pin_function, ptr %5, i32 %1
  %7 = load ptr, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @aspeed_pinmux_get_fn_groups(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %5, i32 0, i32 5, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.aspeed_pin_function, ptr %7, i32 %1, i32 1
  %9 = load ptr, ptr %8, align 4
  store ptr %9, ptr %2, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr %struct.aspeed_pin_function, ptr %10, i32 %1, i32 2
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @aspeed_pinmux_set_mux(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %4, i32 0, i32 5
  %6 = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %4, i32 0, i32 5, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %4, i32 0, i32 5, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.aspeed_pin_function, ptr %9, i32 %1
  %11 = getelementptr %struct.aspeed_pin_group, ptr %7, i32 %2, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %143, label %14

14:                                               ; preds = %3
  %15 = getelementptr %struct.aspeed_pin_group, ptr %7, i32 %2, i32 1
  %16 = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %4, i32 0, i32 1
  %17 = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %4, i32 0, i32 5, i32 2
  br label %18

18:                                               ; preds = %139, %14
  %19 = phi i32 [ 0, %14 ], [ %140, %139 ]
  %20 = load ptr, ptr %15, align 4
  %21 = getelementptr i32, ptr %20, i32 %19
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %16, align 4
  %24 = getelementptr %struct.pinctrl_pin_desc, ptr %23, i32 %22, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %143, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.aspeed_pin_desc, ptr %25, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %139, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %29, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %117, label %34

34:                                               ; preds = %71, %31
  %35 = phi ptr [ %73, %71 ], [ %32, %31 ]
  %36 = phi ptr [ %72, %71 ], [ %29, %31 ]
  %37 = load ptr, ptr %10, align 4
  %38 = load ptr, ptr %35, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %71, label %44

40:                                               ; preds = %44
  %41 = getelementptr ptr, ptr %46, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %40, %34
  %45 = phi ptr [ %42, %40 ], [ %38, %34 ]
  %46 = phi ptr [ %41, %40 ], [ %35, %34 ]
  %47 = getelementptr inbounds %struct.aspeed_sig_expr, ptr %45, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 @strcmp(ptr noundef %48, ptr noundef %37) #9
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %128, label %40

51:                                               ; preds = %63, %40
  %52 = phi ptr [ %66, %63 ], [ %38, %40 ]
  %53 = phi ptr [ %65, %63 ], [ %35, %40 ]
  %54 = tail call i32 @aspeed_sig_expr_eval(ptr noundef %5, ptr noundef nonnull %52, i1 noundef zeroext true) #9
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %143, label %56

56:                                               ; preds = %51
  %57 = icmp eq i32 %54, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %56
  %59 = load ptr, ptr %17, align 4
  %60 = getelementptr inbounds %struct.aspeed_pinmux_ops, ptr %59, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = tail call i32 %61(ptr noundef %5, ptr noundef nonnull %52, i1 noundef zeroext false) #9
  br label %63

63:                                               ; preds = %58, %56
  %64 = phi i32 [ %62, %58 ], [ 0, %56 ]
  %65 = getelementptr ptr, ptr %53, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = icmp ne ptr %66, null
  %68 = icmp eq i32 %64, 0
  %69 = select i1 %67, i1 %68, i1 false
  br i1 %69, label %51, label %70

70:                                               ; preds = %63
  br i1 %68, label %71, label %143

71:                                               ; preds = %70, %34
  %72 = getelementptr ptr, ptr %36, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %34

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.aspeed_pin_desc, ptr %25, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %117, label %80

80:                                               ; preds = %109, %75
  %81 = phi ptr [ %113, %109 ], [ %78, %75 ]
  %82 = phi ptr [ %112, %109 ], [ %77, %75 ]
  %83 = phi i32 [ %111, %109 ], [ 0, %75 ]
  %84 = phi ptr [ %110, %109 ], [ null, %75 ]
  %85 = load ptr, ptr %81, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %109, label %87

87:                                               ; preds = %101, %80
  %88 = phi ptr [ %107, %101 ], [ %85, %80 ]
  %89 = phi ptr [ %106, %101 ], [ %81, %80 ]
  %90 = phi i32 [ %96, %101 ], [ %83, %80 ]
  %91 = phi ptr [ %98, %101 ], [ %84, %80 ]
  %92 = getelementptr inbounds %struct.aspeed_sig_expr, ptr %88, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = tail call i32 @strlen(ptr noundef %93) #9
  %95 = add i32 %90, 2
  %96 = add i32 %95, %94
  %97 = add i32 %96, 1
  %98 = tail call noalias ptr @krealloc(ptr noundef %91, i32 noundef %97, i32 noundef 3264) #10
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %87
  tail call void @kfree(ptr noundef %91) #9
  br label %122

101:                                              ; preds = %87
  %102 = getelementptr i8, ptr %98, i32 %90
  store i8 0, ptr %102, align 1
  %103 = tail call ptr @strcat(ptr noundef nonnull %98, ptr noundef %93) #9
  %104 = tail call i32 @strlen(ptr nonnull %98) #9
  %105 = getelementptr i8, ptr %98, i32 %104
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %105, ptr noundef nonnull align 1 dereferenceable(3) @.str.7, i32 3, i1 false) #9
  %106 = getelementptr ptr, ptr %89, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %87

109:                                              ; preds = %101, %80
  %110 = phi ptr [ %84, %80 ], [ %98, %101 ]
  %111 = phi i32 [ %83, %80 ], [ %96, %101 ]
  %112 = getelementptr ptr, ptr %82, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %80

115:                                              ; preds = %109
  %116 = icmp ult i32 %111, 2
  br i1 %116, label %117, label %119

117:                                              ; preds = %115, %75, %31
  %118 = phi ptr [ %110, %115 ], [ null, %75 ], [ null, %31 ]
  tail call void @kfree(ptr noundef %118) #9
  br label %122

119:                                              ; preds = %115
  %120 = add i32 %111, -2
  %121 = getelementptr i8, ptr %110, i32 %120
  store i8 0, ptr %121, align 1
  br label %122

122:                                              ; preds = %119, %117, %100
  %123 = phi ptr [ null, %117 ], [ %110, %119 ], [ null, %100 ]
  %124 = tail call fastcc ptr @get_defined_signals(ptr noundef nonnull %25)
  %125 = load ptr, ptr %10, align 4
  %126 = load ptr, ptr %25, align 4
  %127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %125, ptr noundef %126, i32 noundef %22, ptr noundef %124, ptr noundef %123) #11
  tail call void @kfree(ptr noundef %124) #9
  tail call void @kfree(ptr noundef %123) #9
  br label %143

128:                                              ; preds = %44
  %129 = tail call i32 @aspeed_sig_expr_eval(ptr noundef %5, ptr noundef nonnull %45, i1 noundef zeroext true) #9
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %143, label %131

131:                                              ; preds = %128
  %132 = icmp eq i32 %129, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %131
  %134 = load ptr, ptr %17, align 4
  %135 = getelementptr inbounds %struct.aspeed_pinmux_ops, ptr %134, i32 0, i32 1
  %136 = load ptr, ptr %135, align 4
  %137 = tail call i32 %136(ptr noundef %5, ptr noundef nonnull %45, i1 noundef zeroext true) #9
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %133, %131, %27
  %140 = add nuw i32 %19, 1
  %141 = load i32, ptr %11, align 4
  %142 = icmp ult i32 %140, %141
  br i1 %142, label %18, label %143

143:                                              ; preds = %139, %133, %128, %122, %70, %51, %18, %3
  %144 = phi i32 [ -6, %122 ], [ 0, %3 ], [ %54, %51 ], [ %64, %70 ], [ 0, %139 ], [ -22, %18 ], [ %137, %133 ], [ %129, %128 ]
  ret i32 %144
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @get_defined_signals(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.aspeed_pin_desc, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %42, label %6

6:                                                ; preds = %34, %1
  %7 = phi ptr [ %38, %34 ], [ %4, %1 ]
  %8 = phi ptr [ %37, %34 ], [ %3, %1 ]
  %9 = phi i32 [ %36, %34 ], [ 0, %1 ]
  %10 = phi ptr [ %35, %34 ], [ null, %1 ]
  %11 = load ptr, ptr %7, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %34, label %13

13:                                               ; preds = %26, %6
  %14 = phi ptr [ %32, %26 ], [ %11, %6 ]
  %15 = phi ptr [ %31, %26 ], [ %7, %6 ]
  %16 = phi i32 [ %21, %26 ], [ %9, %6 ]
  %17 = phi ptr [ %23, %26 ], [ %10, %6 ]
  %18 = load ptr, ptr %14, align 4
  %19 = tail call i32 @strlen(ptr noundef %18) #9
  %20 = add i32 %16, 2
  %21 = add i32 %20, %19
  %22 = add i32 %21, 1
  %23 = tail call noalias ptr @krealloc(ptr noundef %17, i32 noundef %22, i32 noundef 3264) #10
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  tail call void @kfree(ptr noundef %17) #9
  br label %47

26:                                               ; preds = %13
  %27 = getelementptr i8, ptr %23, i32 %16
  store i8 0, ptr %27, align 1
  %28 = tail call ptr @strcat(ptr noundef nonnull %23, ptr noundef %18) #9
  %29 = tail call i32 @strlen(ptr nonnull %23) #9
  %30 = getelementptr i8, ptr %23, i32 %29
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %30, ptr noundef nonnull align 1 dereferenceable(3) @.str.7, i32 3, i1 false) #9
  %31 = getelementptr ptr, ptr %15, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %13

34:                                               ; preds = %26, %6
  %35 = phi ptr [ %10, %6 ], [ %23, %26 ]
  %36 = phi i32 [ %9, %6 ], [ %21, %26 ]
  %37 = getelementptr ptr, ptr %8, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %6

40:                                               ; preds = %34
  %41 = icmp ult i32 %36, 2
  br i1 %41, label %42, label %44

42:                                               ; preds = %40, %1
  %43 = phi ptr [ %35, %40 ], [ null, %1 ]
  tail call void @kfree(ptr noundef %43) #9
  br label %47

44:                                               ; preds = %40
  %45 = add i32 %36, -2
  %46 = getelementptr i8, ptr %35, i32 %45
  store i8 0, ptr %46, align 1
  br label %47

47:                                               ; preds = %44, %42, %25
  %48 = phi ptr [ null, %42 ], [ %35, %44 ], [ null, %25 ]
  ret ptr %48
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @aspeed_gpio_request_enable(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.pinctrl_pin_desc, ptr %6, i32 %2, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %78, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.aspeed_pin_desc, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %78, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %64, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %4, i32 0, i32 5
  %19 = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %4, i32 0, i32 5, i32 2
  br label %20

20:                                               ; preds = %60, %17
  %21 = phi ptr [ %15, %17 ], [ %62, %60 ]
  %22 = phi ptr [ %12, %17 ], [ %61, %60 ]
  %23 = load ptr, ptr %21, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %60, label %25

25:                                               ; preds = %36, %20
  %26 = phi ptr [ %38, %36 ], [ %23, %20 ]
  %27 = phi ptr [ %37, %36 ], [ %21, %20 ]
  %28 = load ptr, ptr %26, align 4
  %29 = tail call i32 @strncmp(ptr noundef %28, ptr noundef nonnull dereferenceable(4) @.str.8, i32 noundef 3) #9
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.aspeed_sig_expr, ptr %26, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @strcmp(ptr noundef %28, ptr noundef %33) #9
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %68, label %36

36:                                               ; preds = %31, %25
  %37 = getelementptr ptr, ptr %27, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %25

40:                                               ; preds = %52, %36
  %41 = phi ptr [ %55, %52 ], [ %23, %36 ]
  %42 = phi ptr [ %54, %52 ], [ %21, %36 ]
  %43 = tail call i32 @aspeed_sig_expr_eval(ptr noundef %18, ptr noundef nonnull %41, i1 noundef zeroext true) #9
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %78, label %45

45:                                               ; preds = %40
  %46 = icmp eq i32 %43, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %45
  %48 = load ptr, ptr %19, align 4
  %49 = getelementptr inbounds %struct.aspeed_pinmux_ops, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = tail call i32 %50(ptr noundef %18, ptr noundef nonnull %41, i1 noundef zeroext false) #9
  br label %52

52:                                               ; preds = %47, %45
  %53 = phi i32 [ %51, %47 ], [ 0, %45 ]
  %54 = getelementptr ptr, ptr %42, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = icmp ne ptr %55, null
  %57 = icmp eq i32 %53, 0
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %40, label %59

59:                                               ; preds = %52
  br i1 %57, label %60, label %78

60:                                               ; preds = %59, %20
  %61 = getelementptr ptr, ptr %22, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %20

64:                                               ; preds = %60, %14
  %65 = tail call fastcc ptr @get_defined_signals(ptr noundef nonnull %8)
  %66 = load ptr, ptr %8, align 4
  %67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %66, i32 noundef %2, ptr noundef %65) #11
  tail call void @kfree(ptr noundef %65) #9
  br label %78

68:                                               ; preds = %31
  %69 = tail call i32 @aspeed_sig_expr_eval(ptr noundef %18, ptr noundef nonnull %23, i1 noundef zeroext true) #9
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %68
  %72 = icmp eq i32 %69, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %71
  %74 = load ptr, ptr %19, align 4
  %75 = getelementptr inbounds %struct.aspeed_pinmux_ops, ptr %74, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = tail call i32 %76(ptr noundef %18, ptr noundef nonnull %23, i1 noundef zeroext true) #9
  br label %78

78:                                               ; preds = %73, %71, %68, %64, %59, %40, %10, %3
  %79 = phi i32 [ -6, %64 ], [ -22, %3 ], [ -6, %10 ], [ %77, %73 ], [ %69, %68 ], [ 0, %71 ], [ %43, %40 ], [ %53, %59 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @aspeed_pinctrl_probe(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3) #11
  br label %25

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = tail call ptr @syscon_node_to_regmap(ptr noundef %11) #9
  store ptr %12, ptr %2, align 4
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4) #11
  %15 = load ptr, ptr %2, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %25

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %2, i32 0, i32 5, i32 1
  store ptr %12, ptr %18, align 4
  %19 = tail call ptr @pinctrl_register(ptr noundef %1, ptr noundef %4, ptr noundef %2) #9
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5) #11
  %22 = ptrtoint ptr %19 to i32
  br label %25

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %2, ptr %24, align 8
  br label %25

25:                                               ; preds = %23, %21, %14, %8
  %26 = phi i32 [ %16, %14 ], [ %22, %21 ], [ 0, %23 ], [ -19, %8 ]
  ret i32 %26
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @aspeed_pin_config_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = load i32, ptr %2, align 4
  %6 = and i32 %5, 255
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  %7 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %8 = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %7, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %82, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %7, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %27, %11
  %15 = phi i32 [ 0, %11 ], [ %28, %27 ]
  %16 = getelementptr %struct.aspeed_pin_config, ptr %13, i32 %15
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %6
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = getelementptr %struct.aspeed_pin_config, ptr %13, i32 %15, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp ugt i32 %21, %1
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr %struct.aspeed_pin_config, ptr %13, i32 %15, i32 1, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp ult i32 %25, %1
  br i1 %26, label %27, label %30

27:                                               ; preds = %23, %19, %14
  %28 = add nuw i32 %15, 1
  %29 = icmp eq i32 %28, %9
  br i1 %29, label %82, label %14

30:                                               ; preds = %23
  %31 = icmp eq ptr %16, null
  br i1 %31, label %82, label %32

32:                                               ; preds = %30
  %33 = load ptr, ptr %7, align 4
  %34 = getelementptr %struct.aspeed_pin_config, ptr %13, i32 %15, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = call i32 @regmap_read(ptr noundef %33, i32 noundef %35, ptr noundef nonnull %4) #9
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %82, label %38

38:                                               ; preds = %32
  %39 = load i32, ptr %4, align 4
  %40 = getelementptr %struct.aspeed_pin_config, ptr %13, i32 %15, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, %39
  %43 = call i32 @llvm.cttz.i32(i32 %41, i1 false) #9, !range !9
  %44 = lshr i32 %42, %43
  %45 = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %7, i32 0, i32 7
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %82, label %48

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %7, i32 0, i32 6
  %50 = load ptr, ptr %49, align 4
  br label %51

51:                                               ; preds = %60, %48
  %52 = phi i32 [ 0, %48 ], [ %61, %60 ]
  %53 = getelementptr %struct.aspeed_pin_config_map, ptr %50, i32 %52
  %54 = getelementptr %struct.aspeed_pin_config_map, ptr %50, i32 %52, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = icmp ne i32 %55, %44
  %57 = load i32, ptr %53, align 4
  %58 = icmp ne i32 %57, %6
  %59 = select i1 %58, i1 true, i1 %56
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = add nuw i32 %52, 1
  %62 = icmp eq i32 %61, %46
  br i1 %62, label %82, label %51

63:                                               ; preds = %51
  %64 = icmp eq ptr %53, null
  br i1 %64, label %82, label %65

65:                                               ; preds = %63
  %66 = trunc i32 %5 to i8
  switch i8 %66, label %78 [
    i8 9, label %67
    i8 3, label %70
  ]

67:                                               ; preds = %65
  %68 = getelementptr %struct.aspeed_pin_config_map, ptr %50, i32 %52, i32 1
  %69 = load i32, ptr %68, align 4
  br label %75

70:                                               ; preds = %65
  %71 = getelementptr %struct.aspeed_pin_config_map, ptr %50, i32 %52, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i32
  br label %75

75:                                               ; preds = %70, %67
  %76 = phi i32 [ %69, %67 ], [ %74, %70 ]
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75, %65
  %79 = phi i32 [ %76, %75 ], [ 1, %65 ]
  %80 = shl i32 %79, 8
  %81 = or i32 %80, %6
  store i32 %81, ptr %2, align 4
  br label %82

82:                                               ; preds = %78, %75, %63, %60, %38, %32, %30, %27, %3
  %83 = phi i32 [ 0, %78 ], [ -524, %30 ], [ %36, %32 ], [ -22, %63 ], [ -22, %75 ], [ -524, %3 ], [ -22, %38 ], [ -22, %60 ], [ -524, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @aspeed_pin_config_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %77, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %5, i32 0, i32 4
  %9 = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %5, i32 0, i32 3
  %10 = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %5, i32 0, i32 7
  %11 = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %5, i32 0, i32 6
  br label %15

12:                                               ; preds = %65
  %13 = add nuw i32 %16, 1
  %14 = icmp eq i32 %13, %3
  br i1 %14, label %77, label %15

15:                                               ; preds = %12, %7
  %16 = phi i32 [ 0, %7 ], [ %13, %12 ]
  %17 = getelementptr i32, ptr %2, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 255
  %20 = lshr i32 %18, 8
  %21 = load i32, ptr %8, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %77, label %23

23:                                               ; preds = %15
  %24 = load ptr, ptr %9, align 4
  br label %25

25:                                               ; preds = %38, %23
  %26 = phi i32 [ 0, %23 ], [ %39, %38 ]
  %27 = getelementptr %struct.aspeed_pin_config, ptr %24, i32 %26
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, %19
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = getelementptr %struct.aspeed_pin_config, ptr %24, i32 %26, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp ugt i32 %32, %1
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = getelementptr %struct.aspeed_pin_config, ptr %24, i32 %26, i32 1, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp ult i32 %36, %1
  br i1 %37, label %38, label %41

38:                                               ; preds = %34, %30, %25
  %39 = add nuw i32 %26, 1
  %40 = icmp eq i32 %39, %21
  br i1 %40, label %77, label %25

41:                                               ; preds = %34
  %42 = icmp eq ptr %27, null
  br i1 %42, label %77, label %43

43:                                               ; preds = %41
  %44 = load i32, ptr %10, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %64, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr %11, align 4
  br label %48

48:                                               ; preds = %59, %46
  %49 = phi i32 [ 0, %46 ], [ %60, %59 ]
  %50 = getelementptr %struct.aspeed_pin_config_map, ptr %47, i32 %49
  %51 = getelementptr %struct.aspeed_pin_config_map, ptr %47, i32 %49, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = icmp ne i32 %52, -1
  %54 = icmp ne i32 %52, %20
  %55 = load i32, ptr %50, align 4
  %56 = icmp ne i32 %55, %19
  %57 = and i1 %53, %54
  %58 = select i1 %56, i1 true, i1 %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %48
  %60 = add nuw i32 %49, 1
  %61 = icmp eq i32 %60, %44
  br i1 %61, label %64, label %48

62:                                               ; preds = %48
  %63 = icmp eq ptr %50, null
  br i1 %63, label %64, label %65, !prof !10

64:                                               ; preds = %62, %59, %43
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 595, i32 noundef 9, ptr noundef null) #9
  br label %77

65:                                               ; preds = %62
  %66 = getelementptr %struct.aspeed_pin_config_map, ptr %47, i32 %49, i32 2
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr %struct.aspeed_pin_config, ptr %24, i32 %26, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = tail call i32 @llvm.cttz.i32(i32 %69, i1 false) #9, !range !9
  %71 = shl i32 %67, %70
  %72 = load ptr, ptr %5, align 4
  %73 = getelementptr %struct.aspeed_pin_config, ptr %24, i32 %26, i32 2
  %74 = load i32, ptr %73, align 4
  %75 = tail call i32 @regmap_update_bits_base(ptr noundef %72, i32 noundef %74, i32 noundef %69, i32 noundef %71, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %12

77:                                               ; preds = %65, %64, %41, %38, %15, %12, %4
  %78 = phi i32 [ -22, %64 ], [ 0, %4 ], [ -524, %38 ], [ %75, %65 ], [ 0, %12 ], [ -524, %41 ], [ -524, %15 ]
  ret i32 %78
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @aspeed_pin_config_group_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %4, i32 0, i32 5, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.aspeed_pin_group, ptr %6, i32 %1, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = getelementptr %struct.aspeed_pin_group, ptr %6, i32 %1, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @aspeed_pin_config_get(ptr noundef %0, i32 noundef %13, ptr noundef %2)
  br label %15

15:                                               ; preds = %10, %3
  %16 = phi i32 [ %14, %10 ], [ -19, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @aspeed_pin_config_group_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.aspeed_pinctrl_data, ptr %5, i32 0, i32 5, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.aspeed_pin_group, ptr %7, i32 %1, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.aspeed_pin_group, ptr %7, i32 %1, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %22, label %16

13:                                               ; preds = %16
  %14 = add nuw i32 %17, 1
  %15 = icmp eq i32 %14, %11
  br i1 %15, label %22, label %16

16:                                               ; preds = %13, %4
  %17 = phi i32 [ %14, %13 ], [ 0, %4 ]
  %18 = getelementptr i32, ptr %9, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @aspeed_pin_config_set(ptr noundef %0, i32 noundef %19, ptr noundef %2, i32 noundef %3)
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %13

22:                                               ; preds = %16, %13, %4
  %23 = phi i32 [ 0, %4 ], [ 0, %13 ], [ %20, %16 ]
  ret i32 %23
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aspeed_sig_expr_eval(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(1) }
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
!9 = !{i32 0, i32 33}
!10 = !{!"branch_weights", i32 1, i32 2000}
