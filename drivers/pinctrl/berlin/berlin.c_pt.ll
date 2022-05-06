; ModuleID = '/llk/IR/drivers/pinctrl/berlin/berlin.c_pt.bc'
source_filename = "../drivers/pinctrl/berlin/berlin.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
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
%struct.berlin_pinctrl = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.berlin_pinctrl_desc = type { ptr, i32 }
%struct.berlin_desc_group = type { ptr, i8, i8, i8, ptr }
%struct.berlin_pinctrl_function = type { ptr, ptr, i32 }
%struct.berlin_desc_function = type { ptr, i8 }

@.str = private unnamed_addr constant [31 x i8] c"cannot build driver state: %d\0A\00", align 1
@berlin_pctrl_desc = internal global %struct.pinctrl_desc { ptr @.str.2, ptr null, i32 0, ptr @berlin_pinctrl_ops, ptr @berlin_pinmux_ops, ptr null, ptr null, i32 0, ptr null, ptr null, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to register pinctrl driver\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"berlin-pinctrl\00", align 1
@berlin_pinctrl_ops = internal constant %struct.pinctrl_ops { ptr @berlin_pinctrl_get_group_count, ptr @berlin_pinctrl_get_group_name, ptr null, ptr null, ptr @berlin_pinctrl_dt_node_to_map, ptr @pinctrl_utils_free_map }, align 4
@berlin_pinmux_ops = internal constant %struct.pinmux_ops { ptr null, ptr null, ptr @berlin_pinmux_get_functions_count, ptr @berlin_pinmux_get_function_name, ptr @berlin_pinmux_get_function_groups, ptr @berlin_pinmux_set, ptr null, ptr null, ptr null, i8 0 }, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"missing function property in node %pOFn\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"missing groups property in node %pOFn\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"can't reserve map: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"can't add map: %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @berlin_pinctrl_probe_regmap(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 24, i32 noundef 3520) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %167, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %8, align 8
  store ptr %2, ptr %5, align 4
  %9 = getelementptr inbounds %struct.berlin_pinctrl, ptr %5, i32 0, i32 1
  store ptr %4, ptr %9, align 4
  %10 = getelementptr inbounds %struct.berlin_pinctrl, ptr %5, i32 0, i32 2
  store ptr %1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.berlin_pinctrl, ptr %5, i32 0, i32 4
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.berlin_pinctrl_desc, ptr %1, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %7
  %16 = load ptr, ptr %1, align 4
  br label %17

17:                                               ; preds = %17, %15
  %18 = phi i32 [ 0, %15 ], [ %24, %17 ]
  %19 = phi i32 [ 0, %15 ], [ %25, %17 ]
  %20 = getelementptr %struct.berlin_desc_group, ptr %16, i32 %19, i32 2
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = shl i32 2, %22
  %24 = add i32 %23, %18
  %25 = add nuw i32 %19, 1
  %26 = icmp eq i32 %25, %13
  br i1 %26, label %27, label %17

27:                                               ; preds = %17, %7
  %28 = phi i32 [ 0, %7 ], [ %24, %17 ]
  %29 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %28, i32 12) #8
  %30 = extractvalue { i32, i1 } %29, 1
  br i1 %30, label %31, label %33, !prof !8

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.berlin_pinctrl, ptr %5, i32 0, i32 3
  store ptr null, ptr %32, align 4
  br label %158

33:                                               ; preds = %27
  %34 = extractvalue { i32, i1 } %29, 0
  %35 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %34, i32 noundef 3520) #9
  %36 = getelementptr inbounds %struct.berlin_pinctrl, ptr %5, i32 0, i32 3
  store ptr %35, ptr %36, align 4
  %37 = icmp eq ptr %35, null
  br i1 %37, label %158, label %38

38:                                               ; preds = %33
  %39 = load ptr, ptr %10, align 4
  %40 = getelementptr inbounds %struct.berlin_pinctrl_desc, ptr %39, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %88, label %43

