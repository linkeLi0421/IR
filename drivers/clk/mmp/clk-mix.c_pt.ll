; ModuleID = '/llk/IR/drivers/clk/mmp/clk-mix.c_pt.bc'
source_filename = "../drivers/clk/mmp/clk-mix.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmp_clk_mix = type { %struct.clk_hw, %struct.mmp_clk_mix_reg_info, ptr, ptr, ptr, i32, i8, i8, i32, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.mmp_clk_mix_reg_info = type { ptr, ptr, i8, i8, i8, i8, i8 }
%struct.clk_div_table = type { i32, i32 }
%struct.mmp_clk_mix_clk_table = type { i32, i8, i32, i32 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.mmp_clk_mix_config = type { %struct.mmp_clk_mix_reg_info, ptr, i32, ptr, ptr, i8, i8 }

@mmp_clk_mix_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmp_clk_mix_recalc_rate, ptr null, ptr @mmp_clk_mix_determine_rate, ptr @mmp_clk_set_parent, ptr @mmp_clk_mix_get_parent, ptr @mmp_clk_set_rate, ptr @mmp_clk_mix_set_rate_and_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmp_clk_mix_init, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [36 x i8] c"\013%s:%s cannot do frequency change\0A\00", align 1
@__func__._set_rate = private unnamed_addr constant [10 x i8] c"_set_rate\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmp_clk_mix_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %5) #8
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ %8, %7 ], [ 0, %2 ]
  %11 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load ptr, ptr %3, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  br label %21

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 1, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i32 [ %16, %14 ], [ %20, %17 ]
  %23 = load ptr, ptr %4, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %23, i32 noundef %10) #8
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 1, i32 2
  %28 = load i8, ptr %27, align 4
  %29 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 1, i32 3
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %28 to i32
  %32 = shl nsw i32 -1, %31
  %33 = xor i32 %32, -1
  %34 = zext i8 %30 to i32
  %35 = shl i32 %33, %34
  %36 = and i32 %35, %22
  %37 = lshr i32 %36, %34
  %38 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 6
  %39 = load i8, ptr %38, align 4
  %40 = zext i8 %39 to i32
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %70

43:                                               ; preds = %26
  %44 = and i32 %40, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = shl nuw i32 1, %37
  br label %70

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 4
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %68, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.clk_div_table, ptr %50, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %52
  %57 = load i32, ptr %50, align 4
  %58 = icmp eq i32 %57, %37
  br i1 %58, label %70, label %59

59:                                               ; preds = %64, %56
  %60 = phi ptr [ %65, %64 ], [ %50, %56 ]
  %61 = getelementptr %struct.clk_div_table, ptr %60, i32 1, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %59
  %65 = getelementptr %struct.clk_div_table, ptr %60, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, %37
  br i1 %67, label %70, label %59

68:                                               ; preds = %48
  %69 = add i32 %37, 1
  br label %70

70:                                               ; preds = %68, %64, %59, %56, %52, %46, %26
  %71 = phi i32 [ %47, %46 ], [ %69, %68 ], [ %37, %26 ], [ 0, %52 ], [ %54, %56 ], [ %62, %64 ], [ 0, %59 ]
  %72 = udiv i32 %1, %71
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmp_clk_mix_determine_rate(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %161, label %17

10:                                               ; preds = %2
  %11 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %161, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 1, i32 2
  %15 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 4
  br label %54

17:                                               ; preds = %52, %6
  %18 = phi ptr [ %53, %52 ], [ %4, %6 ]
  %19 = phi i32 [ %49, %52 ], [ 0, %6 ]
  %20 = phi i32 [ %48, %52 ], [ -1, %6 ]
  %21 = phi i32 [ %47, %52 ], [ 0, %6 ]
  %22 = phi i32 [ %46, %52 ], [ 0, %6 ]
  %23 = phi ptr [ %45, %52 ], [ null, %6 ]
  %24 = getelementptr %struct.mmp_clk_mix_clk_table, ptr %18, i32 %19, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %44, label %27

27:                                               ; preds = %17
  %28 = getelementptr %struct.mmp_clk_mix_clk_table, ptr %18, i32 %19, i32 1
  %29 = load i8, ptr %28, align 4
  %30 = zext i8 %29 to i32
  %31 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef %30) #8
  %32 = tail call i32 @clk_hw_get_rate(ptr noundef %31) #8
  %33 = getelementptr %struct.mmp_clk_mix_clk_table, ptr %18, i32 %19, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = udiv i32 %32, %34
  %36 = load i32, ptr %1, align 4
  %37 = sub i32 %35, %36
  %38 = tail call i32 @llvm.abs.i32(i32 %37, i1 false)
  %39 = icmp eq ptr %23, null
  %40 = icmp ult i32 %38, %20
  %41 = select i1 %39, i1 true, i1 %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %27
  %43 = icmp eq i32 %35, %36
  br i1 %43, label %153, label %44

