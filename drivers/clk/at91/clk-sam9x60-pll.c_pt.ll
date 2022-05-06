; ModuleID = '/llk/IR/drivers/clk/at91/clk-sam9x60-pll.c_pt.bc'
source_filename = "../drivers/clk/at91/clk-sam9x60-pll.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.sam9x60_pll_core = type { ptr, ptr, ptr, ptr, %struct.clk_hw, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.sam9x60_frac = type { %struct.sam9x60_pll_core, %struct.at91_clk_pms, i32, i16 }
%struct.at91_clk_pms = type { i32, i32, i32, i32 }
%struct.sam9x60_div = type { %struct.sam9x60_pll_core, %struct.at91_clk_pms, i8, i8 }
%struct.clk_pll_characteristics = type { %struct.clk_range, i32, ptr, ptr, ptr, i8 }
%struct.clk_range = type { i32, i32 }
%struct.clk_pll_layout = type { i32, i32, i32, i32, i32, i8, i8, i8, i8 }

@sam9x60_frac_pll_ops = internal constant %struct.clk_ops { ptr @sam9x60_frac_pll_prepare, ptr @sam9x60_frac_pll_unprepare, ptr @sam9x60_frac_pll_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sam9x60_frac_pll_save_context, ptr @sam9x60_frac_pll_restore_context, ptr @sam9x60_frac_pll_recalc_rate, ptr @sam9x60_frac_pll_round_rate, ptr null, ptr null, ptr null, ptr @sam9x60_frac_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sam9x60_frac_pll_ops_chg = internal constant %struct.clk_ops { ptr @sam9x60_frac_pll_prepare, ptr @sam9x60_frac_pll_unprepare, ptr @sam9x60_frac_pll_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sam9x60_frac_pll_save_context, ptr @sam9x60_frac_pll_restore_context, ptr @sam9x60_frac_pll_recalc_rate, ptr @sam9x60_frac_pll_round_rate, ptr null, ptr null, ptr null, ptr @sam9x60_frac_pll_set_rate_chg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@notifier_div = internal unnamed_addr global ptr null, align 4
@sam9x60_div_pll_ops = internal constant %struct.clk_ops { ptr @sam9x60_div_pll_prepare, ptr @sam9x60_div_pll_unprepare, ptr @sam9x60_div_pll_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sam9x60_div_pll_save_context, ptr @sam9x60_div_pll_restore_context, ptr @sam9x60_div_pll_recalc_rate, ptr @sam9x60_div_pll_round_rate, ptr null, ptr null, ptr null, ptr @sam9x60_div_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sam9x60_div_pll_ops_chg = internal constant %struct.clk_ops { ptr @sam9x60_div_pll_prepare, ptr @sam9x60_div_pll_unprepare, ptr @sam9x60_div_pll_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sam9x60_div_pll_save_context, ptr @sam9x60_div_pll_restore_context, ptr @sam9x60_div_pll_recalc_rate, ptr @sam9x60_div_pll_round_rate, ptr null, ptr null, ptr null, ptr @sam9x60_div_pll_set_rate_chg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sam9x60_div_pll_notifier = internal global %struct.notifier_block { ptr @sam9x60_div_pll_notifier_fn, ptr null, i32 0 }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @sam9x60_clk_register_frac_pll(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, ptr noundef %6, ptr noundef %7, i32 noundef %8) local_unnamed_addr #0 section ".init.text" {
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 4
  %12 = alloca %struct.clk_init_data, align 4
  %13 = alloca i32, align 4
  store ptr %3, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %12) #11
  %14 = getelementptr inbounds i8, ptr %12, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %14, i8 0, i32 12, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #11
  store i32 0, ptr %13, align 4, !annotation !8
  %15 = zext i8 %5 to i32
  %16 = icmp ult i8 %5, 8
  %17 = icmp ne ptr %1, null
  %18 = and i1 %17, %16
  %19 = icmp ne ptr %4, null
  %20 = and i1 %19, %18
  br i1 %20, label %21, label %101

21:                                               ; preds = %9
  %22 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %23 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 56) #12
  %24 = icmp eq ptr %23, null
  br i1 %24, label %101, label %25

25:                                               ; preds = %21
  store ptr %2, ptr %12, align 4
  %26 = getelementptr inbounds %struct.clk_init_data, ptr %12, i32 0, i32 2
  store ptr %11, ptr %26, align 4
  %27 = getelementptr inbounds %struct.clk_init_data, ptr %12, i32 0, i32 5
  store i8 1, ptr %27, align 4
  %28 = and i32 %8, 1
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, ptr @sam9x60_frac_pll_ops_chg, ptr @sam9x60_frac_pll_ops
  %31 = getelementptr inbounds %struct.clk_init_data, ptr %12, i32 0, i32 1
  store ptr %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.clk_init_data, ptr %12, i32 0, i32 6
  store i32 %8, ptr %32, align 4
  %33 = getelementptr inbounds %struct.sam9x60_pll_core, ptr %23, i32 0, i32 5
  store i8 %5, ptr %33, align 4
  %34 = getelementptr inbounds %struct.sam9x60_pll_core, ptr %23, i32 0, i32 4
  %35 = getelementptr inbounds %struct.sam9x60_pll_core, ptr %23, i32 0, i32 4, i32 2
  store ptr %12, ptr %35, align 8
  %36 = getelementptr inbounds %struct.sam9x60_pll_core, ptr %23, i32 0, i32 2
  store ptr %6, ptr %36, align 8
  %37 = getelementptr inbounds %struct.sam9x60_pll_core, ptr %23, i32 0, i32 3
  store ptr %7, ptr %37, align 4
  store ptr %0, ptr %23, align 8
  %38 = getelementptr inbounds %struct.sam9x60_pll_core, ptr %23, i32 0, i32 1
  store ptr %1, ptr %38, align 4
  %39 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %1) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  store i32 0, ptr %10, align 4, !annotation !8
  %40 = call i32 @regmap_read(ptr noundef %0, i32 noundef 236, ptr noundef nonnull %10) #11
  %41 = load i32, ptr %10, align 4
  %42 = shl nuw i32 1, %15
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  br i1 %44, label %53, label %45

45:                                               ; preds = %25
  %46 = call i32 @regmap_update_bits_base(ptr noundef %0, i32 noundef 28, i32 noundef 15, i32 noundef %15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %47 = call i32 @regmap_read(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %13) #11
  %48 = load i32, ptr %13, align 4
  %49 = lshr i32 %48, 24
  %50 = trunc i32 %49 to i16
  %51 = getelementptr inbounds %struct.sam9x60_frac, ptr %23, i32 0, i32 3
  store i16 %50, ptr %51, align 4
  %52 = and i32 %48, 4194303
  br label %92

53:                                               ; preds = %25
  %54 = call i32 @clk_hw_get_rate(ptr noundef nonnull %4) #11
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %99, label %56

56:                                               ; preds = %53
  %57 = udiv i32 600000000, %54
  %58 = mul i32 %57, %54
  %59 = icmp eq i32 %58, 600000000
  br i1 %59, label %87, label %60

60:                                               ; preds = %56
  %61 = sub i32 600000000, %58
  %62 = zext i32 %61 to i64
  %63 = shl nuw nsw i64 %62, 22
  %64 = lshr i32 %54, 1
  %65 = zext i32 %64 to i64
  %66 = add nuw nsw i64 %63, %65
  %67 = icmp ult i64 %66, 4294967296
  br i1 %67, label %68, label %72, !prof !9

68:                                               ; preds = %60
  %69 = trunc i64 %66 to i32
  %70 = udiv i32 %69, %54
  %71 = zext i32 %70 to i64
  br label %75

72:                                               ; preds = %60
  %73 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %54, i64 %66) #13, !srcloc !10
  %74 = extractvalue { i64, i64 } %73, 1
  br label %75

75:                                               ; preds = %72, %68
  %76 = phi i64 [ %71, %68 ], [ %74, %72 ]
  %77 = trunc i64 %76 to i32
  %78 = and i64 %76, 4294967295
  %79 = zext i32 %54 to i64
  %80 = mul nuw i64 %78, %79
  %81 = add nuw i64 %80, 2097152
  %82 = lshr i64 %81, 22
  %83 = trunc i64 %82 to i32
  %84 = add i32 %58, -1200000001
  %85 = add i32 %84, %83
  %86 = icmp ult i32 %85, -600000001
  br i1 %86, label %99, label %87

87:                                               ; preds = %75, %56
  %88 = phi i32 [ %77, %75 ], [ 0, %56 ]
  %89 = trunc i32 %57 to i16
  %90 = add i16 %89, -1
  %91 = getelementptr inbounds %struct.sam9x60_frac, ptr %23, i32 0, i32 3
  store i16 %90, ptr %91, align 4
  br label %92

92:                                               ; preds = %87, %45
  %93 = phi i32 [ %88, %87 ], [ %52, %45 ]
  %94 = getelementptr inbounds %struct.sam9x60_frac, ptr %23, i32 0, i32 2
  store i32 %93, ptr %94, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %1, i32 noundef %39) #11
  %95 = call i32 @clk_hw_register(ptr noundef null, ptr noundef %34) #11
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %92
  call void @kfree(ptr noundef nonnull %23) #11
  %98 = inttoptr i32 %95 to ptr
  br label %101

