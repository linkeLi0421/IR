; ModuleID = '/llk/IR/drivers/clk/sunxi-ng/ccu_nm.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu_nm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_nm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_nm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_nm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct._ccu_nm = type { i32, i32, i32, i32, i32, i32 }

@ccu_nm_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @ccu_nm_enable, ptr @ccu_nm_disable, ptr @ccu_nm_is_enabled, ptr null, ptr null, ptr null, ptr @ccu_nm_recalc_rate, ptr @ccu_nm_round_rate, ptr null, ptr null, ptr null, ptr @ccu_nm_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_ccu_nm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_nm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_nm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_nm_ops to i32), ptr @__kstrtab_ccu_nm_ops, ptr @__kstrtabns_ccu_nm_ops }, section "___ksymtab_gpl+ccu_nm_ops", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_ccu_nm_ops], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_nm_enable(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -104
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = load i32, ptr %2, align 4
  %5 = tail call i32 @ccu_gate_helper_enable(ptr noundef %3, i32 noundef %4) #4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ccu_nm_disable(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -104
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = load i32, ptr %2, align 4
  tail call void @ccu_gate_helper_disable(ptr noundef %3, i32 noundef %4) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_nm_is_enabled(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -104
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = load i32, ptr %2, align 4
  %5 = tail call i32 @ccu_gate_helper_is_enabled(ptr noundef %3, i32 noundef %4) #4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_nm_recalc_rate(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = getelementptr i8, ptr %0, i32 -68
  %5 = tail call zeroext i1 @ccu_frac_helper_is_enabled(ptr noundef %3, ptr noundef %4) #4
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = tail call i32 @ccu_frac_helper_read_rate(ptr noundef %3, ptr noundef %4) #4
  %8 = getelementptr i8, ptr %0, i32 -8
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %77, label %72

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr i8, ptr %0, i32 -16
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i32
  %17 = getelementptr i8, ptr %13, i32 %16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %19 = getelementptr i8, ptr %0, i32 -96
  %20 = getelementptr i8, ptr %0, i32 -95
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = lshr i32 %18, %22
  %24 = getelementptr i8, ptr %0, i32 -94
  %25 = load i8, ptr %24, align 2
  %26 = zext i8 %25 to i32
  %27 = shl nsw i32 -1, %26
  %28 = xor i32 %27, -1
  %29 = and i32 %23, %28
  %30 = load i8, ptr %19, align 4
  %31 = zext i8 %30 to i32
  %32 = add i32 %29, %31
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 1, i32 %32
  %35 = getelementptr i8, ptr %0, i32 -88
  %36 = load i8, ptr %35, align 4
  %37 = zext i8 %36 to i32
  %38 = lshr i32 %18, %37
  %39 = getelementptr i8, ptr %0, i32 -87
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = shl nsw i32 -1, %41
  %43 = xor i32 %42, -1
  %44 = and i32 %38, %43
  %45 = getelementptr i8, ptr %0, i32 -80
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %44, %46
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i32 1, i32 %47
  %50 = getelementptr i8, ptr %0, i32 -52
  %51 = tail call zeroext i1 @ccu_sdm_helper_is_enabled(ptr noundef %3, ptr noundef %50) #4
  br i1 %51, label %52, label %54

52:                                               ; preds = %12
  %53 = tail call i32 @ccu_sdm_helper_read_rate(ptr noundef %3, ptr noundef %50, i32 noundef %49, i32 noundef %34) #4
  br label %66

54:                                               ; preds = %12
  %55 = zext i32 %1 to i64
  %56 = zext i32 %34 to i64
  %57 = mul nuw i64 %56, %55
  %58 = icmp ult i64 %57, 4294967296
  br i1 %58, label %59, label %62, !prof !10

59:                                               ; preds = %54
  %60 = trunc i64 %57 to i32
  %61 = udiv i32 %60, %49
  br label %66

62:                                               ; preds = %54
  %63 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %49, i64 %57) #5, !srcloc !11
  %64 = extractvalue { i64, i64 } %63, 1
  %65 = trunc i64 %64 to i32
  br label %66

66:                                               ; preds = %62, %59, %52
  %67 = phi i32 [ %53, %52 ], [ %61, %59 ], [ %65, %62 ]
  %68 = getelementptr i8, ptr %0, i32 -8
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %66, %6
  %73 = phi i32 [ %7, %6 ], [ %67, %66 ]
  %74 = getelementptr i8, ptr %0, i32 -32
  %75 = load i32, ptr %74, align 4
  %76 = udiv i32 %73, %75
  br label %77

77:                                               ; preds = %72, %66, %6
  %78 = phi i32 [ %7, %6 ], [ %67, %66 ], [ %76, %72 ]
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_nm_round_rate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -20
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %0, i32 -28
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, %1
  br i1 %12, label %159, label %22

13:                                               ; preds = %3
  %14 = getelementptr i8, ptr %0, i32 -32
  %15 = load i32, ptr %14, align 4
  %16 = mul i32 %15, %1
  %17 = getelementptr i8, ptr %0, i32 -28
  %18 = load i32, ptr %17, align 4
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = udiv i32 %18, %15
  br label %159

22:                                               ; preds = %9
  %23 = getelementptr i8, ptr %0, i32 -24
  %24 = load i32, ptr %23, align 4
  %25 = icmp ne i32 %24, 0
  %26 = icmp ult i32 %24, %1
  %27 = and i1 %25, %26
  br i1 %27, label %159, label %36

28:                                               ; preds = %13
  %29 = getelementptr i8, ptr %0, i32 -24
  %30 = load i32, ptr %29, align 4
  %31 = icmp ne i32 %30, 0
  %32 = icmp ugt i32 %16, %30
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = udiv i32 %30, %15
  br label %159

36:                                               ; preds = %28, %22
  %37 = phi i32 [ %16, %28 ], [ %1, %22 ]
  %38 = getelementptr i8, ptr %0, i32 -68
  %39 = tail call zeroext i1 @ccu_frac_helper_has_rate(ptr noundef %4, ptr noundef %38, i32 noundef %37) #4
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i32, ptr %5, align 4
  %42 = and i32 %41, 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %159, label %44

44:                                               ; preds = %40
  %45 = getelementptr i8, ptr %0, i32 -32
  %46 = load i32, ptr %45, align 4
  %47 = udiv i32 %37, %46
  br label %159

48:                                               ; preds = %36
  %49 = getelementptr i8, ptr %0, i32 -52
  %50 = tail call zeroext i1 @ccu_sdm_helper_has_rate(ptr noundef %4, ptr noundef %49, i32 noundef %37) #4
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i32, ptr %5, align 4
  %53 = and i32 %52, 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %159, label %55

55:                                               ; preds = %51
  %56 = getelementptr i8, ptr %0, i32 -32
  %57 = load i32, ptr %56, align 4
  %58 = udiv i32 %37, %57
  br label %159

59:                                               ; preds = %48
  %60 = getelementptr i8, ptr %0, i32 -93
  %61 = load i8, ptr %60, align 1
  %62 = icmp eq i8 %61, 0
  %63 = select i1 %62, i8 1, i8 %61
  %64 = zext i8 %63 to i32
  %65 = getelementptr i8, ptr %0, i32 -92
  %66 = load i8, ptr %65, align 4
  %67 = zext i8 %66 to i32
  %68 = icmp eq i8 %66, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %59
  %70 = getelementptr i8, ptr %0, i32 -94
  %71 = load i8, ptr %70, align 2
  %72 = zext i8 %71 to i32
  %73 = shl nuw i32 1, %72
  br label %74

74:                                               ; preds = %69, %59
  %75 = phi i32 [ %73, %69 ], [ %67, %59 ]
  %76 = getelementptr i8, ptr %0, i32 -84
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = getelementptr i8, ptr %0, i32 -87
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = shl nuw i32 1, %82
  br label %84

84:                                               ; preds = %79, %74
  %85 = phi i32 [ %83, %79 ], [ %77, %74 ]
  %86 = load i32, ptr %2, align 4
  %87 = icmp ult i32 %75, %64
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = zext i32 %86 to i64
  br label %136

90:                                               ; preds = %84
  %91 = icmp eq i32 %85, 0
  %92 = zext i32 %86 to i64
  br label %93

93:                                               ; preds = %130, %90
  %94 = phi i32 [ %64, %90 ], [ %134, %130 ]
  %95 = phi i32 [ 0, %90 ], [ %133, %130 ]
  %96 = phi i32 [ 0, %90 ], [ %132, %130 ]
  %97 = phi i32 [ 0, %90 ], [ %131, %130 ]
  br i1 %91, label %130, label %98

98:                                               ; preds = %93
  %99 = zext i32 %94 to i64
  %100 = mul nuw i64 %99, %92
  %101 = icmp ult i64 %100, 4294967296
  %102 = trunc i64 %100 to i32
  br label %103

103:                                              ; preds = %124, %98
  %104 = phi i32 [ 1, %98 ], [ %128, %124 ]
  %105 = phi i32 [ %95, %98 ], [ %127, %124 ]
  %106 = phi i32 [ %96, %98 ], [ %126, %124 ]
  %107 = phi i32 [ %97, %98 ], [ %125, %124 ]
  br i1 %101, label %108, label %110, !prof !10

108:                                              ; preds = %103
  %109 = udiv i32 %102, %104
  br label %114

110:                                              ; preds = %103
  %111 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %104, i64 %100) #5, !srcloc !11
  %112 = extractvalue { i64, i64 } %111, 1
  %113 = trunc i64 %112 to i32
  br label %114