44:                                               ; preds = %42, %27, %17
  %45 = phi ptr [ %23, %17 ], [ %31, %42 ], [ %23, %27 ]
  %46 = phi i32 [ %22, %17 ], [ %35, %42 ], [ %22, %27 ]
  %47 = phi i32 [ %21, %17 ], [ %32, %42 ], [ %21, %27 ]
  %48 = phi i32 [ %20, %17 ], [ %38, %42 ], [ %20, %27 ]
  %49 = add nuw i32 %19, 1
  %50 = load i32, ptr %7, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %153

52:                                               ; preds = %44
  %53 = load ptr, ptr %3, align 4
  br label %17

54:                                               ; preds = %145, %13
  %55 = phi i32 [ 0, %13 ], [ %150, %145 ]
  %56 = phi i32 [ -1, %13 ], [ %149, %145 ]
  %57 = phi i32 [ 0, %13 ], [ %148, %145 ]
  %58 = phi i32 [ 0, %13 ], [ %147, %145 ]
  %59 = phi ptr [ null, %13 ], [ %146, %145 ]
  %60 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef %55) #8
  %61 = tail call i32 @clk_hw_get_rate(ptr noundef %60) #8
  %62 = load i8, ptr %14, align 4
  %63 = zext i8 %62 to i32
  %64 = shl nuw i32 1, %63
  %65 = add i32 %64, -1
  %66 = load i8, ptr %15, align 4
  %67 = zext i8 %66 to i32
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %91

70:                                               ; preds = %54
  %71 = and i32 %67, 2
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = shl nuw i32 1, %65
  br label %93

75:                                               ; preds = %70
  %76 = load ptr, ptr %16, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %93, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.clk_div_table, ptr %76, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %145, label %82

82:                                               ; preds = %82, %78
  %83 = phi i32 [ %89, %82 ], [ %80, %78 ]
  %84 = phi ptr [ %87, %82 ], [ %76, %78 ]
  %85 = phi i32 [ %86, %82 ], [ 0, %78 ]
  %86 = tail call i32 @llvm.umax.i32(i32 %83, i32 %85) #8
  %87 = getelementptr %struct.clk_div_table, ptr %84, i32 1
  %88 = getelementptr %struct.clk_div_table, ptr %84, i32 1, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %93, label %82

91:                                               ; preds = %54
  %92 = icmp eq i32 %65, 0
  br i1 %92, label %145, label %93

93:                                               ; preds = %91, %82, %75, %73
  %94 = phi i32 [ %65, %91 ], [ %64, %75 ], [ %74, %73 ], [ %86, %82 ]
  %95 = and i32 %67, 2
  %96 = icmp eq i32 %95, 0
  %97 = load i32, ptr %1, align 4
  br label %98

98:                                               ; preds = %138, %93
  %99 = phi i32 [ 0, %93 ], [ %143, %138 ]
  %100 = phi i32 [ %56, %93 ], [ %142, %138 ]
  %101 = phi i32 [ %57, %93 ], [ %141, %138 ]
  %102 = phi i32 [ %58, %93 ], [ %140, %138 ]
  %103 = phi ptr [ %59, %93 ], [ %139, %138 ]
  br i1 %69, label %104, label %128

104:                                              ; preds = %98
  br i1 %96, label %107, label %105

105:                                              ; preds = %104
  %106 = shl nuw i32 1, %99
  br label %128

107:                                              ; preds = %104
  %108 = load ptr, ptr %16, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %126, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.clk_div_table, ptr %108, i32 0, i32 1
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %128, label %114

114:                                              ; preds = %110
  %115 = load i32, ptr %108, align 4
  %116 = icmp eq i32 %115, %99
  br i1 %116, label %128, label %117

117:                                              ; preds = %122, %114
  %118 = phi ptr [ %123, %122 ], [ %108, %114 ]
  %119 = getelementptr %struct.clk_div_table, ptr %118, i32 1, i32 1
  %120 = load i32, ptr %119, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %117
  %123 = getelementptr %struct.clk_div_table, ptr %118, i32 1
  %124 = load i32, ptr %123, align 4
  %125 = icmp eq i32 %124, %99
  br i1 %125, label %128, label %117

