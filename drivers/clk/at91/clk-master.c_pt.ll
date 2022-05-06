; ModuleID = '/llk/IR/drivers/clk/at91/clk-master.c_pt.bc'
source_filename = "../drivers/clk/at91/clk-master.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.clk_master_layout = type { i32, i32, i8 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_master = type { %struct.clk_hw, ptr, ptr, ptr, ptr, %struct.at91_clk_pms, ptr, i32, i32, i8, i8, i8, i32 }
%struct.at91_clk_pms = type { i32, i32, i32, i32 }
%struct.clk_master_characteristics = type { %struct.clk_range, [5 x i32], i8 }
%struct.clk_range = type { i32, i32 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }
%struct.clk_notifier_data = type { ptr, i32, i32 }

@master_pres_ops = internal constant %struct.clk_ops { ptr @clk_master_prepare, ptr null, ptr @clk_master_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_master_pres_save_context, ptr @clk_master_pres_restore_context, ptr @clk_master_pres_recalc_rate, ptr null, ptr null, ptr null, ptr @clk_master_pres_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@master_pres_ops_chg = internal constant %struct.clk_ops { ptr @clk_master_prepare, ptr null, ptr @clk_master_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_master_pres_save_context, ptr @clk_master_pres_restore_context_chg, ptr @clk_master_pres_recalc_rate, ptr null, ptr @clk_master_pres_determine_rate, ptr null, ptr @clk_master_pres_get_parent, ptr @clk_master_pres_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@master_div_ops = internal constant %struct.clk_ops { ptr @clk_master_prepare, ptr null, ptr @clk_master_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_master_div_save_context, ptr @clk_master_div_restore_context, ptr @clk_master_div_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@master_div_ops_chg = internal constant %struct.clk_ops { ptr @clk_master_prepare, ptr null, ptr @clk_master_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_master_div_save_context, ptr @clk_master_div_restore_context_chg, ptr @clk_master_div_recalc_rate_chg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@master_div = internal unnamed_addr global ptr null, align 4
@clk_master_div_notifier = internal global %struct.notifier_block { ptr @clk_master_div_notifier_fn, ptr null, i32 0 }, align 4
@sama7g5_master_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_sama7g5_master_enable, ptr @clk_sama7g5_master_disable, ptr @clk_sama7g5_master_is_enabled, ptr null, ptr @clk_sama7g5_master_save_context, ptr @clk_sama7g5_master_restore_context, ptr @clk_sama7g5_master_recalc_rate, ptr null, ptr @clk_sama7g5_master_determine_rate, ptr @clk_sama7g5_master_set_parent, ptr @clk_sama7g5_master_get_parent, ptr @clk_sama7g5_master_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@at91rm9200_master_layout = dso_local local_unnamed_addr constant %struct.clk_master_layout { i32 48, i32 799, i8 2 }, align 4
@at91sam9x5_master_layout = dso_local local_unnamed_addr constant %struct.clk_master_layout { i32 48, i32 883, i8 4 }, align 4
@.str = private unnamed_addr constant [54 x i8] c"\014MCKR PRES was not configured properly by firmware!\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"\014MCKR DIV not configured properly by firmware!\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"\014master clk div is underclocked\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"\014master clk div is overclocked\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"\014Failed to restore MCK DIV clock\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @at91_clk_register_master_pres(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 section ".init.text" {
  %10 = and i32 %7, 1
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, ptr @master_pres_ops_chg, ptr @master_pres_ops
  %13 = tail call fastcc ptr @at91_clk_register_master_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %12, ptr noundef %6, i32 noundef %7, i32 noundef %8) #10
  ret ptr %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @at91_clk_register_master_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9) unnamed_addr #0 section ".init.text" {
  %11 = alloca %struct.clk_init_data, align 4
  %12 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %11) #11
  %13 = getelementptr inbounds i8, ptr %11, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %13, i8 0, i32 12, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #11
  store i32 0, ptr %12, align 4, !annotation !8
  %14 = icmp ne ptr %1, null
  %15 = icmp ne i32 %2, 0
  %16 = and i1 %14, %15
  %17 = icmp ne ptr %3, null
  %18 = and i1 %16, %17
  %19 = icmp ne ptr %7, null
  %20 = and i1 %18, %19
  br i1 %20, label %21, label %57

21:                                               ; preds = %10
  %22 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %23 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 64) #12
  %24 = icmp eq ptr %23, null
  br i1 %24, label %57, label %25

25:                                               ; preds = %21
  store ptr %1, ptr %11, align 4
  %26 = getelementptr inbounds %struct.clk_init_data, ptr %11, i32 0, i32 1
  store ptr %6, ptr %26, align 4
  %27 = getelementptr inbounds %struct.clk_init_data, ptr %11, i32 0, i32 2
  store ptr %3, ptr %27, align 4
  %28 = trunc i32 %2 to i8
  %29 = getelementptr inbounds %struct.clk_init_data, ptr %11, i32 0, i32 5
  store i8 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.clk_init_data, ptr %11, i32 0, i32 6
  store i32 %8, ptr %30, align 4
  %31 = getelementptr inbounds %struct.clk_hw, ptr %23, i32 0, i32 2
  store ptr %11, ptr %31, align 8
  %32 = getelementptr inbounds %struct.clk_master, ptr %23, i32 0, i32 3
  store ptr %4, ptr %32, align 4
  %33 = getelementptr inbounds %struct.clk_master, ptr %23, i32 0, i32 4
  store ptr %5, ptr %33, align 8
  %34 = getelementptr inbounds %struct.clk_master, ptr %23, i32 0, i32 1
  store ptr %0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.clk_master, ptr %23, i32 0, i32 8
  store i32 %9, ptr %35, align 4
  %36 = getelementptr inbounds %struct.clk_master, ptr %23, i32 0, i32 2
  store ptr %7, ptr %36, align 8
  %37 = icmp eq ptr %6, @master_div_ops_chg
  br i1 %37, label %38, label %52

38:                                               ; preds = %25
  %39 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %7) #11
  %40 = load i32, ptr %4, align 4
  %41 = call i32 @regmap_read(ptr noundef %0, i32 noundef %40, ptr noundef nonnull %12) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %7, i32 noundef %39) #11
  %42 = getelementptr inbounds %struct.clk_master_layout, ptr %4, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = load i32, ptr %12, align 4
  %45 = and i32 %44, %43
  %46 = lshr i32 %45, 8
  %47 = and i32 %46, 7
  store i32 %47, ptr %12, align 4
  %48 = getelementptr %struct.clk_master_characteristics, ptr %5, i32 0, i32 1, i32 %47
  %49 = load i32, ptr %48, align 4
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds %struct.clk_master, ptr %23, i32 0, i32 11
  store i8 %50, ptr %51, align 2
  br label %52

52:                                               ; preds = %38, %25
  %53 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %23) #11
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  call void @kfree(ptr noundef nonnull %23) #11
  %56 = inttoptr i32 %53 to ptr
  br label %57

