; ModuleID = '/llk/IR/drivers/clk/ti/clkt_dpll.c_pt.bc'
source_filename = "../drivers/clk/ti/clkt_dpll.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_hw_omap = type { %struct.clk_hw, %struct.list_head, i32, i8, %struct.clk_omap_reg, i8, i32, %struct.clk_omap_reg, ptr, ptr, ptr, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.clk_omap_reg = type { ptr, i16, i8, i8 }
%struct.dpll_data = type { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, i32, i8, %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.ti_clk_features = type { i32, i32, i32, i32, i32, i8, i8 }

@ti_clk_ll_ops = external dso_local local_unnamed_addr global ptr, align 4
@.str = private unnamed_addr constant [27 x i8] c"drivers/clk/ti/clkt_dpll.c\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"No fint limits available!\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @omap2_init_dpll_parent(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @ti_clk_ll_ops, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 5
  %9 = tail call i32 %7(ptr noundef %8) #3
  %10 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, %9
  %13 = tail call i32 @llvm.cttz.i32(i32 %11, i1 false) #3, !range !8
  %14 = lshr i32 %12, %13
  %15 = tail call ptr @ti_clk_get_features() #3
  %16 = getelementptr inbounds %struct.ti_clk_features, ptr %15, i32 0, i32 5
  %17 = load i8, ptr %16, align 4
  br label %18

18:                                               ; preds = %21, %5
  %19 = phi i8 [ %17, %5 ], [ %25, %21 ]
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = tail call i8 @llvm.cttz.i8(i8 %19, i1 true) #3, !range !9
  %23 = zext i8 %22 to i32
  %24 = shl nuw i8 1, %22
  %25 = xor i8 %24, %19
  %26 = icmp eq i32 %14, %23
  br i1 %26, label %27, label %18

27:                                               ; preds = %21, %18, %1
  %28 = phi i8 [ -22, %1 ], [ 0, %18 ], [ 1, %21 ]
  ret i8 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap2_get_dpll_rate(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %60, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @ti_clk_ll_ops, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 5
  %9 = tail call i32 %7(ptr noundef %8) #3
  %10 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, %9
  %13 = tail call i32 @llvm.cttz.i32(i32 %11, i1 false) #3, !range !8
  %14 = lshr i32 %12, %13
  %15 = tail call ptr @ti_clk_get_features() #3
  %16 = getelementptr inbounds %struct.ti_clk_features, ptr %15, i32 0, i32 5
  %17 = load i8, ptr %16, align 4
  br label %18

18:                                               ; preds = %21, %5
  %19 = phi i8 [ %17, %5 ], [ %25, %21 ]
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = tail call i8 @llvm.cttz.i8(i8 %19, i1 true) #3, !range !9
  %23 = zext i8 %22 to i32
  %24 = shl nuw i8 1, %22
  %25 = xor i8 %24, %19
  %26 = icmp eq i32 %14, %23
  br i1 %26, label %27, label %18

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @clk_hw_get_rate(ptr noundef %29) #3
  br label %60

31:                                               ; preds = %18
  %32 = load ptr, ptr @ti_clk_ll_ops, align 4
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 %33(ptr noundef nonnull %3) #3
  %35 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, %34
  %38 = tail call i32 @llvm.cttz.i32(i32 %36, i1 false) #3, !range !8
  %39 = lshr i32 %37, %38
  %40 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, %34
  %43 = tail call i32 @llvm.cttz.i32(i32 %41, i1 false) #3, !range !8
  %44 = lshr i32 %42, %43
  %45 = getelementptr inbounds %struct.dpll_data, ptr %3, i32 0, i32 4
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 @clk_hw_get_rate(ptr noundef %46) #3
  %48 = zext i32 %47 to i64
  %49 = zext i32 %39 to i64
  %50 = mul nuw i64 %48, %49
  %51 = add i32 %44, 1
  %52 = icmp ult i64 %50, 4294967296
  br i1 %52, label %53, label %56, !prof !10

53:                                               ; preds = %31
  %54 = trunc i64 %50 to i32
  %55 = udiv i32 %54, %51
  br label %60

56:                                               ; preds = %31
  %57 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %51, i64 %50) #4, !srcloc !11
  %58 = extractvalue { i64, i64 } %57, 1
  %59 = trunc i64 %58 to i32
  br label %60

60:                                               ; preds = %56, %53, %27, %1
  %61 = phi i32 [ %30, %27 ], [ 0, %1 ], [ %55, %53 ], [ %59, %56 ]
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap2_dpll_round_rate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %163, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %163, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.dpll_data, ptr %7, i32 0, i32 15
  %11 = load i32, ptr %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = icmp ult i32 %11, %1
  %14 = and i1 %12, %13
  %15 = select i1 %14, i32 %11, i32 %1
  %16 = getelementptr inbounds %struct.dpll_data, ptr %7, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @clk_hw_get_rate(ptr noundef %17) #3
  %19 = tail call ptr @clk_hw_get_name(ptr noundef nonnull %0) #3
  %20 = lshr i32 %18, 6
  %21 = udiv i32 %15, %20
  %22 = getelementptr inbounds %struct.dpll_data, ptr %7, i32 0, i32 11
  %23 = load i16, ptr %22, align 4
  %24 = zext i16 %23 to i32
  %25 = shl nuw nsw i32 %24, 6
  %26 = getelementptr inbounds %struct.dpll_data, ptr %7, i32 0, i32 7
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.dpll_data, ptr %7, i32 0, i32 13
  %28 = load i8, ptr %27, align 1
  %29 = getelementptr inbounds %struct.dpll_data, ptr %7, i32 0, i32 14
  %30 = load i16, ptr %29, align 4
  %31 = zext i8 %28 to i16
  %32 = icmp ult i16 %30, %31
  br i1 %32, label %163, label %33

33:                                               ; preds = %9
  %34 = zext i8 %28 to i32
  %35 = zext i32 %18 to i64
  br label %36

36:                                               ; preds = %144, %33
  %37 = phi i32 [ 2147483647, %33 ], [ %147, %144 ]
  %38 = phi i32 [ 2147483647, %33 ], [ %146, %144 ]
  %39 = phi i32 [ 2147483647, %33 ], [ %145, %144 ]
  %40 = phi i32 [ %34, %33 ], [ %148, %144 ]
  %41 = load ptr, ptr %6, align 4
  %42 = tail call ptr @clk_hw_get_parent(ptr noundef nonnull %0) #3
  %43 = tail call i32 @clk_hw_get_rate(ptr noundef %42) #3
  %44 = udiv i32 %43, %40
  %45 = getelementptr inbounds %struct.dpll_data, ptr %41, i32 0, i32 42
  %46 = load i8, ptr %45, align 1
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %36
  %50 = tail call ptr @ti_clk_get_features() #3
  %51 = getelementptr inbounds %struct.ti_clk_features, ptr %50, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = tail call ptr @ti_clk_get_features() #3
  %54 = getelementptr inbounds %struct.ti_clk_features, ptr %53, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = icmp ne i32 %52, 0
  %57 = icmp ne i32 %55, 0
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %60, label %59

59:                                               ; preds = %49
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 87, i32 noundef 9, ptr noundef nonnull @.str.1) #3
  br label %144

60:                                               ; preds = %49, %36
  %61 = tail call ptr @ti_clk_get_features() #3
  %62 = getelementptr inbounds %struct.ti_clk_features, ptr %61, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = icmp slt i32 %44, %63
  br i1 %64, label %83, label %65

65:                                               ; preds = %60
  %66 = tail call ptr @ti_clk_get_features() #3
  %67 = getelementptr inbounds %struct.ti_clk_features, ptr %66, i32 0, i32 2
  %68 = load i32, ptr %67, align 4
  %69 = icmp sgt i32 %44, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = trunc i32 %40 to i8
  %72 = getelementptr inbounds %struct.dpll_data, ptr %41, i32 0, i32 13
  store i8 %71, ptr %72, align 1
  br label %144

73:                                               ; preds = %65
  %74 = tail call ptr @ti_clk_get_features() #3
  %75 = getelementptr inbounds %struct.ti_clk_features, ptr %74, i32 0, i32 3
  %76 = load i32, ptr %75, align 4
  %77 = icmp sgt i32 %44, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = tail call ptr @ti_clk_get_features() #3
  %80 = getelementptr inbounds %struct.ti_clk_features, ptr %79, i32 0, i32 4
  %81 = load i32, ptr %80, align 4
  %82 = icmp slt i32 %44, %81
  br i1 %82, label %144, label %86

83:                                               ; preds = %60
  %84 = trunc i32 %40 to i16
  %85 = getelementptr inbounds %struct.dpll_data, ptr %41, i32 0, i32 14
  store i16 %84, ptr %85, align 4
  br label %152

86:                                               ; preds = %78, %73
  %87 = mul i32 %40, %21
  %88 = icmp sgt i32 %87, %25
  br i1 %88, label %152, label %89

89:                                               ; preds = %86
  %90 = freeze i32 %87
  %91 = sdiv i32 %90, 64
  %92 = mul i32 %91, 64
  %93 = sub i32 %90, %92
  %94 = icmp sgt i32 %93, 31
  %95 = zext i1 %94 to i32
  %96 = add nsw i32 %91, %95
  %97 = zext i32 %96 to i64
  %98 = mul nuw i64 %97, %35
  %99 = icmp ult i64 %98, 4294967296
  br i1 %99, label %100, label %103, !prof !10

100:                                              ; preds = %89
  %101 = trunc i64 %98 to i32
  %102 = udiv i32 %101, %40
  br label %107

103:                                              ; preds = %89
  %104 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %40, i64 %98) #4, !srcloc !11
  %105 = extractvalue { i64, i64 } %104, 1
  %106 = trunc i64 %105 to i32
  br label %107

