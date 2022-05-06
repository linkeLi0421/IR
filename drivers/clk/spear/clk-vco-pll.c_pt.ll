; ModuleID = '/llk/IR/drivers/clk/spear/clk-vco-pll.c_pt.bc'
source_filename = "../drivers/clk/spear/clk-vco-pll.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_vco = type { %struct.clk_hw, ptr, ptr, ptr, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_pll = type { %struct.clk_hw, ptr, [1 x ptr], ptr }
%struct.pll_rate_tbl = type { i8, i16, i8, i8 }

@.str = private unnamed_addr constant [40 x i8] c"\013clk-vco-pll: Invalid arguments passed\00", align 1
@clk_vco_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_vco_recalc_rate, ptr @clk_vco_round_rate, ptr null, ptr null, ptr null, ptr @clk_vco_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@clk_pll_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_pll_recalc_rate, ptr @clk_pll_round_rate, ptr null, ptr null, ptr null, ptr @clk_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"\013clk-vco-pll: Failed to register vco pll clock\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"drivers/clk/spear/clk-vco-pll.c\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"%s: denominator can't be zero\0A\00", align 1
@__func__.clk_vco_recalc_rate = private unnamed_addr constant [20 x i8] c"clk_vco_recalc_rate\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"\013clk-vco-pll: %s: prate is must for pll clk\0A\00", align 1
@__func__.clk_pll_round_rate_index = private unnamed_addr constant [25 x i8] c"clk_pll_round_rate_index\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @clk_register_vco_pll(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i8 noundef zeroext %8, ptr noundef %9, ptr noundef writeonly %10, ptr noundef writeonly %11) local_unnamed_addr #0 {
  %13 = alloca ptr, align 4
  %14 = alloca ptr, align 4
  %15 = alloca ptr, align 4
  %16 = alloca %struct.clk_init_data, align 4
  %17 = alloca %struct.clk_init_data, align 4
  store ptr %0, ptr %13, align 4
  store ptr %2, ptr %14, align 4
  store ptr %3, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %16) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %16, i8 0, i32 28, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %17) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %17, i8 0, i32 28, i1 false), !annotation !8
  %18 = icmp ne ptr %0, null
  %19 = icmp ne ptr %1, null
  %20 = and i1 %18, %19
  %21 = icmp ne ptr %3, null
  %22 = and i1 %20, %21
  %23 = icmp ne ptr %5, null
  %24 = and i1 %22, %23
  %25 = icmp ne ptr %6, null
  %26 = and i1 %24, %25
  %27 = icmp ne ptr %7, null
  %28 = and i1 %26, %27
  %29 = icmp ne i8 %8, 0
  %30 = and i1 %28, %29
  br i1 %30, label %33, label %31

31:                                               ; preds = %12
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %84

33:                                               ; preds = %12
  %34 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %35 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 32) #9
  %36 = icmp eq ptr %35, null
  br i1 %36, label %84, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %39 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3520, i32 noundef 24) #9
  %40 = icmp eq ptr %39, null
  br i1 %40, label %82, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.clk_vco, ptr %35, i32 0, i32 1
  store ptr %5, ptr %42, align 4
  %43 = getelementptr inbounds %struct.clk_vco, ptr %35, i32 0, i32 2
  store ptr %6, ptr %43, align 8
  %44 = getelementptr inbounds %struct.clk_vco, ptr %35, i32 0, i32 3
  store ptr %7, ptr %44, align 4
  %45 = getelementptr inbounds %struct.clk_vco, ptr %35, i32 0, i32 4
  store i8 %8, ptr %45, align 8
  %46 = getelementptr inbounds %struct.clk_vco, ptr %35, i32 0, i32 5
  store ptr %9, ptr %46, align 4
  %47 = getelementptr inbounds %struct.clk_hw, ptr %35, i32 0, i32 2
  store ptr %16, ptr %47, align 8
  %48 = getelementptr inbounds %struct.clk_pll, ptr %39, i32 0, i32 1
  store ptr %35, ptr %48, align 4
  %49 = getelementptr inbounds %struct.clk_hw, ptr %39, i32 0, i32 2
  store ptr %17, ptr %49, align 8
  %50 = icmp eq ptr %2, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %41
  %52 = call ptr @clk_register_gate(ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 0, ptr noundef nonnull %5, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef %9) #7
  %53 = icmp eq ptr %52, null
  %54 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  %55 = or i1 %53, %54
  br i1 %55, label %81, label %56

