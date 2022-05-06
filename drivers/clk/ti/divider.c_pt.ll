; ModuleID = '/llk/IR/drivers/clk/ti/divider.c_pt.bc'
source_filename = "../drivers/clk/ti/divider.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_omap_divider = type { %struct.clk_hw, %struct.clk_omap_reg, i8, i8, i8, i16, i16, i16, ptr, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_omap_reg = type { ptr, i16, i8, i8 }
%struct.ti_clk_ll_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_div_table = type { i32, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }

@ti_clk_divider_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_divider_save_context, ptr @clk_divider_restore_context, ptr @ti_clk_divider_recalc_rate, ptr @ti_clk_divider_round_rate, ptr null, ptr null, ptr null, ptr @ti_clk_divider_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__of_table_divider_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,divider-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_divider_clk_setup }, section "__clk_of_table", align 4
@__of_table_ti_composite_divider_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,composite-divider-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_composite_divider_clk_setup }, section "__clk_of_table", align 4
@ti_clk_ll_ops = external dso_local local_unnamed_addr global ptr, align 4
@.str = private unnamed_addr constant [25 x i8] c"drivers/clk/ti/divider.c\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"%s: Zero divisor and CLK_DIVIDER_ALLOW_ZERO not set\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"ti,bit-shift\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"ti,latch-bit\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"ti,index-starts-at-one\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"ti,index-power-of-two\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"ti,set-rate-parent\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"ti,dividers\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"\013%s: no valid dividers for %pOFn table\0A\00", align 1
@__func__.ti_clk_get_div_table = private unnamed_addr constant [21 x i8] c"ti_clk_get_div_table\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"ti,min-div\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"ti,max-div\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"\013%s: no max-div for %pOFn!\0A\00", align 1
@__func__._populate_divider_min_max = private unnamed_addr constant [26 x i8] c"_populate_divider_min_max\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__of_table_divider_clk, ptr @__of_table_ti_composite_divider_clk], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_divider_save_context(ptr noundef %0) #0 {
  %2 = load ptr, ptr @ti_clk_ll_ops, align 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.clk_omap_divider, ptr %0, i32 0, i32 1
  %5 = tail call i32 %3(ptr noundef %4) #9
  %6 = getelementptr inbounds %struct.clk_omap_divider, ptr %0, i32 0, i32 2
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = lshr i32 %5, %8
  %10 = getelementptr inbounds %struct.clk_omap_divider, ptr %0, i32 0, i32 7
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  %13 = and i32 %9, %12
  %14 = getelementptr inbounds %struct.clk_omap_divider, ptr %0, i32 0, i32 9
  store i32 %13, ptr %14, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_divider_restore_context(ptr noundef %0) #0 {
  %2 = load ptr, ptr @ti_clk_ll_ops, align 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.clk_omap_divider, ptr %0, i32 0, i32 1
  %5 = tail call i32 %3(ptr noundef %4) #9
  %6 = getelementptr inbounds %struct.clk_omap_divider, ptr %0, i32 0, i32 7
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = getelementptr inbounds %struct.clk_omap_divider, ptr %0, i32 0, i32 2
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  %12 = shl i32 %8, %11
  %13 = xor i32 %12, -1
  %14 = and i32 %5, %13
  %15 = getelementptr inbounds %struct.clk_omap_divider, ptr %0, i32 0, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = shl i32 %16, %11
  %18 = or i32 %14, %17
  %19 = load ptr, ptr @ti_clk_ll_ops, align 4
  %20 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  tail call void %21(i32 noundef %18, ptr noundef %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_clk_divider_recalc_rate(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr @ti_clk_ll_ops, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.clk_omap_divider, ptr %0, i32 0, i32 1
  %6 = tail call i32 %4(ptr noundef %5) #9
  %7 = getelementptr inbounds %struct.clk_omap_divider, ptr %0, i32 0, i32 2
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i32
  %10 = lshr i32 %6, %9
  %11 = getelementptr inbounds %struct.clk_omap_divider, ptr %0, i32 0, i32 7
  %12 = load i16, ptr %11, align 4
  %13 = zext i16 %12 to i32
  %14 = and i32 %10, %13
  %15 = getelementptr inbounds %struct.clk_omap_divider, ptr %0, i32 0, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %2
  %21 = and i32 %17, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = shl nuw i32 1, %14
  br label %54

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.clk_omap_divider, ptr %0, i32 0, i32 8
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %45, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.clk_div_table, ptr %27, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %29
  %34 = load i32, ptr %27, align 4
  %35 = icmp eq i32 %34, %14
  br i1 %35, label %54, label %36

36:                                               ; preds = %41, %33
  %37 = phi ptr [ %42, %41 ], [ %27, %33 ]
  %38 = getelementptr %struct.clk_div_table, ptr %37, i32 1, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %36
  %42 = getelementptr %struct.clk_div_table, ptr %37, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, %14
  br i1 %44, label %54, label %36

45:                                               ; preds = %25
  %46 = add nuw nsw i32 %14, 1
  br label %54

47:                                               ; preds = %2
  %48 = icmp eq i32 %14, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %47, %36, %29
  %50 = and i8 %16, 4
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %59, !prof !8

52:                                               ; preds = %49
  %53 = tail call ptr @clk_hw_get_name(ptr noundef %0) #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 114, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %53) #9
  br label %59

54:                                               ; preds = %47, %45, %41, %33, %23
  %55 = phi i32 [ %14, %47 ], [ %31, %33 ], [ %46, %45 ], [ %24, %23 ], [ %39, %41 ]
  %56 = add i32 %1, -1
  %57 = add i32 %56, %55
  %58 = udiv i32 %57, %55
  br label %59

59:                                               ; preds = %54, %52, %49
  %60 = phi i32 [ %58, %54 ], [ %1, %52 ], [ %1, %49 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_clk_divider_round_rate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = load i32, ptr %2, align 4
  %5 = icmp eq i32 %1, 0
  %6 = select i1 %5, i32 1, i32 %1
  %7 = getelementptr inbounds %struct.clk_omap_divider, ptr %0, i32 0, i32 6
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = tail call i32 @clk_hw_get_flags(ptr noundef %0) #9
  %11 = and i32 %10, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %63

13:                                               ; preds = %3
  %14 = load i32, ptr %2, align 4
  %15 = getelementptr inbounds %struct.clk_omap_divider, ptr %0, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = add i32 %6, -1
  %20 = add i32 %19, %14
  %21 = udiv i32 %20, %6
  br label %56

22:                                               ; preds = %13
  %23 = zext i32 %14 to i64
  %24 = zext i32 %6 to i64
  %25 = add nsw i64 %24, -1
  %26 = add nuw nsw i64 %25, %23
  %27 = icmp ult i64 %26, 4294967296
  br i1 %27, label %28, label %31, !prof !9

28:                                               ; preds = %22
  %29 = trunc i64 %26 to i32
  %30 = udiv i32 %29, %6
  br label %35

31:                                               ; preds = %22
  %32 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %6, i64 %26) #10, !srcloc !10
  %33 = extractvalue { i64, i64 } %32, 1
  %34 = trunc i64 %33 to i32
  br label %35

35:                                               ; preds = %31, %28
  %36 = phi i32 [ %30, %28 ], [ %34, %31 ]
  %37 = getelementptr inbounds %struct.clk_div_table, ptr %16, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %60, label %40

40:                                               ; preds = %45, %35
  %41 = phi i32 [ %54, %45 ], [ %38, %35 ]
  %42 = phi ptr [ %52, %45 ], [ %16, %35 ]
  %43 = phi i32 [ %51, %45 ], [ 2147483647, %35 ]
  %44 = icmp eq i32 %41, %36
  br i1 %44, label %56, label %45

45:                                               ; preds = %40
  %46 = icmp ult i32 %41, %36
  %47 = sub i32 %41, %36
  %48 = sub i32 %43, %36
  %49 = icmp ult i32 %47, %48
  %50 = select i1 %49, i32 %41, i32 %43
  %51 = select i1 %46, i32 %43, i32 %50
  %52 = getelementptr %struct.clk_div_table, ptr %42, i32 1
  %53 = getelementptr %struct.clk_div_table, ptr %42, i32 1, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %40

56:                                               ; preds = %45, %40, %18
  %57 = phi i32 [ %21, %18 ], [ %36, %40 ], [ %51, %45 ]
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %58, i32 1, i32 %57
  br label %60

60:                                               ; preds = %56, %35
  %61 = phi i32 [ 2147483647, %35 ], [ %59, %56 ]
  %62 = tail call i32 @llvm.umin.i32(i32 %61, i32 %9) #9
  br label %121

63:                                               ; preds = %3
  %64 = udiv i32 -1, %6
  %65 = tail call i32 @llvm.umin.i32(i32 %64, i32 %9) #9
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %116, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.clk_omap_divider, ptr %0, i32 0, i32 3
  %69 = getelementptr inbounds %struct.clk_omap_divider, ptr %0, i32 0, i32 8
  br label %70

70:                                               ; preds = %107, %67
  %71 = phi i32 [ 0, %67 ], [ %109, %107 ]
  %72 = phi i32 [ 0, %67 ], [ %108, %107 ]
  %73 = phi i32 [ 1, %67 ], [ %110, %107 ]
  %74 = load i8, ptr %68, align 1
  %75 = and i8 %74, 2
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %70
  %78 = tail call i32 @llvm.ctpop.i32(i32 %73) #9, !range !11
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %92, label %107

80:                                               ; preds = %70
  %81 = load ptr, ptr %69, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %92, label %83

83:                                               ; preds = %83, %80
  %84 = phi ptr [ %90, %83 ], [ %81, %80 ]
  %85 = getelementptr inbounds %struct.clk_div_table, ptr %84, i32 0, i32 1
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 0
  %88 = icmp eq i32 %86, %73
  %89 = or i1 %87, %88
  %90 = getelementptr %struct.clk_div_table, ptr %84, i32 1
  br i1 %89, label %91, label %83

91:                                               ; preds = %83
  br i1 %87, label %107, label %92

92:                                               ; preds = %91, %80, %77
  %93 = mul i32 %73, %6
  %94 = icmp eq i32 %93, %4
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 %4, ptr %2, align 4
  br label %121

96:                                               ; preds = %92
  %97 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #9
  %98 = add nsw i32 %73, -1
  %99 = add i32 %98, %93
  %100 = tail call i32 @clk_hw_round_rate(ptr noundef %97, i32 noundef %99) #9
  %101 = add i32 %100, %98
  %102 = udiv i32 %101, %73
  %103 = icmp ule i32 %102, %6
  %104 = icmp ugt i32 %102, %71
  %105 = select i1 %103, i1 %104, i1 false
  br i1 %105, label %106, label %107

106:                                              ; preds = %96
  store i32 %100, ptr %2, align 4
  br label %107

107:                                              ; preds = %106, %96, %91, %77
  %108 = phi i32 [ %73, %106 ], [ %72, %96 ], [ %72, %91 ], [ %72, %77 ]
  %109 = phi i32 [ %102, %106 ], [ %71, %96 ], [ %71, %91 ], [ %71, %77 ]
  %110 = add nuw nsw i32 %73, 1
  %111 = icmp eq i32 %73, %65
  br i1 %111, label %112, label %70

112:                                              ; preds = %107
  %113 = icmp eq i32 %108, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %112
  %115 = load i32, ptr %2, align 4
  br label %121

116:                                              ; preds = %112, %63
  %117 = load i16, ptr %7, align 2
  %118 = zext i16 %117 to i32
  %119 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #9
  %120 = tail call i32 @clk_hw_round_rate(ptr noundef %119, i32 noundef 1) #9
  store i32 %120, ptr %2, align 4
  br label %121

121:                                              ; preds = %116, %114, %95, %60
  %122 = phi i32 [ %4, %95 ], [ %14, %60 ], [ %115, %114 ], [ %120, %116 ]
  %123 = phi i32 [ %73, %95 ], [ %62, %60 ], [ %108, %114 ], [ %118, %116 ]
  %124 = add i32 %123, -1
  %125 = add i32 %124, %122
  %126 = udiv i32 %125, %123
  ret i32 %126
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_clk_divider_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne i32 %1, 0
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %76

7:                                                ; preds = %3
  %8 = add i32 %1, -1
  %9 = add i32 %8, %2
  %10 = udiv i32 %9, %1
  %11 = getelementptr inbounds %struct.clk_omap_divider, ptr %0, i32 0, i32 6
  %12 = load i16, ptr %11, align 2
  %13 = zext i16 %12 to i32
  %14 = tail call i32 @llvm.umin.i32(i32 %10, i32 %13)
  %15 = getelementptr inbounds %struct.clk_omap_divider, ptr %0, i32 0, i32 5
  %16 = load i16, ptr %15, align 4
  %17 = zext i16 %16 to i32
  %18 = tail call i32 @llvm.umax.i32(i32 %14, i32 %17)
  %19 = getelementptr inbounds %struct.clk_omap_divider, ptr %0, i32 0, i32 3
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %7
  %25 = and i32 %18, 255
  br label %54

26:                                               ; preds = %7
  %27 = and i32 %21, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = and i32 %18, 255
  %31 = tail call i32 @llvm.cttz.i32(i32 %30, i1 false) #9, !range !11
  br label %54

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.clk_omap_divider, ptr %0, i32 0, i32 8
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  %36 = and i32 %18, 255
  br i1 %35, label %52, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.clk_div_table, ptr %34, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %47, %37
  %42 = phi i32 [ %50, %47 ], [ %39, %37 ]
  %43 = phi ptr [ %48, %47 ], [ %34, %37 ]
  %44 = icmp eq i32 %42, %36
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, ptr %43, align 4
  br label %54

47:                                               ; preds = %41
  %48 = getelementptr %struct.clk_div_table, ptr %43, i32 1
  %49 = getelementptr %struct.clk_div_table, ptr %43, i32 1, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %41

52:                                               ; preds = %32
  %53 = add nsw i32 %36, -1
  br label %54

54:                                               ; preds = %52, %47, %45, %37, %29, %24
  %55 = phi i32 [ %25, %24 ], [ %31, %29 ], [ %53, %52 ], [ %46, %45 ], [ 0, %37 ], [ 0, %47 ]
  %56 = load ptr, ptr @ti_clk_ll_ops, align 4
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.clk_omap_divider, ptr %0, i32 0, i32 1
  %59 = tail call i32 %57(ptr noundef %58) #9
  %60 = getelementptr inbounds %struct.clk_omap_divider, ptr %0, i32 0, i32 7
  %61 = load i16, ptr %60, align 4
  %62 = zext i16 %61 to i32
  %63 = getelementptr inbounds %struct.clk_omap_divider, ptr %0, i32 0, i32 2
  %64 = load i8, ptr %63, align 4
  %65 = zext i8 %64 to i32
  %66 = shl i32 %62, %65
  %67 = xor i32 %66, -1
  %68 = and i32 %59, %67
  %69 = shl i32 %55, %65
  %70 = or i32 %68, %69
  %71 = load ptr, ptr @ti_clk_ll_ops, align 4
  %72 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %71, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  tail call void %73(i32 noundef %70, ptr noundef %58) #9
  %74 = getelementptr inbounds %struct.clk_omap_divider, ptr %0, i32 0, i32 4
  %75 = load i8, ptr %74, align 2
  tail call void @ti_clk_latch(ptr noundef %58, i8 noundef signext %75) #9
  br label %76

76:                                               ; preds = %54, %3
  %77 = phi i32 [ 0, %54 ], [ -22, %3 ]
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ti_clk_parse_divider_data(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %5
  %8 = icmp eq i32 %1, 0
  %9 = icmp sgt i32 %1, -1
  br i1 %9, label %38, label %50

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.clk_omap_divider, ptr %4, i32 0, i32 5
  store i16 1, ptr %11, align 4
  %12 = trunc i32 %2 to i16
  %13 = getelementptr inbounds %struct.clk_omap_divider, ptr %4, i32 0, i32 6
  store i16 %12, ptr %13, align 2
  %14 = getelementptr inbounds %struct.clk_omap_divider, ptr %4, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.clk_div_table, ptr %15, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %107, label %21

21:                                               ; preds = %21, %17
  %22 = phi ptr [ %26, %21 ], [ %15, %17 ]
  %23 = phi i32 [ %25, %21 ], [ 0, %17 ]
  %24 = load i32, ptr %22, align 4
  %25 = tail call i32 @llvm.umax.i32(i32 %24, i32 %23) #9
  %26 = getelementptr %struct.clk_div_table, ptr %22, i32 1
  %27 = getelementptr %struct.clk_div_table, ptr %22, i32 1, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %107, label %21

30:                                               ; preds = %10
  %31 = and i32 %2, 65535
  %32 = getelementptr inbounds %struct.clk_omap_divider, ptr %4, i32 0, i32 3
  %33 = load i8, ptr %32, align 1
  %34 = and i8 %33, 3
  %35 = icmp eq i8 %34, 0
  %36 = sext i1 %35 to i32
  %37 = add nsw i32 %31, %36
  br label %107

38:                                               ; preds = %45, %7
  %39 = phi i32 [ %47, %45 ], [ 0, %7 ]
  %40 = phi i32 [ %46, %45 ], [ 0, %7 ]
  %41 = getelementptr i32, ptr %0, i32 %39
  %42 = load i32, ptr %41, align 4
  switch i32 %42, label %43 [
    i32 -1, label %50
    i32 0, label %45
  ]

43:                                               ; preds = %38
  %44 = add i32 %40, 1
  br label %45

45:                                               ; preds = %43, %38
  %46 = phi i32 [ %44, %43 ], [ %40, %38 ]
  %47 = add i32 %39, 1
  %48 = icmp slt i32 %47, %1
  %49 = select i1 %8, i1 true, i1 %48
  br i1 %49, label %38, label %50

50:                                               ; preds = %45, %38, %7
  %51 = phi i32 [ 0, %7 ], [ %40, %38 ], [ %46, %45 ]
  %52 = phi i32 [ 0, %7 ], [ %39, %38 ], [ %47, %45 ]
  %53 = add i32 %51, 1
  %54 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %53, i32 8) #9
  %55 = extractvalue { i32, i1 } %54, 1
  br i1 %55, label %127, label %56, !prof !8

56:                                               ; preds = %50
  %57 = extractvalue { i32, i1 } %54, 0
  %58 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %57, i32 noundef 3520) #11
  %59 = icmp eq ptr %58, null
  br i1 %59, label %127, label %60

60:                                               ; preds = %56
  %61 = icmp sgt i32 %52, 0
  br i1 %61, label %62, label %88

62:                                               ; preds = %82, %60
  %63 = phi i16 [ %85, %82 ], [ 0, %60 ]
  %64 = phi i32 [ %86, %82 ], [ 0, %60 ]
  %65 = phi i32 [ %84, %82 ], [ 0, %60 ]
  %66 = phi i32 [ %83, %82 ], [ %2, %60 ]
  %67 = getelementptr i32, ptr %0, i32 %64
  %68 = load i32, ptr %67, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %62
  %71 = getelementptr %struct.clk_div_table, ptr %58, i32 %65
  %72 = getelementptr %struct.clk_div_table, ptr %58, i32 %65, i32 1
  store i32 %68, ptr %72, align 4
  store i32 %64, ptr %71, align 8
  %73 = add i32 %65, 1
  %74 = load i32, ptr %67, align 4
  %75 = tail call i32 @llvm.smax.i32(i32 %74, i32 %66)
  %76 = icmp eq i16 %63, 0
  %77 = zext i16 %63 to i32
  %78 = icmp slt i32 %74, %77
  %79 = select i1 %76, i1 true, i1 %78
  %80 = trunc i32 %74 to i16
  %81 = select i1 %79, i16 %80, i16 %63
  br label %82

82:                                               ; preds = %70, %62
  %83 = phi i32 [ %66, %62 ], [ %75, %70 ]
  %84 = phi i32 [ %65, %62 ], [ %73, %70 ]
  %85 = phi i16 [ %63, %62 ], [ %81, %70 ]
  %86 = add nuw nsw i32 %64, 1
  %87 = icmp eq i32 %86, %52
  br i1 %87, label %88, label %62

88:                                               ; preds = %82, %60
  %89 = phi i32 [ %2, %60 ], [ %83, %82 ]
  %90 = phi i16 [ 0, %60 ], [ %85, %82 ]
  %91 = getelementptr inbounds %struct.clk_omap_divider, ptr %4, i32 0, i32 5
  store i16 %90, ptr %91, align 4
  %92 = trunc i32 %89 to i16
  %93 = getelementptr inbounds %struct.clk_omap_divider, ptr %4, i32 0, i32 6
  store i16 %92, ptr %93, align 2
  %94 = getelementptr inbounds %struct.clk_omap_divider, ptr %4, i32 0, i32 8
  store ptr %58, ptr %94, align 4
  %95 = getelementptr inbounds %struct.clk_div_table, ptr %58, i32 0, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %107, label %98

98:                                               ; preds = %98, %88
  %99 = phi ptr [ %103, %98 ], [ %58, %88 ]
  %100 = phi i32 [ %102, %98 ], [ 0, %88 ]
  %101 = load i32, ptr %99, align 4
  %102 = tail call i32 @llvm.umax.i32(i32 %101, i32 %100) #9
  %103 = getelementptr %struct.clk_div_table, ptr %99, i32 1
  %104 = getelementptr %struct.clk_div_table, ptr %99, i32 1, i32 1
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %98

107:                                              ; preds = %98, %88, %30, %21, %17
  %108 = phi i32 [ %37, %30 ], [ 0, %17 ], [ 0, %88 ], [ %25, %21 ], [ %102, %98 ]
  %109 = getelementptr inbounds %struct.clk_omap_divider, ptr %4, i32 0, i32 3
  %110 = load i8, ptr %109, align 1
  %111 = and i8 %110, 2
  %112 = icmp eq i8 %111, 0
  %113 = icmp eq i32 %108, 0
  %114 = tail call i32 @llvm.ctlz.i32(i32 %108, i1 false) #9, !range !11
  %115 = sub nsw i32 31, %114
  %116 = select i1 %113, i32 65535, i32 %115
  %117 = select i1 %112, i32 %108, i32 %116
  %118 = and i32 %117, 65535
  %119 = icmp eq i32 %118, 0
  %120 = tail call i32 @llvm.ctlz.i32(i32 %118, i1 false) #9, !range !11
  %121 = sub nuw nsw i32 32, %120
  %122 = shl nsw i32 -1, %121
  %123 = trunc i32 %122 to i16
  %124 = xor i16 %123, -1
  %125 = select i1 %119, i16 0, i16 %124
  %126 = getelementptr inbounds %struct.clk_omap_divider, ptr %4, i32 0, i32 7
  store i16 %125, ptr %126, align 4
  br label %127

127:                                              ; preds = %107, %56, %50
  %128 = phi i32 [ -12, %56 ], [ -12, %50 ], [ 0, %107 ]
  ret i32 %128
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_ti_divider_clk_setup(ptr noundef %0) #2 section ".init.text" {
  %2 = alloca %struct.clk_init_data, align 4
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 40) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %34, label %8

