; ModuleID = '/llk/IR/drivers/clk/sunxi-ng/ccu_nkmp.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu_nkmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_nkmp_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_nkmp_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_nkmp_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }

@ccu_nkmp_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @ccu_nkmp_enable, ptr @ccu_nkmp_disable, ptr @ccu_nkmp_is_enabled, ptr null, ptr null, ptr null, ptr @ccu_nkmp_recalc_rate, ptr @ccu_nkmp_round_rate, ptr null, ptr null, ptr null, ptr @ccu_nkmp_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_ccu_nkmp_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_nkmp_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_nkmp_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_nkmp_ops to i32), ptr @__kstrtab_ccu_nkmp_ops, ptr @__kstrtabns_ccu_nkmp_ops }, section "___ksymtab_gpl+ccu_nkmp_ops", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_ccu_nkmp_ops], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_nkmp_enable(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -88
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = load i32, ptr %2, align 4
  %5 = tail call i32 @ccu_gate_helper_enable(ptr noundef %3, i32 noundef %4) #4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ccu_nkmp_disable(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -88
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = load i32, ptr %2, align 4
  tail call void @ccu_gate_helper_disable(ptr noundef %3, i32 noundef %4) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_nkmp_is_enabled(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -88
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = load i32, ptr %2, align 4
  %5 = tail call i32 @ccu_gate_helper_is_enabled(ptr noundef %3, i32 noundef %4) #4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_nkmp_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -16
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %10 = getelementptr i8, ptr %0, i32 -80
  %11 = getelementptr i8, ptr %0, i32 -79
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = lshr i32 %9, %13
  %15 = getelementptr i8, ptr %0, i32 -78
  %16 = load i8, ptr %15, align 2
  %17 = zext i8 %16 to i32
  %18 = shl nsw i32 -1, %17
  %19 = xor i32 %18, -1
  %20 = and i32 %14, %19
  %21 = load i8, ptr %10, align 4
  %22 = zext i8 %21 to i32
  %23 = add i32 %20, %22
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 1, i32 %23
  %26 = getelementptr i8, ptr %0, i32 -75
  %27 = getelementptr i8, ptr %0, i32 -74
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = lshr i32 %9, %29
  %31 = getelementptr i8, ptr %0, i32 -73
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl nsw i32 -1, %33
  %35 = xor i32 %34, -1
  %36 = and i32 %30, %35
  %37 = load i8, ptr %26, align 1
  %38 = zext i8 %37 to i32
  %39 = add i32 %36, %38
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 1, i32 %39
  %42 = getelementptr i8, ptr %0, i32 -68
  %43 = load i8, ptr %42, align 4
  %44 = zext i8 %43 to i32
  %45 = lshr i32 %9, %44
  %46 = getelementptr i8, ptr %0, i32 -67
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = shl nsw i32 -1, %48
  %50 = xor i32 %49, -1
  %51 = and i32 %45, %50
  %52 = getelementptr i8, ptr %0, i32 -60
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %51, %53
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i32 1, i32 %54
  %57 = getelementptr i8, ptr %0, i32 -48
  %58 = load i8, ptr %57, align 4
  %59 = zext i8 %58 to i32
  %60 = lshr i32 %9, %59
  %61 = getelementptr i8, ptr %0, i32 -47
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  %64 = shl nsw i32 -1, %63
  %65 = xor i32 %64, -1
  %66 = and i32 %60, %65
  %67 = zext i32 %1 to i64
  %68 = mul i32 %41, %25
  %69 = zext i32 %68 to i64
  %70 = mul nuw i64 %69, %67
  %71 = shl i32 %56, %66
  %72 = icmp ult i64 %70, 4294967296
  br i1 %72, label %73, label %76, !prof !10

73:                                               ; preds = %2
  %74 = trunc i64 %70 to i32
  %75 = udiv i32 %74, %71
  br label %80

76:                                               ; preds = %2
  %77 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %71, i64 %70) #5, !srcloc !11
  %78 = extractvalue { i64, i64 } %77, 1
  %79 = trunc i64 %78 to i32
  br label %80

80:                                               ; preds = %76, %73
  %81 = phi i32 [ %75, %73 ], [ %79, %76 ]
  %82 = getelementptr i8, ptr %0, i32 -8
  %83 = load i32, ptr %82, align 4
  %84 = and i32 %83, 8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %80
  %87 = getelementptr i8, ptr %0, i32 -28
  %88 = load i32, ptr %87, align 4
  %89 = udiv i32 %81, %88
  br label %90

90:                                               ; preds = %86, %80
  %91 = phi i32 [ %89, %86 ], [ %81, %80 ]
  ret i32 %91
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @ccu_nkmp_round_rate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -24
  %10 = load i32, ptr %9, align 4
  %11 = icmp ne i32 %10, 0
  %12 = icmp ult i32 %10, %1
  %13 = and i1 %11, %12
  br i1 %13, label %194, label %25

14:                                               ; preds = %3
  %15 = getelementptr i8, ptr %0, i32 -28
  %16 = load i32, ptr %15, align 4
  %17 = mul i32 %16, %1
  %18 = getelementptr i8, ptr %0, i32 -24
  %19 = load i32, ptr %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = icmp ugt i32 %17, %19
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = udiv i32 %19, %16
  br label %194

25:                                               ; preds = %14, %8
  %26 = phi i32 [ %17, %14 ], [ %1, %8 ]
  %27 = getelementptr i8, ptr %0, i32 -77
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 0
  %30 = select i1 %29, i8 1, i8 %28
  %31 = zext i8 %30 to i32
  %32 = getelementptr i8, ptr %0, i32 -76
  %33 = load i8, ptr %32, align 4
  %34 = zext i8 %33 to i32
  %35 = icmp eq i8 %33, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %25
  %37 = getelementptr i8, ptr %0, i32 -78
  %38 = load i8, ptr %37, align 2
  %39 = zext i8 %38 to i32
  %40 = shl nuw i32 1, %39
  br label %41

41:                                               ; preds = %36, %25
  %42 = phi i32 [ %40, %36 ], [ %34, %25 ]
  %43 = getelementptr i8, ptr %0, i32 -72
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 0
  %46 = select i1 %45, i8 1, i8 %44
  %47 = zext i8 %46 to i32
  %48 = getelementptr i8, ptr %0, i32 -71
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i8 %49, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %41
  %53 = getelementptr i8, ptr %0, i32 -73
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = shl nuw i32 1, %55
  br label %57

57:                                               ; preds = %52, %41
  %58 = phi i32 [ %56, %52 ], [ %50, %41 ]
  %59 = getelementptr i8, ptr %0, i32 -64
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = getelementptr i8, ptr %0, i32 -67
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i32
  %66 = shl nuw i32 1, %65
  br label %67

67:                                               ; preds = %62, %57
  %68 = phi i32 [ %66, %62 ], [ %60, %57 ]
  %69 = getelementptr i8, ptr %0, i32 -44
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = getelementptr i8, ptr %0, i32 -47
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i32
  %76 = shl nsw i32 -1, %75
  %77 = xor i32 %76, -1
  %78 = shl nuw i32 1, %77
  br label %79

79:                                               ; preds = %72, %67
  %80 = phi i32 [ %78, %72 ], [ %70, %67 ]
  %81 = load i32, ptr %2, align 4
  %82 = icmp ult i32 %58, %47
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = zext i32 %81 to i64
  br label %174

85:                                               ; preds = %79
  %86 = icmp ult i32 %42, %31
  %87 = zext i32 %81 to i64
  %88 = icmp eq i32 %68, 0
  %89 = icmp eq i32 %80, 0
  br label %90

90:                                               ; preds = %163, %85
  %91 = phi i32 [ %47, %85 ], [ %169, %163 ]
  %92 = phi i32 [ 0, %85 ], [ %168, %163 ]
  %93 = phi i32 [ 0, %85 ], [ %167, %163 ]
  %94 = phi i32 [ 0, %85 ], [ %166, %163 ]
  %95 = phi i32 [ 0, %85 ], [ %165, %163 ]
  %96 = phi i32 [ 0, %85 ], [ %164, %163 ]
  br i1 %86, label %163, label %97

97:                                               ; preds = %155, %90
  %98 = phi i32 [ %161, %155 ], [ %31, %90 ]
  %99 = phi i32 [ %160, %155 ], [ %92, %90 ]
  %100 = phi i32 [ %159, %155 ], [ %93, %90 ]
  %101 = phi i32 [ %158, %155 ], [ %94, %90 ]
  %102 = phi i32 [ %157, %155 ], [ %95, %90 ]
  %103 = phi i32 [ %156, %155 ], [ %96, %90 ]
  br i1 %88, label %155, label %104

104:                                              ; preds = %97
  %105 = mul i32 %98, %91
  %106 = zext i32 %105 to i64
  %107 = mul nuw i64 %106, %87
  %108 = icmp ult i64 %107, 4294967296
  %109 = trunc i64 %107 to i32
  br label %110

110:                                              ; preds = %147, %104
  %111 = phi i32 [ 1, %104 ], [ %153, %147 ]
  %112 = phi i32 [ %99, %104 ], [ %152, %147 ]
  %113 = phi i32 [ %100, %104 ], [ %151, %147 ]
  %114 = phi i32 [ %101, %104 ], [ %150, %147 ]
  %115 = phi i32 [ %102, %104 ], [ %149, %147 ]
  %116 = phi i32 [ %103, %104 ], [ %148, %147 ]
  br i1 %89, label %147, label %117

117:                                              ; preds = %139, %110
  %118 = phi i32 [ %145, %139 ], [ 1, %110 ]
  %119 = phi i32 [ %144, %139 ], [ %112, %110 ]
  %120 = phi i32 [ %143, %139 ], [ %113, %110 ]
  %121 = phi i32 [ %142, %139 ], [ %114, %110 ]
  %122 = phi i32 [ %141, %139 ], [ %115, %110 ]
  %123 = phi i32 [ %140, %139 ], [ %116, %110 ]
  %124 = mul i32 %118, %111
  br i1 %108, label %125, label %127, !prof !10

125:                                              ; preds = %117
  %126 = udiv i32 %109, %124
  br label %131

127:                                              ; preds = %117
  %128 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %124, i64 %107) #5, !srcloc !11
  %129 = extractvalue { i64, i64 } %128, 1
  %130 = trunc i64 %129 to i32
  br label %131