107:                                              ; preds = %103, %100
  %108 = phi i32 [ %102, %100 ], [ %106, %103 ]
  %109 = icmp ugt i32 %108, %15
  br i1 %109, label %112, label %110

110:                                              ; preds = %107
  %111 = icmp slt i32 %96, 2
  br i1 %111, label %115, label %116

112:                                              ; preds = %107
  %113 = add nsw i32 %96, -1
  %114 = icmp slt i32 %96, 3
  br i1 %114, label %115, label %118

115:                                              ; preds = %112, %110
  br label %118

116:                                              ; preds = %110
  %117 = icmp eq i32 %108, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %116, %115, %112
  %119 = phi i32 [ 2, %115 ], [ %113, %112 ], [ %96, %116 ]
  %120 = phi i1 [ true, %115 ], [ false, %112 ], [ false, %116 ]
  %121 = zext i32 %119 to i64
  %122 = mul nuw nsw i64 %121, %35
  %123 = icmp ult i64 %122, 4294967296
  br i1 %123, label %124, label %127, !prof !10

124:                                              ; preds = %118
  %125 = trunc i64 %122 to i32
  %126 = udiv i32 %125, %40
  br label %131

127:                                              ; preds = %118
  %128 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %40, i64 %122) #4, !srcloc !11
  %129 = extractvalue { i64, i64 } %128, 1
  %130 = trunc i64 %129 to i32
  br label %131