99:                                               ; preds = %75, %53
  %100 = phi ptr [ inttoptr (i32 -22 to ptr), %53 ], [ inttoptr (i32 -34 to ptr), %75 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %1, i32 noundef %39) #11
  call void @kfree(ptr noundef nonnull %23) #11
  br label %101

101:                                              ; preds = %99, %97, %92, %21, %9
  %102 = phi ptr [ %100, %99 ], [ %98, %97 ], [ %34, %92 ], [ inttoptr (i32 -22 to ptr), %9 ], [ inttoptr (i32 -12 to ptr), %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %12) #11
  ret ptr %102
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @sam9x60_clk_register_div_pll(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 section ".init.text" {
  %10 = alloca ptr, align 4
  %11 = alloca %struct.clk_init_data, align 4
  %12 = alloca i32, align 4
  store ptr %3, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %11) #11
  %13 = getelementptr inbounds i8, ptr %11, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %13, i8 0, i32 12, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #11
  store i32 0, ptr %12, align 4, !annotation !8
  %14 = zext i8 %4 to i32
  %15 = icmp ult i8 %4, 8
  %16 = icmp ne ptr %1, null
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %61

18:                                               ; preds = %9
  %19 = icmp ne i32 %8, 0
  %20 = load ptr, ptr @notifier_div, align 4
  %21 = icmp ne ptr %20, null
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %61, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %25 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 52) #12
  %26 = icmp eq ptr %25, null
  br i1 %26, label %61, label %27