114:                                              ; preds = %110, %108
  %115 = phi i32 [ %109, %108 ], [ %113, %110 ]
  %116 = icmp ult i32 %37, %115
  br i1 %116, label %124, label %117

117:                                              ; preds = %114
  %118 = sub i32 %37, %115
  %119 = sub i32 %37, %107
  %120 = icmp ult i32 %118, %119
  %121 = select i1 %120, i32 %115, i32 %107
  %122 = select i1 %120, i32 %94, i32 %106
  %123 = select i1 %120, i32 %104, i32 %105
  br label %124

124:                                              ; preds = %117, %114
  %125 = phi i32 [ %121, %117 ], [ %107, %114 ]
  %126 = phi i32 [ %122, %117 ], [ %106, %114 ]
  %127 = phi i32 [ %123, %117 ], [ %105, %114 ]
  %128 = add i32 %104, 1
  %129 = icmp ugt i32 %128, %85
  br i1 %129, label %130, label %103

130:                                              ; preds = %124, %93
  %131 = phi i32 [ %97, %93 ], [ %125, %124 ]
  %132 = phi i32 [ %96, %93 ], [ %126, %124 ]
  %133 = phi i32 [ %95, %93 ], [ %127, %124 ]
  %134 = add i32 %94, 1
  %135 = icmp ugt i32 %134, %75
  br i1 %135, label %136, label %93

