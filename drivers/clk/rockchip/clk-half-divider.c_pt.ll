; ModuleID = '/llk/IR/drivers/clk/rockchip/clk-half-divider.c_pt.bc'
source_filename = "../drivers/clk/rockchip/clk-half-divider.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }

@clk_mux_ro_ops = external dso_local constant %struct.clk_ops, align 4
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@clk_gate_ops = external dso_local constant %struct.clk_ops, align 4
@clk_half_divider_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_half_divider_recalc_rate, ptr @clk_half_divider_round_rate, ptr null, ptr null, ptr null, ptr @clk_half_divider_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rockchip_clk_register_halfdiv(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i8 noundef zeroext %8, i8 noundef zeroext %9, i8 noundef zeroext %10, i32 noundef %11, i8 noundef zeroext %12, i8 noundef zeroext %13, i32 noundef %14, ptr noundef %15) local_unnamed_addr #0 {
  %17 = zext i8 %2 to i32
  %18 = icmp ugt i8 %2, 1
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 32) #4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %77, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %3, i32 %4
  %25 = getelementptr inbounds %struct.clk_mux, ptr %21, i32 0, i32 1
  store ptr %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.clk_mux, ptr %21, i32 0, i32 4
  store i8 %5, ptr %26, align 8
  %27 = zext i8 %6 to i32
  %28 = shl nsw i32 -1, %27
  %29 = xor i32 %28, -1
  %30 = getelementptr inbounds %struct.clk_mux, ptr %21, i32 0, i32 3
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.clk_mux, ptr %21, i32 0, i32 5
  store i8 %7, ptr %31, align 1
  %32 = getelementptr inbounds %struct.clk_mux, ptr %21, i32 0, i32 6
  store ptr %15, ptr %32, align 4
  %33 = and i8 %7, 8
  %34 = icmp eq i8 %33, 0
  %35 = select i1 %34, ptr @clk_mux_ops, ptr @clk_mux_ro_ops
  br label %36

36:                                               ; preds = %23, %16
  %37 = phi ptr [ %21, %23 ], [ null, %16 ]
  %38 = phi ptr [ %35, %23 ], [ null, %16 ]
  %39 = icmp sgt i32 %11, -1
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %42 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3520, i32 noundef 24) #4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %75, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.clk_gate, ptr %42, i32 0, i32 3
  store i8 %13, ptr %45, align 1
  %46 = getelementptr i8, ptr %3, i32 %11
  %47 = getelementptr inbounds %struct.clk_gate, ptr %42, i32 0, i32 1
  store ptr %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.clk_gate, ptr %42, i32 0, i32 2
  store i8 %12, ptr %48, align 8
  %49 = getelementptr inbounds %struct.clk_gate, ptr %42, i32 0, i32 4
  store ptr %15, ptr %49, align 4
  br label %50

50:                                               ; preds = %44, %36
  %51 = phi ptr [ %42, %44 ], [ null, %36 ]
  %52 = phi ptr [ @clk_gate_ops, %44 ], [ null, %36 ]
  %53 = icmp eq i8 %9, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %56 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %55, i32 noundef 3520, i32 noundef 28) #4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %73, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.clk_divider, ptr %56, i32 0, i32 4
  store i8 %10, ptr %59, align 2
  %60 = getelementptr i8, ptr %3, i32 %4
  %61 = getelementptr inbounds %struct.clk_divider, ptr %56, i32 0, i32 1
  store ptr %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.clk_divider, ptr %56, i32 0, i32 2
  store i8 %8, ptr %62, align 8
  %63 = getelementptr inbounds %struct.clk_divider, ptr %56, i32 0, i32 3
  store i8 %9, ptr %63, align 1
  %64 = getelementptr inbounds %struct.clk_divider, ptr %56, i32 0, i32 6
  store ptr %15, ptr %64, align 8
  br label %65

65:                                               ; preds = %58, %50
  %66 = phi ptr [ %56, %58 ], [ null, %50 ]
  %67 = phi ptr [ @clk_half_divider_ops, %58 ], [ null, %50 ]
  %68 = tail call ptr @clk_hw_register_composite(ptr noundef null, ptr noundef %0, ptr noundef %1, i32 noundef %17, ptr noundef %37, ptr noundef %38, ptr noundef %66, ptr noundef %67, ptr noundef %51, ptr noundef %52, i32 noundef %14) #5
  %69 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.clk_hw, ptr %68, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  br label %77

73:                                               ; preds = %65, %54
  %74 = phi ptr [ %68, %65 ], [ inttoptr (i32 -12 to ptr), %54 ]
  tail call void @kfree(ptr noundef %51) #5
  br label %75

75:                                               ; preds = %73, %40
  %76 = phi ptr [ %74, %73 ], [ inttoptr (i32 -12 to ptr), %40 ]
  tail call void @kfree(ptr noundef %37) #5
  br label %77