131:                                              ; preds = %127, %125
  %132 = phi i32 [ %126, %125 ], [ %130, %127 ]
  %133 = icmp ult i32 %26, %132
  br i1 %133, label %139, label %134

134:                                              ; preds = %131
  %135 = sub i32 %26, %132
  %136 = sub i32 %26, %123
  %137 = icmp ult i32 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  br label %139

139:                                              ; preds = %138, %134, %131
  %140 = phi i32 [ %123, %131 ], [ %132, %138 ], [ %123, %134 ]
  %141 = phi i32 [ %122, %131 ], [ %98, %138 ], [ %122, %134 ]
  %142 = phi i32 [ %121, %131 ], [ %91, %138 ], [ %121, %134 ]
  %143 = phi i32 [ %120, %131 ], [ %111, %138 ], [ %120, %134 ]
  %144 = phi i32 [ %119, %131 ], [ %118, %138 ], [ %119, %134 ]
  %145 = shl i32 %118, 1
  %146 = icmp ugt i32 %145, %80
  br i1 %146, label %147, label %117

147:                                              ; preds = %139, %110
  %148 = phi i32 [ %116, %110 ], [ %140, %139 ]
  %149 = phi i32 [ %115, %110 ], [ %141, %139 ]
  %150 = phi i32 [ %114, %110 ], [ %142, %139 ]
  %151 = phi i32 [ %113, %110 ], [ %143, %139 ]
  %152 = phi i32 [ %112, %110 ], [ %144, %139 ]
  %153 = add i32 %111, 1
  %154 = icmp ugt i32 %153, %68
  br i1 %154, label %155, label %110