126:                                              ; preds = %107
  %127 = add nuw i32 %99, 1
  br label %128

128:                                              ; preds = %126, %122, %117, %114, %110, %105, %98
  %129 = phi i32 [ %106, %105 ], [ %127, %126 ], [ %99, %98 ], [ 0, %110 ], [ %112, %114 ], [ %120, %122 ], [ 0, %117 ]
  %130 = udiv i32 %61, %129
  %131 = sub i32 %130, %97
  %132 = tail call i32 @llvm.abs.i32(i32 %131, i1 false)
  %133 = icmp eq ptr %103, null
  %134 = icmp ult i32 %132, %100
  %135 = select i1 %133, i1 true, i1 %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %128
  %137 = icmp eq i32 %130, %97
  br i1 %137, label %153, label %138

138:                                              ; preds = %136, %128
  %139 = phi ptr [ %60, %136 ], [ %103, %128 ]
  %140 = phi i32 [ %130, %136 ], [ %102, %128 ]
  %141 = phi i32 [ %61, %136 ], [ %101, %128 ]
  %142 = phi i32 [ %132, %136 ], [ %100, %128 ]
  %143 = add nuw i32 %99, 1
  %144 = icmp eq i32 %143, %94
  br i1 %144, label %145, label %98

145:                                              ; preds = %138, %91, %78
  %146 = phi ptr [ %59, %91 ], [ %59, %78 ], [ %139, %138 ]
  %147 = phi i32 [ %58, %91 ], [ %58, %78 ], [ %140, %138 ]
  %148 = phi i32 [ %57, %91 ], [ %57, %78 ], [ %141, %138 ]
  %149 = phi i32 [ %56, %91 ], [ %56, %78 ], [ %142, %138 ]
  %150 = add nuw i32 %55, 1
  %151 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #8
  %152 = icmp ult i32 %150, %151
  br i1 %152, label %54, label %153

153:                                              ; preds = %145, %136, %44, %42
  %154 = phi ptr [ %60, %136 ], [ %146, %145 ], [ %31, %42 ], [ %45, %44 ]
  %155 = phi i32 [ %97, %136 ], [ %147, %145 ], [ %35, %42 ], [ %46, %44 ]
  %156 = phi i32 [ %61, %136 ], [ %148, %145 ], [ %32, %42 ], [ %47, %44 ]
  %157 = icmp eq ptr %154, null
  br i1 %157, label %161, label %158

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  store i32 %156, ptr %159, align 4
  %160 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  store ptr %154, ptr %160, align 4
  store i32 %155, ptr %1, align 4
  br label %161