43:                                               ; preds = %80, %38
  %44 = phi ptr [ %81, %80 ], [ %39, %38 ]
  %45 = phi i32 [ %82, %80 ], [ 0, %38 ]
  %46 = load ptr, ptr %44, align 4
  %47 = getelementptr %struct.berlin_desc_group, ptr %46, i32 %45, i32 4
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %80, label %51

51:                                               ; preds = %71, %43
  %52 = phi ptr [ %76, %71 ], [ %49, %43 ]
  %53 = phi ptr [ %75, %71 ], [ %48, %43 ]
  %54 = load ptr, ptr %36, align 4
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %68, label %57

57:                                               ; preds = %64, %51
  %58 = phi ptr [ %66, %64 ], [ %55, %51 ]
  %59 = phi ptr [ %65, %64 ], [ %54, %51 ]
  %60 = tail call i32 @strcmp(ptr noundef nonnull %58, ptr noundef nonnull %52) #8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.berlin_pinctrl_function, ptr %59, i32 0, i32 2
  br label %71

64:                                               ; preds = %57
  %65 = getelementptr %struct.berlin_pinctrl_function, ptr %59, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %57

68:                                               ; preds = %64, %51
  %69 = phi ptr [ %54, %51 ], [ %65, %64 ]
  store ptr %52, ptr %69, align 4
  %70 = getelementptr inbounds %struct.berlin_pinctrl_function, ptr %69, i32 0, i32 2
  store i32 1, ptr %70, align 4
  br label %71

71:                                               ; preds = %68, %62
  %72 = phi ptr [ %11, %68 ], [ %63, %62 ]
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, 1
  store i32 %74, ptr %72, align 4
  %75 = getelementptr %struct.berlin_desc_function, ptr %53, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %51

78:                                               ; preds = %71
  %79 = load ptr, ptr %10, align 4
  br label %80

80:                                               ; preds = %78, %43
  %81 = phi ptr [ %79, %78 ], [ %44, %43 ]
  %82 = add nuw i32 %45, 1
  %83 = getelementptr inbounds %struct.berlin_pinctrl_desc, ptr %81, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = icmp ult i32 %82, %84
  br i1 %85, label %43, label %86

86:                                               ; preds = %80
  %87 = load ptr, ptr %36, align 4
  br label %88

88:                                               ; preds = %86, %38
  %89 = phi ptr [ %87, %86 ], [ %35, %38 ]
  %90 = load i32, ptr %11, align 4
  %91 = mul i32 %90, 12
  %92 = tail call noalias ptr @krealloc(ptr noundef %89, i32 noundef %91, i32 noundef 3264) #10
  store ptr %92, ptr %36, align 4
  %93 = load ptr, ptr %10, align 4
  %94 = getelementptr inbounds %struct.berlin_pinctrl_desc, ptr %93, i32 0, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %160, label %97

97:                                               ; preds = %152, %88
  %98 = phi ptr [ %153, %152 ], [ %93, %88 ]
  %99 = phi i32 [ %154, %152 ], [ 0, %88 ]
  %100 = load ptr, ptr %98, align 4
  %101 = getelementptr %struct.berlin_desc_group, ptr %100, i32 %99
  %102 = getelementptr %struct.berlin_desc_group, ptr %100, i32 %99, i32 4
  %103 = load ptr, ptr %102, align 4
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %152, label %106

106:                                              ; preds = %145, %97
  %107 = phi ptr [ %148, %145 ], [ %104, %97 ]
  %108 = phi ptr [ %147, %145 ], [ %103, %97 ]
  %109 = load ptr, ptr %36, align 4
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %121, label %112

112:                                              ; preds = %117, %106
  %113 = phi ptr [ %119, %117 ], [ %110, %106 ]
  %114 = phi ptr [ %118, %117 ], [ %109, %106 ]
  %115 = tail call i32 @strcmp(ptr noundef nonnull %107, ptr noundef nonnull %113) #8
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %112
  %118 = getelementptr %struct.berlin_pinctrl_function, ptr %114, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %112

121:                                              ; preds = %117, %106
  tail call void @kfree(ptr noundef %109) #8
  br label %158