155:                                              ; preds = %147, %97
  %156 = phi i32 [ %103, %97 ], [ %148, %147 ]
  %157 = phi i32 [ %102, %97 ], [ %149, %147 ]
  %158 = phi i32 [ %101, %97 ], [ %150, %147 ]
  %159 = phi i32 [ %100, %97 ], [ %151, %147 ]
  %160 = phi i32 [ %99, %97 ], [ %152, %147 ]
  %161 = add i32 %98, 1
  %162 = icmp ugt i32 %161, %42
  br i1 %162, label %163, label %97

163:                                              ; preds = %155, %90
  %164 = phi i32 [ %96, %90 ], [ %156, %155 ]
  %165 = phi i32 [ %95, %90 ], [ %157, %155 ]
  %166 = phi i32 [ %94, %90 ], [ %158, %155 ]
  %167 = phi i32 [ %93, %90 ], [ %159, %155 ]
  %168 = phi i32 [ %92, %90 ], [ %160, %155 ]
  %169 = add i32 %91, 1
  %170 = icmp ugt i32 %169, %58
  br i1 %170, label %171, label %90

171:                                              ; preds = %163
  %172 = mul i32 %166, %165
  %173 = mul i32 %168, %167
  br label %174

174:                                              ; preds = %171, %83
  %175 = phi i64 [ %84, %83 ], [ %87, %171 ]
  %176 = phi i32 [ 0, %83 ], [ %172, %171 ]
  %177 = phi i32 [ 0, %83 ], [ %173, %171 ]
  %178 = zext i32 %176 to i64
  %179 = mul nuw i64 %175, %178
  %180 = icmp ult i64 %179, 4294967296
  br i1 %180, label %181, label %184, !prof !10