131:                                              ; preds = %127, %124
  %132 = phi i32 [ %126, %124 ], [ %130, %127 ]
  br i1 %120, label %144, label %133

133:                                              ; preds = %131, %116
  %134 = phi i32 [ %132, %131 ], [ %108, %116 ]
  %135 = phi i32 [ %119, %131 ], [ %96, %116 ]
  %136 = sub i32 %15, %134
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %133
  %139 = icmp slt i32 %136, %37
  %140 = select i1 %139, i32 %135, i32 %39
  %141 = select i1 %139, i32 %40, i32 %38
  %142 = tail call i32 @llvm.smin.i32(i32 %136, i32 %37)
  %143 = icmp eq i32 %15, %134
  br i1 %143, label %152, label %144

144:                                              ; preds = %138, %133, %131, %78, %70, %59
  %145 = phi i32 [ %39, %131 ], [ %39, %133 ], [ %140, %138 ], [ %39, %59 ], [ %39, %70 ], [ %39, %78 ]
  %146 = phi i32 [ %38, %131 ], [ %38, %133 ], [ %141, %138 ], [ %38, %59 ], [ %38, %70 ], [ %38, %78 ]
  %147 = phi i32 [ %37, %131 ], [ %37, %133 ], [ %142, %138 ], [ %37, %59 ], [ %37, %70 ], [ %37, %78 ]
  %148 = add nuw nsw i32 %40, 1
  %149 = load i16, ptr %29, align 4
  %150 = zext i16 %149 to i32
  %151 = icmp ult i32 %40, %150
  br i1 %151, label %36, label %152

152:                                              ; preds = %144, %138, %86, %83
  %153 = phi i32 [ %39, %83 ], [ %145, %144 ], [ %39, %86 ], [ %140, %138 ]
  %154 = phi i32 [ %38, %83 ], [ %146, %144 ], [ %38, %86 ], [ %141, %138 ]
  %155 = phi i32 [ %37, %83 ], [ %147, %144 ], [ %37, %86 ], [ %142, %138 ]
  %156 = icmp eq i32 %155, 2147483647
  br i1 %156, label %163, label %157

157:                                              ; preds = %152
  %158 = trunc i32 %153 to i16
  %159 = getelementptr inbounds %struct.dpll_data, ptr %7, i32 0, i32 8
  store i16 %158, ptr %159, align 4
  %160 = trunc i32 %154 to i8
  %161 = getelementptr inbounds %struct.dpll_data, ptr %7, i32 0, i32 12
  store i8 %160, ptr %161, align 2
  %162 = sub i32 %15, %155
  store i32 %162, ptr %26, align 4
  br label %163

163:                                              ; preds = %157, %152, %9, %5, %3
  %164 = phi i32 [ %162, %157 ], [ -1, %5 ], [ -1, %3 ], [ -1, %152 ], [ -1, %9 ]
  ret i32 %164
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ti_clk_get_features() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }

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
!8 = !{i32 0, i32 33}
!9 = !{i8 0, i8 9}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148334327, i64 2148334607, i64 2148334941, i64 2148335275}