27:                                               ; preds = %23
  %28 = tail call i32 @llvm.umin.i32(i32 %8, i32 255)
  store ptr %2, ptr %11, align 4
  %29 = getelementptr inbounds %struct.clk_init_data, ptr %11, i32 0, i32 2
  store ptr %10, ptr %29, align 4
  %30 = getelementptr inbounds %struct.clk_init_data, ptr %11, i32 0, i32 5
  store i8 1, ptr %30, align 4
  %31 = and i32 %7, 1
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, ptr @sam9x60_div_pll_ops_chg, ptr @sam9x60_div_pll_ops
  %34 = getelementptr inbounds %struct.clk_init_data, ptr %11, i32 0, i32 1
  store ptr %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.clk_init_data, ptr %11, i32 0, i32 6
  store i32 %7, ptr %35, align 4
  %36 = getelementptr inbounds %struct.sam9x60_pll_core, ptr %25, i32 0, i32 5
  store i8 %4, ptr %36, align 4
  %37 = getelementptr inbounds %struct.sam9x60_pll_core, ptr %25, i32 0, i32 4
  %38 = getelementptr inbounds %struct.sam9x60_pll_core, ptr %25, i32 0, i32 4, i32 2
  store ptr %11, ptr %38, align 8
  %39 = getelementptr inbounds %struct.sam9x60_pll_core, ptr %25, i32 0, i32 2
  store ptr %5, ptr %39, align 8
  %40 = getelementptr inbounds %struct.sam9x60_pll_core, ptr %25, i32 0, i32 3
  store ptr %6, ptr %40, align 4
  store ptr %0, ptr %25, align 8
  %41 = getelementptr inbounds %struct.sam9x60_pll_core, ptr %25, i32 0, i32 1
  store ptr %1, ptr %41, align 4
  %42 = trunc i32 %28 to i8
  %43 = getelementptr inbounds %struct.sam9x60_div, ptr %25, i32 0, i32 3
  store i8 %42, ptr %43, align 1
  %44 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %1) #11
  %45 = call i32 @regmap_update_bits_base(ptr noundef %0, i32 noundef 28, i32 noundef 15, i32 noundef %14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %46 = call i32 @regmap_read(ptr noundef %0, i32 noundef 12, ptr noundef nonnull %12) #11
  %47 = load i32, ptr %12, align 4
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds %struct.sam9x60_div, ptr %25, i32 0, i32 2
  store i8 %48, ptr %49, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %1, i32 noundef %44) #11
  %50 = call i32 @clk_hw_register(ptr noundef null, ptr noundef %37) #11
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %27
  call void @kfree(ptr noundef nonnull %25) #11
  %53 = inttoptr i32 %50 to ptr
  br label %61

54:                                               ; preds = %27
  %55 = load i8, ptr %43, align 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  store ptr %25, ptr @notifier_div, align 4
  %58 = getelementptr inbounds %struct.sam9x60_pll_core, ptr %25, i32 0, i32 4, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = call i32 @clk_notifier_register(ptr noundef %59, ptr noundef nonnull @sam9x60_div_pll_notifier) #11
  br label %61

