; ModuleID = '/llk/IR/drivers/clk/sunxi-ng/ccu_nkm.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu_nkm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_nkm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_nkm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_nkm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ccu_nkm = type { i32, i32, %struct.ccu_mult_internal, %struct.ccu_mult_internal, %struct.ccu_div_internal, %struct.ccu_mux_internal, i32, %struct.ccu_common }
%struct.ccu_mult_internal = type { i8, i8, i8, i8, i8 }
%struct.ccu_div_internal = type { i8, i8, i32, i32, i32, ptr }
%struct.ccu_mux_internal = type { i8, i8, ptr, ptr, i8, ptr, i8 }
%struct.ccu_common = type { ptr, i16, i16, i32, i32, ptr, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }

@ccu_nkm_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @ccu_nkm_enable, ptr @ccu_nkm_disable, ptr @ccu_nkm_is_enabled, ptr null, ptr null, ptr null, ptr @ccu_nkm_recalc_rate, ptr null, ptr @ccu_nkm_determine_rate, ptr @ccu_nkm_set_parent, ptr @ccu_nkm_get_parent, ptr @ccu_nkm_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_ccu_nkm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_nkm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_nkm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_nkm_ops to i32), ptr @__kstrtab_ccu_nkm_ops, ptr @__kstrtabns_ccu_nkm_ops }, section "___ksymtab_gpl+ccu_nkm_ops", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_ccu_nkm_ops], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_nkm_enable(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -88
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = load i32, ptr %2, align 4
  %5 = tail call i32 @ccu_gate_helper_enable(ptr noundef %3, i32 noundef %4) #3
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ccu_nkm_disable(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -88
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = load i32, ptr %2, align 4
  tail call void @ccu_gate_helper_disable(ptr noundef %3, i32 noundef %4) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_nkm_is_enabled(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -88
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = load i32, ptr %2, align 4
  %5 = tail call i32 @ccu_gate_helper_is_enabled(ptr noundef %3, i32 noundef %4) #3
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_nkm_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -16
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
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
  %57 = mul i32 %25, %1
  %58 = mul i32 %57, %41
  %59 = udiv i32 %58, %56
  %60 = getelementptr i8, ptr %0, i32 -8
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %2
  %65 = getelementptr i8, ptr %0, i32 -24
  %66 = load i32, ptr %65, align 4
  %67 = udiv i32 %59, %66
  br label %68

68:                                               ; preds = %64, %2
  %69 = phi i32 [ %67, %64 ], [ %59, %2 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_nkm_determine_rate(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -88
  %4 = getelementptr i8, ptr %0, i32 -20
  %5 = getelementptr i8, ptr %0, i32 -48
  %6 = tail call i32 @ccu_mux_helper_determine_rate(ptr noundef %4, ptr noundef %5, ptr noundef %1, ptr noundef nonnull @ccu_nkm_round_rate, ptr noundef %3) #3
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_nkm_set_parent(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = getelementptr i8, ptr %0, i32 -48
  %5 = tail call i32 @ccu_mux_helper_set_parent(ptr noundef %3, ptr noundef %4, i8 noundef zeroext %1) #3
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @ccu_nkm_get_parent(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -20
  %3 = getelementptr i8, ptr %0, i32 -48
  %4 = tail call zeroext i8 @ccu_mux_helper_get_parent(ptr noundef %2, ptr noundef %3) #3
  ret i8 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_nkm_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -24
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
  %46 = getelementptr i8, ptr %0, i32 -64
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = getelementptr i8, ptr %0, i32 -67
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = shl nuw i32 1, %52
  br label %54

54:                                               ; preds = %49, %44
  %55 = phi i32 [ %53, %49 ], [ %47, %44 ]
  %56 = icmp ult i32 %45, %34
  br i1 %56, label %110, label %57

57:                                               ; preds = %54
  %58 = icmp ult i32 %29, %18
  %59 = icmp eq i32 %55, 0
  br label %60

60:                                               ; preds = %103, %57
  %61 = phi i32 [ %34, %57 ], [ %108, %103 ]
  %62 = phi i32 [ 0, %57 ], [ %107, %103 ]
  %63 = phi i32 [ 0, %57 ], [ %106, %103 ]
  %64 = phi i32 [ 0, %57 ], [ %105, %103 ]
  %65 = phi i32 [ 0, %57 ], [ %104, %103 ]
  br i1 %58, label %103, label %66

66:                                               ; preds = %60
  %67 = mul i32 %61, %2
  br label %68

68:                                               ; preds = %96, %66
  %69 = phi i32 [ %18, %66 ], [ %101, %96 ]
  %70 = phi i32 [ %62, %66 ], [ %100, %96 ]
  %71 = phi i32 [ %63, %66 ], [ %99, %96 ]
  %72 = phi i32 [ %64, %66 ], [ %98, %96 ]
  %73 = phi i32 [ %65, %66 ], [ %97, %96 ]
  br i1 %59, label %96, label %74

74:                                               ; preds = %68
  %75 = mul i32 %67, %69
  br label %76

76:                                               ; preds = %89, %74
  %77 = phi i32 [ 1, %74 ], [ %94, %89 ]
  %78 = phi i32 [ %70, %74 ], [ %93, %89 ]
  %79 = phi i32 [ %71, %74 ], [ %92, %89 ]
  %80 = phi i32 [ %72, %74 ], [ %91, %89 ]
  %81 = phi i32 [ %73, %74 ], [ %90, %89 ]
  %82 = udiv i32 %75, %77
  %83 = icmp ult i32 %13, %82
  br i1 %83, label %89, label %84

84:                                               ; preds = %76
  %85 = sub i32 %13, %82
  %86 = sub i32 %13, %81
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %89

89:                                               ; preds = %88, %84, %76
  %90 = phi i32 [ %81, %76 ], [ %82, %88 ], [ %81, %84 ]
  %91 = phi i32 [ %80, %76 ], [ %69, %88 ], [ %80, %84 ]
  %92 = phi i32 [ %79, %76 ], [ %61, %88 ], [ %79, %84 ]
  %93 = phi i32 [ %78, %76 ], [ %77, %88 ], [ %78, %84 ]
  %94 = add i32 %77, 1
  %95 = icmp ugt i32 %94, %55
  br i1 %95, label %96, label %76

96:                                               ; preds = %89, %68
  %97 = phi i32 [ %73, %68 ], [ %90, %89 ]
  %98 = phi i32 [ %72, %68 ], [ %91, %89 ]
  %99 = phi i32 [ %71, %68 ], [ %92, %89 ]
  %100 = phi i32 [ %70, %68 ], [ %93, %89 ]
  %101 = add i32 %69, 1
  %102 = icmp ugt i32 %101, %29
  br i1 %102, label %103, label %68

103:                                              ; preds = %96, %60
  %104 = phi i32 [ %65, %60 ], [ %97, %96 ]
  %105 = phi i32 [ %64, %60 ], [ %98, %96 ]
  %106 = phi i32 [ %63, %60 ], [ %99, %96 ]
  %107 = phi i32 [ %62, %60 ], [ %100, %96 ]
  %108 = add i32 %61, 1
  %109 = icmp ugt i32 %108, %45
  br i1 %109, label %110, label %60

110:                                              ; preds = %103, %54
  %111 = phi i32 [ 0, %54 ], [ %105, %103 ]
  %112 = phi i32 [ 0, %54 ], [ %106, %103 ]
  %113 = phi i32 [ 0, %54 ], [ %107, %103 ]
  %114 = getelementptr i8, ptr %0, i32 -20
  %115 = getelementptr i8, ptr %0, i32 -80
  %116 = getelementptr i8, ptr %0, i32 -75
  %117 = getelementptr i8, ptr %0, i32 -68
  %118 = getelementptr i8, ptr %0, i32 -4
  %119 = load ptr, ptr %118, align 4
  %120 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %119) #3
  %121 = load ptr, ptr %114, align 4
  %122 = getelementptr i8, ptr %0, i32 -16
  %123 = load i16, ptr %122, align 4
  %124 = zext i16 %123 to i32
  %125 = getelementptr i8, ptr %121, i32 %124
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %125) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !10
  %127 = getelementptr i8, ptr %0, i32 -79
  %128 = load i8, ptr %127, align 1
  %129 = zext i8 %128 to i32
  %130 = shl nsw i32 -1, %129
  %131 = getelementptr i8, ptr %0, i32 -78
  %132 = load i8, ptr %131, align 2
  %133 = zext i8 %132 to i32
  %134 = add nuw nsw i32 %129, %133
  %135 = sub nsw i32 32, %134
  %136 = lshr i32 -1, %135
  %137 = and i32 %136, %130
  %138 = getelementptr i8, ptr %0, i32 -74
  %139 = load i8, ptr %138, align 1
  %140 = zext i8 %139 to i32
  %141 = shl nsw i32 -1, %140
  %142 = getelementptr i8, ptr %0, i32 -73
  %143 = load i8, ptr %142, align 1
  %144 = zext i8 %143 to i32
  %145 = add nuw nsw i32 %140, %144
  %146 = sub nsw i32 32, %145
  %147 = lshr i32 -1, %146
  %148 = and i32 %147, %141
  %149 = or i32 %148, %137
  %150 = load i8, ptr %117, align 4
  %151 = zext i8 %150 to i32
  %152 = shl nsw i32 -1, %151
  %153 = getelementptr i8, ptr %0, i32 -67
  %154 = load i8, ptr %153, align 1
  %155 = zext i8 %154 to i32
  %156 = add nuw nsw i32 %151, %155
  %157 = sub nsw i32 32, %156
  %158 = lshr i32 -1, %157
  %159 = and i32 %158, %152
  %160 = or i32 %149, %159
  %161 = xor i32 %160, -1
  %162 = and i32 %126, %161
  %163 = load i8, ptr %115, align 4
  %164 = zext i8 %163 to i32
  %165 = sub i32 %111, %164
  %166 = shl i32 %165, %129
  %167 = load i8, ptr %116, align 1
  %168 = zext i8 %167 to i32
  %169 = sub i32 %112, %168
  %170 = shl i32 %169, %140
  %171 = getelementptr i8, ptr %0, i32 -60
  %172 = load i32, ptr %171, align 4
  %173 = sub i32 %113, %172
  %174 = shl i32 %173, %151
  %175 = or i32 %170, %166
  %176 = or i32 %175, %174
  %177 = or i32 %176, %162
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %178 = load ptr, ptr %114, align 4
  %179 = load i16, ptr %122, align 4
  %180 = zext i16 %179 to i32
  %181 = getelementptr i8, ptr %178, i32 %180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %181, i32 %177) #3, !srcloc !12
  %182 = load ptr, ptr %118, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %182, i32 noundef %120) #3
  %183 = getelementptr i8, ptr %0, i32 -84
  %184 = load i32, ptr %183, align 4
  tail call void @ccu_helper_wait_for_lock(ptr noundef %114, i32 noundef %184) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_gate_helper_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_gate_helper_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_gate_helper_is_enabled(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_mux_helper_determine_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @ccu_nkm_round_rate(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4) #2 {
  %6 = getelementptr inbounds %struct.ccu_nkm, ptr %4, i32 0, i32 2, i32 3
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, i8 1, i8 %7
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds %struct.ccu_nkm, ptr %4, i32 0, i32 2, i32 4
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  %14 = icmp eq i8 %12, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.ccu_nkm, ptr %4, i32 0, i32 2, i32 2
  %17 = load i8, ptr %16, align 2
  %18 = zext i8 %17 to i32
  %19 = shl nuw i32 1, %18
  br label %20

20:                                               ; preds = %15, %5
  %21 = phi i32 [ %19, %15 ], [ %13, %5 ]
  %22 = getelementptr inbounds %struct.ccu_nkm, ptr %4, i32 0, i32 3, i32 3
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 0
  %25 = select i1 %24, i8 1, i8 %23
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds %struct.ccu_nkm, ptr %4, i32 0, i32 3, i32 4
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i8 %28, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.ccu_nkm, ptr %4, i32 0, i32 3, i32 2
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = shl nuw i32 1, %34
  br label %36

36:                                               ; preds = %31, %20
  %37 = phi i32 [ %35, %31 ], [ %29, %20 ]
  %38 = getelementptr inbounds %struct.ccu_nkm, ptr %4, i32 0, i32 4, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.ccu_nkm, ptr %4, i32 0, i32 4, i32 1
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = shl nuw i32 1, %44
  br label %46

46:                                               ; preds = %41, %36
  %47 = phi i32 [ %45, %41 ], [ %39, %36 ]
  %48 = getelementptr inbounds %struct.ccu_nkm, ptr %4, i32 0, i32 7, i32 4
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.ccu_nkm, ptr %4, i32 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = mul i32 %54, %3
  br label %56

56:                                               ; preds = %52, %46
  %57 = phi i32 [ %55, %52 ], [ %3, %46 ]
  %58 = load i32, ptr %2, align 4
  %59 = icmp ult i32 %37, %26
  br i1 %59, label %113, label %60

60:                                               ; preds = %56
  %61 = icmp ult i32 %21, %10
  %62 = icmp eq i32 %47, 0
  br label %63

63:                                               ; preds = %106, %60
  %64 = phi i32 [ %26, %60 ], [ %111, %106 ]
  %65 = phi i32 [ 0, %60 ], [ %110, %106 ]
  %66 = phi i32 [ 0, %60 ], [ %109, %106 ]
  %67 = phi i32 [ 0, %60 ], [ %108, %106 ]
  %68 = phi i32 [ 0, %60 ], [ %107, %106 ]
  br i1 %61, label %106, label %69

69:                                               ; preds = %63
  %70 = mul i32 %64, %58
  br label %71

71:                                               ; preds = %99, %69
  %72 = phi i32 [ %10, %69 ], [ %104, %99 ]
  %73 = phi i32 [ %65, %69 ], [ %103, %99 ]
  %74 = phi i32 [ %66, %69 ], [ %102, %99 ]
  %75 = phi i32 [ %67, %69 ], [ %101, %99 ]
  %76 = phi i32 [ %68, %69 ], [ %100, %99 ]
  br i1 %62, label %99, label %77

77:                                               ; preds = %71
  %78 = mul i32 %70, %72
  br label %79

79:                                               ; preds = %92, %77
  %80 = phi i32 [ 1, %77 ], [ %97, %92 ]
  %81 = phi i32 [ %73, %77 ], [ %96, %92 ]
  %82 = phi i32 [ %74, %77 ], [ %95, %92 ]
  %83 = phi i32 [ %75, %77 ], [ %94, %92 ]
  %84 = phi i32 [ %76, %77 ], [ %93, %92 ]
  %85 = udiv i32 %78, %80
  %86 = icmp ult i32 %57, %85
  br i1 %86, label %92, label %87

87:                                               ; preds = %79
  %88 = sub i32 %57, %85
  %89 = sub i32 %57, %84
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %92

92:                                               ; preds = %91, %87, %79
  %93 = phi i32 [ %84, %79 ], [ %85, %91 ], [ %84, %87 ]
  %94 = phi i32 [ %83, %79 ], [ %72, %91 ], [ %83, %87 ]
  %95 = phi i32 [ %82, %79 ], [ %64, %91 ], [ %82, %87 ]
  %96 = phi i32 [ %81, %79 ], [ %80, %91 ], [ %81, %87 ]
  %97 = add i32 %80, 1
  %98 = icmp ugt i32 %97, %47
  br i1 %98, label %99, label %79

99:                                               ; preds = %92, %71
  %100 = phi i32 [ %76, %71 ], [ %93, %92 ]
  %101 = phi i32 [ %75, %71 ], [ %94, %92 ]
  %102 = phi i32 [ %74, %71 ], [ %95, %92 ]
  %103 = phi i32 [ %73, %71 ], [ %96, %92 ]
  %104 = add i32 %72, 1
  %105 = icmp ugt i32 %104, %21
  br i1 %105, label %106, label %71

106:                                              ; preds = %99, %63
  %107 = phi i32 [ %68, %63 ], [ %100, %99 ]
  %108 = phi i32 [ %67, %63 ], [ %101, %99 ]
  %109 = phi i32 [ %66, %63 ], [ %102, %99 ]
  %110 = phi i32 [ %65, %63 ], [ %103, %99 ]
  %111 = add i32 %64, 1
  %112 = icmp ugt i32 %111, %37
  br i1 %112, label %113, label %63

113:                                              ; preds = %106, %56
  %114 = phi i32 [ 0, %56 ], [ %108, %106 ]
  %115 = phi i32 [ 0, %56 ], [ %109, %106 ]
  %116 = phi i32 [ 0, %56 ], [ %110, %106 ]
  %117 = mul i32 %114, %58
  %118 = mul i32 %117, %115
  %119 = udiv i32 %118, %116
  br i1 %51, label %124, label %120

120:                                              ; preds = %113
  %121 = getelementptr inbounds %struct.ccu_nkm, ptr %4, i32 0, i32 6
  %122 = load i32, ptr %121, align 4
  %123 = udiv i32 %119, %122
  br label %124

124:                                              ; preds = %120, %113
  %125 = phi i32 [ %123, %120 ], [ %119, %113 ]
  ret i32 %125
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_mux_helper_set_parent(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ccu_mux_helper_get_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_helper_wait_for_lock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }

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
!8 = !{i64 2845570}
!9 = !{i64 2150432390}
!10 = !{i64 2150433467}
!11 = !{i64 2150436633}
!12 = !{i64 2845152}