136:                                              ; preds = %130, %88
  %137 = phi i64 [ %89, %88 ], [ %92, %130 ]
  %138 = phi i32 [ 0, %88 ], [ %132, %130 ]
  %139 = phi i32 [ 0, %88 ], [ %133, %130 ]
  %140 = zext i32 %138 to i64
  %141 = mul nuw i64 %137, %140
  %142 = icmp ult i64 %141, 4294967296
  br i1 %142, label %143, label %146, !prof !10

143:                                              ; preds = %136
  %144 = trunc i64 %141 to i32
  %145 = udiv i32 %144, %139
  br label %150

146:                                              ; preds = %136
  %147 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %139, i64 %141) #5, !srcloc !11
  %148 = extractvalue { i64, i64 } %147, 1
  %149 = trunc i64 %148 to i32
  br label %150

150:                                              ; preds = %146, %143
  %151 = phi i32 [ %145, %143 ], [ %149, %146 ]
  %152 = load i32, ptr %5, align 4
  %153 = and i32 %152, 8
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %150
  %156 = getelementptr i8, ptr %0, i32 -32
  %157 = load i32, ptr %156, align 4
  %158 = udiv i32 %151, %157
  br label %159

159:                                              ; preds = %155, %150, %55, %51, %44, %40, %34, %22, %20, %9
  %160 = phi i32 [ %21, %20 ], [ %35, %34 ], [ %47, %44 ], [ %37, %40 ], [ %58, %55 ], [ %37, %51 ], [ %158, %155 ], [ %151, %150 ], [ %11, %9 ], [ %24, %22 ]
  ret i32 %160
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_nm_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct._ccu_nm, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 16, i1 false), !annotation !12
  %5 = getelementptr i8, ptr %0, i32 -20
  %6 = getelementptr i8, ptr %0, i32 -8
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %0, i32 -32
  %12 = load i32, ptr %11, align 4
  %13 = mul i32 %12, %1
  br label %14