57:                                               ; preds = %55, %52, %21, %10
  %58 = phi ptr [ %56, %55 ], [ %23, %52 ], [ inttoptr (i32 -22 to ptr), %10 ], [ inttoptr (i32 -12 to ptr), %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %11) #11
  ret ptr %58
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @at91_clk_register_master_div(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 section ".init.text" {
  %9 = alloca ptr, align 4
  store ptr %2, ptr %9, align 4
  %10 = and i32 %6, 1
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, ptr @master_div_ops_chg, ptr @master_div_ops
  %13 = call fastcc ptr @at91_clk_register_master_internal(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull %9, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %12, ptr noundef %5, i32 noundef %6, i32 noundef -22) #10
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  %15 = icmp eq i32 %7, 0
  %16 = or i1 %15, %14
  br i1 %16, label %22, label %17

17:                                               ; preds = %8
  store ptr %13, ptr @master_div, align 4
  %18 = getelementptr inbounds %struct.clk_master, ptr %13, i32 0, i32 12
  store i32 %7, ptr %18, align 4
  %19 = getelementptr inbounds %struct.clk_hw, ptr %13, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = call i32 @clk_notifier_register(ptr noundef %20, ptr noundef nonnull @clk_master_div_notifier) #11
  br label %22

22:                                               ; preds = %17, %8
  ret ptr %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @at91_clk_sama7g5_register_master(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6, i1 noundef zeroext %7, i32 noundef %8) local_unnamed_addr #0 section ".init.text" {
  %10 = alloca %struct.clk_init_data, align 4
  %11 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %10) #11
  %12 = getelementptr inbounds i8, ptr %10, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %12, i8 0, i32 12, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  store i32 0, ptr %11, align 4, !annotation !8
  %13 = icmp ne ptr %1, null
  %14 = icmp ne i32 %2, 0
  %15 = and i1 %13, %14
  %16 = icmp ne ptr %3, null
  %17 = and i1 %15, %16
  %18 = icmp ne ptr %4, null
  %19 = and i1 %17, %18
  %20 = icmp ne ptr %5, null
  %21 = and i1 %19, %20
  %22 = icmp ult i8 %6, 5
  %23 = and i1 %21, %22
  br i1 %23, label %24, label %61

24:                                               ; preds = %9
  %25 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %26 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 64) #12
  %27 = icmp eq ptr %26, null
  br i1 %27, label %61, label %28

28:                                               ; preds = %24
  store ptr %1, ptr %10, align 4
  %29 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 1
  store ptr @sama7g5_master_ops, ptr %29, align 4
  %30 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 2
  store ptr %3, ptr %30, align 4
  %31 = trunc i32 %2 to i8
  %32 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 5
  store i8 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 6
  %34 = icmp sgt i32 %8, -1
  %35 = select i1 %34, i32 7, i32 3
  %36 = or i32 %35, 2048
  %37 = select i1 %7, i32 %36, i32 %35
  store i32 %37, ptr %33, align 4
  %38 = getelementptr inbounds %struct.clk_hw, ptr %26, i32 0, i32 2
  store ptr %10, ptr %38, align 8
  %39 = getelementptr inbounds %struct.clk_master, ptr %26, i32 0, i32 1
  store ptr %0, ptr %39, align 4
  %40 = getelementptr inbounds %struct.clk_master, ptr %26, i32 0, i32 9
  store i8 %6, ptr %40, align 8
  %41 = getelementptr inbounds %struct.clk_master, ptr %26, i32 0, i32 8
  store i32 %8, ptr %41, align 4
  %42 = getelementptr inbounds %struct.clk_master, ptr %26, i32 0, i32 2
  store ptr %5, ptr %42, align 8
  %43 = getelementptr inbounds %struct.clk_master, ptr %26, i32 0, i32 6
  store ptr %4, ptr %43, align 4
  %44 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %5) #11
  %45 = zext i8 %6 to i32
  %46 = call i32 @regmap_write(ptr noundef %0, i32 noundef 48, i32 noundef %45) #11
  %47 = call i32 @regmap_read(ptr noundef %0, i32 noundef 48, ptr noundef nonnull %11) #11
  %48 = load i32, ptr %11, align 4
  %49 = lshr i32 %48, 16
  %50 = trunc i32 %49 to i8
  %51 = and i8 %50, 31
  %52 = getelementptr inbounds %struct.clk_master, ptr %26, i32 0, i32 10
  store i8 %51, ptr %52, align 1
  %53 = lshr i32 %48, 8
  %54 = trunc i32 %53 to i8
  %55 = and i8 %54, 7
  %56 = getelementptr inbounds %struct.clk_master, ptr %26, i32 0, i32 11
  store i8 %55, ptr %56, align 2
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %5, i32 noundef %44) #11
  %57 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %26) #11
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %28
  call void @kfree(ptr noundef nonnull %26) #11
  %60 = inttoptr i32 %57 to ptr
  br label %61

61:                                               ; preds = %59, %28, %24, %9
  %62 = phi ptr [ %60, %59 ], [ %26, %28 ], [ inttoptr (i32 -22 to ptr), %9 ], [ inttoptr (i32 -12 to ptr), %24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %10) #11
  ret ptr %62
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_master_prepare(ptr nocapture noundef readonly %0) #4 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #11
  %6 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 9
  %7 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 1
  %8 = load i8, ptr %6, align 4
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, i32 8, i32 67108864
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  %11 = load ptr, ptr %7, align 4
  %12 = call i32 @regmap_read(ptr noundef %11, i32 noundef 104, ptr noundef nonnull %2) #11
  %13 = load i32, ptr %2, align 4
  %14 = and i32 %13, %10
  %15 = icmp eq i32 %14, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br i1 %15, label %16, label %25

16:                                               ; preds = %16, %1
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !10
  %17 = load i8, ptr %6, align 4
  %18 = icmp eq i8 %17, 0
  %19 = select i1 %18, i32 8, i32 67108864
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  %20 = load ptr, ptr %7, align 4
  %21 = call i32 @regmap_read(ptr noundef %20, i32 noundef 104, ptr noundef nonnull %2) #11
  %22 = load i32, ptr %2, align 4
  %23 = and i32 %22, %19
  %24 = icmp eq i32 %23, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br i1 %24, label %16, label %25

25:                                               ; preds = %16, %1
  %26 = load ptr, ptr %3, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %5) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_master_is_prepared(ptr nocapture noundef readonly %0) #4 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #11
  %6 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 9
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, i32 8, i32 67108864
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  %10 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 @regmap_read(ptr noundef %11, i32 noundef 104, ptr noundef nonnull %2) #11
  %13 = load i32, ptr %2, align 4
  %14 = and i32 %13, %9
  %15 = icmp ne i32 %14, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  %16 = load ptr, ptr %3, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %5) #11
  %17 = zext i1 %15 to i32
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_master_pres_save_context(ptr noundef %0) #4 {
  %2 = alloca i32, align 4
  %3 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #11
  %7 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %10, align 4
  %12 = call i32 @regmap_read(ptr noundef %8, i32 noundef %11, ptr noundef nonnull %2) #11
  %13 = load ptr, ptr %4, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %6) #11
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr inbounds %struct.clk_master_layout, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr %2, align 4
  %18 = and i32 %17, %16
  store i32 %18, ptr %2, align 4
  %19 = getelementptr inbounds %struct.clk_master_layout, ptr %14, i32 0, i32 2
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i32
  %22 = lshr i32 %18, %21
  %23 = and i32 %22, 7
  %24 = icmp eq i32 %23, 7
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.clk_master_characteristics, ptr %27, i32 0, i32 2
  %29 = load i8, ptr %28, align 4
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25, %1
  %32 = shl nuw nsw i32 1, %23
  br label %33