161:                                              ; preds = %158, %153, %10, %6
  %162 = phi i32 [ 0, %158 ], [ -22, %153 ], [ -22, %10 ], [ -22, %6 ]
  ret i32 %162
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmp_clk_set_parent(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %64, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %81, label %10

10:                                               ; preds = %19, %6
  %11 = phi i32 [ %20, %19 ], [ 0, %6 ]
  %12 = getelementptr %struct.mmp_clk_mix_clk_table, ptr %4, i32 %11, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = getelementptr %struct.mmp_clk_mix_clk_table, ptr %4, i32 %11, i32 1
  %17 = load i8, ptr %16, align 4
  %18 = icmp eq i8 %17, %1
  br i1 %18, label %22, label %19

19:                                               ; preds = %15, %10
  %20 = add nuw i32 %11, 1
  %21 = icmp eq i32 %20, %8
  br i1 %21, label %81, label %10

22:                                               ; preds = %15
  %23 = getelementptr %struct.mmp_clk_mix_clk_table, ptr %4, i32 %11, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 6
  %26 = load i8, ptr %25, align 4
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %22
  %31 = and i32 %27, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = tail call i32 @llvm.cttz.i32(i32 %24, i1 false) #8, !range !11
  br label %56

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %54, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.clk_div_table, ptr %37, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %49, %39
  %44 = phi i32 [ %52, %49 ], [ %41, %39 ]
  %45 = phi ptr [ %50, %49 ], [ %37, %39 ]
  %46 = icmp eq i32 %44, %24
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, ptr %45, align 4
  br label %56

49:                                               ; preds = %43
  %50 = getelementptr %struct.clk_div_table, ptr %45, i32 1
  %51 = getelementptr %struct.clk_div_table, ptr %45, i32 1, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %43

54:                                               ; preds = %35
  %55 = add i32 %24, -1
  br label %56

56:                                               ; preds = %54, %49, %47, %39, %33, %22
  %57 = phi i32 [ %34, %33 ], [ %48, %47 ], [ %55, %54 ], [ %24, %22 ], [ 0, %39 ], [ 0, %49 ]
  %58 = zext i8 %1 to i32
  %59 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 3
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %75, label %62

62:                                               ; preds = %56
  %63 = getelementptr i32, ptr %60, i32 %58
  br label %71

64:                                               ; preds = %2
  %65 = zext i8 %1 to i32
  %66 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %64
  %70 = getelementptr i32, ptr %67, i32 %65
  br label %71

71:                                               ; preds = %69, %62
  %72 = phi ptr [ %70, %69 ], [ %63, %62 ]
  %73 = phi i32 [ 0, %69 ], [ %57, %62 ]
  %74 = load i32, ptr %72, align 4
  br label %75

75:                                               ; preds = %71, %64, %56
  %76 = phi i32 [ %57, %56 ], [ 0, %64 ], [ %73, %71 ]
  %77 = phi i32 [ %58, %56 ], [ %65, %64 ], [ %74, %71 ]
  %78 = icmp ne i32 %76, 0
  %79 = zext i1 %78 to i32
  %80 = tail call fastcc i32 @_set_rate(ptr noundef %0, i32 noundef %77, i32 noundef %76, i32 noundef %79)
  br label %81

81:                                               ; preds = %75, %19, %6
  %82 = phi i32 [ %80, %75 ], [ -22, %6 ], [ -22, %19 ]
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @mmp_clk_mix_get_parent(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %4) #8
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi i32 [ %7, %6 ], [ 0, %1 ]
  %10 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load ptr, ptr %2, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  br label %20

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 1, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi i32 [ %15, %13 ], [ %19, %16 ]
  %22 = load ptr, ptr %3, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %22, i32 noundef %9) #8
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 1, i32 4
  %27 = load i8, ptr %26, align 2
  %28 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 1, i32 5
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %27 to i32
  %31 = shl nsw i32 -1, %30
  %32 = xor i32 %31, -1
  %33 = zext i8 %29 to i32
  %34 = shl i32 %32, %33
  %35 = and i32 %34, %21
  %36 = lshr i32 %35, %33
  %37 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #8
  %38 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 7
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = and i32 %40, 2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %25
  %44 = tail call i32 @llvm.cttz.i32(i32 %36, i1 true) #8, !range !11
  %45 = icmp eq i32 %36, 0
  %46 = select i1 %45, i32 -1, i32 %44
  br label %69

47:                                               ; preds = %25
  %48 = and i32 %40, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = add i32 %36, -1
  br label %69

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %68, label %56

56:                                               ; preds = %52
  %57 = icmp sgt i32 %37, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %63, %56
  %59 = phi i32 [ %64, %63 ], [ 0, %56 ]
  %60 = getelementptr i32, ptr %54, i32 %59
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, %36
  br i1 %62, label %69, label %63

63:                                               ; preds = %58
  %64 = add nuw nsw i32 %59, 1
  %65 = icmp eq i32 %64, %37
  br i1 %65, label %69, label %58

66:                                               ; preds = %56
  %67 = icmp eq i32 %37, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %66, %52
  br label %69

69:                                               ; preds = %68, %66, %63, %58, %50, %43
  %70 = phi i32 [ %46, %43 ], [ %51, %50 ], [ %36, %68 ], [ 0, %66 ], [ %59, %58 ], [ 0, %63 ]
  %71 = trunc i32 %70 to i8
  ret i8 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmp_clk_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = udiv i32 %2, %1
  %5 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %148, label %15

12:                                               ; preds = %3
  %13 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %101, label %92

15:                                               ; preds = %36, %8
  %16 = phi ptr [ %37, %36 ], [ %6, %8 ]
  %17 = phi i32 [ %33, %36 ], [ 0, %8 ]
  %18 = getelementptr %struct.mmp_clk_mix_clk_table, ptr %16, i32 %17, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %15
  %22 = getelementptr %struct.mmp_clk_mix_clk_table, ptr %16, i32 %17, i32 1
  %23 = load i8, ptr %22, align 4
  %24 = zext i8 %23 to i32
  %25 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef %24) #8
  %26 = tail call i32 @clk_hw_get_rate(ptr noundef %25) #8
  %27 = icmp eq i32 %26, %2
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = getelementptr %struct.mmp_clk_mix_clk_table, ptr %16, i32 %17, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, %4
  br i1 %31, label %38, label %32