61:                                               ; preds = %57, %54, %52, %23, %18, %9
  %62 = phi ptr [ %53, %52 ], [ %37, %57 ], [ %37, %54 ], [ inttoptr (i32 -22 to ptr), %18 ], [ inttoptr (i32 -22 to ptr), %9 ], [ inttoptr (i32 -12 to ptr), %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %11) #11
  ret ptr %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sam9x60_frac_pll_prepare(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr i8, ptr %0, i32 -16
  tail call fastcc void @sam9x60_frac_pll_set(ptr noundef %2)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sam9x60_frac_pll_unprepare(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 -12
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #11
  %7 = getelementptr i8, ptr %0, i32 12
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i32
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 28, i32 noundef 15, i32 noundef %9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 12, i32 noundef 268435456, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %12 = getelementptr i8, ptr %0, i32 -8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.clk_pll_characteristics, ptr %13, i32 0, i32 5
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 24, i32 noundef 12288, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %20

20:                                               ; preds = %18, %1
  %21 = load i8, ptr %7, align 4
  %22 = zext i8 %21 to i32
  %23 = or i32 %22, 256
  %24 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 28, i32 noundef 271, i32 noundef %23, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %25 = load ptr, ptr %4, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %6) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sam9x60_frac_pll_is_prepared(ptr nocapture noundef readonly %0) #5 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -16
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 12
  %6 = load i8, ptr %5, align 4
  %7 = zext i8 %6 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  %8 = call i32 @regmap_read(ptr noundef %4, i32 noundef 236, ptr noundef nonnull %2) #11
  %9 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  %10 = lshr i32 %9, %7
  %11 = and i32 %10, 1
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sam9x60_frac_pll_save_context(ptr nocapture noundef %0) #5 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -16
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 12
  %6 = load i8, ptr %5, align 4
  %7 = zext i8 %6 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  %8 = call i32 @regmap_read(ptr noundef %4, i32 noundef 236, ptr noundef nonnull %2) #11
  %9 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  %10 = lshr i32 %9, %7
  %11 = and i32 %10, 1
  %12 = getelementptr i8, ptr %0, i32 24
  store i32 %11, ptr %12, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sam9x60_frac_pll_restore_context(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr i8, ptr %0, i32 24
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -16
  tail call fastcc void @sam9x60_frac_pll_set(ptr noundef %6)
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @sam9x60_frac_pll_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr i8, ptr %0, i32 36
  %4 = load i16, ptr %3, align 4
  %5 = zext i32 %1 to i64
  %6 = getelementptr i8, ptr %0, i32 32
  %7 = load i32, ptr %6, align 4
  %8 = zext i32 %7 to i64
  %9 = mul nuw i64 %8, %5
  %10 = add nuw i64 %9, 2097152
  %11 = lshr i64 %10, 22
  %12 = trunc i64 %11 to i32
  %13 = zext i16 %4 to i32
  %14 = add nuw nsw i32 %13, 1
  %15 = mul i32 %14, %1
  %16 = add i32 %15, %12
  ret i32 %16
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @sam9x60_frac_pll_round_rate(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #6 {
  %4 = load i32, ptr %2, align 4
  %5 = add i32 %1, -1200000001
  %6 = icmp ult i32 %5, -600000001
  br i1 %6, label %40, label %7

7:                                                ; preds = %3
  %8 = urem i32 %1, %4
  %9 = sub nsw i32 %1, %8
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %35, label %11

11:                                               ; preds = %7
  %12 = zext i32 %8 to i64
  %13 = shl nuw nsw i64 %12, 22
  %14 = lshr i32 %4, 1
  %15 = zext i32 %14 to i64
  %16 = add nuw nsw i64 %13, %15
  %17 = icmp ult i64 %16, 4294967296
  br i1 %17, label %18, label %22, !prof !9

18:                                               ; preds = %11
  %19 = trunc i64 %16 to i32
  %20 = udiv i32 %19, %4
  %21 = zext i32 %20 to i64
  br label %25

22:                                               ; preds = %11
  %23 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %4, i64 %16) #13, !srcloc !10
  %24 = extractvalue { i64, i64 } %23, 1
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi i64 [ %21, %18 ], [ %24, %22 ]
  %27 = and i64 %26, 4294967295
  %28 = zext i32 %4 to i64
  %29 = mul nuw i64 %27, %28
  %30 = add nuw i64 %29, 2097152
  %31 = lshr i64 %30, 22
  %32 = trunc i64 %31 to i32
  %33 = add i32 %9, %32
  %34 = add i32 %33, -1200000001
  br label %35

35:                                               ; preds = %25, %7
  %36 = phi i32 [ %34, %25 ], [ %5, %7 ]
  %37 = phi i32 [ %33, %25 ], [ %1, %7 ]
  %38 = icmp ult i32 %36, -600000001
  %39 = select i1 %38, i32 -34, i32 %37
  br label %40

40:                                               ; preds = %35, %3
  %41 = phi i32 [ -34, %3 ], [ %39, %35 ]
  ret i32 %41
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync)
define internal i32 @sam9x60_frac_pll_set_rate(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) #7 {
  %4 = add i32 %1, -1200000001
  %5 = icmp ult i32 %4, -600000001
  br i1 %5, label %44, label %6

6:                                                ; preds = %3
  %7 = udiv i32 %1, %2
  %8 = mul i32 %7, %2
  %9 = icmp eq i32 %8, %1
  br i1 %9, label %37, label %10

10:                                               ; preds = %6
  %11 = sub i32 %1, %8
  %12 = zext i32 %11 to i64
  %13 = shl nuw nsw i64 %12, 22
  %14 = lshr i32 %2, 1
  %15 = zext i32 %14 to i64
  %16 = add nuw nsw i64 %13, %15
  %17 = icmp ult i64 %16, 4294967296
  br i1 %17, label %18, label %22, !prof !9

18:                                               ; preds = %10
  %19 = trunc i64 %16 to i32
  %20 = udiv i32 %19, %2
  %21 = zext i32 %20 to i64
  br label %25

22:                                               ; preds = %10
  %23 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %2, i64 %16) #13, !srcloc !10
  %24 = extractvalue { i64, i64 } %23, 1
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi i64 [ %21, %18 ], [ %24, %22 ]
  %27 = trunc i64 %26 to i32
  %28 = and i64 %26, 4294967295
  %29 = zext i32 %2 to i64
  %30 = mul nuw i64 %28, %29
  %31 = add nuw i64 %30, 2097152
  %32 = lshr i64 %31, 22
  %33 = trunc i64 %32 to i32
  %34 = add i32 %8, %33
  %35 = add i32 %34, -1200000001
  %36 = icmp ult i32 %35, -600000001
  br i1 %36, label %44, label %37

37:                                               ; preds = %25, %6
  %38 = phi i32 [ %34, %25 ], [ %1, %6 ]
  %39 = phi i32 [ %27, %25 ], [ 0, %6 ]
  %40 = trunc i32 %7 to i16
  %41 = add i16 %40, -1
  %42 = getelementptr i8, ptr %0, i32 36
  store i16 %41, ptr %42, align 4
  %43 = getelementptr i8, ptr %0, i32 32
  store i32 %39, ptr %43, align 4
  br label %44