33:                                               ; preds = %31, %25
  %34 = phi i32 [ %32, %31 ], [ 3, %25 ]
  %35 = and i32 %18, 3
  %36 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 5, i32 3
  store i32 %35, ptr %36, align 4
  %37 = call i32 @clk_hw_get_rate(ptr noundef %3) #11
  %38 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 5, i32 1
  store i32 %37, ptr %38, align 4
  %39 = lshr i32 %34, 1
  %40 = add i32 %37, %39
  %41 = udiv i32 %40, %34
  %42 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 5
  store i32 %41, ptr %42, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_master_pres_restore_context(ptr nocapture noundef readonly %0) #4 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #11
  %6 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 4
  %11 = call i32 @regmap_read(ptr noundef %7, i32 noundef %10, ptr noundef nonnull %2) #11
  %12 = load ptr, ptr %3, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %5) #11
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr inbounds %struct.clk_master_layout, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %2, align 4
  %17 = and i32 %16, %15
  store i32 %17, ptr %2, align 4
  %18 = getelementptr inbounds %struct.clk_master_layout, ptr %13, i32 0, i32 2
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i32
  %21 = lshr i32 %17, %20
  %22 = and i32 %21, 7
  %23 = icmp eq i32 %22, 7
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.clk_master_characteristics, ptr %26, i32 0, i32 2
  %28 = load i8, ptr %27, align 4
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24, %1
  %31 = shl nuw nsw i32 1, %22
  br label %32

32:                                               ; preds = %30, %24
  %33 = phi i32 [ %31, %30 ], [ 3, %24 ]
  %34 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 5, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = lshr i32 %33, 1
  %39 = add i32 %37, %38
  %40 = udiv i32 %39, %33
  %41 = icmp eq i32 %40, %35
  br i1 %41, label %42, label %47

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 5, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %17, 3
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %49, label %47

47:                                               ; preds = %42, %32
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %49

49:                                               ; preds = %47, %42
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_master_pres_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #11
  %9 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 4
  %14 = call i32 @regmap_read(ptr noundef %10, i32 noundef %13, ptr noundef nonnull %3) #11
  %15 = load ptr, ptr %6, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %8) #11
  %16 = load ptr, ptr %11, align 4
  %17 = getelementptr inbounds %struct.clk_master_layout, ptr %16, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %3, align 4
  %20 = and i32 %19, %18
  %21 = getelementptr inbounds %struct.clk_master_layout, ptr %16, i32 0, i32 2
  %22 = load i8, ptr %21, align 4
  %23 = zext i8 %22 to i32
  %24 = lshr i32 %20, %23
  %25 = and i32 %24, 7
  %26 = icmp eq i32 %25, 7
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.clk_master_characteristics, ptr %5, i32 0, i32 2
  %29 = load i8, ptr %28, align 4
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %2
  %32 = shl nuw nsw i32 1, %25
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi i32 [ %32, %31 ], [ 3, %27 ]
  %35 = lshr i32 %34, 1
  %36 = add i32 %35, %1
  %37 = udiv i32 %36, %34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @clk_master_pres_get_parent(ptr nocapture noundef readonly %0) #4 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #11
  %6 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 4
  %11 = call i32 @regmap_read(ptr noundef %7, i32 noundef %10, ptr noundef nonnull %2) #11
  %12 = load ptr, ptr %3, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %5) #11
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr inbounds %struct.clk_master_layout, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %2, align 4
  %17 = and i32 %16, %15
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret i8 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_master_pres_restore_context_chg(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 5, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 @clk_master_pres_set_rate(ptr noundef %0, i32 noundef %3, i32 noundef %5)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_master_pres_determine_rate(ptr noundef %0, ptr nocapture noundef %1) #4 {
  %3 = alloca %struct.clk_rate_request, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef align 4 dereferenceable(20) %1, i32 20, i1 false)
  %4 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %49, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef %7) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %49, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.clk_master_characteristics, ptr %5, i32 0, i32 2
  %14 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  %15 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  br label %16

16:                                               ; preds = %44, %12
  %17 = phi i32 [ 0, %12 ], [ %47, %44 ]
  %18 = phi i32 [ -2147483648, %12 ], [ %46, %44 ]
  %19 = phi i32 [ -2147483648, %12 ], [ %45, %44 ]
  %20 = load i8, ptr %13, align 4
  %21 = icmp ne i8 %20, 0
  %22 = icmp eq i32 %17, 7
  %23 = select i1 %21, i1 %22, i1 false
  %24 = shl nuw nsw i32 1, %17
  %25 = select i1 %23, i32 3, i32 %24
  %26 = load i32, ptr %1, align 4
  %27 = mul i32 %25, %26
  store i32 %27, ptr %3, align 4
  %28 = call i32 @__clk_determine_rate(ptr noundef nonnull %10, ptr noundef nonnull %3) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %16
  %31 = load i32, ptr %3, align 4
  %32 = lshr i32 %31, %25
  %33 = load i32, ptr %1, align 4
  %34 = sub i32 %33, %32
  %35 = call i32 @llvm.abs.i32(i32 %34, i1 false) #11
  %36 = icmp sgt i32 %19, -1
  %37 = icmp ult i32 %19, %35
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  store i32 %31, ptr %14, align 4
  store ptr %10, ptr %15, align 4
  br label %40

40:                                               ; preds = %39, %30
  %41 = phi i32 [ %19, %30 ], [ %35, %39 ]
  %42 = phi i32 [ %18, %30 ], [ %32, %39 ]
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %40, %16
  %45 = phi i32 [ %41, %40 ], [ %19, %16 ]
  %46 = phi i32 [ %42, %40 ], [ %18, %16 ]
  %47 = add nuw nsw i32 %17, 1
  %48 = icmp eq i32 %47, 8
  br i1 %48, label %49, label %16

49:                                               ; preds = %44, %40, %9, %2
  %50 = phi i32 [ -95, %2 ], [ -95, %9 ], [ 0, %40 ], [ 0, %44 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #11
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_master_pres_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = lshr i32 %1, 1
  %7 = add i32 %6, %2
  %8 = udiv i32 %7, %1
  %9 = icmp ugt i32 %8, 7
  br i1 %9, label %70, label %10

10:                                               ; preds = %3
  %11 = icmp eq i32 %8, 3
  %12 = icmp ult i32 %7, %1
  %13 = tail call i32 @llvm.cttz.i32(i32 %8, i1 true), !range !11
  %14 = select i1 %12, i32 0, i32 %13
  %15 = select i1 %11, i32 7, i32 %14
  %16 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %17) #11
  %19 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = load i32, ptr %22, align 4
  %24 = call i32 @regmap_read(ptr noundef %20, i32 noundef %23, ptr noundef nonnull %5) #11
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %67

