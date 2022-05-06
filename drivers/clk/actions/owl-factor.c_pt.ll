; ModuleID = '/llk/IR/drivers/clk/actions/owl-factor.c_pt.bc'
source_filename = "../drivers/clk/actions/owl-factor.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.owl_factor_hw = type { i32, i8, i8, i8, ptr }
%struct.owl_clk_common = type { ptr, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_factor_table = type { i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"drivers/clk/actions/owl-factor.c\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"%s: Zero divisor and CLK_DIVIDER_ALLOW_ZERO not set\0A\00", align 1
@owl_factor_ops = dso_local local_unnamed_addr constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @owl_factor_recalc_rate, ptr @owl_factor_round_rate, ptr null, ptr null, ptr null, ptr @owl_factor_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @owl_factor_helper_round_rate(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.owl_factor_hw, ptr %1, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.owl_clk_common, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %3, align 4
  %9 = icmp eq i32 %2, 0
  %10 = select i1 %9, i32 1, i32 %2
  %11 = tail call i32 @clk_hw_get_flags(ptr noundef %7) #4
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %4
  %15 = load i32, ptr %3, align 4
  %16 = getelementptr inbounds %struct.clk_factor_table, ptr %6, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %89, label %19

19:                                               ; preds = %27, %14
  %20 = phi i32 [ %30, %27 ], [ %17, %14 ]
  %21 = phi ptr [ %28, %27 ], [ %6, %14 ]
  %22 = getelementptr inbounds %struct.clk_factor_table, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = mul i32 %23, %15
  %25 = udiv i32 %24, %20
  %26 = icmp ugt i32 %25, %10
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = getelementptr %struct.clk_factor_table, ptr %21, i32 1
  %29 = getelementptr %struct.clk_factor_table, ptr %21, i32 1, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %19

32:                                               ; preds = %19
  %33 = load i32, ptr %21, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %89

35:                                               ; preds = %32, %27
  br label %36

36:                                               ; preds = %36, %35
  %37 = phi ptr [ %41, %36 ], [ %6, %35 ]
  %38 = phi i32 [ %40, %36 ], [ 0, %35 ]
  %39 = load i32, ptr %37, align 4
  %40 = tail call i32 @llvm.umax.i32(i32 %39, i32 %38) #4
  %41 = getelementptr %struct.clk_factor_table, ptr %37, i32 1
  %42 = getelementptr %struct.clk_factor_table, ptr %37, i32 1, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %89, label %36

45:                                               ; preds = %4
  %46 = load ptr, ptr %5, align 4
  %47 = getelementptr inbounds %struct.clk_factor_table, ptr %46, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %86, label %50

50:                                               ; preds = %77, %45
  %51 = phi i32 [ %82, %77 ], [ %48, %45 ]
  %52 = phi ptr [ %81, %77 ], [ %47, %45 ]
  %53 = phi i32 [ %79, %77 ], [ 0, %45 ]
  %54 = phi i32 [ %78, %77 ], [ 0, %45 ]
  %55 = phi ptr [ %80, %77 ], [ %46, %45 ]
  %56 = mul i32 %51, %10
  %57 = getelementptr inbounds %struct.clk_factor_table, ptr %55, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = udiv i32 %56, %58
  %60 = icmp eq i32 %59, %8
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  store i32 %8, ptr %3, align 4
  %62 = load i32, ptr %55, align 4
  br label %89

63:                                               ; preds = %50
  %64 = tail call ptr @clk_hw_get_parent(ptr noundef %7) #4
  %65 = tail call i32 @clk_hw_round_rate(ptr noundef %64, i32 noundef %59) #4
  %66 = load i32, ptr %52, align 4
  %67 = add i32 %65, -1
  %68 = add i32 %67, %66
  %69 = udiv i32 %68, %66
  %70 = load i32, ptr %57, align 4
  %71 = mul i32 %70, %69
  %72 = icmp ule i32 %71, %10
  %73 = icmp ugt i32 %71, %54
  %74 = select i1 %72, i1 %73, i1 false
  br i1 %74, label %75, label %77

75:                                               ; preds = %63
  %76 = load i32, ptr %55, align 4
  store i32 %65, ptr %3, align 4
  br label %77

77:                                               ; preds = %75, %63
  %78 = phi i32 [ %71, %75 ], [ %54, %63 ]
  %79 = phi i32 [ %76, %75 ], [ %53, %63 ]
  %80 = getelementptr %struct.clk_factor_table, ptr %55, i32 1
  %81 = getelementptr %struct.clk_factor_table, ptr %55, i32 1, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %50

84:                                               ; preds = %77
  %85 = icmp eq i32 %79, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %84, %45
  %87 = tail call ptr @clk_hw_get_parent(ptr noundef %7) #4
  %88 = tail call i32 @clk_hw_round_rate(ptr noundef %87, i32 noundef 1) #4
  store i32 %88, ptr %3, align 4
  br label %89

89:                                               ; preds = %86, %84, %61, %36, %32, %14
  %90 = phi i32 [ %62, %61 ], [ %79, %84 ], [ 0, %86 ], [ %33, %32 ], [ 0, %14 ], [ %40, %36 ]
  %91 = getelementptr inbounds %struct.clk_factor_table, ptr %6, i32 0, i32 2
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %108, label %94

94:                                               ; preds = %103, %89
  %95 = phi ptr [ %104, %103 ], [ %6, %89 ]
  %96 = load i32, ptr %95, align 4
  %97 = icmp eq i32 %96, %90
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.clk_factor_table, ptr %95, i32 0, i32 2
  %100 = getelementptr inbounds %struct.clk_factor_table, ptr %95, i32 0, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = load i32, ptr %99, align 4
  br label %108

103:                                              ; preds = %94
  %104 = getelementptr %struct.clk_factor_table, ptr %95, i32 1
  %105 = getelementptr %struct.clk_factor_table, ptr %95, i32 1, i32 2
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %94

108:                                              ; preds = %103, %98, %89
  %109 = phi i32 [ 0, %89 ], [ %101, %98 ], [ 0, %103 ]
  %110 = phi i32 [ 1, %89 ], [ %102, %98 ], [ 1, %103 ]
  %111 = load i32, ptr %3, align 4
  %112 = mul i32 %111, %109
  %113 = udiv i32 %112, %110
  ret i32 %113
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @owl_factor_helper_recalc_rate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.owl_factor_hw, ptr %1, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  store i32 0, ptr %4, align 4, !annotation !8
  %7 = load ptr, ptr %0, align 4
  %8 = load i32, ptr %1, align 4
  %9 = call i32 @regmap_read(ptr noundef %7, i32 noundef %8, ptr noundef nonnull %4) #4
  %10 = load i32, ptr %4, align 4
  %11 = getelementptr inbounds %struct.owl_factor_hw, ptr %1, i32 0, i32 1
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  %14 = lshr i32 %10, %13
  %15 = getelementptr inbounds %struct.owl_factor_hw, ptr %1, i32 0, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl nsw i32 -1, %17
  %19 = xor i32 %18, -1
  %20 = and i32 %14, %19
  %21 = getelementptr inbounds %struct.clk_factor_table, ptr %6, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %28, %3
  %25 = phi ptr [ %29, %28 ], [ %6, %3 ]
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, %20
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr %struct.clk_factor_table, ptr %25, i32 1
  %30 = getelementptr %struct.clk_factor_table, ptr %25, i32 1, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %24

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.clk_factor_table, ptr %25, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %33, %28, %3
  %38 = getelementptr inbounds %struct.owl_factor_hw, ptr %1, i32 0, i32 3
  %39 = load i8, ptr %38, align 2
  %40 = and i8 %39, 4
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %60, !prof !9

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.owl_clk_common, ptr %0, i32 0, i32 1, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = call ptr @__clk_get_name(ptr noundef %44) #4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 163, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %45) #4
  br label %60

46:                                               ; preds = %33
  %47 = getelementptr inbounds %struct.clk_factor_table, ptr %25, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = zext i32 %2 to i64
  %50 = zext i32 %48 to i64
  %51 = mul nuw i64 %50, %49
  %52 = icmp ult i64 %51, 4294967296
  br i1 %52, label %53, label %56, !prof !10

53:                                               ; preds = %46
  %54 = trunc i64 %51 to i32
  %55 = udiv i32 %54, %35
  br label %60

56:                                               ; preds = %46
  %57 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %35, i64 %51) #5, !srcloc !11
  %58 = extractvalue { i64, i64 } %57, 1
  %59 = trunc i64 %58 to i32
  br label %60

60:                                               ; preds = %56, %53, %42, %37
  %61 = phi i32 [ %2, %42 ], [ %2, %37 ], [ %55, %53 ], [ %59, %56 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @owl_factor_helper_set_rate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.owl_factor_hw, ptr %1, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.clk_factor_table, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %37, label %11

11:                                               ; preds = %19, %4
  %12 = phi i32 [ %22, %19 ], [ %9, %4 ]
  %13 = phi ptr [ %20, %19 ], [ %7, %4 ]
  %14 = getelementptr inbounds %struct.clk_factor_table, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = mul i32 %15, %3
  %17 = udiv i32 %16, %12
  %18 = icmp ugt i32 %17, %2
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = getelementptr %struct.clk_factor_table, ptr %13, i32 1
  %21 = getelementptr %struct.clk_factor_table, ptr %13, i32 1, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %11

24:                                               ; preds = %11
  %25 = load i32, ptr %13, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %37

27:                                               ; preds = %24, %19
  br label %28

28:                                               ; preds = %28, %27
  %29 = phi ptr [ %33, %28 ], [ %7, %27 ]
  %30 = phi i32 [ %32, %28 ], [ 0, %27 ]
  %31 = load i32, ptr %29, align 4
  %32 = tail call i32 @llvm.umax.i32(i32 %31, i32 %30) #4
  %33 = getelementptr %struct.clk_factor_table, ptr %29, i32 1
  %34 = getelementptr %struct.clk_factor_table, ptr %29, i32 1, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %28

37:                                               ; preds = %28, %24, %4
  %38 = phi i32 [ %25, %24 ], [ 0, %4 ], [ %32, %28 ]
  %39 = getelementptr inbounds %struct.owl_factor_hw, ptr %1, i32 0, i32 2
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = shl nsw i32 -1, %41
  %43 = xor i32 %42, -1
  %44 = tail call i32 @llvm.umin.i32(i32 %38, i32 %43)
  %45 = load ptr, ptr %0, align 4
  %46 = load i32, ptr %1, align 4
  %47 = call i32 @regmap_read(ptr noundef %45, i32 noundef %46, ptr noundef nonnull %5) #4
  %48 = load i8, ptr %39, align 1
  %49 = zext i8 %48 to i32
  %50 = shl nsw i32 -1, %49
  %51 = xor i32 %50, -1
  %52 = getelementptr inbounds %struct.owl_factor_hw, ptr %1, i32 0, i32 1
  %53 = load i8, ptr %52, align 4
  %54 = zext i8 %53 to i32
  %55 = shl i32 %51, %54
  %56 = xor i32 %55, -1
  %57 = load i32, ptr %5, align 4
  %58 = and i32 %57, %56
  %59 = shl i32 %44, %54
  %60 = or i32 %58, %59
  store i32 %60, ptr %5, align 4
  %61 = load ptr, ptr %0, align 4
  %62 = load i32, ptr %1, align 4
  %63 = call i32 @regmap_write(ptr noundef %61, i32 noundef %62, i32 noundef %60) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_factor_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -16
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = tail call i32 @owl_factor_helper_recalc_rate(ptr noundef %4, ptr noundef %3, i32 noundef %1)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_factor_round_rate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -16
  %5 = getelementptr i8, ptr %0, i32 -4
  %6 = tail call i32 @owl_factor_helper_round_rate(ptr noundef %5, ptr noundef %4, i32 noundef %1, ptr noundef %2)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_factor_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -16
  %5 = getelementptr i8, ptr %0, i32 -4
  %6 = tail call i32 @owl_factor_helper_set_rate(ptr noundef %5, ptr noundef %4, i32 noundef %1, i32 noundef %2)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

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
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148656886, i64 2148657166, i64 2148657500, i64 2148657834}