44:                                               ; preds = %37, %25, %3
  %45 = phi i32 [ -34, %3 ], [ -34, %25 ], [ %38, %37 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sam9x60_frac_pll_set(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.sam9x60_pll_core, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #11
  %9 = getelementptr inbounds %struct.sam9x60_pll_core, ptr %0, i32 0, i32 5
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  %12 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 28, i32 noundef 15, i32 noundef %11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %13 = call i32 @regmap_read(ptr noundef %5, i32 noundef 16, ptr noundef nonnull %4) #11
  %14 = load i32, ptr %4, align 4
  %15 = getelementptr inbounds %struct.sam9x60_pll_core, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.clk_pll_layout, ptr %16, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.clk_pll_layout, ptr %16, i32 0, i32 5
  %20 = load i8, ptr %19, align 4
  %21 = getelementptr inbounds %struct.clk_pll_layout, ptr %16, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, %14
  %24 = getelementptr inbounds %struct.clk_pll_layout, ptr %16, i32 0, i32 6
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = lshr i32 %23, %26
  %28 = load i8, ptr %9, align 4
  %29 = zext i8 %28 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  %30 = call i32 @regmap_read(ptr noundef %5, i32 noundef 236, ptr noundef nonnull %3) #11
  %31 = load i32, ptr %3, align 4
  %32 = shl nuw i32 1, %29
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  br i1 %34, label %47, label %35

35:                                               ; preds = %1
  %36 = and i32 %18, %14
  %37 = zext i8 %20 to i32
  %38 = lshr i32 %36, %37
  %39 = getelementptr inbounds %struct.sam9x60_frac, ptr %0, i32 0, i32 3
  %40 = load i16, ptr %39, align 4
  %41 = zext i16 %40 to i32
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.sam9x60_frac, ptr %0, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %27, %45
  br i1 %46, label %111, label %47

47:                                               ; preds = %43, %35, %1
  %48 = getelementptr inbounds %struct.sam9x60_pll_core, ptr %0, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.clk_pll_characteristics, ptr %49, i32 0, i32 5
  %51 = load i8, ptr %50, align 4
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  %54 = select i1 %53, i32 131088, i32 302120976
  store i32 %54, ptr %4, align 4
  %55 = call i32 @regmap_write(ptr noundef %5, i32 noundef 24, i32 noundef %54) #11
  %56 = getelementptr inbounds %struct.sam9x60_frac, ptr %0, i32 0, i32 3
  %57 = load i16, ptr %56, align 4
  %58 = zext i16 %57 to i32
  %59 = load ptr, ptr %15, align 4
  %60 = getelementptr inbounds %struct.clk_pll_layout, ptr %59, i32 0, i32 5
  %61 = load i8, ptr %60, align 4
  %62 = zext i8 %61 to i32
  %63 = shl i32 %58, %62
  %64 = getelementptr inbounds %struct.sam9x60_frac, ptr %0, i32 0, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.clk_pll_layout, ptr %59, i32 0, i32 6
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = shl i32 %65, %68
  %70 = or i32 %69, %63
  %71 = call i32 @regmap_write(ptr noundef %5, i32 noundef 16, i32 noundef %70) #11
  %72 = load ptr, ptr %48, align 4
  %73 = getelementptr inbounds %struct.clk_pll_characteristics, ptr %72, i32 0, i32 5
  %74 = load i8, ptr %73, align 4
  %75 = and i8 %74, 1
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %47
  %78 = load i32, ptr %4, align 4
  %79 = or i32 %78, 8192
  store i32 %79, ptr %4, align 4
  %80 = call i32 @regmap_write(ptr noundef %5, i32 noundef 24, i32 noundef %79) #11
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %81(i32 noundef 2147480) #11
  %82 = load i32, ptr %4, align 4
  %83 = or i32 %82, 4096
  store i32 %83, ptr %4, align 4
  %84 = call i32 @regmap_write(ptr noundef %5, i32 noundef 24, i32 noundef %83) #11
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %85(i32 noundef 2147480) #11
  br label %86

86:                                               ; preds = %77, %47
  %87 = load i8, ptr %9, align 4
  %88 = zext i8 %87 to i32
  %89 = or i32 %88, 256
  %90 = call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 28, i32 noundef 271, i32 noundef %89, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %91 = call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12, i32 noundef -1879048192, i32 noundef -1879048192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %92 = load i8, ptr %9, align 4
  %93 = zext i8 %92 to i32
  %94 = or i32 %93, 256
  %95 = call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 28, i32 noundef 271, i32 noundef %94, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %96 = load i8, ptr %9, align 4
  %97 = zext i8 %96 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  %98 = call i32 @regmap_read(ptr noundef %5, i32 noundef 236, ptr noundef nonnull %2) #11
  %99 = load i32, ptr %2, align 4
  %100 = shl nuw i32 1, %97
  %101 = and i32 %99, %100
  %102 = icmp eq i32 %101, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br i1 %102, label %103, label %111

103:                                              ; preds = %103, %86
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !12
  %104 = load i8, ptr %9, align 4
  %105 = zext i8 %104 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  %106 = call i32 @regmap_read(ptr noundef %5, i32 noundef 236, ptr noundef nonnull %2) #11
  %107 = load i32, ptr %2, align 4
  %108 = shl nuw i32 1, %105
  %109 = and i32 %107, %108
  %110 = icmp eq i32 %109, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br i1 %110, label %103, label %111

111:                                              ; preds = %103, %86, %43
  %112 = load ptr, ptr %6, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %112, i32 noundef %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sam9x60_frac_pll_set_rate_chg(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -16
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = add i32 %1, -1200000001
  %9 = icmp ult i32 %8, -600000001
  br i1 %9, label %117, label %10

10:                                               ; preds = %3
  %11 = udiv i32 %1, %2
  %12 = mul i32 %11, %2
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %41, label %14

14:                                               ; preds = %10
  %15 = sub i32 %1, %12
  %16 = zext i32 %15 to i64
  %17 = shl nuw nsw i64 %16, 22
  %18 = lshr i32 %2, 1
  %19 = zext i32 %18 to i64
  %20 = add nuw nsw i64 %17, %19
  %21 = icmp ult i64 %20, 4294967296
  br i1 %21, label %22, label %26, !prof !9

22:                                               ; preds = %14
  %23 = trunc i64 %20 to i32
  %24 = udiv i32 %23, %2
  %25 = zext i32 %24 to i64
  br label %29

26:                                               ; preds = %14
  %27 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %2, i64 %20) #13, !srcloc !10
  %28 = extractvalue { i64, i64 } %27, 1
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi i64 [ %25, %22 ], [ %28, %26 ]
  %31 = trunc i64 %30 to i32
  %32 = and i64 %30, 4294967295
  %33 = zext i32 %2 to i64
  %34 = mul nuw i64 %32, %33
  %35 = add nuw i64 %34, 2097152
  %36 = lshr i64 %35, 22
  %37 = trunc i64 %36 to i32
  %38 = add i32 %12, %37
  %39 = add i32 %38, -1200000001
  %40 = icmp ult i32 %39, -600000001
  br i1 %40, label %117, label %41

41:                                               ; preds = %29, %10
  %42 = phi i32 [ %38, %29 ], [ %1, %10 ]
  %43 = phi i32 [ %31, %29 ], [ 0, %10 ]
  %44 = trunc i32 %11 to i16
  %45 = add i16 %44, -1
  %46 = getelementptr i8, ptr %0, i32 36
  store i16 %45, ptr %46, align 4
  %47 = getelementptr i8, ptr %0, i32 32
  store i32 %43, ptr %47, align 4
  %48 = getelementptr i8, ptr %0, i32 -12
  %49 = load ptr, ptr %48, align 4
  %50 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %49) #11
  %51 = getelementptr i8, ptr %0, i32 12
  %52 = load i8, ptr %51, align 4
  %53 = zext i8 %52 to i32
  %54 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 28, i32 noundef 15, i32 noundef %53, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %55 = call i32 @regmap_read(ptr noundef %7, i32 noundef 16, ptr noundef nonnull %5) #11
  %56 = load i32, ptr %5, align 4
  %57 = getelementptr i8, ptr %0, i32 -4
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.clk_pll_layout, ptr %58, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, %56
  %62 = getelementptr inbounds %struct.clk_pll_layout, ptr %58, i32 0, i32 5
  %63 = load i8, ptr %62, align 4
  %64 = zext i8 %63 to i32
  %65 = lshr i32 %61, %64
  %66 = load i16, ptr %46, align 4
  %67 = zext i16 %66 to i32
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %74, label %69

69:                                               ; preds = %41
  %70 = load i32, ptr %47, align 4
  %71 = getelementptr inbounds %struct.clk_pll_layout, ptr %58, i32 0, i32 6
  %72 = load i8, ptr %71, align 1
  %73 = zext i8 %72 to i32
  br label %84

74:                                               ; preds = %41
  %75 = getelementptr inbounds %struct.clk_pll_layout, ptr %58, i32 0, i32 2
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, %56
  %78 = getelementptr inbounds %struct.clk_pll_layout, ptr %58, i32 0, i32 6
  %79 = load i8, ptr %78, align 1
  %80 = zext i8 %79 to i32
  %81 = lshr i32 %77, %80
  %82 = load i32, ptr %47, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %115, label %84

84:                                               ; preds = %74, %69
  %85 = phi i32 [ %73, %69 ], [ %80, %74 ]
  %86 = phi i32 [ %70, %69 ], [ %82, %74 ]
  %87 = shl i32 %67, %64
  %88 = shl i32 %86, %85
  %89 = or i32 %88, %87
  %90 = call i32 @regmap_write(ptr noundef %7, i32 noundef 16, i32 noundef %89) #11
  %91 = load i8, ptr %51, align 4
  %92 = zext i8 %91 to i32
  %93 = or i32 %92, 256
  %94 = call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 28, i32 noundef 271, i32 noundef %93, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %95 = call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 12, i32 noundef -1879048192, i32 noundef -1879048192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %96 = load i8, ptr %51, align 4
  %97 = zext i8 %96 to i32
  %98 = or i32 %97, 256
  %99 = call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 28, i32 noundef 271, i32 noundef %98, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %100 = load i8, ptr %51, align 4
  %101 = zext i8 %100 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  %102 = call i32 @regmap_read(ptr noundef %7, i32 noundef 236, ptr noundef nonnull %4) #11
  %103 = load i32, ptr %4, align 4
  %104 = shl nuw i32 1, %101
  %105 = and i32 %103, %104
  %106 = icmp eq i32 %105, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br i1 %106, label %107, label %115

107:                                              ; preds = %107, %84
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !14
  %108 = load i8, ptr %51, align 4
  %109 = zext i8 %108 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  %110 = call i32 @regmap_read(ptr noundef %7, i32 noundef 236, ptr noundef nonnull %4) #11
  %111 = load i32, ptr %4, align 4
  %112 = shl nuw i32 1, %109
  %113 = and i32 %111, %112
  %114 = icmp eq i32 %113, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br i1 %114, label %107, label %115

115:                                              ; preds = %107, %84, %74
  %116 = load ptr, ptr %48, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %116, i32 noundef %50) #11
  br label %117