26:                                               ; preds = %10
  %27 = load ptr, ptr %21, align 4
  %28 = getelementptr inbounds %struct.clk_master_layout, ptr %27, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = load i32, ptr %5, align 4
  %31 = and i32 %30, %29
  store i32 %31, ptr %5, align 4
  %32 = getelementptr inbounds %struct.clk_master_layout, ptr %27, i32 0, i32 2
  %33 = load i8, ptr %32, align 4
  %34 = zext i8 %33 to i32
  %35 = lshr i32 %31, %34
  %36 = and i32 %35, 7
  %37 = icmp eq i32 %15, %36
  br i1 %37, label %67, label %38

38:                                               ; preds = %26
  %39 = shl i32 7, %34
  %40 = xor i32 %39, -1
  %41 = and i32 %31, %40
  %42 = shl i32 %15, %34
  %43 = or i32 %41, %42
  store i32 %43, ptr %5, align 4
  %44 = load ptr, ptr %19, align 4
  %45 = load i32, ptr %27, align 4
  %46 = call i32 @regmap_write(ptr noundef %44, i32 noundef %45, i32 noundef %43) #11
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 9
  %50 = load i8, ptr %49, align 4
  %51 = icmp eq i8 %50, 0
  %52 = select i1 %51, i32 8, i32 67108864
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  %53 = load ptr, ptr %19, align 4
  %54 = call i32 @regmap_read(ptr noundef %53, i32 noundef 104, ptr noundef nonnull %4) #11
  %55 = load i32, ptr %4, align 4
  %56 = and i32 %55, %52
  %57 = icmp eq i32 %56, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br i1 %57, label %58, label %67

58:                                               ; preds = %58, %48
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !13
  %59 = load i8, ptr %49, align 4
  %60 = icmp eq i8 %59, 0
  %61 = select i1 %60, i32 8, i32 67108864
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  %62 = load ptr, ptr %19, align 4
  %63 = call i32 @regmap_read(ptr noundef %62, i32 noundef 104, ptr noundef nonnull %4) #11
  %64 = load i32, ptr %4, align 4
  %65 = and i32 %64, %61
  %66 = icmp eq i32 %65, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br i1 %66, label %58, label %67

67:                                               ; preds = %58, %48, %38, %26, %10
  %68 = phi i32 [ %24, %10 ], [ 0, %26 ], [ %46, %38 ], [ 0, %48 ], [ 0, %58 ]
  %69 = load ptr, ptr %16, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %69, i32 noundef %18) #11
  br label %70

70:                                               ; preds = %67, %3
  %71 = phi i32 [ %68, %67 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i32 %71
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_determine_rate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_master_div_save_context(ptr noundef %0) #4 {
  %2 = alloca i32, align 4
  %3 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #11
  %7 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %10, align 4
  %12 = call i32 @regmap_read(ptr noundef %8, i32 noundef %11, ptr noundef nonnull %2) #11
  %13 = load ptr, ptr %4, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %6) #11
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr inbounds %struct.clk_master_layout, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr %2, align 4
  %18 = and i32 %17, %16
  store i32 %18, ptr %2, align 4
  %19 = lshr i32 %18, 8
  %20 = and i32 %19, 7
  %21 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr %struct.clk_master_characteristics, ptr %22, i32 0, i32 1, i32 %20
  %24 = load i32, ptr %23, align 4
  %25 = call i32 @clk_hw_get_rate(ptr noundef %3) #11
  %26 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 5
  %27 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 5, i32 1
  store i32 %25, ptr %27, align 4
  %28 = lshr i32 %24, 1
  %29 = add i32 %25, %28
  %30 = udiv i32 %29, %24
  store i32 %30, ptr %26, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_master_div_restore_context(ptr nocapture noundef readonly %0) #4 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #11
  %6 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 4
  %11 = call i32 @regmap_read(ptr noundef %7, i32 noundef %10, ptr noundef nonnull %2) #11
  %12 = load ptr, ptr %3, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %5) #11
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr inbounds %struct.clk_master_layout, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %2, align 4
  %17 = and i32 %16, %15
  store i32 %17, ptr %2, align 4
  %18 = lshr i32 %17, 8
  %19 = and i32 %18, 7
  %20 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr %struct.clk_master_characteristics, ptr %21, i32 0, i32 1, i32 %19
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 255
  %25 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 5
  %26 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 5, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = load i32, ptr %25, align 4
  %29 = lshr i32 %28, 1
  %30 = add i32 %29, %27
  %31 = udiv i32 %30, %28
  %32 = icmp eq i32 %24, %31
  br i1 %32, label %35, label %33

33:                                               ; preds = %1
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #13
  br label %35

35:                                               ; preds = %33, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_master_div_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #11
  %11 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %4, align 4
  %14 = load i32, ptr %13, align 4
  %15 = call i32 @regmap_read(ptr noundef %12, i32 noundef %14, ptr noundef nonnull %3) #11
  %16 = load ptr, ptr %8, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %10) #11
  %17 = getelementptr inbounds %struct.clk_master_layout, ptr %5, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %3, align 4
  %20 = and i32 %19, %18
  store i32 %20, ptr %3, align 4
  %21 = lshr i32 %20, 8
  %22 = and i32 %21, 7
  %23 = getelementptr %struct.clk_master_characteristics, ptr %7, i32 0, i32 1, i32 %22
  %24 = load i32, ptr %23, align 4
  %25 = udiv i32 %1, %24
  %26 = load i32, ptr %7, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.clk_range, ptr %7, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp ugt i32 %25, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28, %2
  %33 = phi ptr [ @.str.2, %2 ], [ @.str.3, %28 ]
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %33) #13
  br label %35

35:                                               ; preds = %32, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_master_div_restore_context_chg(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #11
  %5 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 5
  %6 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 5, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr %5, align 4
  %9 = lshr i32 %8, 1
  %10 = add i32 %9, %7
  %11 = udiv i32 %10, %8
  %12 = tail call fastcc i32 @clk_master_div_set(ptr noundef %0, i32 noundef %7, i32 noundef %11)
  %13 = load ptr, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %4) #11
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  br label %17

17:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @clk_master_div_recalc_rate_chg(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 11
  %4 = load i8, ptr %3, align 2
  %5 = zext i8 %4 to i32
  %6 = lshr i32 %5, 1
  %7 = add i32 %6, %1
  %8 = udiv i32 %7, %5
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_master_div_set(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = getelementptr %struct.clk_master_characteristics, ptr %7, i32 0, i32 1, i32 0
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %48, label %11

11:                                               ; preds = %3
  %12 = getelementptr %struct.clk_master_characteristics, ptr %7, i32 0, i32 1, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %48, label %15

15:                                               ; preds = %11
  %16 = icmp eq i32 %13, %2
  %17 = zext i1 %16 to i32
  %18 = icmp ult i32 %9, %13
  %19 = tail call i32 @llvm.umax.i32(i32 %9, i32 %13)
  %20 = zext i1 %18 to i32
  %21 = getelementptr %struct.clk_master_characteristics, ptr %7, i32 0, i32 1, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %48, label %24

24:                                               ; preds = %15
  %25 = icmp eq i32 %22, %2
  %26 = select i1 %25, i32 2, i32 %17
  %27 = icmp ult i32 %19, %22
  %28 = tail call i32 @llvm.umax.i32(i32 %19, i32 %22)
  %29 = select i1 %27, i32 2, i32 %20
  %30 = getelementptr %struct.clk_master_characteristics, ptr %7, i32 0, i32 1, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %24
  %34 = icmp eq i32 %31, %2
  %35 = select i1 %34, i32 3, i32 %26
  %36 = icmp ult i32 %28, %31
  %37 = tail call i32 @llvm.umax.i32(i32 %28, i32 %31)
  %38 = select i1 %36, i32 3, i32 %29
  %39 = getelementptr %struct.clk_master_characteristics, ptr %7, i32 0, i32 1, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %33
  %43 = icmp eq i32 %40, %2
  %44 = select i1 %43, i32 4, i32 %35
  %45 = icmp ult i32 %37, %40
  %46 = tail call i32 @llvm.umax.i32(i32 %37, i32 %40)
  %47 = select i1 %45, i32 4, i32 %38
  br label %48

48:                                               ; preds = %42, %33, %24, %15, %11, %3
  %49 = phi i32 [ 0, %3 ], [ %9, %11 ], [ %19, %15 ], [ %28, %24 ], [ %37, %33 ], [ %46, %42 ]
  %50 = phi i32 [ 0, %3 ], [ 0, %11 ], [ %17, %15 ], [ %26, %24 ], [ %35, %33 ], [ %44, %42 ]
  %51 = phi i32 [ 0, %3 ], [ 0, %11 ], [ %20, %15 ], [ %29, %24 ], [ %38, %33 ], [ %47, %42 ]
  %52 = icmp ult i32 %49, %2
  %53 = select i1 %52, i32 %51, i32 %50
  %54 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = load i32, ptr %57, align 4
  %59 = call i32 @regmap_read(ptr noundef %55, i32 noundef %58, ptr noundef nonnull %5) #11
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %116

61:                                               ; preds = %48
  %62 = load ptr, ptr %56, align 4
  %63 = getelementptr inbounds %struct.clk_master_layout, ptr %62, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = load i32, ptr %5, align 4
  %66 = and i32 %65, %64
  store i32 %66, ptr %5, align 4
  %67 = lshr i32 %66, 8
  %68 = and i32 %67, 7
  %69 = icmp eq i32 %68, %53
  br i1 %69, label %116, label %70

70:                                               ; preds = %61
  %71 = getelementptr %struct.clk_master_characteristics, ptr %7, i32 0, i32 1, i32 %53
  %72 = load i32, ptr %71, align 4
  %73 = udiv i32 %1, %72
  %74 = load i32, ptr %7, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.clk_range, ptr %7, i32 0, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = icmp ugt i32 %73, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76, %70
  %81 = phi ptr [ @.str.2, %70 ], [ @.str.3, %76 ]
  %82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %81) #13
  br label %83

83:                                               ; preds = %80, %76
  %84 = load i32, ptr %5, align 4
  %85 = and i32 %84, -1793
  %86 = shl nuw nsw i32 %53, 8
  %87 = or i32 %85, %86
  store i32 %87, ptr %5, align 4
  %88 = load ptr, ptr %54, align 4
  %89 = load ptr, ptr %56, align 4
  %90 = load i32, ptr %89, align 4
  %91 = call i32 @regmap_write(ptr noundef %88, i32 noundef %90, i32 noundef %87) #11
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %116

93:                                               ; preds = %83
  %94 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 9
  %95 = load i8, ptr %94, align 4
  %96 = icmp eq i8 %95, 0
  %97 = select i1 %96, i32 8, i32 67108864
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  %98 = load ptr, ptr %54, align 4
  %99 = call i32 @regmap_read(ptr noundef %98, i32 noundef 104, ptr noundef nonnull %4) #11
  %100 = load i32, ptr %4, align 4
  %101 = and i32 %100, %97
  %102 = icmp eq i32 %101, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br i1 %102, label %103, label %112

103:                                              ; preds = %103, %93
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !15
  %104 = load i8, ptr %94, align 4
  %105 = icmp eq i8 %104, 0
  %106 = select i1 %105, i32 8, i32 67108864
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  %107 = load ptr, ptr %54, align 4
  %108 = call i32 @regmap_read(ptr noundef %107, i32 noundef 104, ptr noundef nonnull %4) #11
  %109 = load i32, ptr %4, align 4
  %110 = and i32 %109, %106
  %111 = icmp eq i32 %110, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br i1 %111, label %103, label %112

112:                                              ; preds = %103, %93
  %113 = load i32, ptr %71, align 4
  %114 = trunc i32 %113 to i8
  %115 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 11
  store i8 %114, ptr %115, align 2
  br label %116

116:                                              ; preds = %112, %83, %61, %48
  %117 = phi i32 [ 0, %112 ], [ %59, %48 ], [ 0, %61 ], [ %91, %83 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i32 %117
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_master_div_notifier_fn(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #4 {
  %4 = alloca i32, align 4
  %5 = load ptr, ptr @master_div, align 4
  %6 = getelementptr inbounds %struct.clk_master, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.clk_master, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #11
  switch i32 %1, label %158 [
    i32 1, label %11
    i32 2, label %38
  ]

11:                                               ; preds = %3
  %12 = load ptr, ptr @master_div, align 4
  %13 = getelementptr inbounds %struct.clk_master, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.clk_master, ptr %12, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %16, align 4
  %18 = call i32 @regmap_read(ptr noundef %14, i32 noundef %17, ptr noundef nonnull %4) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %158

20:                                               ; preds = %11
  %21 = load ptr, ptr @master_div, align 4
  %22 = getelementptr inbounds %struct.clk_master, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.clk_master_layout, ptr %23, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = load i32, ptr %4, align 4
  %27 = and i32 %26, %25
  store i32 %27, ptr %4, align 4
  %28 = lshr i32 %27, 8
  %29 = and i32 %28, 7
  %30 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr %struct.clk_master_characteristics, ptr %7, i32 0, i32 1, i32 %29
  %33 = load i32, ptr %32, align 4
  %34 = mul i32 %33, %31
  %35 = getelementptr inbounds %struct.clk_master, ptr %21, i32 0, i32 12
  %36 = load i32, ptr %35, align 4
  %37 = call fastcc i32 @clk_master_div_set(ptr noundef %21, i32 noundef %34, i32 noundef %36)
  br label %158

38:                                               ; preds = %3
  %39 = load ptr, ptr @master_div, align 4
  %40 = getelementptr inbounds %struct.clk_master, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.clk_master, ptr %39, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = load i32, ptr %43, align 4
  %45 = call i32 @regmap_read(ptr noundef %41, i32 noundef %44, ptr noundef nonnull %4) #11
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %158

47:                                               ; preds = %38
  %48 = load ptr, ptr @master_div, align 4
  %49 = getelementptr inbounds %struct.clk_master, ptr %48, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.clk_master_layout, ptr %50, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = load i32, ptr %4, align 4
  %54 = and i32 %53, %52
  store i32 %54, ptr %4, align 4
  %55 = lshr i32 %54, 8
  %56 = and i32 %55, 7
  %57 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr %struct.clk_master_characteristics, ptr %7, i32 0, i32 1, i32 %56
  %60 = load i32, ptr %59, align 4
  %61 = mul i32 %60, %58
  %62 = getelementptr inbounds %struct.clk_range, ptr %7, i32 0, i32 1
  %63 = getelementptr %struct.clk_master_characteristics, ptr %7, i32 0, i32 1, i32 0
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %153, label %66

66:                                               ; preds = %47
  %67 = lshr i32 %64, 1
  %68 = add i32 %67, %61
  %69 = udiv i32 %68, %64
  %70 = load i32, ptr %62, align 4
  %71 = sub i32 %70, %69
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %66
  %74 = icmp eq i32 %70, %69
  br i1 %74, label %153, label %75

75:                                               ; preds = %73, %66
  %76 = phi i32 [ 0, %66 ], [ %64, %73 ]
  %77 = phi i32 [ -1, %66 ], [ %71, %73 ]
  %78 = getelementptr %struct.clk_master_characteristics, ptr %7, i32 0, i32 1, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %153, label %81

81:                                               ; preds = %75
  %82 = lshr i32 %79, 1
  %83 = add i32 %82, %61
  %84 = udiv i32 %83, %79
  %85 = load i32, ptr %62, align 4
  %86 = sub i32 %85, %84
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %81
  %89 = icmp slt i32 %77, 0
  %90 = icmp sgt i32 %77, %86
  %91 = select i1 %89, i1 true, i1 %90
  %92 = select i1 %91, i32 %79, i32 %76
  %93 = select i1 %91, i32 %86, i32 %77
  %94 = icmp eq i32 %85, %84
  br i1 %94, label %153, label %95

95:                                               ; preds = %88, %81
  %96 = phi i32 [ %76, %81 ], [ %92, %88 ]
  %97 = phi i32 [ %77, %81 ], [ %93, %88 ]
  %98 = getelementptr %struct.clk_master_characteristics, ptr %7, i32 0, i32 1, i32 2
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %153, label %101

101:                                              ; preds = %95
  %102 = lshr i32 %99, 1
  %103 = add i32 %102, %61
  %104 = udiv i32 %103, %99
  %105 = load i32, ptr %62, align 4
  %106 = sub i32 %105, %104
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %101
  %109 = icmp slt i32 %97, 0
  %110 = icmp sgt i32 %97, %106
  %111 = select i1 %109, i1 true, i1 %110
  %112 = select i1 %111, i32 %99, i32 %96
  %113 = select i1 %111, i32 %106, i32 %97
  %114 = icmp eq i32 %105, %104
  br i1 %114, label %153, label %115

115:                                              ; preds = %108, %101
  %116 = phi i32 [ %96, %101 ], [ %112, %108 ]
  %117 = phi i32 [ %97, %101 ], [ %113, %108 ]
  %118 = getelementptr %struct.clk_master_characteristics, ptr %7, i32 0, i32 1, i32 3
  %119 = load i32, ptr %118, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %153, label %121

121:                                              ; preds = %115
  %122 = lshr i32 %119, 1
  %123 = add i32 %122, %61
  %124 = udiv i32 %123, %119
  %125 = load i32, ptr %62, align 4
  %126 = sub i32 %125, %124
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %121
  %129 = icmp slt i32 %117, 0
  %130 = icmp sgt i32 %117, %126
  %131 = select i1 %129, i1 true, i1 %130
  %132 = select i1 %131, i32 %119, i32 %116
  %133 = select i1 %131, i32 %126, i32 %117
  %134 = icmp eq i32 %125, %124
  br i1 %134, label %153, label %135

135:                                              ; preds = %128, %121
  %136 = phi i32 [ %116, %121 ], [ %132, %128 ]
  %137 = phi i32 [ %117, %121 ], [ %133, %128 ]
  %138 = getelementptr %struct.clk_master_characteristics, ptr %7, i32 0, i32 1, i32 4
  %139 = load i32, ptr %138, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %153, label %141

141:                                              ; preds = %135
  %142 = lshr i32 %139, 1
  %143 = add i32 %142, %61
  %144 = udiv i32 %143, %139
  %145 = load i32, ptr %62, align 4
  %146 = sub i32 %145, %144
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %141
  %149 = icmp slt i32 %137, 0
  %150 = icmp sgt i32 %137, %146
  %151 = select i1 %149, i1 true, i1 %150
  %152 = select i1 %151, i32 %139, i32 %136
  br label %153

153:                                              ; preds = %148, %141, %135, %128, %115, %108, %95, %88, %75, %73, %47
  %154 = phi i32 [ %64, %73 ], [ 0, %47 ], [ %76, %75 ], [ %92, %88 ], [ %96, %95 ], [ %112, %108 ], [ %116, %115 ], [ %132, %128 ], [ %136, %135 ], [ %136, %141 ], [ %152, %148 ]
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %153
  %157 = call fastcc i32 @clk_master_div_set(ptr noundef %48, i32 noundef %61, i32 noundef %154)
  br label %158

158:                                              ; preds = %156, %153, %38, %20, %11, %3
  %159 = phi i32 [ 1, %156 ], [ 0, %20 ], [ 32768, %11 ], [ 32768, %38 ], [ 32768, %153 ], [ 0, %3 ]
  %160 = load ptr, ptr @master_div, align 4
  %161 = getelementptr inbounds %struct.clk_master, ptr %160, i32 0, i32 2
  %162 = load ptr, ptr %161, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %162, i32 noundef %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %159
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_sama7g5_master_enable(ptr nocapture noundef readonly %0) #4 {
  tail call fastcc void @clk_sama7g5_master_set(ptr noundef %0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_sama7g5_master_disable(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #11
  %5 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 9
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i32
  %10 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 48, i32 noundef %9) #11
  %11 = load ptr, ptr %5, align 4
  %12 = load i8, ptr %7, align 4
  %13 = and i8 %12, 15
  %14 = or i8 %13, -128
  %15 = zext i8 %14 to i32
  %16 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 48, i32 noundef 268435599, i32 noundef %15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %17 = load ptr, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_sama7g5_master_is_enabled(ptr nocapture noundef readonly %0) #4 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #11
  %6 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 9
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i32
  %11 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 48, i32 noundef %10) #11
  %12 = load ptr, ptr %6, align 4
  %13 = call i32 @regmap_read(ptr noundef %12, i32 noundef 48, ptr noundef nonnull %2) #11
  %14 = load ptr, ptr %3, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %5) #11
  %15 = load i32, ptr %2, align 4
  %16 = lshr i32 %15, 28
  %17 = and i32 %16, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_sama7g5_master_save_context(ptr nocapture noundef %0) #4 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #11
  %6 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 9
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i32
  %11 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 48, i32 noundef %10) #11
  %12 = load ptr, ptr %6, align 4
  %13 = call i32 @regmap_read(ptr noundef %12, i32 noundef 48, ptr noundef nonnull %2) #11
  %14 = load ptr, ptr %3, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %5) #11
  %15 = load i32, ptr %2, align 4
  %16 = lshr i32 %15, 28
  %17 = and i32 %16, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  %18 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 5, i32 2
  store i32 %17, ptr %18, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_sama7g5_master_restore_context(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 5, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call fastcc void @clk_sama7g5_master_set(ptr noundef %0)
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @clk_sama7g5_master_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 11
  %4 = load i8, ptr %3, align 2
  %5 = zext i8 %4 to i32
  %6 = shl nuw i32 1, %5
  %7 = sdiv i32 %6, 2
  %8 = add i32 %7, %1
  %9 = lshr i32 %8, %5
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_sama7g5_master_determine_rate(ptr noundef %0, ptr nocapture noundef %1) #4 {
  %3 = alloca %struct.clk_rate_request, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef align 4 dereferenceable(20) %1, i32 20, i1 false)
  %4 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %111, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  %8 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  br label %9