32:                                               ; preds = %28, %21, %15
  %33 = add nuw i32 %17, 1
  %34 = load i32, ptr %9, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load ptr, ptr %5, align 4
  br label %15

38:                                               ; preds = %28
  %39 = load i32, ptr %9, align 4
  br label %40

40:                                               ; preds = %38, %32
  %41 = phi i32 [ %39, %38 ], [ %34, %32 ]
  %42 = phi i32 [ %17, %38 ], [ %33, %32 ]
  %43 = icmp ult i32 %42, %41
  br i1 %43, label %44, label %148

44:                                               ; preds = %40
  %45 = getelementptr %struct.mmp_clk_mix_clk_table, ptr %16, i32 %17, i32 1
  %46 = load i8, ptr %45, align 4
  %47 = zext i8 %46 to i32
  %48 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %44
  %52 = getelementptr i32, ptr %49, i32 %47
  %53 = load i32, ptr %52, align 4
  br label %54

54:                                               ; preds = %51, %44
  %55 = phi i32 [ %53, %51 ], [ %47, %44 ]
  %56 = getelementptr %struct.mmp_clk_mix_clk_table, ptr %16, i32 %17, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 6
  %59 = load i8, ptr %58, align 4
  %60 = zext i8 %59 to i32
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %89

63:                                               ; preds = %54
  %64 = and i32 %60, 2
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = tail call i32 @llvm.cttz.i32(i32 %57, i1 false) #8, !range !11
  br label %89

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 4
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %87, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.clk_div_table, ptr %70, i32 0, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %89, label %76

76:                                               ; preds = %82, %72
  %77 = phi i32 [ %85, %82 ], [ %74, %72 ]
  %78 = phi ptr [ %83, %82 ], [ %70, %72 ]
  %79 = icmp eq i32 %77, %57
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, ptr %78, align 4
  br label %89

82:                                               ; preds = %76
  %83 = getelementptr %struct.clk_div_table, ptr %78, i32 1
  %84 = getelementptr %struct.clk_div_table, ptr %78, i32 1, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %76

87:                                               ; preds = %68
  %88 = add i32 %57, -1
  br label %89

89:                                               ; preds = %87, %82, %80, %72, %66, %54
  %90 = phi i32 [ %67, %66 ], [ %81, %80 ], [ %88, %87 ], [ %57, %54 ], [ 0, %72 ], [ 0, %82 ]
  %91 = tail call fastcc i32 @_set_rate(ptr noundef %0, i32 noundef %55, i32 noundef %90, i32 noundef 1)
  br label %148

92:                                               ; preds = %97, %12
  %93 = phi i32 [ %98, %97 ], [ 0, %12 ]
  %94 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef %93) #8
  %95 = tail call i32 @clk_hw_get_rate(ptr noundef %94) #8
  %96 = icmp eq i32 %95, %2
  br i1 %96, label %101, label %97

97:                                               ; preds = %92
  %98 = add nuw i32 %93, 1
  %99 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #8
  %100 = icmp ult i32 %98, %99
  br i1 %100, label %92, label %101

101:                                              ; preds = %97, %92, %12
  %102 = phi i32 [ 0, %12 ], [ %93, %92 ], [ %98, %97 ]
  %103 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #8
  %104 = icmp ult i32 %102, %103
  br i1 %104, label %105, label %148

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 3
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %105
  %110 = getelementptr i32, ptr %107, i32 %102
  %111 = load i32, ptr %110, align 4
  br label %112

112:                                              ; preds = %109, %105
  %113 = phi i32 [ %111, %109 ], [ %102, %105 ]
  %114 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 6
  %115 = load i8, ptr %114, align 4
  %116 = zext i8 %115 to i32
  %117 = and i32 %116, 1
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %145

119:                                              ; preds = %112
  %120 = and i32 %116, 2
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %119
  %123 = tail call i32 @llvm.cttz.i32(i32 %4, i1 false) #8, !range !11
  br label %145

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 4
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %143, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.clk_div_table, ptr %126, i32 0, i32 1
  %130 = load i32, ptr %129, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %145, label %132