56:                                               ; preds = %51
  %57 = icmp eq ptr %11, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %56
  store ptr %52, ptr %11, align 4
  br label %59

59:                                               ; preds = %58, %56, %41
  %60 = phi ptr [ %14, %58 ], [ %14, %56 ], [ %15, %41 ]
  store ptr %0, ptr %16, align 4
  %61 = getelementptr inbounds %struct.clk_init_data, ptr %16, i32 0, i32 1
  store ptr @clk_vco_ops, ptr %61, align 4
  %62 = getelementptr inbounds %struct.clk_init_data, ptr %16, i32 0, i32 6
  store i32 %4, ptr %62, align 4
  %63 = getelementptr inbounds %struct.clk_init_data, ptr %16, i32 0, i32 2
  store ptr %60, ptr %63, align 4
  %64 = getelementptr inbounds %struct.clk_init_data, ptr %16, i32 0, i32 5
  store i8 1, ptr %64, align 4
  store ptr %1, ptr %17, align 4
  %65 = getelementptr inbounds %struct.clk_init_data, ptr %17, i32 0, i32 1
  store ptr @clk_pll_ops, ptr %65, align 4
  %66 = getelementptr inbounds %struct.clk_init_data, ptr %17, i32 0, i32 6
  store i32 4, ptr %66, align 4
  %67 = getelementptr inbounds %struct.clk_init_data, ptr %17, i32 0, i32 2
  store ptr %13, ptr %67, align 4
  %68 = getelementptr inbounds %struct.clk_init_data, ptr %17, i32 0, i32 5
  store i8 1, ptr %68, align 4
  %69 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %35) #7
  %70 = icmp eq ptr %69, null
  %71 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  %72 = or i1 %70, %71
  br i1 %72, label %81, label %73

73:                                               ; preds = %59
  %74 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %39) #7
  %75 = icmp eq ptr %74, null
  %76 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  %77 = or i1 %75, %76
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = icmp eq ptr %10, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %78
  store ptr %74, ptr %10, align 4
  br label %84

81:                                               ; preds = %73, %59, %51
  call void @kfree(ptr noundef nonnull %39) #7
  br label %82

82:                                               ; preds = %81, %37
  call void @kfree(ptr noundef nonnull %35) #7
  %83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %84

84:                                               ; preds = %82, %80, %78, %33, %31
  %85 = phi ptr [ inttoptr (i32 -12 to ptr), %82 ], [ inttoptr (i32 -22 to ptr), %31 ], [ %69, %80 ], [ %69, %78 ], [ inttoptr (i32 -12 to ptr), %33 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %17) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %16) #7
  ret ptr %85
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_vco_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.clk_vco, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %4) #7
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ %7, %6 ], [ 0, %2 ]
  %10 = getelementptr inbounds %struct.clk_vco, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !9
  %13 = getelementptr inbounds %struct.clk_vco, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !9
  %16 = load ptr, ptr %3, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %16, i32 noundef %9) #7
  br label %19

19:                                               ; preds = %18, %8
  %20 = and i32 %15, 255
  %21 = and i32 %12, 24
  %22 = icmp eq i32 %21, 0
  %23 = shl nuw nsw i32 %20, 8
  %24 = select i1 %22, i32 %20, i32 %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 222, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.clk_vco_recalc_rate) #7
  br label %37

27:                                               ; preds = %19
  %28 = lshr i32 %15, 23
  %29 = and i32 %28, 510
  %30 = lshr i32 %15, 15
  %31 = and i32 %30, 131070
  %32 = select i1 %22, i32 %29, i32 %31
  %33 = udiv i32 %1, 10000
  %34 = mul i32 %32, %33
  %35 = udiv i32 %34, %24
  %36 = mul i32 %35, 10000
  br label %37

