; ModuleID = '/llk/IR/drivers/clk/sunxi/clk-factors.c_pt.bc'
source_filename = "../drivers/clk/sunxi/clk-factors.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.factors_data = type { i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.clk_factors = type { %struct.clk_hw, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.factors_request = type { i32, i32, i8, i8, i8, i8, i8 }
%struct.clk_factors_config = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@.str = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@clk_factors_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_factors_recalc_rate, ptr null, ptr @clk_factors_determine_rate, ptr null, ptr null, ptr @clk_factors_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@clk_gate_ops = external dso_local constant %struct.clk_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sunxi_factors_register(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @__sunxi_factors_register(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__sunxi_factors_register(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 4
  %6 = alloca [5 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  %7 = load ptr, ptr %0, align 4
  store ptr %7, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false), !annotation !8
  %8 = call i32 @of_clk_parent_fill(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 5) #5
  %9 = getelementptr inbounds %struct.factors_data, ptr %1, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  store ptr %10, ptr %5, align 4
  br label %15

13:                                               ; preds = %4
  %14 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %5) #5
  br label %15

15:                                               ; preds = %13, %12
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %17 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 40) #6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %75, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.clk_factors, ptr %17, i32 0, i32 1
  store ptr %3, ptr %20, align 4
  %21 = getelementptr inbounds %struct.factors_data, ptr %1, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.clk_factors, ptr %17, i32 0, i32 2
  store ptr %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.factors_data, ptr %1, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.clk_factors, ptr %17, i32 0, i32 3
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.factors_data, ptr %1, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.clk_factors, ptr %17, i32 0, i32 4
  store ptr %28, ptr %29, align 8
  %30 = getelementptr inbounds %struct.clk_factors, ptr %17, i32 0, i32 5
  store ptr %2, ptr %30, align 4
  %31 = load i32, ptr %1, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %19
  %34 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %35 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 24) #6
  %36 = icmp eq ptr %35, null
  br i1 %36, label %74, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.clk_factors, ptr %17, i32 0, i32 7
  store ptr %35, ptr %38, align 4
  %39 = getelementptr inbounds %struct.clk_gate, ptr %35, i32 0, i32 1
  store ptr %3, ptr %39, align 4
  %40 = load i32, ptr %1, align 4
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds %struct.clk_gate, ptr %35, i32 0, i32 2
  store i8 %41, ptr %42, align 8
  %43 = getelementptr inbounds %struct.clk_gate, ptr %35, i32 0, i32 4
  store ptr %2, ptr %43, align 4
  br label %44

44:                                               ; preds = %37, %19
  %45 = phi ptr [ %35, %37 ], [ null, %19 ]
  %46 = getelementptr inbounds %struct.factors_data, ptr %1, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %63, label %49

49:                                               ; preds = %44
  %50 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %51 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %50, i32 noundef 3520, i32 noundef 32) #6
  %52 = icmp eq ptr %51, null
  br i1 %52, label %73, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.clk_factors, ptr %17, i32 0, i32 6
  store ptr %51, ptr %54, align 8
  %55 = getelementptr inbounds %struct.clk_mux, ptr %51, i32 0, i32 1
  store ptr %3, ptr %55, align 4
  %56 = load i32, ptr %46, align 4
  %57 = trunc i32 %56 to i8
  %58 = getelementptr inbounds %struct.clk_mux, ptr %51, i32 0, i32 4
  store i8 %57, ptr %58, align 8
  %59 = getelementptr inbounds %struct.factors_data, ptr %1, i32 0, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.clk_mux, ptr %51, i32 0, i32 3
  store i32 %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.clk_mux, ptr %51, i32 0, i32 6
  store ptr %2, ptr %62, align 4
  br label %63

63:                                               ; preds = %53, %44
  %64 = phi ptr [ %51, %53 ], [ null, %44 ]
  %65 = load ptr, ptr %5, align 4
  %66 = call ptr @clk_register_composite(ptr noundef null, ptr noundef %65, ptr noundef nonnull %6, i32 noundef %8, ptr noundef %64, ptr noundef nonnull @clk_mux_ops, ptr noundef nonnull %17, ptr noundef nonnull @clk_factors_ops, ptr noundef %45, ptr noundef nonnull @clk_gate_ops, i32 noundef 2048) #5
  %67 = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  br i1 %67, label %72, label %68

68:                                               ; preds = %63
  %69 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %66) #5
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  call void @clk_unregister(ptr noundef %66) #5
  br label %72

72:                                               ; preds = %71, %63
  call void @kfree(ptr noundef %64) #5
  br label %73