14:                                               ; preds = %10, %3
  %15 = phi i32 [ %13, %10 ], [ %1, %3 ]
  %16 = getelementptr i8, ptr %0, i32 -68
  %17 = tail call zeroext i1 @ccu_frac_helper_has_rate(ptr noundef %5, ptr noundef %16, i32 noundef %15) #4
  br i1 %17, label %18, label %49

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %0, i32 -4
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #4
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr i8, ptr %0, i32 -16
  %24 = load i16, ptr %23, align 4
  %25 = zext i16 %24 to i32
  %26 = getelementptr i8, ptr %22, i32 %25
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !13
  %28 = getelementptr i8, ptr %0, i32 -88
  %29 = load i8, ptr %28, align 4
  %30 = zext i8 %29 to i32
  %31 = shl nsw i32 -1, %30
  %32 = getelementptr i8, ptr %0, i32 -87
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = add nuw nsw i32 %30, %34
  %36 = sub nsw i32 32, %35
  %37 = lshr i32 -1, %36
  %38 = and i32 %37, %31
  %39 = xor i32 %38, -1
  %40 = and i32 %27, %39
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %41 = load ptr, ptr %5, align 4
  %42 = load i16, ptr %23, align 4
  %43 = zext i16 %42 to i32
  %44 = getelementptr i8, ptr %41, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %40) #4, !srcloc !15
  %45 = load ptr, ptr %19, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %45, i32 noundef %21) #4
  tail call void @ccu_frac_helper_enable(ptr noundef %5, ptr noundef %16) #4
  %46 = getelementptr i8, ptr %0, i32 -100
  %47 = load i32, ptr %46, align 4
  %48 = tail call i32 @ccu_frac_helper_set_rate(ptr noundef %5, ptr noundef %16, i32 noundef %15, i32 noundef %47) #4
  br label %193

49:                                               ; preds = %14
  tail call void @ccu_frac_helper_disable(ptr noundef %5, ptr noundef %16) #4
  %50 = getelementptr i8, ptr %0, i32 -96
  %51 = getelementptr i8, ptr %0, i32 -93
  %52 = load i8, ptr %51, align 1
  %53 = icmp eq i8 %52, 0
  %54 = select i1 %53, i8 1, i8 %52
  %55 = zext i8 %54 to i32
  %56 = getelementptr inbounds %struct._ccu_nm, ptr %4, i32 0, i32 1
  store i32 %55, ptr %56, align 4
  %57 = getelementptr i8, ptr %0, i32 -92
  %58 = load i8, ptr %57, align 4
  %59 = zext i8 %58 to i32
  %60 = icmp eq i8 %58, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %49
  %62 = getelementptr i8, ptr %0, i32 -94
  %63 = load i8, ptr %62, align 2
  %64 = zext i8 %63 to i32
  %65 = shl nuw i32 1, %64
  br label %66

66:                                               ; preds = %61, %49
  %67 = phi i32 [ %65, %61 ], [ %59, %49 ]
  %68 = getelementptr inbounds %struct._ccu_nm, ptr %4, i32 0, i32 2
  store i32 %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct._ccu_nm, ptr %4, i32 0, i32 4
  store i32 1, ptr %69, align 4
  %70 = getelementptr i8, ptr %0, i32 -88
  %71 = getelementptr i8, ptr %0, i32 -84
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %66
  %75 = getelementptr i8, ptr %0, i32 -87
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  %78 = shl nuw i32 1, %77
  br label %79