77:                                               ; preds = %75, %70, %19
  %78 = phi ptr [ %76, %75 ], [ %72, %70 ], [ inttoptr (i32 -12 to ptr), %19 ]
  ret ptr %78
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_composite(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_half_divider_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %6 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 2
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = lshr i32 %5, %8
  %10 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 3
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = shl nsw i32 -1, %12
  %14 = xor i32 %13, -1
  %15 = and i32 %9, %14
  %16 = shl i32 %15, 1
  %17 = add i32 %16, 3
  %18 = zext i32 %1 to i64
  %19 = shl nuw nsw i64 %18, 1
  %20 = zext i32 %17 to i64
  %21 = add nsw i64 %20, -1
  %22 = add nuw nsw i64 %21, %19
  %23 = icmp ult i64 %22, 4294967296
  br i1 %23, label %24, label %27, !prof !10

24:                                               ; preds = %2
  %25 = trunc i64 %22 to i32
  %26 = udiv i32 %25, %17
  br label %31

27:                                               ; preds = %2
  %28 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %17, i64 %22) #6, !srcloc !11
  %29 = extractvalue { i64, i64 } %28, 1
  %30 = trunc i64 %29 to i32
  br label %31

31:                                               ; preds = %27, %24
  %32 = phi i32 [ %26, %24 ], [ %30, %27 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_half_divider_round_rate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 3
  %5 = load i8, ptr %4, align 1
  %6 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 4
  %7 = load i8, ptr %6, align 2
  %8 = load i32, ptr %2, align 4
  %9 = icmp eq i32 %1, 0
  %10 = select i1 %9, i32 1, i32 %1
  %11 = zext i8 %5 to i32
  %12 = shl nsw i32 -1, %11
  %13 = xor i32 %12, -1
  %14 = tail call i32 @clk_hw_get_flags(ptr noundef %0) #5
  %15 = and i32 %14, 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %3
  %18 = load i32, ptr %2, align 4
  %19 = zext i32 %18 to i64
  %20 = shl nuw nsw i64 %19, 1
  %21 = zext i32 %10 to i64
  %22 = add nsw i64 %21, -1
  %23 = add nuw nsw i64 %20, %22
  %24 = icmp ult i64 %23, 4294967296
  br i1 %24, label %25, label %28, !prof !10

25:                                               ; preds = %17
  %26 = trunc i64 %23 to i32
  %27 = udiv i32 %26, %10
  br label %32

28:                                               ; preds = %17
  %29 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %10, i64 %23) #6, !srcloc !11
  %30 = extractvalue { i64, i64 } %29, 1
  %31 = trunc i64 %30 to i32
  br label %32

32:                                               ; preds = %28, %25
  %33 = phi i32 [ %27, %25 ], [ %31, %28 ]
  %34 = icmp ult i32 %33, 3
  %35 = add i32 %33, -3
  %36 = lshr i32 %35, 1
  %37 = select i1 %34, i32 0, i32 %36
  %38 = tail call i32 @llvm.umin.i32(i32 %37, i32 %13) #5
  br label %99

39:                                               ; preds = %3
  %40 = udiv i32 -1, %10
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 %13) #5
  %42 = zext i32 %10 to i64
  %43 = zext i32 %8 to i64
  %44 = shl nuw nsw i64 %43, 1
  %45 = and i8 %7, 16
  %46 = icmp eq i8 %45, 0
  br label %47

47:                                               ; preds = %87, %39
  %48 = phi i32 [ 0, %39 ], [ %90, %87 ]
  %49 = phi i32 [ 0, %39 ], [ %89, %87 ]
  %50 = phi i32 [ 0, %39 ], [ %88, %87 ]
  %51 = shl i32 %48, 1
  %52 = add i32 %51, 3
  %53 = zext i32 %52 to i64
  %54 = mul nuw i64 %53, %42
  %55 = icmp eq i64 %54, %44
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  store i32 %8, ptr %2, align 4
  br label %99

57:                                               ; preds = %47
  %58 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #5
  %59 = lshr i64 %54, 1
  %60 = trunc i64 %59 to i32
  %61 = tail call i32 @clk_hw_round_rate(ptr noundef %58, i32 noundef %60) #5
  %62 = zext i32 %61 to i64
  %63 = shl nuw nsw i64 %62, 1
  %64 = add nsw i64 %53, -1
  %65 = add nuw nsw i64 %63, %64
  %66 = icmp ult i64 %65, 4294967296
  br i1 %66, label %67, label %70, !prof !10

67:                                               ; preds = %57
  %68 = trunc i64 %65 to i32
  %69 = udiv i32 %68, %52
  br label %74

70:                                               ; preds = %57
  %71 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %52, i64 %65) #6, !srcloc !11
  %72 = extractvalue { i64, i64 } %71, 1
  %73 = trunc i64 %72 to i32
  br label %74

74:                                               ; preds = %70, %67
  %75 = phi i32 [ %69, %67 ], [ %73, %70 ]
  br i1 %46, label %82, label %76

76:                                               ; preds = %74
  %77 = sub i32 %10, %75
  %78 = tail call i32 @llvm.abs.i32(i32 %77, i1 false) #5
  %79 = sub i32 %10, %50
  %80 = tail call i32 @llvm.abs.i32(i32 %79, i1 false) #5
  %81 = icmp slt i32 %78, %80
  br i1 %81, label %86, label %87