37:                                               ; preds = %27, %26
  %38 = phi i32 [ %36, %27 ], [ 0, %26 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_vco_round_rate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = load i32, ptr %2, align 4
  %6 = getelementptr inbounds %struct.clk_vco, ptr %0, i32 0, i32 4
  %7 = load i8, ptr %6, align 4
  %8 = call i32 @clk_round_rate_index(ptr noundef %0, i32 noundef %1, i32 noundef %5, ptr noundef nonnull @vco_calc_rate, i8 noundef zeroext %7, ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_vco_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.clk_vco, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.clk_vco, ptr %0, i32 0, i32 4
  %8 = load i8, ptr %7, align 4
  %9 = call i32 @clk_round_rate_index(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @vco_calc_rate, i8 noundef zeroext %8, ptr noundef nonnull %4) #7
  %10 = getelementptr inbounds %struct.clk_vco, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %11) #7
  br label %15

15:                                               ; preds = %13, %3
  %16 = phi i32 [ %14, %13 ], [ 0, %3 ]
  %17 = getelementptr inbounds %struct.clk_vco, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #7, !srcloc !9
  %20 = and i32 %19, -25
  %21 = load i32, ptr %4, align 4
  %22 = getelementptr %struct.pll_rate_tbl, ptr %6, i32 %21
  %23 = load i8, ptr %22, align 2
  %24 = shl i8 %23, 3
  %25 = and i8 %24, 24
  %26 = zext i8 %25 to i32
  %27 = or i32 %20, %26
  %28 = load ptr, ptr %17, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %27) #7, !srcloc !10
  %29 = getelementptr inbounds %struct.clk_vco, ptr %0, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #7, !srcloc !9
  %32 = and i32 %31, 65280
  %33 = load i32, ptr %4, align 4
  %34 = getelementptr %struct.pll_rate_tbl, ptr %6, i32 %33
  %35 = getelementptr %struct.pll_rate_tbl, ptr %6, i32 %33, i32 2
  %36 = load i8, ptr %35, align 2
  %37 = zext i8 %36 to i32
  %38 = or i32 %32, %37
  %39 = load i8, ptr %34, align 2
  %40 = icmp eq i8 %39, 0
  %41 = getelementptr %struct.pll_rate_tbl, ptr %6, i32 %33, i32 1
  %42 = load i16, ptr %41, align 2
  %43 = zext i16 %42 to i32
  %44 = select i1 %40, i32 24, i32 16
  %45 = shl i32 %43, %44
  %46 = or i32 %38, %45
  %47 = load ptr, ptr %29, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %46) #7, !srcloc !10
  %48 = load ptr, ptr %10, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %15
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %48, i32 noundef %16) #7
  br label %51

51:                                               ; preds = %50, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate_index(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @vco_calc_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #6 {
  %4 = getelementptr inbounds %struct.clk_vco, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.pll_rate_tbl, ptr %5, i32 %2
  %7 = load i8, ptr %6, align 2
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, i32 1, i32 256
  %10 = shl i32 %1, 1
  %11 = udiv i32 %10, 10000
  %12 = getelementptr %struct.pll_rate_tbl, ptr %5, i32 %2, i32 1
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  %15 = mul i32 %11, %14
  %16 = getelementptr %struct.pll_rate_tbl, ptr %5, i32 %2, i32 2
  %17 = load i8, ptr %16, align 2
  %18 = zext i8 %17 to i32
  %19 = mul nuw nsw i32 %9, %18
  %20 = udiv i32 %15, %19
  %21 = mul i32 %20, 10000
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pll_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.clk_vco, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %6) #7
  %10 = load ptr, ptr %3, align 4
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi ptr [ %10, %8 ], [ %4, %2 ]
  %13 = phi i32 [ %9, %8 ], [ 0, %2 ]
  %14 = getelementptr inbounds %struct.clk_vco, ptr %12, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !9
  %17 = load ptr, ptr %3, align 4
  %18 = getelementptr inbounds %struct.clk_vco, ptr %17, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %19, i32 noundef %13) #7
  br label %22