79:                                               ; preds = %74, %66
  %80 = phi i32 [ %78, %74 ], [ %72, %66 ]
  %81 = getelementptr inbounds %struct._ccu_nm, ptr %4, i32 0, i32 5
  store i32 %80, ptr %81, align 4
  %82 = getelementptr i8, ptr %0, i32 -52
  %83 = tail call zeroext i1 @ccu_sdm_helper_has_rate(ptr noundef %5, ptr noundef %82, i32 noundef %15) #4
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  tail call void @ccu_sdm_helper_enable(ptr noundef %5, ptr noundef %82, i32 noundef %15) #4
  %85 = getelementptr inbounds %struct._ccu_nm, ptr %4, i32 0, i32 3
  %86 = call i32 @ccu_sdm_helper_get_factors(ptr noundef %5, ptr noundef %82, i32 noundef %15, ptr noundef %85, ptr noundef nonnull %4) #4
  br label %139

87:                                               ; preds = %79
  tail call void @ccu_sdm_helper_disable(ptr noundef %5, ptr noundef %82) #4
  %88 = icmp ult i32 %67, %55
  br i1 %88, label %135, label %89

89:                                               ; preds = %87
  %90 = icmp eq i32 %80, 0
  %91 = zext i32 %2 to i64
  br label %92

92:                                               ; preds = %129, %89
  %93 = phi i32 [ %55, %89 ], [ %133, %129 ]
  %94 = phi i32 [ 0, %89 ], [ %132, %129 ]
  %95 = phi i32 [ 0, %89 ], [ %131, %129 ]
  %96 = phi i32 [ 0, %89 ], [ %130, %129 ]
  br i1 %90, label %129, label %97

97:                                               ; preds = %92
  %98 = zext i32 %93 to i64
  %99 = mul nuw i64 %98, %91
  %100 = icmp ult i64 %99, 4294967296
  %101 = trunc i64 %99 to i32
  br label %102

102:                                              ; preds = %123, %97
  %103 = phi i32 [ 1, %97 ], [ %127, %123 ]
  %104 = phi i32 [ %94, %97 ], [ %126, %123 ]
  %105 = phi i32 [ %95, %97 ], [ %125, %123 ]
  %106 = phi i32 [ %96, %97 ], [ %124, %123 ]
  br i1 %100, label %107, label %109, !prof !10

107:                                              ; preds = %102
  %108 = udiv i32 %101, %103
  br label %113

109:                                              ; preds = %102
  %110 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %103, i64 %99) #5, !srcloc !11
  %111 = extractvalue { i64, i64 } %110, 1
  %112 = trunc i64 %111 to i32
  br label %113

113:                                              ; preds = %109, %107
  %114 = phi i32 [ %108, %107 ], [ %112, %109 ]
  %115 = icmp ult i32 %15, %114
  br i1 %115, label %123, label %116

116:                                              ; preds = %113
  %117 = sub i32 %15, %114
  %118 = sub i32 %15, %106
  %119 = icmp ult i32 %117, %118
  %120 = select i1 %119, i32 %114, i32 %106
  %121 = select i1 %119, i32 %93, i32 %105
  %122 = select i1 %119, i32 %103, i32 %104
  br label %123

123:                                              ; preds = %116, %113
  %124 = phi i32 [ %120, %116 ], [ %106, %113 ]
  %125 = phi i32 [ %121, %116 ], [ %105, %113 ]
  %126 = phi i32 [ %122, %116 ], [ %104, %113 ]
  %127 = add i32 %103, 1
  %128 = icmp ugt i32 %127, %80
  br i1 %128, label %129, label %102

129:                                              ; preds = %123, %92
  %130 = phi i32 [ %96, %92 ], [ %124, %123 ]
  %131 = phi i32 [ %95, %92 ], [ %125, %123 ]
  %132 = phi i32 [ %94, %92 ], [ %126, %123 ]
  %133 = add i32 %93, 1
  %134 = icmp ugt i32 %133, %67
  br i1 %134, label %135, label %92

135:                                              ; preds = %129, %87
  %136 = phi i32 [ 0, %87 ], [ %131, %129 ]
  %137 = phi i32 [ 0, %87 ], [ %132, %129 ]
  store i32 %136, ptr %4, align 4
  %138 = getelementptr inbounds %struct._ccu_nm, ptr %4, i32 0, i32 3
  store i32 %137, ptr %138, align 4
  br label %139