132:                                              ; preds = %138, %128
  %133 = phi i32 [ %141, %138 ], [ %130, %128 ]
  %134 = phi ptr [ %139, %138 ], [ %126, %128 ]
  %135 = icmp eq i32 %133, %4
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = load i32, ptr %134, align 4
  br label %145

138:                                              ; preds = %132
  %139 = getelementptr %struct.clk_div_table, ptr %134, i32 1
  %140 = getelementptr %struct.clk_div_table, ptr %134, i32 1, i32 1
  %141 = load i32, ptr %140, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %145, label %132

143:                                              ; preds = %124
  %144 = add i32 %4, -1
  br label %145

145:                                              ; preds = %143, %138, %136, %128, %122, %112
  %146 = phi i32 [ %123, %122 ], [ %137, %136 ], [ %144, %143 ], [ %4, %112 ], [ 0, %128 ], [ 0, %138 ]
  %147 = tail call fastcc i32 @_set_rate(ptr noundef %0, i32 noundef %113, i32 noundef %146, i32 noundef 1)
  br label %148

148:                                              ; preds = %145, %101, %89, %40, %8
  %149 = phi i32 [ %91, %89 ], [ %147, %145 ], [ -22, %40 ], [ -22, %101 ], [ -22, %8 ]
  ret i32 %149
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmp_clk_mix_set_rate_and_parent(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) #0 {
  %5 = udiv i32 %2, %1
  %6 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 6
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %4
  %12 = and i32 %8, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @llvm.cttz.i32(i32 %5, i1 false) #8, !range !11
  br label %37

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.clk_div_table, ptr %18, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %30, %20
  %25 = phi i32 [ %33, %30 ], [ %22, %20 ]
  %26 = phi ptr [ %31, %30 ], [ %18, %20 ]
  %27 = icmp eq i32 %25, %5
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, ptr %26, align 4
  br label %37

30:                                               ; preds = %24
  %31 = getelementptr %struct.clk_div_table, ptr %26, i32 1
  %32 = getelementptr %struct.clk_div_table, ptr %26, i32 1, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %24

35:                                               ; preds = %16
  %36 = add i32 %5, -1
  br label %37

37:                                               ; preds = %35, %30, %28, %20, %14, %4
  %38 = phi i32 [ %15, %14 ], [ %29, %28 ], [ %36, %35 ], [ %5, %4 ], [ 0, %20 ], [ 0, %30 ]
  %39 = zext i8 %3 to i32
  %40 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = getelementptr i32, ptr %41, i32 %39
  %45 = load i32, ptr %44, align 4
  br label %46

46:                                               ; preds = %43, %37
  %47 = phi i32 [ %45, %43 ], [ %39, %37 ]
  %48 = tail call fastcc i32 @_set_rate(ptr noundef %0, i32 noundef %47, i32 noundef %38, i32 noundef 1)
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmp_clk_mix_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %26, %5
  %10 = phi i32 [ %29, %26 ], [ 0, %5 ]
  %11 = getelementptr %struct.mmp_clk_mix_clk_table, ptr %3, i32 %10
  %12 = getelementptr %struct.mmp_clk_mix_clk_table, ptr %3, i32 %10, i32 1
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef %14) #8
  %16 = tail call i32 @clk_hw_get_rate(ptr noundef %15) #8
  %17 = load i32, ptr %11, align 4
  %18 = freeze i32 %16
  %19 = freeze i32 %17
  %20 = udiv i32 %18, %19
  %21 = mul i32 %20, %19
  %22 = sub i32 %18, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %9
  %25 = getelementptr %struct.mmp_clk_mix_clk_table, ptr %3, i32 %10, i32 2
  store i32 %20, ptr %25, align 4
  br label %26

26:                                               ; preds = %24, %9
  %27 = phi i32 [ 1, %24 ], [ 0, %9 ]
  %28 = getelementptr %struct.mmp_clk_mix_clk_table, ptr %3, i32 %10, i32 3
  store i32 %27, ptr %28, align 4
  %29 = add nuw i32 %10, 1
  %30 = icmp eq i32 %29, %7
  br i1 %30, label %31, label %9

31:                                               ; preds = %26, %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mmp_clk_register_mix(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i32 noundef %4, ptr nocapture noundef readonly %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #8
  %9 = getelementptr inbounds i8, ptr %8, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %9, i8 0, i32 12, i1 false), !annotation !14
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 56) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %76, label %13