8:                                                ; preds = %1
  %9 = call fastcc i32 @ti_clk_divider_populate(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %4) #13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %8
  %12 = load i32, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #9
  %13 = getelementptr inbounds i8, ptr %2, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %13, i8 0, i32 12, i1 false) #9, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  %14 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #9
  store ptr %14, ptr %3, align 4
  %15 = load ptr, ptr %0, align 4
  store ptr %15, ptr %2, align 4
  %16 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 1
  store ptr @ti_clk_divider_ops, ptr %16, align 4
  %17 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 6
  store i32 %12, ptr %17, align 4
  %18 = icmp eq ptr %14, null
  %19 = select i1 %18, ptr null, ptr %3
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 2
  store ptr %19, ptr %20, align 4
  %21 = icmp ne ptr %14, null
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 5
  store i8 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.clk_hw, ptr %6, i32 0, i32 2
  store ptr %2, ptr %24, align 8
  %25 = call ptr @ti_clk_register(ptr noundef null, ptr noundef nonnull %6, ptr noundef %15) #9
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %28

27:                                               ; preds = %11
  call void @kfree(ptr noundef nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #9
  br label %31

28:                                               ; preds = %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #9
  %29 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %25) #9
  %30 = call i32 @of_ti_clk_autoidle_setup(ptr noundef %0) #9
  br label %34

