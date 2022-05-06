; ModuleID = '/llk/IR/drivers/clk/at91/clk-pll.c_pt.bc'
source_filename = "../drivers/clk/at91/clk-pll.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_pll_layout = type { i32, i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_pll = type { %struct.clk_hw, ptr, i8, i8, i8, i16, ptr, ptr, %struct.at91_clk_pms }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.at91_clk_pms = type { i32, i32, i32, i32 }
%struct.clk_pll_characteristics = type { %struct.clk_range, i32, ptr, ptr, ptr, i8 }
%struct.clk_range = type { i32, i32 }

@pll_ops = internal constant %struct.clk_ops { ptr @clk_pll_prepare, ptr @clk_pll_unprepare, ptr @clk_pll_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_pll_save_context, ptr @clk_pll_restore_context, ptr @clk_pll_recalc_rate, ptr @clk_pll_round_rate, ptr null, ptr null, ptr null, ptr @clk_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@at91rm9200_pll_layout = dso_local local_unnamed_addr constant %struct.clk_pll_layout { i32 134217727, i32 2047, i32 0, i32 0, i32 0, i8 16, i8 0, i8 0, i8 0 }, align 4
@at91sam9g45_pll_layout = dso_local local_unnamed_addr constant %struct.clk_pll_layout { i32 16777215, i32 255, i32 0, i32 0, i32 0, i8 16, i8 0, i8 0, i8 0 }, align 4
@at91sam9g20_pllb_layout = dso_local local_unnamed_addr constant %struct.clk_pll_layout { i32 4194303, i32 63, i32 0, i32 0, i32 0, i8 16, i8 0, i8 0, i8 0 }, align 4
@sama5d3_pll_layout = dso_local local_unnamed_addr constant %struct.clk_pll_layout { i32 33554431, i32 127, i32 0, i32 0, i32 0, i8 18, i8 0, i8 0, i8 0 }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [49 x i8] c"\014PLLAR was not configured properly by firmware\0A\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @at91_clk_register_pll(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 section ".init.text" {
  %7 = alloca ptr, align 4
  %8 = alloca %struct.clk_init_data, align 4
  %9 = alloca i32, align 4
  store ptr %2, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #10
  %10 = getelementptr inbounds i8, ptr %8, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %10, i8 0, i32 12, i1 false), !annotation !8
  %11 = zext i8 %3 to i32
  %12 = shl nuw nsw i32 %11, 2
  %13 = add nuw nsw i32 %12, 40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #10
  store i32 0, ptr %9, align 4, !annotation !8
  %14 = icmp ugt i8 %3, 1
  br i1 %14, label %46, label %15

15:                                               ; preds = %6
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 48) #11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %46, label %19

19:                                               ; preds = %15
  store ptr %1, ptr %8, align 4
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 1
  store ptr @pll_ops, ptr %20, align 4
  %21 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 2
  store ptr %7, ptr %21, align 4
  %22 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 5
  store i8 1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 6
  store i32 1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.clk_pll, ptr %17, i32 0, i32 2
  store i8 %3, ptr %24, align 8
  %25 = getelementptr inbounds %struct.clk_hw, ptr %17, i32 0, i32 2
  store ptr %8, ptr %25, align 8
  %26 = getelementptr inbounds %struct.clk_pll, ptr %17, i32 0, i32 6
  store ptr %4, ptr %26, align 8
  %27 = getelementptr inbounds %struct.clk_pll, ptr %17, i32 0, i32 7
  store ptr %5, ptr %27, align 4
  %28 = getelementptr inbounds %struct.clk_pll, ptr %17, i32 0, i32 1
  store ptr %0, ptr %28, align 4
  %29 = call i32 @regmap_read(ptr noundef %0, i32 noundef %13, ptr noundef nonnull %9) #10
  %30 = load i32, ptr %9, align 4
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.clk_pll, ptr %17, i32 0, i32 3
  store i8 %31, ptr %32, align 1
  %33 = getelementptr inbounds %struct.clk_pll_layout, ptr %4, i32 0, i32 5
  %34 = load i8, ptr %33, align 4
  %35 = zext i8 %34 to i32
  %36 = lshr i32 %30, %35
  %37 = getelementptr inbounds %struct.clk_pll_layout, ptr %4, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %36, %38
  %40 = trunc i32 %39 to i16
  %41 = getelementptr inbounds %struct.clk_pll, ptr %17, i32 0, i32 5
  store i16 %40, ptr %41, align 4
  %42 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %17) #10
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %19
  call void @kfree(ptr noundef nonnull %17) #10
  %45 = inttoptr i32 %42 to ptr
  br label %46