13:                                               ; preds = %7
  store ptr %1, ptr %8, align 4
  %14 = or i32 %4, 64
  %15 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 6
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 2
  store ptr %2, ptr %16, align 4
  %17 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 5
  store i8 %3, ptr %17, align 4
  %18 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 1
  store ptr @mmp_clk_mix_ops, ptr %18, align 4
  %19 = getelementptr inbounds %struct.mmp_clk_mix, ptr %11, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %19, ptr noundef align 4 dereferenceable(16) %5, i32 16, i1 false)
  %20 = getelementptr inbounds %struct.mmp_clk_mix_config, ptr %5, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.mmp_clk_mix_config, ptr %5, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = shl i32 %25, 4
  %27 = tail call ptr @kmemdup(ptr noundef nonnull %21, i32 noundef %26, i32 noundef 3264) #8
  %28 = getelementptr inbounds %struct.mmp_clk_mix, ptr %11, i32 0, i32 2
  store ptr %27, ptr %28, align 4
  %29 = icmp eq ptr %27, null
  br i1 %29, label %75, label %30

30:                                               ; preds = %23
  %31 = load i32, ptr %24, align 4
  %32 = getelementptr inbounds %struct.mmp_clk_mix, ptr %11, i32 0, i32 5
  store i32 %31, ptr %32, align 8
  br label %33

33:                                               ; preds = %30, %13
  %34 = getelementptr inbounds %struct.mmp_clk_mix_config, ptr %5, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %33
  %38 = zext i8 %3 to i32
  %39 = shl nuw nsw i32 %38, 2
  %40 = tail call ptr @kmemdup(ptr noundef nonnull %35, i32 noundef %39, i32 noundef 3264) #8
  %41 = getelementptr inbounds %struct.mmp_clk_mix, ptr %11, i32 0, i32 3
  store ptr %40, ptr %41, align 8
  %42 = icmp eq ptr %40, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.mmp_clk_mix, ptr %11, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  tail call void @kfree(ptr noundef %45) #8
  br label %75

46:                                               ; preds = %37, %33
  %47 = getelementptr inbounds %struct.mmp_clk_mix_config, ptr %5, i32 0, i32 5
  %48 = load i8, ptr %47, align 4
  %49 = getelementptr inbounds %struct.mmp_clk_mix, ptr %11, i32 0, i32 6
  store i8 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.mmp_clk_mix_config, ptr %5, i32 0, i32 6
  %51 = load i8, ptr %50, align 1
  %52 = getelementptr inbounds %struct.mmp_clk_mix, ptr %11, i32 0, i32 7
  store i8 %51, ptr %52, align 1
  %53 = getelementptr inbounds %struct.mmp_clk_mix, ptr %11, i32 0, i32 9
  store ptr %6, ptr %53, align 4
  %54 = getelementptr inbounds %struct.clk_hw, ptr %11, i32 0, i32 2
  store ptr %8, ptr %54, align 8
  %55 = getelementptr inbounds %struct.mmp_clk_mix_reg_info, ptr %5, i32 0, i32 6
  %56 = load i8, ptr %55, align 4
  %57 = icmp ugt i8 %56, 31
  br i1 %57, label %58, label %60

58:                                               ; preds = %46
  %59 = getelementptr inbounds %struct.mmp_clk_mix, ptr %11, i32 0, i32 8
  store i32 0, ptr %59, align 8
  br label %67

60:                                               ; preds = %46
  %61 = getelementptr inbounds %struct.mmp_clk_mix_reg_info, ptr %5, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  %64 = getelementptr inbounds %struct.mmp_clk_mix, ptr %11, i32 0, i32 8
  br i1 %63, label %66, label %65

65:                                               ; preds = %60
  store i32 2, ptr %64, align 8
  br label %67

66:                                               ; preds = %60
  store i32 1, ptr %64, align 8
  br label %67

67:                                               ; preds = %66, %65, %58
  %68 = call ptr @clk_register(ptr noundef %0, ptr noundef nonnull %11) #8
  %69 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.mmp_clk_mix, ptr %11, i32 0, i32 3
  %72 = load ptr, ptr %71, align 8
  call void @kfree(ptr noundef %72) #8
  %73 = getelementptr inbounds %struct.mmp_clk_mix, ptr %11, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  call void @kfree(ptr noundef %74) #8
  call void @kfree(ptr noundef nonnull %11) #8
  br label %76

75:                                               ; preds = %43, %23
  tail call void @kfree(ptr noundef nonnull %11) #8
  br label %76