22:                                               ; preds = %21, %11
  %23 = lshr i32 %16, 8
  %24 = and i32 %23, 7
  %25 = lshr i32 %1, %24
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pll_round_rate(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #7
  %5 = tail call ptr @clk_hw_get_parent(ptr noundef %4) #7
  %6 = tail call i32 @clk_hw_get_rate(ptr noundef %5) #7
  %7 = icmp eq ptr %2, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.clk_vco, ptr %10, i32 0, i32 4
  %12 = load i8, ptr %11, align 4
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %57, label %14

14:                                               ; preds = %8
  %15 = shl i32 %6, 1
  %16 = udiv i32 %15, 10000
  %17 = load i32, ptr %2, align 4
  br label %20

18:                                               ; preds = %3
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.clk_pll_round_rate_index) #8
  br label %57

20:                                               ; preds = %50, %14
  %21 = phi i32 [ %17, %14 ], [ %45, %50 ]
  %22 = phi i32 [ 0, %14 ], [ %51, %50 ]
  %23 = phi ptr [ %10, %14 ], [ %52, %50 ]
  %24 = phi i32 [ 0, %14 ], [ %44, %50 ]
  %25 = getelementptr inbounds %struct.clk_vco, ptr %23, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr %struct.pll_rate_tbl, ptr %26, i32 %22
  %28 = load i8, ptr %27, align 2
  %29 = icmp eq i8 %28, 0
  %30 = select i1 %29, i32 1, i32 256
  %31 = getelementptr %struct.pll_rate_tbl, ptr %26, i32 %22, i32 1
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = mul i32 %16, %33
  %35 = getelementptr %struct.pll_rate_tbl, ptr %26, i32 %22, i32 2
  %36 = load i8, ptr %35, align 2
  %37 = zext i8 %36 to i32
  %38 = mul nuw nsw i32 %30, %37
  %39 = udiv i32 %34, %38
  %40 = getelementptr %struct.pll_rate_tbl, ptr %26, i32 %22, i32 3
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = lshr i32 %39, %42
  %44 = mul i32 %43, 10000
  %45 = mul i32 %39, 10000
  store i32 %45, ptr %2, align 4
  %46 = icmp ugt i32 %44, %1
  br i1 %46, label %47, label %50

47:                                               ; preds = %20
  %48 = icmp eq i32 %22, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %47
  store i32 %21, ptr %2, align 4
  br label %57

50:                                               ; preds = %20
  %51 = add nuw nsw i32 %22, 1
  %52 = load ptr, ptr %9, align 4
  %53 = getelementptr inbounds %struct.clk_vco, ptr %52, i32 0, i32 4
  %54 = load i8, ptr %53, align 4
  %55 = zext i8 %54 to i32
  %56 = icmp ult i32 %51, %55
  br i1 %56, label %20, label %57

57:                                               ; preds = %50, %49, %47, %18, %8
  %58 = phi i32 [ -22, %18 ], [ %44, %47 ], [ %24, %49 ], [ 0, %8 ], [ %44, %50 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pll_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.clk_vco, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #7
  %9 = tail call ptr @clk_hw_get_parent(ptr noundef %8) #7
  %10 = tail call i32 @clk_hw_get_rate(ptr noundef %9) #7
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.clk_pll_round_rate_index) #8
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.clk_vco, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %14) #7
  %18 = load ptr, ptr %4, align 4
  br label %19

19:                                               ; preds = %16, %3
  %20 = phi ptr [ %18, %16 ], [ %12, %3 ]
  %21 = phi i32 [ %17, %16 ], [ 0, %3 ]
  %22 = getelementptr inbounds %struct.clk_vco, ptr %20, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #7, !srcloc !9
  %25 = and i32 %24, -1793
  %26 = getelementptr %struct.pll_rate_tbl, ptr %7, i32 0, i32 3
  %27 = load i8, ptr %26, align 1
  %28 = and i8 %27, 7
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 8
  %31 = or i32 %30, %25
  %32 = load ptr, ptr %4, align 4
  %33 = getelementptr inbounds %struct.clk_vco, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %31) #7, !srcloc !10
  %35 = load ptr, ptr %4, align 4
  %36 = getelementptr inbounds %struct.clk_vco, ptr %35, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %37, i32 noundef %21) #7
  br label %40

40:                                               ; preds = %39, %19
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

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
!9 = !{i64 2995318}
!10 = !{i64 2994900}