31:                                               ; preds = %27, %8
  %32 = getelementptr inbounds %struct.clk_omap_divider, ptr %6, i32 0, i32 8
  %33 = load ptr, ptr %32, align 8
  call void @kfree(ptr noundef %33) #9
  call void @kfree(ptr noundef nonnull %6) #9
  br label %34

34:                                               ; preds = %31, %28, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_ti_composite_divider_clk_setup(ptr noundef %0) #2 section ".init.text" {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !12
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 40) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  %7 = call fastcc i32 @ti_clk_divider_populate(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %2) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = tail call i32 @ti_clk_add_component(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 1) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9, %6
  %13 = getelementptr inbounds %struct.clk_omap_divider, ptr %4, i32 0, i32 8
  %14 = load ptr, ptr %13, align 8
  tail call void @kfree(ptr noundef %14) #9
  tail call void @kfree(ptr noundef nonnull %4) #9
  br label %15

15:                                               ; preds = %12, %9, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti_clk_latch(ptr noundef, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @ti_clk_divider_populate(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #2 section ".init.text" {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !12
  %7 = getelementptr inbounds %struct.clk_omap_divider, ptr %1, i32 0, i32 1
  %8 = tail call i32 @ti_clk_get_reg_addr(ptr noundef %0, i32 noundef 0, ptr noundef %7) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %132

10:                                               ; preds = %3
  %11 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #9
  %12 = icmp sgt i32 %11, -1
  %13 = load i32, ptr %6, align 4
  %14 = trunc i32 %13 to i8
  %15 = select i1 %12, i8 %14, i8 0
  %16 = getelementptr inbounds %struct.clk_omap_divider, ptr %1, i32 0, i32 2
  store i8 %15, ptr %16, align 4
  %17 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #9
  %18 = icmp sgt i32 %17, -1
  %19 = load i32, ptr %6, align 4
  %20 = trunc i32 %19 to i8
  %21 = select i1 %18, i8 %20, i8 -22
  %22 = getelementptr inbounds %struct.clk_omap_divider, ptr %1, i32 0, i32 4
  store i8 %21, ptr %22, align 2
  store i32 0, ptr %2, align 4
  %23 = getelementptr inbounds %struct.clk_omap_divider, ptr %1, i32 0, i32 3
  store i8 0, ptr %23, align 1
  %24 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef null) #9
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %10
  %27 = load i8, ptr %23, align 1
  %28 = or i8 %27, 1
  store i8 %28, ptr %23, align 1
  br label %29

29:                                               ; preds = %26, %10
  %30 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef null) #9
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i8, ptr %23, align 1
  %34 = or i8 %33, 2
  store i8 %34, ptr %23, align 1
  br label %35