46:                                               ; preds = %44, %19, %15, %6
  %47 = phi ptr [ %45, %44 ], [ %17, %19 ], [ inttoptr (i32 -22 to ptr), %6 ], [ inttoptr (i32 -12 to ptr), %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #10
  ret ptr %47
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pll_prepare(ptr nocapture noundef readonly %0) #5 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 2
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  %14 = shl i32 2, %13
  %15 = shl nuw nsw i32 %13, 2
  %16 = add nuw nsw i32 %15, 40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !8
  %17 = call i32 @regmap_read(ptr noundef %6, i32 noundef %16, ptr noundef nonnull %3) #10
  %18 = load i32, ptr %3, align 4
  %19 = getelementptr inbounds %struct.clk_pll_layout, ptr %8, i32 0, i32 5
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i32
  %22 = lshr i32 %18, %21
  %23 = getelementptr inbounds %struct.clk_pll_layout, ptr %8, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %22, %24
  %26 = call i32 @regmap_read(ptr noundef %6, i32 noundef 104, ptr noundef nonnull %4) #10
  %27 = load i32, ptr %4, align 4
  %28 = and i32 %27, %14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 3
  %32 = load i8, ptr %31, align 1
  %33 = trunc i32 %18 to i8
  %34 = icmp eq i8 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 5
  %37 = load i16, ptr %36, align 4
  %38 = trunc i32 %25 to i16
  %39 = icmp eq i16 %37, %38
  br i1 %39, label %100, label %40

40:                                               ; preds = %35, %30, %1
  %41 = getelementptr inbounds %struct.clk_pll_characteristics, ptr %10, i32 0, i32 4
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 4
  %46 = load i8, ptr %45, align 2
  %47 = zext i8 %46 to i32
  %48 = getelementptr i8, ptr %42, i32 %47
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = shl nuw nsw i32 %50, 14
  %52 = or i32 %51, 16128
  br label %53

53:                                               ; preds = %44, %40
  %54 = phi i32 [ %52, %44 ], [ 16128, %40 ]
  %55 = getelementptr inbounds %struct.clk_pll_characteristics, ptr %10, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %69, label %58

58:                                               ; preds = %53
  %59 = shl nuw nsw i32 %13, 4
  %60 = shl i32 65535, %59
  %61 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 4
  %62 = load i8, ptr %61, align 2
  %63 = zext i8 %62 to i32
  %64 = getelementptr i16, ptr %56, i32 %63
  %65 = load i16, ptr %64, align 2
  %66 = zext i16 %65 to i32
  %67 = shl i32 %66, %59
  %68 = call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 128, i32 noundef %60, i32 noundef %67, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %69

69:                                               ; preds = %58, %53
  %70 = load i32, ptr %8, align 4
  %71 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 3
  %72 = load i8, ptr %71, align 1
  %73 = zext i8 %72 to i32
  %74 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 5
  %75 = load i16, ptr %74, align 4
  %76 = zext i16 %75 to i32
  %77 = load i32, ptr %23, align 4
  %78 = and i32 %77, %76
  %79 = load i8, ptr %19, align 4
  %80 = zext i8 %79 to i32
  %81 = shl i32 %78, %80
  %82 = or i32 %54, %73
  %83 = or i32 %82, %81
  %84 = call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %16, i32 noundef %70, i32 noundef %83, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %85 = load i8, ptr %11, align 4
  %86 = zext i8 %85 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !8
  %87 = call i32 @regmap_read(ptr noundef %6, i32 noundef 104, ptr noundef nonnull %2) #10
  %88 = load i32, ptr %2, align 4
  %89 = shl i32 2, %86
  %90 = and i32 %88, %89
  %91 = icmp eq i32 %90, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  br i1 %91, label %92, label %100

92:                                               ; preds = %92, %69
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !10
  %93 = load i8, ptr %11, align 4
  %94 = zext i8 %93 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !8
  %95 = call i32 @regmap_read(ptr noundef %6, i32 noundef 104, ptr noundef nonnull %2) #10
  %96 = load i32, ptr %2, align 4
  %97 = shl i32 2, %94
  %98 = and i32 %96, %97
  %99 = icmp eq i32 %98, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  br i1 %99, label %92, label %100

100:                                              ; preds = %92, %69, %35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_pll_unprepare(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 2
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 2
  %11 = add nuw nsw i32 %10, 40
  %12 = xor i32 %4, -1
  %13 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %11, i32 noundef %4, i32 noundef %12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pll_is_prepared(ptr nocapture noundef readonly %0) #5 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 2
  %6 = load i8, ptr %5, align 4
  %7 = zext i8 %6 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !8
  %8 = call i32 @regmap_read(ptr noundef %4, i32 noundef 104, ptr noundef nonnull %2) #10
  %9 = load i32, ptr %2, align 4
  %10 = shl i32 2, %7
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  %13 = zext i1 %12 to i32
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pll_save_context(ptr noundef %0) #5 {
  %2 = alloca i32, align 4
  %3 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #10
  %4 = tail call i32 @clk_hw_get_rate(ptr noundef %3) #10
  %5 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 8, i32 1
  store i32 %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 3
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 5
  %11 = load i16, ptr %10, align 4
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = zext i8 %7 to i32
  %15 = udiv i32 %4, %14
  %16 = zext i16 %11 to i32
  %17 = add nuw nsw i32 %16, 1
  %18 = mul i32 %15, %17
  br label %19

19:                                               ; preds = %13, %9, %1
  %20 = phi i32 [ %18, %13 ], [ 0, %9 ], [ 0, %1 ]
  %21 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 8
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !8
  %24 = call i32 @regmap_read(ptr noundef %23, i32 noundef 104, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_pll_restore_context(ptr nocapture noundef readonly %0) #5 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.clk_pll_characteristics, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 4
  %11 = load i8, ptr %10, align 2
  %12 = zext i8 %11 to i32
  %13 = getelementptr i8, ptr %7, i32 %12
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  br label %16

16:                                               ; preds = %9, %1
  %17 = phi i32 [ %15, %9 ], [ 0, %1 ]
  %18 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 2
  %21 = load i8, ptr %20, align 4
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 2
  %24 = add nuw nsw i32 %23, 40
  %25 = call i32 @regmap_read(ptr noundef %19, i32 noundef %24, ptr noundef nonnull %3) #10
  %26 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 8
  %27 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 8, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = load i32, ptr %3, align 4
  %30 = and i32 %29, 255
  %31 = udiv i32 %28, %30
  %32 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 6
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.clk_pll_layout, ptr %33, i32 0, i32 5
  %35 = load i8, ptr %34, align 4
  %36 = zext i8 %35 to i32
  %37 = lshr i32 %29, %36
  %38 = getelementptr inbounds %struct.clk_pll_layout, ptr %33, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %37, %39
  %41 = add i32 %40, 1
  %42 = mul i32 %41, %31
  %43 = load i32, ptr %26, align 4
  %44 = icmp eq i32 %43, %42
  br i1 %44, label %45, label %53

45:                                               ; preds = %16
  %46 = lshr i32 %29, 14
  %47 = and i32 %46, %17
  %48 = load ptr, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !8
  %49 = call i32 @regmap_read(ptr noundef %48, i32 noundef 104, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  %50 = icmp eq i32 %17, 0
  %51 = icmp eq i32 %47, %17
  %52 = select i1 %50, i1 true, i1 %51
  br i1 %52, label %55, label %53

53:                                               ; preds = %45, %16
  %54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %55

55:                                               ; preds = %53, %45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @clk_pll_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 3
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 5
  %8 = load i16, ptr %7, align 4
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = zext i8 %4 to i32
  %12 = udiv i32 %1, %11
  %13 = zext i16 %8 to i32
  %14 = add nuw nsw i32 %13, 1
  %15 = mul i32 %12, %14
  br label %16

16:                                               ; preds = %10, %6, %2
  %17 = phi i32 [ %15, %10 ], [ 0, %6 ], [ 0, %2 ]
  ret i32 %17
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pll_round_rate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #7 {
  %4 = load i32, ptr %2, align 4
  %5 = tail call fastcc i32 @clk_pll_get_best_div_mul(ptr noundef %0, i32 noundef %1, i32 noundef %4, ptr noundef null, ptr noundef null, ptr noundef null)
  ret i32 %5
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pll_set_rate(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #7 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = call fastcc i32 @clk_pll_get_best_div_mul(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  %10 = load i32, ptr %6, align 4
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 4
  store i8 %11, ptr %12, align 2
  %13 = load i32, ptr %4, align 4
  %14 = trunc i32 %13 to i8
  %15 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 3
  store i8 %14, ptr %15, align 1
  %16 = load i32, ptr %5, align 4
  %17 = trunc i32 %16 to i16
  %18 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 5
  store i16 %17, ptr %18, align 4
  br label %19

19:                                               ; preds = %9, %3
  %20 = phi i32 [ 0, %9 ], [ %7, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_pll_get_best_div_mul(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly %3, ptr noundef writeonly %4, ptr noundef writeonly %5) unnamed_addr #7 {
  %7 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, %2
  br i1 %12, label %96, label %13

13:                                               ; preds = %6
  %14 = shl i32 %2, 1
  %15 = udiv i32 %14, %1
  %16 = icmp ult i32 %14, %1
  %17 = select i1 %16, i32 1, i32 %15
  %18 = getelementptr inbounds %struct.clk_range, ptr %10, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %19, %2
  br i1 %20, label %21, label %28

21:                                               ; preds = %13
  %22 = add i32 %2, -1
  %23 = add i32 %22, %19
  %24 = udiv i32 %23, %19
  %25 = icmp ugt i32 %24, 255
  br i1 %25, label %96, label %26

26:                                               ; preds = %21
  %27 = tail call i32 @llvm.umax.i32(i32 %24, i32 %17)
  br label %28

28:                                               ; preds = %26, %13
  %29 = phi i32 [ %17, %13 ], [ %27, %26 ]
  %30 = getelementptr inbounds %struct.clk_pll_layout, ptr %8, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 1
  %33 = mul i32 %32, %2
  %34 = add i32 %1, -1
  %35 = add i32 %34, %33
  %36 = udiv i32 %35, %1
  %37 = tail call i32 @llvm.umin.i32(i32 %36, i32 255)
  %38 = icmp ugt i32 %29, %37
  br i1 %38, label %96, label %39

39:                                               ; preds = %56, %28
  %40 = phi i32 [ %60, %56 ], [ 0, %28 ]
  %41 = phi i32 [ %59, %56 ], [ 0, %28 ]
  %42 = phi i32 [ %58, %56 ], [ -34, %28 ]
  %43 = phi i32 [ %62, %56 ], [ %29, %28 ]
  %44 = phi i32 [ %57, %56 ], [ -1, %28 ]
  %45 = udiv i32 %2, %43
  %46 = lshr i32 %45, 1
  %47 = add i32 %46, %1
  %48 = udiv i32 %47, %45
  %49 = mul i32 %48, %45
  %50 = icmp ugt i32 %49, %1
  %51 = sub i32 %49, %1
  %52 = sub i32 %1, %49
  %53 = select i1 %50, i32 %51, i32 %52
  %54 = icmp ult i32 %53, %44
  br i1 %54, label %55, label %56

55:                                               ; preds = %39
  br label %56

56:                                               ; preds = %55, %39
  %57 = phi i32 [ %53, %55 ], [ %44, %39 ]
  %58 = phi i32 [ %49, %55 ], [ %42, %39 ]
  %59 = phi i32 [ %43, %55 ], [ %41, %39 ]
  %60 = phi i32 [ %48, %55 ], [ %40, %39 ]
  %61 = icmp eq i32 %53, 0
  %62 = add nuw nsw i32 %43, 1
  %63 = icmp eq i32 %43, %37
  %64 = select i1 %61, i1 true, i1 %63
  br i1 %64, label %65, label %39

65:                                               ; preds = %56
  %66 = icmp slt i32 %58, 0
  br i1 %66, label %96, label %67

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.clk_pll_characteristics, ptr %10, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %96

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.clk_pll_characteristics, ptr %10, i32 0, i32 2
  %73 = load ptr, ptr %72, align 4
  br label %74

74:                                               ; preds = %83, %71
  %75 = phi i32 [ 0, %71 ], [ %84, %83 ]
  %76 = getelementptr %struct.clk_range, ptr %73, i32 %75
  %77 = load i32, ptr %76, align 4
  %78 = icmp ult i32 %58, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %74
  %80 = getelementptr %struct.clk_range, ptr %73, i32 %75, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = icmp ugt i32 %58, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79, %74
  %84 = add nuw nsw i32 %75, 1
  %85 = icmp eq i32 %84, %69
  br i1 %85, label %96, label %74

86:                                               ; preds = %79
  %87 = icmp eq ptr %3, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %86
  store i32 %59, ptr %3, align 4
  br label %89

89:                                               ; preds = %88, %86
  %90 = icmp eq ptr %4, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %89
  %92 = add i32 %60, -1
  store i32 %92, ptr %4, align 4
  br label %93

93:                                               ; preds = %91, %89
  %94 = icmp eq ptr %5, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %93
  store i32 %75, ptr %5, align 4
  br label %96

96:                                               ; preds = %95, %93, %83, %67, %65, %28, %21, %6
  %97 = phi i32 [ -34, %6 ], [ -34, %21 ], [ %58, %65 ], [ %58, %95 ], [ %58, %93 ], [ -34, %67 ], [ -34, %28 ], [ -34, %83 ]
  ret i32 %97
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

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
!9 = !{i64 2151208063}
!10 = !{i64 2151207905}