181:                                              ; preds = %174
  %182 = trunc i64 %179 to i32
  %183 = udiv i32 %182, %177
  br label %188

184:                                              ; preds = %174
  %185 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %177, i64 %179) #5, !srcloc !11
  %186 = extractvalue { i64, i64 } %185, 1
  %187 = trunc i64 %186 to i32
  br label %188

188:                                              ; preds = %184, %181
  %189 = phi i32 [ %183, %181 ], [ %187, %184 ]
  br i1 %7, label %194, label %190

190:                                              ; preds = %188
  %191 = getelementptr i8, ptr %0, i32 -28
  %192 = load i32, ptr %191, align 4
  %193 = udiv i32 %189, %192
  br label %194

194:                                              ; preds = %190, %188, %23, %8
  %195 = phi i32 [ %24, %23 ], [ %193, %190 ], [ %189, %188 ], [ %10, %8 ]
  ret i32 %195
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_nkmp_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -28
  %10 = load i32, ptr %9, align 4
  %11 = mul i32 %10, %1
  br label %12

12:                                               ; preds = %8, %3
  %13 = phi i32 [ %11, %8 ], [ %1, %3 ]
  %14 = getelementptr i8, ptr %0, i32 -77
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %16, i8 1, i8 %15
  %18 = zext i8 %17 to i32
  %19 = getelementptr i8, ptr %0, i32 -76
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i32
  %22 = icmp eq i8 %20, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %12
  %24 = getelementptr i8, ptr %0, i32 -78
  %25 = load i8, ptr %24, align 2
  %26 = zext i8 %25 to i32
  %27 = shl nuw i32 1, %26
  br label %28

28:                                               ; preds = %23, %12
  %29 = phi i32 [ %27, %23 ], [ %21, %12 ]
  %30 = getelementptr i8, ptr %0, i32 -72
  %31 = load i8, ptr %30, align 1
  %32 = icmp eq i8 %31, 0
  %33 = select i1 %32, i8 1, i8 %31
  %34 = zext i8 %33 to i32
  %35 = getelementptr i8, ptr %0, i32 -71
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i8 %36, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %28
  %40 = getelementptr i8, ptr %0, i32 -73
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = shl nuw i32 1, %42
  br label %44

44:                                               ; preds = %39, %28
  %45 = phi i32 [ %43, %39 ], [ %37, %28 ]
  %46 = getelementptr i8, ptr %0, i32 -68
  %47 = getelementptr i8, ptr %0, i32 -64
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = getelementptr i8, ptr %0, i32 -67
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = shl nuw i32 1, %53
  br label %55

55:                                               ; preds = %50, %44
  %56 = phi i32 [ %54, %50 ], [ %48, %44 ]
  %57 = getelementptr i8, ptr %0, i32 -48
  %58 = getelementptr i8, ptr %0, i32 -44
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = getelementptr i8, ptr %0, i32 -47
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = shl nsw i32 -1, %64
  %66 = xor i32 %65, -1
  %67 = shl nuw i32 1, %66
  br label %68