35:                                               ; preds = %32, %29
  %36 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef null) #9
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, ptr %2, align 4
  %40 = or i32 %39, 4
  store i32 %40, ptr %2, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = call fastcc i32 @ti_clk_get_div_table(ptr noundef %0, ptr noundef %1) #13
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %132

44:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4
  %45 = getelementptr inbounds %struct.clk_omap_divider, ptr %1, i32 0, i32 8
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.clk_div_table, ptr %46, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %79, label %65

52:                                               ; preds = %44
  %53 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #9
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  store i32 1, ptr %4, align 4
  br label %56

56:                                               ; preds = %55, %52
  %57 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #9
  %58 = icmp sgt i32 %57, -1
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, ptr %4, align 4
  %61 = load i32, ptr %5, align 4
  %62 = load ptr, ptr %45, align 4
  br label %82

63:                                               ; preds = %56
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__._populate_divider_min_max, ptr noundef %0) #14
  br label %130

65:                                               ; preds = %65, %48
  %66 = phi i32 [ %77, %65 ], [ %50, %48 ]
  %67 = phi ptr [ %75, %65 ], [ %46, %48 ]
  %68 = phi i32 [ %70, %65 ], [ 0, %48 ]
  %69 = phi i32 [ %74, %65 ], [ 0, %48 ]
  %70 = call i32 @llvm.umax.i32(i32 %66, i32 %68) #9
  %71 = icmp eq i32 %69, 0
  %72 = icmp ult i32 %66, %69
  %73 = select i1 %71, i1 true, i1 %72
  %74 = select i1 %73, i32 %66, i32 %69
  %75 = getelementptr %struct.clk_div_table, ptr %67, i32 1
  %76 = getelementptr %struct.clk_div_table, ptr %67, i32 1, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %65