9:                                                ; preds = %105, %6
  %10 = phi i32 [ 0, %6 ], [ %108, %105 ]
  %11 = phi i32 [ -2147483648, %6 ], [ %107, %105 ]
  %12 = phi i32 [ -2147483648, %6 ], [ %106, %105 ]
  %13 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef %10) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %105, label %15

15:                                               ; preds = %9
  %16 = tail call i32 @clk_hw_get_rate(ptr noundef nonnull %13) #11
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %105, label %18

18:                                               ; preds = %15
  %19 = udiv i32 %16, 3
  %20 = load i32, ptr %1, align 4
  %21 = sub i32 %20, %16
  %22 = tail call i32 @llvm.abs.i32(i32 %21, i1 false) #11
  %23 = icmp sgt i32 %11, -1
  %24 = icmp ult i32 %11, %22
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %101, label %100

26:                                               ; preds = %101
  %27 = lshr i32 %16, 1
  %28 = sub i32 %20, %27
  %29 = tail call i32 @llvm.abs.i32(i32 %28, i1 false) #11
  %30 = icmp sgt i32 %103, -1
  %31 = icmp ult i32 %103, %29
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %35, label %33

33:                                               ; preds = %26
  store i32 %16, ptr %7, align 4
  store ptr %13, ptr %8, align 4
  %34 = icmp eq i32 %20, %27
  br i1 %34, label %111, label %35