68:                                               ; preds = %61, %55
  %69 = phi i32 [ %67, %61 ], [ %59, %55 ]
  %70 = icmp ult i32 %45, %34
  br i1 %70, label %157, label %71

71:                                               ; preds = %68
  %72 = icmp ult i32 %29, %18
  %73 = zext i32 %2 to i64
  %74 = icmp eq i32 %56, 0
  %75 = icmp eq i32 %69, 0
  br label %76

76:                                               ; preds = %149, %71
  %77 = phi i32 [ %34, %71 ], [ %155, %149 ]
  %78 = phi i32 [ 0, %71 ], [ %154, %149 ]
  %79 = phi i32 [ 0, %71 ], [ %153, %149 ]
  %80 = phi i32 [ 0, %71 ], [ %152, %149 ]
  %81 = phi i32 [ 0, %71 ], [ %151, %149 ]
  %82 = phi i32 [ 0, %71 ], [ %150, %149 ]
  br i1 %72, label %149, label %83

83:                                               ; preds = %141, %76
  %84 = phi i32 [ %147, %141 ], [ %18, %76 ]
  %85 = phi i32 [ %146, %141 ], [ %78, %76 ]
  %86 = phi i32 [ %145, %141 ], [ %79, %76 ]
  %87 = phi i32 [ %144, %141 ], [ %80, %76 ]
  %88 = phi i32 [ %143, %141 ], [ %81, %76 ]
  %89 = phi i32 [ %142, %141 ], [ %82, %76 ]
  br i1 %74, label %141, label %90

90:                                               ; preds = %83
  %91 = mul i32 %84, %77
  %92 = zext i32 %91 to i64
  %93 = mul nuw i64 %92, %73
  %94 = icmp ult i64 %93, 4294967296
  %95 = trunc i64 %93 to i32
  br label %96

96:                                               ; preds = %133, %90
  %97 = phi i32 [ 1, %90 ], [ %139, %133 ]
  %98 = phi i32 [ %85, %90 ], [ %138, %133 ]
  %99 = phi i32 [ %86, %90 ], [ %137, %133 ]
  %100 = phi i32 [ %87, %90 ], [ %136, %133 ]
  %101 = phi i32 [ %88, %90 ], [ %135, %133 ]
  %102 = phi i32 [ %89, %90 ], [ %134, %133 ]
  br i1 %75, label %133, label %103

103:                                              ; preds = %125, %96
  %104 = phi i32 [ %131, %125 ], [ 1, %96 ]
  %105 = phi i32 [ %130, %125 ], [ %98, %96 ]
  %106 = phi i32 [ %129, %125 ], [ %99, %96 ]
  %107 = phi i32 [ %128, %125 ], [ %100, %96 ]
  %108 = phi i32 [ %127, %125 ], [ %101, %96 ]
  %109 = phi i32 [ %126, %125 ], [ %102, %96 ]
  %110 = mul i32 %104, %97
  br i1 %94, label %111, label %113, !prof !10

111:                                              ; preds = %103
  %112 = udiv i32 %95, %110
  br label %117

113:                                              ; preds = %103
  %114 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %110, i64 %93) #5, !srcloc !11
  %115 = extractvalue { i64, i64 } %114, 1
  %116 = trunc i64 %115 to i32
  br label %117

117:                                              ; preds = %113, %111
  %118 = phi i32 [ %112, %111 ], [ %116, %113 ]
  %119 = icmp ult i32 %13, %118
  br i1 %119, label %125, label %120

120:                                              ; preds = %117
  %121 = sub i32 %13, %118
  %122 = sub i32 %13, %109
  %123 = icmp ult i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  br label %125

125:                                              ; preds = %124, %120, %117
  %126 = phi i32 [ %109, %117 ], [ %118, %124 ], [ %109, %120 ]
  %127 = phi i32 [ %108, %117 ], [ %84, %124 ], [ %108, %120 ]
  %128 = phi i32 [ %107, %117 ], [ %77, %124 ], [ %107, %120 ]
  %129 = phi i32 [ %106, %117 ], [ %97, %124 ], [ %106, %120 ]
  %130 = phi i32 [ %105, %117 ], [ %104, %124 ], [ %105, %120 ]
  %131 = shl i32 %104, 1
  %132 = icmp ugt i32 %131, %69
  br i1 %132, label %133, label %103