122:                                              ; preds = %112
  %123 = getelementptr inbounds %struct.berlin_pinctrl_function, ptr %114, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %128, label %126

126:                                              ; preds = %134, %122
  %127 = phi ptr [ %124, %122 ], [ %136, %134 ]
  br label %140

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.berlin_pinctrl_function, ptr %114, i32 0, i32 2
  %130 = load i32, ptr %129, align 4
  %131 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %130, i32 4) #8
  %132 = extractvalue { i32, i1 } %131, 1
  br i1 %132, label %133, label %134, !prof !8

133:                                              ; preds = %128
  store ptr null, ptr %123, align 4
  br label %138

134:                                              ; preds = %128
  %135 = extractvalue { i32, i1 } %131, 0
  %136 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %135, i32 noundef 3520) #8
  store ptr %136, ptr %123, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %126

138:                                              ; preds = %134, %133
  %139 = load ptr, ptr %36, align 4
  tail call void @kfree(ptr noundef %139) #8
  br label %158

140:                                              ; preds = %140, %126
  %141 = phi ptr [ %144, %140 ], [ %127, %126 ]
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  %144 = getelementptr ptr, ptr %141, i32 1
  br i1 %143, label %145, label %140

145:                                              ; preds = %140
  %146 = load ptr, ptr %101, align 4
  store ptr %146, ptr %141, align 4
  %147 = getelementptr %struct.berlin_desc_function, ptr %108, i32 1
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %106

150:                                              ; preds = %145
  %151 = load ptr, ptr %10, align 4
  br label %152

152:                                              ; preds = %150, %97
  %153 = phi ptr [ %151, %150 ], [ %98, %97 ]
  %154 = add nuw i32 %99, 1
  %155 = getelementptr inbounds %struct.berlin_pinctrl_desc, ptr %153, i32 0, i32 1
  %156 = load i32, ptr %155, align 4
  %157 = icmp ult i32 %154, %156
  br i1 %157, label %97, label %160

158:                                              ; preds = %138, %121, %33, %31
  %159 = phi i32 [ -12, %138 ], [ -22, %121 ], [ -12, %31 ], [ -12, %33 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef %159) #11
  br label %167

160:                                              ; preds = %152, %88
  %161 = tail call ptr @devm_pinctrl_register(ptr noundef %4, ptr noundef nonnull @berlin_pctrl_desc, ptr noundef nonnull %5) #8
  %162 = getelementptr inbounds %struct.berlin_pinctrl, ptr %5, i32 0, i32 5
  store ptr %161, ptr %162, align 4
  %163 = icmp ugt ptr %161, inttoptr (i32 -4096 to ptr)
  br i1 %163, label %164, label %167

164:                                              ; preds = %160
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #11
  %165 = load ptr, ptr %162, align 4
  %166 = ptrtoint ptr %165 to i32
  br label %167

167:                                              ; preds = %164, %160, %158, %3
  %168 = phi i32 [ %159, %158 ], [ %166, %164 ], [ -12, %3 ], [ 0, %160 ]
  ret i32 %168
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @berlin_pinctrl_probe(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_get_parent(ptr noundef %4) #8
  %6 = tail call ptr @syscon_node_to_regmap(ptr noundef %5) #8
  tail call void @of_node_put(ptr noundef %5) #8
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = ptrtoint ptr %6 to i32
  br label %12

10:                                               ; preds = %2
  %11 = tail call i32 @berlin_pinctrl_probe_regmap(ptr noundef %0, ptr noundef %1, ptr noundef %6)
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @berlin_pinctrl_get_group_count(ptr noundef %0) #0 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.berlin_pinctrl, ptr %2, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.berlin_pinctrl_desc, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @berlin_pinctrl_get_group_name(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.berlin_pinctrl, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.berlin_desc_group, ptr %6, i32 %1
  %8 = load ptr, ptr %7, align 4
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @berlin_pinctrl_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4
  store ptr null, ptr %2, align 4
  store i32 0, ptr %3, align 4
  %8 = call i32 @of_property_read_string(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %5) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.berlin_pinctrl, ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.4, ptr noundef %1) #11
  br label %40