35:                                               ; preds = %33, %26
  %36 = phi i32 [ %29, %33 ], [ %103, %26 ]
  %37 = phi i32 [ %27, %33 ], [ %102, %26 ]
  %38 = lshr i32 %16, 2
  %39 = sub i32 %20, %38
  %40 = tail call i32 @llvm.abs.i32(i32 %39, i1 false) #11
  %41 = icmp sgt i32 %36, -1
  %42 = icmp ult i32 %36, %40
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %46, label %44

44:                                               ; preds = %35
  store i32 %16, ptr %7, align 4
  store ptr %13, ptr %8, align 4
  %45 = icmp eq i32 %20, %38
  br i1 %45, label %111, label %46

46:                                               ; preds = %44, %35
  %47 = phi i32 [ %40, %44 ], [ %36, %35 ]
  %48 = phi i32 [ %38, %44 ], [ %37, %35 ]
  %49 = lshr i32 %16, 3
  %50 = sub i32 %20, %49
  %51 = tail call i32 @llvm.abs.i32(i32 %50, i1 false) #11
  %52 = icmp sgt i32 %47, -1
  %53 = icmp ult i32 %47, %51
  %54 = select i1 %52, i1 %53, i1 false
  br i1 %54, label %57, label %55

55:                                               ; preds = %46
  store i32 %16, ptr %7, align 4
  store ptr %13, ptr %8, align 4
  %56 = icmp eq i32 %20, %49
  br i1 %56, label %111, label %57

57:                                               ; preds = %55, %46
  %58 = phi i32 [ %51, %55 ], [ %47, %46 ]
  %59 = phi i32 [ %49, %55 ], [ %48, %46 ]
  %60 = lshr i32 %16, 4
  %61 = sub i32 %20, %60
  %62 = tail call i32 @llvm.abs.i32(i32 %61, i1 false) #11
  %63 = icmp sgt i32 %58, -1
  %64 = icmp ult i32 %58, %62
  %65 = select i1 %63, i1 %64, i1 false
  br i1 %65, label %68, label %66

66:                                               ; preds = %57
  store i32 %16, ptr %7, align 4
  store ptr %13, ptr %8, align 4
  %67 = icmp eq i32 %20, %60
  br i1 %67, label %111, label %68

68:                                               ; preds = %66, %57
  %69 = phi i32 [ %62, %66 ], [ %58, %57 ]
  %70 = phi i32 [ %60, %66 ], [ %59, %57 ]
  %71 = lshr i32 %16, 5
  %72 = sub i32 %20, %71
  %73 = tail call i32 @llvm.abs.i32(i32 %72, i1 false) #11
  %74 = icmp sgt i32 %69, -1
  %75 = icmp ult i32 %69, %73
  %76 = select i1 %74, i1 %75, i1 false
  br i1 %76, label %79, label %77

77:                                               ; preds = %68
  store i32 %16, ptr %7, align 4
  store ptr %13, ptr %8, align 4
  %78 = icmp eq i32 %20, %71
  br i1 %78, label %111, label %79

79:                                               ; preds = %77, %68
  %80 = phi i32 [ %73, %77 ], [ %69, %68 ]
  %81 = phi i32 [ %71, %77 ], [ %70, %68 ]
  %82 = lshr i32 %16, 6
  %83 = sub i32 %20, %82
  %84 = tail call i32 @llvm.abs.i32(i32 %83, i1 false) #11
  %85 = icmp sgt i32 %80, -1
  %86 = icmp ult i32 %80, %84
  %87 = select i1 %85, i1 %86, i1 false
  br i1 %87, label %90, label %88

88:                                               ; preds = %79
  store i32 %16, ptr %7, align 4
  store ptr %13, ptr %8, align 4
  %89 = icmp eq i32 %20, %82
  br i1 %89, label %111, label %90

90:                                               ; preds = %88, %79
  %91 = phi i32 [ %84, %88 ], [ %80, %79 ]
  %92 = phi i32 [ %82, %88 ], [ %81, %79 ]
  %93 = sub i32 %20, %19
  %94 = tail call i32 @llvm.abs.i32(i32 %93, i1 false) #11
  %95 = icmp sgt i32 %91, -1
  %96 = icmp ult i32 %91, %94
  %97 = select i1 %95, i1 %96, i1 false
  br i1 %97, label %105, label %98

98:                                               ; preds = %90
  store i32 %16, ptr %7, align 4
  store ptr %13, ptr %8, align 4
  %99 = icmp eq i32 %20, %19
  br i1 %99, label %111, label %105

100:                                              ; preds = %18
  store i32 %16, ptr %7, align 4
  store ptr %13, ptr %8, align 4
  br label %101

101:                                              ; preds = %100, %18
  %102 = phi i32 [ %12, %18 ], [ %16, %100 ]
  %103 = phi i32 [ %11, %18 ], [ %22, %100 ]
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %111, label %26

105:                                              ; preds = %98, %90, %15, %9
  %106 = phi i32 [ %12, %9 ], [ %12, %15 ], [ %19, %98 ], [ %92, %90 ]
  %107 = phi i32 [ %11, %9 ], [ %11, %15 ], [ %94, %98 ], [ %91, %90 ]
  %108 = add nuw i32 %10, 1
  %109 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #11
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %9, label %111

111:                                              ; preds = %105, %101, %98, %88, %77, %66, %55, %44, %33, %2
  %112 = phi i32 [ -2147483648, %2 ], [ %106, %105 ], [ %19, %98 ], [ %82, %88 ], [ %71, %77 ], [ %60, %66 ], [ %49, %55 ], [ %38, %44 ], [ %27, %33 ], [ %102, %101 ]
  %113 = phi i32 [ -2147483648, %2 ], [ %107, %105 ], [ 0, %98 ], [ 0, %88 ], [ 0, %77 ], [ 0, %66 ], [ 0, %55 ], [ 0, %44 ], [ 0, %33 ], [ 0, %101 ]
  %114 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 8
  %115 = load i32, ptr %114, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %155, label %117