133:                                              ; preds = %125, %96
  %134 = phi i32 [ %102, %96 ], [ %126, %125 ]
  %135 = phi i32 [ %101, %96 ], [ %127, %125 ]
  %136 = phi i32 [ %100, %96 ], [ %128, %125 ]
  %137 = phi i32 [ %99, %96 ], [ %129, %125 ]
  %138 = phi i32 [ %98, %96 ], [ %130, %125 ]
  %139 = add i32 %97, 1
  %140 = icmp ugt i32 %139, %56
  br i1 %140, label %141, label %96

141:                                              ; preds = %133, %83
  %142 = phi i32 [ %89, %83 ], [ %134, %133 ]
  %143 = phi i32 [ %88, %83 ], [ %135, %133 ]
  %144 = phi i32 [ %87, %83 ], [ %136, %133 ]
  %145 = phi i32 [ %86, %83 ], [ %137, %133 ]
  %146 = phi i32 [ %85, %83 ], [ %138, %133 ]
  %147 = add i32 %84, 1
  %148 = icmp ugt i32 %147, %29
  br i1 %148, label %149, label %83

149:                                              ; preds = %141, %76
  %150 = phi i32 [ %82, %76 ], [ %142, %141 ]
  %151 = phi i32 [ %81, %76 ], [ %143, %141 ]
  %152 = phi i32 [ %80, %76 ], [ %144, %141 ]
  %153 = phi i32 [ %79, %76 ], [ %145, %141 ]
  %154 = phi i32 [ %78, %76 ], [ %146, %141 ]
  %155 = add i32 %77, 1
  %156 = icmp ugt i32 %155, %45
  br i1 %156, label %157, label %76

157:                                              ; preds = %149, %68
  %158 = phi i32 [ 0, %68 ], [ %151, %149 ]
  %159 = phi i32 [ 0, %68 ], [ %152, %149 ]
  %160 = phi i32 [ 0, %68 ], [ %153, %149 ]
  %161 = phi i32 [ 0, %68 ], [ %154, %149 ]
  %162 = getelementptr i8, ptr %0, i32 -78
  %163 = load i8, ptr %162, align 2
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %175, label %165

165:                                              ; preds = %157
  %166 = getelementptr i8, ptr %0, i32 -79
  %167 = load i8, ptr %166, align 1
  %168 = zext i8 %167 to i32
  %169 = shl nsw i32 -1, %168
  %170 = zext i8 %163 to i32
  %171 = add nuw nsw i32 %170, %168
  %172 = sub nsw i32 32, %171
  %173 = lshr i32 -1, %172
  %174 = and i32 %173, %169
  br label %175

175:                                              ; preds = %165, %157
  %176 = phi i32 [ %174, %165 ], [ 0, %157 ]
  %177 = getelementptr i8, ptr %0, i32 -73
  %178 = load i8, ptr %177, align 1
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %190, label %180

180:                                              ; preds = %175
  %181 = getelementptr i8, ptr %0, i32 -74
  %182 = load i8, ptr %181, align 1
  %183 = zext i8 %182 to i32
  %184 = shl nsw i32 -1, %183
  %185 = zext i8 %178 to i32
  %186 = add nuw nsw i32 %185, %183
  %187 = sub nsw i32 32, %186
  %188 = lshr i32 -1, %187
  %189 = and i32 %188, %184
  br label %190

190:                                              ; preds = %180, %175
  %191 = phi i32 [ %189, %180 ], [ 0, %175 ]
  %192 = getelementptr i8, ptr %0, i32 -67
  %193 = load i8, ptr %192, align 1
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %204, label %195

195:                                              ; preds = %190
  %196 = load i8, ptr %46, align 4
  %197 = zext i8 %196 to i32
  %198 = shl nsw i32 -1, %197
  %199 = zext i8 %193 to i32
  %200 = add nuw nsw i32 %199, %197
  %201 = sub nsw i32 32, %200
  %202 = lshr i32 -1, %201
  %203 = and i32 %202, %198
  br label %204