13:                                               ; preds = %4
  %14 = call i32 @of_property_read_string_helper(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.berlin_pinctrl, ptr %7, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.6, ptr noundef %1) #11
  br label %40

19:                                               ; preds = %13
  %20 = call i32 @pinctrl_utils_reserve_map(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %6, ptr noundef %3, i32 noundef %14) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.berlin_pinctrl, ptr %7, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.7, i32 noundef %20) #11
  br label %40

25:                                               ; preds = %19
  %26 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef null) #8
  %27 = call ptr @of_prop_next_string(ptr noundef %26, ptr noundef null) #8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %37, %25
  %30 = phi ptr [ %38, %37 ], [ %27, %25 ]
  %31 = load ptr, ptr %5, align 4
  %32 = call i32 @pinctrl_utils_add_map_mux(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %30, ptr noundef %31) #8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.berlin_pinctrl, ptr %7, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.8, i32 noundef %32) #11
  br label %40

37:                                               ; preds = %29
  %38 = call ptr @of_prop_next_string(ptr noundef %26, ptr noundef nonnull %30) #8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %29

40:                                               ; preds = %37, %34, %25, %22, %16, %10
  %41 = phi i32 [ -22, %10 ], [ -22, %16 ], [ %20, %22 ], [ %32, %34 ], [ 0, %25 ], [ 0, %37 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_reserve_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_add_map_mux(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @berlin_pinmux_get_functions_count(ptr noundef %0) #0 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.berlin_pinctrl, ptr %2, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @berlin_pinmux_get_function_name(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.berlin_pinctrl, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.berlin_pinctrl_function, ptr %5, i32 %1
  %7 = load ptr, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @berlin_pinmux_get_function_groups(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.berlin_pinctrl, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.berlin_pinctrl_function, ptr %7, i32 %1, i32 1
  %9 = load ptr, ptr %8, align 4
  store ptr %9, ptr %2, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr %struct.berlin_pinctrl_function, ptr %10, i32 %1, i32 2
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @berlin_pinmux_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.berlin_pinctrl, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.berlin_pinctrl, ptr %4, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.berlin_pinctrl_function, ptr %9, i32 %1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.berlin_desc_group, ptr %7, i32 %2, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %48, label %16

16:                                               ; preds = %21, %3
  %17 = phi ptr [ %23, %21 ], [ %14, %3 ]
  %18 = phi ptr [ %22, %21 ], [ %13, %3 ]
  %19 = tail call i32 @strcmp(ptr noundef nonnull %17, ptr noundef %11) #8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = getelementptr %struct.berlin_desc_function, ptr %18, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %48, label %16

25:                                               ; preds = %16
  %26 = icmp eq ptr %18, null
  br i1 %26, label %48, label %27

27:                                               ; preds = %25
  %28 = getelementptr %struct.berlin_desc_group, ptr %7, i32 %2, i32 3
  %29 = load i8, ptr %28, align 2
  %30 = zext i8 %29 to i32
  %31 = shl nsw i32 -1, %30
  %32 = getelementptr %struct.berlin_desc_group, ptr %7, i32 %2, i32 2
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = add nuw nsw i32 %30, %34
  %36 = sub nsw i32 32, %35
  %37 = lshr i32 -1, %36
  %38 = and i32 %37, %31
  %39 = getelementptr inbounds %struct.berlin_desc_function, ptr %18, i32 0, i32 1
  %40 = load i8, ptr %39, align 4
  %41 = zext i8 %40 to i32
  %42 = shl i32 %41, %30
  %43 = load ptr, ptr %4, align 4
  %44 = getelementptr %struct.berlin_desc_group, ptr %7, i32 %2, i32 1
  %45 = load i8, ptr %44, align 4
  %46 = zext i8 %45 to i32
  %47 = tail call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef %46, i32 noundef %38, i32 noundef %42, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %48

48:                                               ; preds = %27, %25, %21, %3
  %49 = phi i32 [ 0, %27 ], [ -22, %25 ], [ -22, %3 ], [ -22, %21 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