117:                                              ; preds = %111
  %118 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef %115) #11
  %119 = icmp eq ptr %118, null
  br i1 %119, label %155, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  %122 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  br label %123

123:                                              ; preds = %150, %120
  %124 = phi i32 [ 0, %120 ], [ %153, %150 ]
  %125 = phi i32 [ %113, %120 ], [ %152, %150 ]
  %126 = phi i32 [ %112, %120 ], [ %151, %150 ]
  %127 = icmp eq i32 %124, 7
  %128 = load i32, ptr %1, align 4
  %129 = shl i32 %128, %124
  %130 = mul i32 %128, 3
  %131 = select i1 %127, i32 %130, i32 %129
  store i32 %131, ptr %3, align 4
  %132 = call i32 @__clk_determine_rate(ptr noundef nonnull %118, ptr noundef nonnull %3) #11
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %150

134:                                              ; preds = %123
  %135 = load i32, ptr %3, align 4
  %136 = udiv i32 %135, 3
  %137 = lshr i32 %135, %124
  %138 = select i1 %127, i32 %136, i32 %137
  %139 = load i32, ptr %1, align 4
  %140 = sub i32 %139, %138
  %141 = call i32 @llvm.abs.i32(i32 %140, i1 false) #11
  %142 = icmp sgt i32 %125, -1
  %143 = icmp ult i32 %125, %141
  %144 = select i1 %142, i1 %143, i1 false
  br i1 %144, label %146, label %145

145:                                              ; preds = %134
  store i32 %135, ptr %121, align 4
  store ptr %118, ptr %122, align 4
  br label %146

146:                                              ; preds = %145, %134
  %147 = phi i32 [ %126, %134 ], [ %138, %145 ]
  %148 = phi i32 [ %125, %134 ], [ %141, %145 ]
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %155, label %150

150:                                              ; preds = %146, %123
  %151 = phi i32 [ %147, %146 ], [ %126, %123 ]
  %152 = phi i32 [ %148, %146 ], [ %125, %123 ]
  %153 = add nuw nsw i32 %124, 1
  %154 = icmp eq i32 %153, 8
  br i1 %154, label %155, label %123

155:                                              ; preds = %150, %146, %117, %111
  %156 = phi i32 [ %112, %111 ], [ %112, %117 ], [ %151, %150 ], [ %147, %146 ]
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %155
  store i32 %156, ptr %1, align 4
  br label %159

159:                                              ; preds = %158, %155
  %160 = phi i32 [ 0, %158 ], [ -22, %155 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #11
  ret i32 %160
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_sama7g5_master_set_parent(ptr noundef %0, i8 noundef zeroext %1) #4 {
  %3 = zext i8 %1 to i32
  %4 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #11
  %5 = icmp ugt i32 %4, %3
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #11
  %10 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @clk_mux_index_to_val(ptr noundef %11, i32 noundef 0, i8 noundef zeroext %1) #11
  %13 = trunc i32 %12 to i8
  %14 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 10
  store i8 %13, ptr %14, align 1
  %15 = load ptr, ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %9) #11
  br label %16

16:                                               ; preds = %6, %2
  %17 = phi i32 [ 0, %6 ], [ -22, %2 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @clk_sama7g5_master_get_parent(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #11
  %5 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 10
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = tail call i32 @clk_mux_val_to_index(ptr noundef %0, ptr noundef %6, i32 noundef 0, i32 noundef %9) #11
  %11 = trunc i32 %10 to i8
  %12 = load ptr, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %4) #11
  ret i8 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_sama7g5_master_set_rate(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = lshr i32 %1, 1
  %5 = add i32 %4, %2
  %6 = udiv i32 %5, %1
  %7 = icmp ult i32 %6, 65
  %8 = tail call i32 @llvm.ctpop.i32(i32 %6), !range !11
  %9 = icmp ult i32 %8, 2
  %10 = and i1 %7, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %3
  %12 = icmp eq i32 %6, 3
  br i1 %12, label %18, label %13

13:                                               ; preds = %11
  %14 = icmp ult i32 %5, %1
  br i1 %14, label %18, label %15

15:                                               ; preds = %13
  %16 = tail call i32 @llvm.cttz.i32(i32 %6, i1 true), !range !11
  %17 = trunc i32 %16 to i8
  br label %18

18:                                               ; preds = %15, %13, %11
  %19 = phi i8 [ %17, %15 ], [ 0, %13 ], [ 7, %11 ]
  %20 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #11
  %23 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 11
  store i8 %19, ptr %23, align 2
  %24 = load ptr, ptr %20, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %22) #11
  br label %25

25:                                               ; preds = %18, %3
  %26 = phi i32 [ 0, %18 ], [ -22, %3 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @clk_sama7g5_master_set(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 10
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = shl nuw nsw i32 %6, 16
  %8 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 11
  %9 = load i8, ptr %8, align 2
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 8
  %12 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #11
  %15 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.clk_master, ptr %0, i32 0, i32 9
  %18 = load i8, ptr %17, align 4
  %19 = and i8 %18, 15
  %20 = zext i8 %19 to i32
  %21 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 48, i32 noundef %20) #11
  %22 = load ptr, ptr %15, align 4
  %23 = call i32 @regmap_read(ptr noundef %22, i32 noundef 48, ptr noundef nonnull %3) #11
  %24 = load ptr, ptr %15, align 4
  %25 = load i8, ptr %17, align 4
  %26 = and i8 %25, 15
  %27 = zext i8 %26 to i32
  %28 = or i32 %7, %11
  %29 = or i32 %28, %27
  %30 = or i32 %29, 268435584
  %31 = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 48, i32 noundef 270469007, i32 noundef %30, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %32 = load i32, ptr %3, align 4
  %33 = lshr i32 %32, 16
  %34 = and i32 %33, 31
  %35 = load i8, ptr %4, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %51, label %38

38:                                               ; preds = %47, %1
  %39 = load i8, ptr %17, align 4
  %40 = icmp eq i8 %39, 0
  %41 = select i1 %40, i32 8, i32 67108864
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  %42 = load ptr, ptr %15, align 4
  %43 = call i32 @regmap_read(ptr noundef %42, i32 noundef 104, ptr noundef nonnull %2) #11
  %44 = load i32, ptr %2, align 4
  %45 = and i32 %44, %41
  %46 = icmp eq i32 %45, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !17
  %48 = load i8, ptr %4, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %34, %49
  br i1 %50, label %51, label %38

51:                                               ; preds = %47, %38, %1
  %52 = load ptr, ptr %12, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %52, i32 noundef %14) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_mux_index_to_val(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_mux_val_to_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

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
!9 = !{i64 2151255614}
!10 = !{i64 2151255456}
!11 = !{i32 0, i32 33}
!12 = !{i64 2151289661}
!13 = !{i64 2151289503}
!14 = !{i64 2151265491}
!15 = !{i64 2151265333}
!16 = !{i64 2151328410}
!17 = !{i64 2151328252}