76:                                               ; preds = %75, %70, %67, %7
  %77 = phi ptr [ inttoptr (i32 -12 to ptr), %75 ], [ %68, %70 ], [ %68, %67 ], [ inttoptr (i32 -12 to ptr), %7 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #8
  ret ptr %77
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 1
  %6 = icmp eq i32 %3, 0
  %7 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %8) #8
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i32 [ %11, %10 ], [ 0, %4 ]
  %14 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load ptr, ptr %5, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  br label %24

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 1, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i32 [ %19, %17 ], [ %23, %20 ]
  br i1 %6, label %41, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 1, i32 2
  %28 = load i8, ptr %27, align 4
  %29 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 1, i32 3
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %28 to i32
  %32 = shl nsw i32 -1, %31
  %33 = xor i32 %32, -1
  %34 = zext i8 %30 to i32
  %35 = shl i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = and i32 %25, %36
  %38 = shl i32 %2, %34
  %39 = and i32 %38, %35
  %40 = or i32 %37, %39
  br label %41

41:                                               ; preds = %26, %24
  %42 = phi i32 [ %40, %26 ], [ %25, %24 ]
  %43 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 1, i32 4
  %44 = load i8, ptr %43, align 2
  %45 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 1, i32 5
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %44 to i32
  %48 = shl nsw i32 -1, %47
  %49 = xor i32 %48, -1
  %50 = zext i8 %46 to i32
  %51 = shl i32 %49, %50
  %52 = xor i32 %51, -1
  %53 = and i32 %42, %52
  %54 = shl i32 %1, %50
  %55 = and i32 %54, %51
  %56 = or i32 %53, %55
  %57 = load i32, ptr %14, align 4
  switch i32 %57, label %84 [
    i32 0, label %58
    i32 1, label %60
  ]

58:                                               ; preds = %41
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %59 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %56) #8, !srcloc !18
  br label %95

60:                                               ; preds = %41
  %61 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 1, i32 6
  %62 = load i8, ptr %61, align 4
  %63 = zext i8 %62 to i32
  %64 = shl nuw i32 1, %63
  %65 = or i32 %64, %56
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %66 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %65) #8, !srcloc !18
  br label %67

67:                                               ; preds = %67, %60
  %68 = phi i32 [ 50, %60 ], [ %71, %67 ]
  %69 = load ptr, ptr %5, align 4
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !20
  %71 = add nsw i32 %68, -1
  %72 = load i8, ptr %61, align 4
  %73 = zext i8 %72 to i32
  %74 = shl nuw i32 1, %73
  %75 = and i32 %74, %70
  %76 = icmp ne i32 %75, 0
  %77 = icmp ne i32 %71, 0
  %78 = select i1 %76, i1 %77, i1 false
  br i1 %78, label %67, label %79

79:                                               ; preds = %67
  %80 = icmp eq i32 %71, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %79
  %82 = tail call ptr @clk_hw_get_name(ptr noundef %0) #8
  %83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._set_rate, ptr noundef %82) #10
  br label %95

84:                                               ; preds = %41
  %85 = load ptr, ptr %5, align 4
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  %87 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 1, i32 6
  %88 = load i8, ptr %87, align 4
  %89 = zext i8 %88 to i32
  %90 = shl nuw i32 1, %89
  %91 = or i32 %90, %86
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !22
  tail call void @arm_heavy_mb() #8
  %92 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %91) #8, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %93 = getelementptr inbounds %struct.mmp_clk_mix, ptr %0, i32 0, i32 1, i32 1
  %94 = load ptr, ptr %93, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %56) #8, !srcloc !18
  br label %95

95:                                               ; preds = %84, %81, %79, %58
  %96 = phi i32 [ -16, %81 ], [ 0, %84 ], [ 0, %79 ], [ 0, %58 ]
  %97 = load ptr, ptr %7, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %97, i32 noundef %13) #8
  br label %100

100:                                              ; preds = %99, %95
  ret i32 %96
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

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
!8 = !{i64 2998491}
!9 = !{i64 2151499826}
!10 = !{i64 2151500154}
!11 = !{i32 0, i32 33}
!12 = !{i64 2151497516}
!13 = !{i64 2151497844}
!14 = !{!"auto-init"}
!15 = !{i64 2151479001}
!16 = !{i64 2151479329}
!17 = !{i64 2151479863}
!18 = !{i64 2998073}
!19 = !{i64 2151480187}
!20 = !{i64 2151480654}
!21 = !{i64 2151481551}
!22 = !{i64 2151481738}
!23 = !{i64 2151482059}