117:                                              ; preds = %115, %29, %3
  %118 = phi i32 [ %42, %115 ], [ -34, %3 ], [ -34, %29 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i32 %118
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sam9x60_div_pll_prepare(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr i8, ptr %0, i32 -16
  tail call fastcc void @sam9x60_div_pll_set(ptr noundef %2)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sam9x60_div_pll_unprepare(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 -12
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #11
  %7 = getelementptr i8, ptr %0, i32 12
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i32
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 28, i32 noundef 15, i32 noundef %9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %11 = getelementptr i8, ptr %0, i32 -4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.clk_pll_layout, ptr %12, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 12, i32 noundef %14, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %16 = load i8, ptr %7, align 4
  %17 = zext i8 %16 to i32
  %18 = or i32 %17, 256
  %19 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 28, i32 noundef 271, i32 noundef %18, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %20 = load ptr, ptr %4, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %6) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sam9x60_div_pll_is_prepared(ptr nocapture noundef readonly %0) #5 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -16
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = getelementptr i8, ptr %0, i32 -12
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #11
  %8 = getelementptr i8, ptr %0, i32 12
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i32
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 28, i32 noundef 15, i32 noundef %10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %12 = call i32 @regmap_read(ptr noundef %4, i32 noundef 12, ptr noundef nonnull %2) #11
  %13 = load ptr, ptr %5, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %7) #11
  %14 = load i32, ptr %2, align 4
  %15 = getelementptr i8, ptr %0, i32 -4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.clk_pll_layout, ptr %16, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, %14
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sam9x60_div_pll_save_context(ptr nocapture noundef %0) #5 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -16
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = getelementptr i8, ptr %0, i32 -12
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #11
  %8 = getelementptr i8, ptr %0, i32 12
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i32
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 28, i32 noundef 15, i32 noundef %10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %12 = call i32 @regmap_read(ptr noundef %4, i32 noundef 12, ptr noundef nonnull %2) #11
  %13 = load ptr, ptr %5, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %7) #11
  %14 = load i32, ptr %2, align 4
  %15 = getelementptr i8, ptr %0, i32 -4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.clk_pll_layout, ptr %16, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, %14
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  %22 = getelementptr i8, ptr %0, i32 24
  store i32 %21, ptr %22, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sam9x60_div_pll_restore_context(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr i8, ptr %0, i32 24
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -16
  tail call fastcc void @sam9x60_div_pll_set(ptr noundef %6)
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @sam9x60_div_pll_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr i8, ptr %0, i32 32
  %4 = load i8, ptr %3, align 4
  %5 = zext i8 %4 to i32
  %6 = add nuw nsw i32 %5, 1
  %7 = lshr i32 %6, 1
  %8 = add i32 %7, %1
  %9 = udiv i32 %8, %6
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sam9x60_div_pll_round_rate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #11
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %66, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.clk_pll_characteristics, ptr %5, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, %1
  br i1 %12, label %66, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.clk_range, ptr %10, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp ult i32 %15, %1
  br i1 %16, label %66, label %17

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %0, i32 -4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.clk_pll_layout, ptr %19, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp ugt i32 %21, 1
  br i1 %22, label %23, label %56

23:                                               ; preds = %44, %17
  %24 = phi i32 [ %47, %44 ], [ 1, %17 ]
  %25 = phi i32 [ %46, %44 ], [ -22, %17 ]
  %26 = phi i32 [ %45, %44 ], [ -1, %17 ]
  %27 = mul i32 %24, %1
  %28 = tail call i32 @clk_hw_round_rate(ptr noundef %6, i32 noundef %27) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %23
  %31 = lshr i32 %24, 1
  %32 = add i32 %28, %31
  %33 = udiv i32 %32, %24
  %34 = sub i32 %1, %33
  %35 = tail call i32 @llvm.abs.i32(i32 %34, i1 false) #11
  %36 = icmp slt i32 %26, 0
  %37 = icmp ugt i32 %26, %35
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  store i32 %28, ptr %2, align 4
  br label %40

40:                                               ; preds = %39, %30
  %41 = phi i32 [ %35, %39 ], [ %26, %30 ]
  %42 = phi i32 [ %33, %39 ], [ %25, %30 ]
  %43 = icmp eq i32 %41, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %40, %23
  %45 = phi i32 [ %41, %40 ], [ %26, %23 ]
  %46 = phi i32 [ %42, %40 ], [ %25, %23 ]
  %47 = add nuw i32 %24, 1
  %48 = load ptr, ptr %18, align 4
  %49 = getelementptr inbounds %struct.clk_pll_layout, ptr %48, i32 0, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = icmp ult i32 %47, %50
  br i1 %51, label %23, label %52

52:                                               ; preds = %44, %40
  %53 = phi i32 [ %46, %44 ], [ %42, %40 ]
  %54 = load ptr, ptr %9, align 4
  %55 = load i32, ptr %54, align 4
  br label %56

56:                                               ; preds = %52, %17
  %57 = phi i32 [ %11, %17 ], [ %55, %52 ]
  %58 = phi ptr [ %10, %17 ], [ %54, %52 ]
  %59 = phi i32 [ -22, %17 ], [ %53, %52 ]
  %60 = icmp ult i32 %59, %57
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.clk_range, ptr %58, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = icmp ugt i32 %59, %63
  %65 = select i1 %64, i32 -34, i32 %59
  br label %66

66:                                               ; preds = %61, %56, %13, %8, %3
  %67 = phi i32 [ 0, %3 ], [ -34, %13 ], [ -34, %8 ], [ -34, %56 ], [ %65, %61 ]
  ret i32 %67
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sam9x60_div_pll_set_rate(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) #8 {
  %4 = lshr i32 %1, 1
  %5 = add i32 %4, %2
  %6 = udiv i32 %5, %1
  %7 = trunc i32 %6 to i8
  %8 = add i8 %7, -1
  %9 = getelementptr i8, ptr %0, i32 32
  store i8 %8, ptr %9, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sam9x60_div_pll_set(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = alloca i32, align 4
  %3 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.sam9x60_pll_core, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #11
  %7 = getelementptr inbounds %struct.sam9x60_pll_core, ptr %0, i32 0, i32 5
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i32
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 28, i32 noundef 15, i32 noundef %9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %11 = call i32 @regmap_read(ptr noundef %3, i32 noundef 12, ptr noundef nonnull %2) #11
  %12 = load i32, ptr %2, align 4
  %13 = getelementptr inbounds %struct.sam9x60_pll_core, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.clk_pll_layout, ptr %14, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, %12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.sam9x60_div, ptr %0, i32 0, i32 2
  %21 = load i8, ptr %20, align 4
  %22 = zext i8 %21 to i32
  br label %35

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.clk_pll_layout, ptr %14, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, %12
  %27 = getelementptr inbounds %struct.clk_pll_layout, ptr %14, i32 0, i32 7
  %28 = load i8, ptr %27, align 2
  %29 = zext i8 %28 to i32
  %30 = lshr i32 %26, %29
  %31 = getelementptr inbounds %struct.sam9x60_div, ptr %0, i32 0, i32 2
  %32 = load i8, ptr %31, align 4
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %37, label %35

35:                                               ; preds = %23, %19
  %36 = phi i32 [ %22, %19 ], [ %33, %23 ]
  call fastcc void @sam9x60_div_pll_set_div(ptr noundef %0, i32 noundef %36, i1 noundef zeroext true)
  br label %37

37:                                               ; preds = %35, %23
  %38 = load ptr, ptr %4, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sam9x60_div_pll_set_div(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #5 {
  %4 = alloca i32, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.sam9x60_pll_core, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  br i1 %2, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.clk_pll_layout, ptr %7, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.clk_pll_layout, ptr %7, i32 0, i32 8
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw i32 1, %13
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %10, %8 ], [ 0, %3 ]
  %17 = phi i32 [ %14, %8 ], [ 0, %3 ]
  %18 = getelementptr inbounds %struct.clk_pll_layout, ptr %7, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = or i32 %19, %16
  %21 = getelementptr inbounds %struct.clk_pll_layout, ptr %7, i32 0, i32 7
  %22 = load i8, ptr %21, align 2
  %23 = zext i8 %22 to i32
  %24 = shl i32 %1, %23
  %25 = or i32 %24, %17
  %26 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12, i32 noundef %20, i32 noundef %25, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %27 = getelementptr inbounds %struct.sam9x60_pll_core, ptr %0, i32 0, i32 5
  %28 = load i8, ptr %27, align 4
  %29 = zext i8 %28 to i32
  %30 = or i32 %29, 256
  %31 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 28, i32 noundef 271, i32 noundef %30, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %32 = load i8, ptr %27, align 4
  %33 = zext i8 %32 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  %34 = call i32 @regmap_read(ptr noundef %5, i32 noundef 236, ptr noundef nonnull %4) #11
  %35 = load i32, ptr %4, align 4
  %36 = shl nuw i32 1, %33
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br i1 %38, label %39, label %47

39:                                               ; preds = %39, %15
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !16
  %40 = load i8, ptr %27, align 4
  %41 = zext i8 %40 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  %42 = call i32 @regmap_read(ptr noundef %5, i32 noundef 236, ptr noundef nonnull %4) #11
  %43 = load i32, ptr %4, align 4
  %44 = shl nuw i32 1, %41
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br i1 %46, label %39, label %47

47:                                               ; preds = %39, %15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sam9x60_div_pll_set_rate_chg(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = alloca i32, align 4
  %5 = getelementptr i8, ptr %0, i32 -16
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  %7 = lshr i32 %1, 1
  %8 = add i32 %7, %2
  %9 = udiv i32 %8, %1
  %10 = trunc i32 %9 to i8
  %11 = add i8 %10, -1
  %12 = getelementptr i8, ptr %0, i32 32
  store i8 %11, ptr %12, align 4
  %13 = getelementptr i8, ptr %0, i32 -12
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #11
  %16 = getelementptr i8, ptr %0, i32 12
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i32
  %19 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 28, i32 noundef 15, i32 noundef %18, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %20 = call i32 @regmap_read(ptr noundef %6, i32 noundef 12, ptr noundef nonnull %4) #11
  %21 = load i32, ptr %4, align 4
  %22 = getelementptr i8, ptr %0, i32 -4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.clk_pll_layout, ptr %23, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, %21
  %27 = getelementptr inbounds %struct.clk_pll_layout, ptr %23, i32 0, i32 7
  %28 = load i8, ptr %27, align 2
  %29 = zext i8 %28 to i32
  %30 = lshr i32 %26, %29
  %31 = load i8, ptr %12, align 4
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %35, label %34

34:                                               ; preds = %3
  call fastcc void @sam9x60_div_pll_set_div(ptr noundef %5, i32 noundef %32, i1 noundef zeroext false)
  br label %35

35:                                               ; preds = %34, %3
  %36 = load ptr, ptr %13, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %36, i32 noundef %15) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sam9x60_div_pll_notifier_fn(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #5 {
  %4 = alloca %struct.sam9x60_pll_core, align 4
  %5 = alloca i32, align 4
  %6 = load ptr, ptr @notifier_div, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef align 4 dereferenceable(32) %6, i32 32, i1 false)
  %7 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = icmp eq i32 %1, 1
  br i1 %8, label %9, label %39

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.sam9x60_div, ptr %6, i32 0, i32 3
  %11 = load i8, ptr %10, align 1
  %12 = getelementptr inbounds %struct.sam9x60_div, ptr %6, i32 0, i32 2
  store i8 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.sam9x60_pll_core, ptr %4, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #11
  %16 = getelementptr inbounds %struct.sam9x60_pll_core, ptr %4, i32 0, i32 5
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i32
  %19 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 28, i32 noundef 15, i32 noundef %18, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %20 = call i32 @regmap_read(ptr noundef %7, i32 noundef 12, ptr noundef nonnull %5) #11
  %21 = load i32, ptr %5, align 4
  %22 = getelementptr inbounds %struct.sam9x60_pll_core, ptr %4, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.clk_pll_layout, ptr %23, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, %21
  %27 = getelementptr inbounds %struct.clk_pll_layout, ptr %23, i32 0, i32 7
  %28 = load i8, ptr %27, align 2
  %29 = zext i8 %28 to i32
  %30 = lshr i32 %26, %29
  %31 = load i8, ptr %10, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %37, label %34

34:                                               ; preds = %9
  %35 = load i8, ptr %12, align 4
  %36 = zext i8 %35 to i32
  call fastcc void @sam9x60_div_pll_set_div(ptr noundef nonnull %4, i32 noundef %36, i1 noundef zeroext false)
  br label %37

37:                                               ; preds = %34, %9
  %38 = phi i32 [ 0, %9 ], [ 1, %34 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #11
  br label %39

39:                                               ; preds = %37, %3
  %40 = phi i32 [ %38, %37 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #11
  ret i32 %40
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind readnone }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2148406230, i64 2148406510, i64 2148406844, i64 2148407178}
!11 = !{i64 2151287461}
!12 = !{i64 2151287303}
!13 = !{i64 2151309462}
!14 = !{i64 2151309304}
!15 = !{i64 2151318718}
!16 = !{i64 2151318560}