79:                                               ; preds = %65, %48
  %80 = phi i32 [ 0, %48 ], [ %74, %65 ]
  %81 = phi i32 [ 0, %48 ], [ %70, %65 ]
  store i32 %81, ptr %5, align 4
  store i32 %80, ptr %4, align 4
  br label %82

82:                                               ; preds = %79, %59
  %83 = phi ptr [ %62, %59 ], [ %46, %79 ]
  %84 = phi i32 [ %61, %59 ], [ %81, %79 ]
  %85 = phi i32 [ %60, %59 ], [ %80, %79 ]
  %86 = trunc i32 %85 to i16
  %87 = getelementptr inbounds %struct.clk_omap_divider, ptr %1, i32 0, i32 5
  store i16 %86, ptr %87, align 4
  %88 = trunc i32 %84 to i16
  %89 = getelementptr inbounds %struct.clk_omap_divider, ptr %1, i32 0, i32 6
  store i16 %88, ptr %89, align 2
  %90 = icmp eq ptr %83, null
  br i1 %90, label %104, label %91

91:                                               ; preds = %82
  %92 = getelementptr inbounds %struct.clk_div_table, ptr %83, i32 0, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %111, label %95

95:                                               ; preds = %95, %91
  %96 = phi ptr [ %100, %95 ], [ %83, %91 ]
  %97 = phi i32 [ %99, %95 ], [ 0, %91 ]
  %98 = load i32, ptr %96, align 4
  %99 = call i32 @llvm.umax.i32(i32 %98, i32 %97) #9
  %100 = getelementptr %struct.clk_div_table, ptr %96, i32 1
  %101 = getelementptr %struct.clk_div_table, ptr %96, i32 1, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %111, label %95