204:                                              ; preds = %195, %190
  %205 = phi i32 [ %203, %195 ], [ 0, %190 ]
  %206 = getelementptr i8, ptr %0, i32 -47
  %207 = load i8, ptr %206, align 1
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %218, label %209

209:                                              ; preds = %204
  %210 = load i8, ptr %57, align 4
  %211 = zext i8 %210 to i32
  %212 = shl nsw i32 -1, %211
  %213 = zext i8 %207 to i32
  %214 = add nuw nsw i32 %213, %211
  %215 = sub nsw i32 32, %214
  %216 = lshr i32 -1, %215
  %217 = and i32 %216, %212
  br label %218

218:                                              ; preds = %209, %204
  %219 = phi i32 [ %217, %209 ], [ 0, %204 ]
  %220 = getelementptr i8, ptr %0, i32 -75
  %221 = getelementptr i8, ptr %0, i32 -80
  %222 = getelementptr i8, ptr %0, i32 -20
  %223 = getelementptr i8, ptr %0, i32 -4
  %224 = load ptr, ptr %223, align 4
  %225 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %224) #4
  %226 = load ptr, ptr %222, align 4
  %227 = getelementptr i8, ptr %0, i32 -16
  %228 = load i16, ptr %227, align 4
  %229 = zext i16 %228 to i32
  %230 = getelementptr i8, ptr %226, i32 %229
  %231 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %230) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  %232 = load i8, ptr %221, align 4
  %233 = getelementptr i8, ptr %0, i32 -79
  %234 = load i8, ptr %233, align 1
  %235 = load i8, ptr %220, align 1
  %236 = getelementptr i8, ptr %0, i32 -74
  %237 = load i8, ptr %236, align 1
  %238 = getelementptr i8, ptr %0, i32 -60
  %239 = load i32, ptr %238, align 4
  %240 = load i8, ptr %46, align 4
  %241 = icmp eq i32 %161, 0
  %242 = tail call i32 @llvm.ctlz.i32(i32 %161, i1 false) #4, !range !13
  %243 = sub nsw i32 31, %242
  %244 = select i1 %241, i32 -1, i32 %243
  %245 = or i32 %191, %176
  %246 = or i32 %245, %205
  %247 = or i32 %246, %219
  %248 = xor i32 %247, -1
  %249 = and i32 %231, %248
  %250 = zext i8 %232 to i32
  %251 = sub i32 %158, %250
  %252 = zext i8 %234 to i32
  %253 = shl i32 %251, %252
  %254 = and i32 %253, %176
  %255 = or i32 %254, %249
  %256 = zext i8 %235 to i32
  %257 = sub i32 %159, %256
  %258 = zext i8 %237 to i32
  %259 = shl i32 %257, %258
  %260 = and i32 %259, %191
  %261 = or i32 %255, %260
  %262 = sub i32 %160, %239
  %263 = zext i8 %240 to i32
  %264 = shl i32 %262, %263
  %265 = and i32 %264, %205
  %266 = or i32 %261, %265
  %267 = load i8, ptr %57, align 4
  %268 = zext i8 %267 to i32
  %269 = shl i32 %244, %268
  %270 = and i32 %269, %219
  %271 = or i32 %266, %270
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %272 = load ptr, ptr %222, align 4
  %273 = load i16, ptr %227, align 4
  %274 = zext i16 %273 to i32
  %275 = getelementptr i8, ptr %272, i32 %274
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %275, i32 %271) #4, !srcloc !15
  %276 = load ptr, ptr %223, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %276, i32 noundef %225) #4
  %277 = getelementptr i8, ptr %0, i32 -84
  %278 = load i32, ptr %277, align 4
  tail call void @ccu_helper_wait_for_lock(ptr noundef %222, i32 noundef %278) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_gate_helper_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_gate_helper_disable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_gate_helper_is_enabled(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_helper_wait_for_lock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 2846550}
!9 = !{i64 2150437917}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148657220, i64 2148657500, i64 2148657834, i64 2148658168}
!12 = !{i64 2150443132}
!13 = !{i32 0, i32 33}
!14 = !{i64 2150443537}
!15 = !{i64 2846132}