82:                                               ; preds = %74
  %83 = icmp uge i32 %10, %75
  %84 = icmp ugt i32 %75, %50
  %85 = and i1 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82, %76
  store i32 %61, ptr %2, align 4
  br label %87

87:                                               ; preds = %86, %82, %76
  %88 = phi i32 [ %75, %86 ], [ %50, %82 ], [ %50, %76 ]
  %89 = phi i32 [ %48, %86 ], [ %49, %82 ], [ %49, %76 ]
  %90 = add i32 %48, 1
  %91 = icmp ugt i32 %90, %41
  br i1 %91, label %92, label %47

92:                                               ; preds = %87
  %93 = icmp eq i32 %89, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %92
  %95 = load i32, ptr %2, align 4
  br label %99

96:                                               ; preds = %92
  %97 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #5
  %98 = tail call i32 @clk_hw_round_rate(ptr noundef %97, i32 noundef 1) #5
  store i32 %98, ptr %2, align 4
  br label %99

99:                                               ; preds = %96, %94, %56, %32
  %100 = phi i32 [ %8, %56 ], [ %18, %32 ], [ %95, %94 ], [ %98, %96 ]
  %101 = phi i32 [ %48, %56 ], [ %38, %32 ], [ %89, %94 ], [ %13, %96 ]
  %102 = zext i32 %100 to i64
  %103 = shl nuw nsw i64 %102, 1
  %104 = shl i32 %101, 1
  %105 = add i32 %104, 3
  %106 = add i32 %104, 2
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %103, %107
  %109 = icmp ult i64 %108, 4294967296
  br i1 %109, label %110, label %113, !prof !10

110:                                              ; preds = %99
  %111 = trunc i64 %108 to i32
  %112 = udiv i32 %111, %105
  br label %117

113:                                              ; preds = %99
  %114 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %105, i64 %108) #6, !srcloc !11
  %115 = extractvalue { i64, i64 } %114, 1
  %116 = trunc i64 %115 to i32
  br label %117

117:                                              ; preds = %113, %110
  %118 = phi i32 [ %112, %110 ], [ %116, %113 ]
  ret i32 %118
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_half_divider_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = zext i32 %2 to i64
  %5 = shl nuw nsw i64 %4, 1
  %6 = zext i32 %1 to i64
  %7 = add nsw i64 %6, -1
  %8 = add nsw i64 %7, %5
  %9 = icmp ult i64 %8, 4294967296
  br i1 %9, label %10, label %13, !prof !10

10:                                               ; preds = %3
  %11 = trunc i64 %8 to i32
  %12 = udiv i32 %11, %1
  br label %17

13:                                               ; preds = %3
  %14 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %8) #6, !srcloc !11
  %15 = extractvalue { i64, i64 } %14, 1
  %16 = trunc i64 %15 to i32
  br label %17

17:                                               ; preds = %13, %10
  %18 = phi i32 [ %12, %10 ], [ %16, %13 ]
  %19 = add i32 %18, -3
  %20 = lshr i32 %19, 1
  %21 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 3
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = shl nsw i32 -1, %23
  %25 = xor i32 %24, -1
  %26 = tail call i32 @llvm.umin.i32(i32 %20, i32 %25)
  %27 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %17
  %31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %28) #5
  br label %32

32:                                               ; preds = %30, %17
  %33 = phi i32 [ %31, %30 ], [ 0, %17 ]
  %34 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 4
  %35 = load i8, ptr %34, align 2
  %36 = and i8 %35, 8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %32
  %39 = load i8, ptr %21, align 1
  %40 = zext i8 %39 to i32
  %41 = shl nsw i32 -1, %40
  %42 = xor i32 %41, -1
  %43 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 2
  %44 = load i8, ptr %43, align 4
  %45 = zext i8 %44 to i32
  %46 = add nuw nsw i32 %45, 16
  %47 = shl i32 %42, %46
  br label %62

48:                                               ; preds = %32
  %49 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %52 = load i8, ptr %21, align 1
  %53 = zext i8 %52 to i32
  %54 = shl nsw i32 -1, %53
  %55 = xor i32 %54, -1
  %56 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 2
  %57 = load i8, ptr %56, align 4
  %58 = zext i8 %57 to i32
  %59 = shl i32 %55, %58
  %60 = xor i32 %59, -1
  %61 = and i32 %51, %60
  br label %62

62:                                               ; preds = %48, %38
  %63 = phi i32 [ %58, %48 ], [ %45, %38 ]
  %64 = phi i32 [ %61, %48 ], [ %47, %38 ]
  %65 = shl i32 %26, %63
  %66 = or i32 %65, %64
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %67 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #5, !srcloc !14
  %69 = load ptr, ptr %27, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %62
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %69, i32 noundef %33) #5
  br label %72

72:                                               ; preds = %71, %62
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_flags(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind allocsize(2) }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

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
!8 = !{i64 2846342}
!9 = !{i64 2150578776}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148657012, i64 2148657292, i64 2148657626, i64 2148657960}
!12 = !{i64 2150616334}
!13 = !{i64 2150616550}
!14 = !{i64 2845924}