104:                                              ; preds = %82
  %105 = and i32 %84, 65535
  %106 = load i8, ptr %23, align 1
  %107 = and i8 %106, 3
  %108 = icmp eq i8 %107, 0
  %109 = sext i1 %108 to i32
  %110 = add nsw i32 %105, %109
  br label %111

111:                                              ; preds = %104, %95, %91
  %112 = phi i32 [ %110, %104 ], [ 0, %91 ], [ %99, %95 ]
  %113 = load i8, ptr %23, align 1
  %114 = and i8 %113, 2
  %115 = icmp eq i8 %114, 0
  %116 = icmp eq i32 %112, 0
  %117 = call i32 @llvm.ctlz.i32(i32 %112, i1 false) #9, !range !11
  %118 = sub nsw i32 31, %117
  %119 = select i1 %116, i32 65535, i32 %118
  %120 = select i1 %115, i32 %112, i32 %119
  %121 = and i32 %120, 65535
  %122 = icmp eq i32 %121, 0
  %123 = call i32 @llvm.ctlz.i32(i32 %121, i1 false) #9, !range !11
  %124 = sub nuw nsw i32 32, %123
  %125 = shl nsw i32 -1, %124
  %126 = trunc i32 %125 to i16
  %127 = xor i16 %126, -1
  %128 = select i1 %122, i16 0, i16 %127
  %129 = getelementptr inbounds %struct.clk_omap_divider, ptr %1, i32 0, i32 7
  store i16 %128, ptr %129, align 4
  br label %130