139:                                              ; preds = %135, %84
  %140 = getelementptr i8, ptr %0, i32 -4
  %141 = load ptr, ptr %140, align 4
  %142 = call i32 @_raw_spin_lock_irqsave(ptr noundef %141) #4
  %143 = load ptr, ptr %5, align 4
  %144 = getelementptr i8, ptr %0, i32 -16
  %145 = load i16, ptr %144, align 4
  %146 = zext i16 %145 to i32
  %147 = getelementptr i8, ptr %143, i32 %146
  %148 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %147) #4, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !16
  %149 = getelementptr i8, ptr %0, i32 -95
  %150 = load i8, ptr %149, align 1
  %151 = zext i8 %150 to i32
  %152 = shl nsw i32 -1, %151
  %153 = getelementptr i8, ptr %0, i32 -94
  %154 = load i8, ptr %153, align 2
  %155 = zext i8 %154 to i32
  %156 = add nuw nsw i32 %151, %155
  %157 = sub nsw i32 32, %156
  %158 = lshr i32 -1, %157
  %159 = and i32 %158, %152
  %160 = load i8, ptr %70, align 4
  %161 = zext i8 %160 to i32
  %162 = shl nsw i32 -1, %161
  %163 = getelementptr i8, ptr %0, i32 -87
  %164 = load i8, ptr %163, align 1
  %165 = zext i8 %164 to i32
  %166 = add nuw nsw i32 %161, %165
  %167 = sub nsw i32 32, %166
  %168 = lshr i32 -1, %167
  %169 = and i32 %168, %162
  %170 = or i32 %169, %159
  %171 = xor i32 %170, -1
  %172 = and i32 %148, %171
  %173 = load i32, ptr %4, align 4
  %174 = load i8, ptr %50, align 4
  %175 = zext i8 %174 to i32
  %176 = sub i32 %173, %175
  %177 = shl i32 %176, %151
  %178 = or i32 %172, %177
  %179 = getelementptr inbounds %struct._ccu_nm, ptr %4, i32 0, i32 3
  %180 = load i32, ptr %179, align 4
  %181 = getelementptr i8, ptr %0, i32 -80
  %182 = load i32, ptr %181, align 4
  %183 = sub i32 %180, %182
  %184 = shl i32 %183, %161
  %185 = or i32 %178, %184
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  call void @arm_heavy_mb() #4
  %186 = load ptr, ptr %5, align 4
  %187 = load i16, ptr %144, align 4
  %188 = zext i16 %187 to i32
  %189 = getelementptr i8, ptr %186, i32 %188
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %189, i32 %185) #4, !srcloc !15
  %190 = load ptr, ptr %140, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %190, i32 noundef %142) #4
  %191 = getelementptr i8, ptr %0, i32 -100
  %192 = load i32, ptr %191, align 4
  call void @ccu_helper_wait_for_lock(ptr noundef %5, i32 noundef %192) #4
  br label %193

193:                                              ; preds = %139, %18
  %194 = phi i32 [ %48, %18 ], [ 0, %139 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #4
  ret i32 %194
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_gate_helper_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_gate_helper_disable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_gate_helper_is_enabled(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ccu_frac_helper_is_enabled(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_frac_helper_read_rate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ccu_sdm_helper_is_enabled(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_sdm_helper_read_rate(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ccu_frac_helper_has_rate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ccu_sdm_helper_has_rate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_frac_helper_enable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_frac_helper_set_rate(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_frac_helper_disable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_sdm_helper_enable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_sdm_helper_get_factors(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_sdm_helper_disable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_helper_wait_for_lock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{i64 2846457}
!9 = !{i64 2150442545}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148657127, i64 2148657407, i64 2148657741, i64 2148658075}
!12 = !{!"auto-init"}
!13 = !{i64 2150443942}
!14 = !{i64 2150445106}
!15 = !{i64 2846039}
!16 = !{i64 2150445991}
!17 = !{i64 2150448119}