73:                                               ; preds = %72, %49
  call void @kfree(ptr noundef %45) #5
  br label %74

74:                                               ; preds = %73, %33
  call void @kfree(ptr noundef nonnull %17) #5
  br label %75

75:                                               ; preds = %74, %68, %15
  %76 = phi ptr [ %66, %68 ], [ null, %15 ], [ null, %74 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  ret ptr %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sunxi_factors_register_critical(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @__sunxi_factors_register(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sunxi_factors_unregister(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @__clk_get_hw(ptr noundef %1) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  tail call void @of_clk_del_provider(ptr noundef %0) #5
  tail call void @clk_unregister(ptr noundef %1) #5
  %6 = getelementptr inbounds %struct.clk_factors, ptr %3, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #5
  %8 = getelementptr inbounds %struct.clk_factors, ptr %3, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %9) #5
  tail call void @kfree(ptr noundef nonnull %3) #5
  br label %10

10:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_parent_fill(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_composite(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_factors_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.factors_request, align 4
  %4 = getelementptr inbounds %struct.clk_factors, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.clk_factors, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %9 = getelementptr inbounds %struct.clk_factors_config, ptr %5, i32 0, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %2
  %13 = zext i8 %10 to i32
  %14 = shl nsw i32 -1, %13
  %15 = xor i32 %14, -1
  %16 = load i8, ptr %5, align 1
  %17 = zext i8 %16 to i32
  %18 = shl i32 %15, %17
  %19 = and i32 %18, %8
  %20 = lshr i32 %19, %17
  %21 = trunc i32 %20 to i8
  br label %22

22:                                               ; preds = %12, %2
  %23 = phi i8 [ %21, %12 ], [ 1, %2 ]
  %24 = getelementptr inbounds %struct.clk_factors_config, ptr %5, i32 0, i32 3
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %22
  %28 = zext i8 %25 to i32
  %29 = shl nsw i32 -1, %28
  %30 = xor i32 %29, -1
  %31 = getelementptr inbounds %struct.clk_factors_config, ptr %5, i32 0, i32 2
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl i32 %30, %33
  %35 = and i32 %34, %8
  %36 = lshr i32 %35, %33
  %37 = trunc i32 %36 to i8
  br label %38

38:                                               ; preds = %27, %22
  %39 = phi i8 [ %37, %27 ], [ 0, %22 ]
  %40 = getelementptr inbounds %struct.clk_factors_config, ptr %5, i32 0, i32 5
  %41 = load i8, ptr %40, align 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %38
  %44 = zext i8 %41 to i32
  %45 = shl nsw i32 -1, %44
  %46 = xor i32 %45, -1
  %47 = getelementptr inbounds %struct.clk_factors_config, ptr %5, i32 0, i32 4
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = shl i32 %46, %49
  %51 = and i32 %50, %8
  %52 = lshr i32 %51, %49
  %53 = trunc i32 %52 to i8
  br label %54

54:                                               ; preds = %43, %38
  %55 = phi i8 [ %53, %43 ], [ 0, %38 ]
  %56 = getelementptr inbounds %struct.clk_factors_config, ptr %5, i32 0, i32 7
  %57 = load i8, ptr %56, align 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %54
  %60 = zext i8 %57 to i32
  %61 = shl nsw i32 -1, %60
  %62 = xor i32 %61, -1
  %63 = getelementptr inbounds %struct.clk_factors_config, ptr %5, i32 0, i32 6
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i32
  %66 = shl i32 %62, %65
  %67 = and i32 %66, %8
  %68 = lshr i32 %67, %65
  %69 = trunc i32 %68 to i8
  br label %70

70:                                               ; preds = %59, %54
  %71 = phi i8 [ %69, %59 ], [ 0, %54 ]
  %72 = getelementptr inbounds %struct.clk_factors, ptr %0, i32 0, i32 4
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %96, label %75

75:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5
  %76 = getelementptr inbounds %struct.factors_request, ptr %3, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  store i32 %1, ptr %76, align 4
  %77 = getelementptr inbounds %struct.factors_request, ptr %3, i32 0, i32 3
  store i8 %23, ptr %77, align 1
  %78 = getelementptr inbounds %struct.factors_request, ptr %3, i32 0, i32 4
  store i8 %39, ptr %78, align 2
  %79 = getelementptr inbounds %struct.factors_request, ptr %3, i32 0, i32 5
  store i8 %55, ptr %79, align 1
  %80 = getelementptr inbounds %struct.factors_request, ptr %3, i32 0, i32 6
  store i8 %71, ptr %80, align 4
  %81 = getelementptr inbounds %struct.clk_factors, ptr %0, i32 0, i32 6
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %94, label %84

84:                                               ; preds = %75
  %85 = getelementptr inbounds %struct.factors_request, ptr %3, i32 0, i32 2
  %86 = getelementptr inbounds %struct.clk_mux, ptr %82, i32 0, i32 4
  %87 = load i8, ptr %86, align 4
  %88 = zext i8 %87 to i32
  %89 = lshr i32 %8, %88
  %90 = getelementptr inbounds %struct.clk_mux, ptr %82, i32 0, i32 3
  %91 = load i32, ptr %90, align 4
  %92 = and i32 %89, %91
  %93 = trunc i32 %92 to i8
  store i8 %93, ptr %85, align 4
  br label %94

94:                                               ; preds = %84, %75
  call void %73(ptr noundef nonnull %3) #5
  %95 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5
  br label %111

96:                                               ; preds = %70
  %97 = zext i8 %23 to i32
  %98 = getelementptr inbounds %struct.clk_factors_config, ptr %5, i32 0, i32 8
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i32
  %101 = add nuw nsw i32 %100, %97
  %102 = zext i8 %39 to i32
  %103 = add nuw nsw i32 %102, 1
  %104 = mul i32 %103, %1
  %105 = mul i32 %104, %101
  %106 = zext i8 %71 to i32
  %107 = lshr i32 %105, %106
  %108 = zext i8 %55 to i32
  %109 = add nuw nsw i32 %108, 1
  %110 = udiv i32 %107, %109
  br label %111

111:                                              ; preds = %96, %94
  %112 = phi i32 [ %95, %94 ], [ %110, %96 ]
  ret i32 %112
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_factors_determine_rate(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.factors_request, align 4
  %4 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #5
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %52

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.factors_request, ptr %3, i32 0, i32 1
  %8 = getelementptr inbounds %struct.factors_request, ptr %3, i32 0, i32 2
  %9 = getelementptr inbounds %struct.factors_request, ptr %3, i32 0, i32 3
  %10 = getelementptr inbounds %struct.clk_factors, ptr %0, i32 0, i32 3
  %11 = getelementptr inbounds i8, ptr %3, i32 12
  br label %12

12:                                               ; preds = %41, %6
  %13 = phi i32 [ 0, %6 ], [ %44, %41 ]
  %14 = phi i32 [ 0, %6 ], [ %43, %41 ]
  %15 = phi i32 [ 0, %6 ], [ %45, %41 ]
  %16 = phi ptr [ null, %6 ], [ %42, %41 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5
  store i32 0, ptr %11, align 4, !annotation !8
  %17 = load i32, ptr %1, align 4
  store i32 %17, ptr %3, align 4
  store i32 0, ptr %7, align 4
  %18 = trunc i32 %15 to i8
  store i8 %18, ptr %8, align 4
  store i32 0, ptr %9, align 1
  %19 = call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef %15) #5
  %20 = icmp eq ptr %19, null
  br i1 %20, label %41, label %21

21:                                               ; preds = %12
  %22 = call i32 @clk_hw_get_flags(ptr noundef %0) #5
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i32, ptr %1, align 4
  %27 = call i32 @clk_hw_round_rate(ptr noundef nonnull %19, i32 noundef %26) #5
  br label %30

28:                                               ; preds = %21
  %29 = call i32 @clk_hw_get_rate(ptr noundef nonnull %19) #5
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi i32 [ %27, %25 ], [ %29, %28 ]
  store i32 %31, ptr %7, align 4
  %32 = load ptr, ptr %10, align 4
  call void %32(ptr noundef nonnull %3) #5
  %33 = load i32, ptr %3, align 4
  %34 = load i32, ptr %1, align 4
  %35 = icmp ule i32 %33, %34
  %36 = icmp ugt i32 %33, %13
  %37 = select i1 %35, i1 %36, i1 false
  %38 = select i1 %37, ptr %19, ptr %16
  %39 = select i1 %37, i32 %31, i32 %14
  %40 = select i1 %37, i32 %33, i32 %13
  br label %41

41:                                               ; preds = %30, %12
  %42 = phi ptr [ %38, %30 ], [ %16, %12 ]
  %43 = phi i32 [ %39, %30 ], [ %14, %12 ]
  %44 = phi i32 [ %40, %30 ], [ %13, %12 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5
  %45 = add nuw nsw i32 %15, 1
  %46 = icmp eq i32 %45, %4
  br i1 %46, label %47, label %12

47:                                               ; preds = %41
  %48 = icmp eq ptr %42, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  store ptr %42, ptr %50, align 4
  %51 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  store i32 %43, ptr %51, align 4
  store i32 %44, ptr %1, align 4
  br label %52

52:                                               ; preds = %49, %47, %2
  %53 = phi i32 [ 0, %49 ], [ -22, %47 ], [ -22, %2 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_factors_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.factors_request, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5
  %5 = getelementptr inbounds i8, ptr %4, i32 12
  store i32 0, ptr %5, align 4, !annotation !8
  store i32 %1, ptr %4, align 4
  %6 = getelementptr inbounds %struct.factors_request, ptr %4, i32 0, i32 1
  store i32 %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.factors_request, ptr %4, i32 0, i32 2
  %8 = getelementptr inbounds %struct.factors_request, ptr %4, i32 0, i32 3
  %9 = getelementptr inbounds %struct.factors_request, ptr %4, i32 0, i32 4
  %10 = getelementptr inbounds %struct.factors_request, ptr %4, i32 0, i32 5
  %11 = getelementptr inbounds %struct.factors_request, ptr %4, i32 0, i32 6
  %12 = getelementptr inbounds %struct.clk_factors, ptr %0, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(5) %7, i8 0, i64 5, i1 false)
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.clk_factors, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  call void %15(ptr noundef nonnull %4) #5
  %16 = getelementptr inbounds %struct.clk_factors, ptr %0, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %17) #5
  br label %21

21:                                               ; preds = %19, %3
  %22 = phi i32 [ %20, %19 ], [ 0, %3 ]
  %23 = getelementptr inbounds %struct.clk_factors, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #5, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %26 = getelementptr inbounds %struct.clk_factors_config, ptr %13, i32 0, i32 1
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl nsw i32 -1, %28
  %30 = xor i32 %29, -1
  %31 = load i8, ptr %13, align 1
  %32 = zext i8 %31 to i32
  %33 = shl i32 %30, %32
  %34 = xor i32 %33, -1
  %35 = and i32 %25, %34
  %36 = load i8, ptr %8, align 1
  %37 = zext i8 %36 to i32
  %38 = shl i32 %37, %32
  %39 = or i32 %35, %38
  %40 = getelementptr inbounds %struct.clk_factors_config, ptr %13, i32 0, i32 3
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = shl nsw i32 -1, %42
  %44 = xor i32 %43, -1
  %45 = getelementptr inbounds %struct.clk_factors_config, ptr %13, i32 0, i32 2
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = shl i32 %44, %47
  %49 = xor i32 %48, -1
  %50 = and i32 %39, %49
  %51 = load i8, ptr %9, align 2
  %52 = zext i8 %51 to i32
  %53 = shl i32 %52, %47
  %54 = or i32 %50, %53
  %55 = getelementptr inbounds %struct.clk_factors_config, ptr %13, i32 0, i32 5
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = shl nsw i32 -1, %57
  %59 = xor i32 %58, -1
  %60 = getelementptr inbounds %struct.clk_factors_config, ptr %13, i32 0, i32 4
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = shl i32 %59, %62
  %64 = xor i32 %63, -1
  %65 = and i32 %54, %64
  %66 = load i8, ptr %10, align 1
  %67 = zext i8 %66 to i32
  %68 = shl i32 %67, %62
  %69 = or i32 %65, %68
  %70 = getelementptr inbounds %struct.clk_factors_config, ptr %13, i32 0, i32 7
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = shl nsw i32 -1, %72
  %74 = xor i32 %73, -1
  %75 = getelementptr inbounds %struct.clk_factors_config, ptr %13, i32 0, i32 6
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  %78 = shl i32 %74, %77
  %79 = xor i32 %78, -1
  %80 = and i32 %69, %79
  %81 = load i8, ptr %11, align 4
  %82 = zext i8 %81 to i32
  %83 = shl i32 %82, %77
  %84 = or i32 %80, %83
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  call void @arm_heavy_mb() #5
  %85 = load ptr, ptr %23, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %84) #5, !srcloc !13
  %86 = load ptr, ptr @arm_delay_ops, align 4
  %87 = lshr i32 %1, 20
  %88 = mul nuw nsw i32 %87, 250
  call void %86(i32 noundef %88) #5
  %89 = load ptr, ptr %16, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %21
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %89, i32 noundef %22) #5
  br label %92

92:                                               ; preds = %91, %21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }

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
!9 = !{i64 3370428}
!10 = !{i64 2151096396}
!11 = !{i64 2151100128}
!12 = !{i64 2151101172}
!13 = !{i64 3370010}