130:                                              ; preds = %111, %63
  %131 = phi i32 [ 0, %111 ], [ -22, %63 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  br label %132

132:                                              ; preds = %130, %41, %3
  %133 = phi i32 [ %131, %130 ], [ %8, %3 ], [ %42, %41 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  ret i32 %133
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_ti_clk_autoidle_setup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_clk_get_reg_addr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @ti_clk_get_div_table(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #2 section ".init.text" {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !12
  %5 = call ptr @of_get_property(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %4) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %54, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr %4, align 4
  %9 = lshr i32 %8, 2
  store i32 %9, ptr %4, align 4
  %10 = icmp ult i32 %8, 4
  br i1 %10, label %24, label %11

11:                                               ; preds = %11, %7
  %12 = phi i32 [ %19, %11 ], [ 0, %7 ]
  %13 = phi i32 [ %18, %11 ], [ 0, %7 ]
  %14 = call i32 @of_property_read_u32_index(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %12, ptr noundef nonnull %3) #9
  %15 = load i32, ptr %3, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = add i32 %13, %17
  %19 = add nuw i32 %12, 1
  %20 = load i32, ptr %4, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %11, label %22

22:                                               ; preds = %11
  %23 = icmp eq i32 %18, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %22, %7
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.ti_clk_get_div_table, ptr noundef %0) #14
  br label %54

26:                                               ; preds = %22
  %27 = add i32 %18, 1
  %28 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %27, i32 8) #9
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %54, label %30, !prof !8

30:                                               ; preds = %26
  %31 = extractvalue { i32, i1 } %28, 0
  %32 = call noalias align 64 ptr @__kmalloc(i32 noundef %31, i32 noundef 3520) #11
  %33 = icmp eq ptr %32, null
  br i1 %33, label %54, label %34

34:                                               ; preds = %30
  %35 = load i32, ptr %4, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %47, %34
  %38 = phi i32 [ %49, %47 ], [ 0, %34 ]
  %39 = phi i32 [ %48, %47 ], [ 0, %34 ]
  %40 = call i32 @of_property_read_u32_index(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %38, ptr noundef nonnull %3) #9
  %41 = load i32, ptr %3, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = getelementptr %struct.clk_div_table, ptr %32, i32 %39
  %45 = getelementptr %struct.clk_div_table, ptr %32, i32 %39, i32 1
  store i32 %41, ptr %45, align 4
  store i32 %38, ptr %44, align 8
  %46 = add i32 %39, 1
  br label %47

47:                                               ; preds = %43, %37
  %48 = phi i32 [ %46, %43 ], [ %39, %37 ]
  %49 = add nuw i32 %38, 1
  %50 = load i32, ptr %4, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %37, label %52

52:                                               ; preds = %47, %34
  %53 = getelementptr inbounds %struct.clk_omap_divider, ptr %1, i32 0, i32 8
  store ptr %32, ptr %53, align 4
  br label %54

54:                                               ; preds = %52, %30, %26, %24, %2
  %55 = phi i32 [ 0, %52 ], [ -22, %24 ], [ 0, %2 ], [ -12, %30 ], [ -12, %26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ti_clk_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_clk_add_component(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold }
attributes #14 = { cold nounwind }

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
!10 = !{i64 2148664188, i64 2148664468, i64 2148664802, i64 2148665136}
!11 = !{i32 0, i32 33}
!12 = !{!"auto-init"}
