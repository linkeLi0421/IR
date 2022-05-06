; ModuleID = '/llk/IR/drivers/clk/samsung/clk-pll.c_pt.bc'
source_filename = "../drivers/clk/samsung/clk-pll.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.samsung_pll_clock = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.samsung_pll_rate_table = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.samsung_clk_pll = type { %struct.clk_hw, ptr, ptr, i16, i16, i32, i32, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.samsung_clk_provider = type { ptr, ptr, %struct.spinlock, %struct.clk_hw_onecell_data }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }

@__initcall__kmod_clk_pll__152_76_samsung_pll_disable_early_timeout3 = internal global ptr @samsung_pll_disable_early_timeout, section ".initcall3.init", align 4
@pll_early_timeout = internal unnamed_addr global i1 false, align 1
@.str = private unnamed_addr constant [37 x i8] c"\013%s: could not allocate pll clk %s\0A\00", align 1
@__func__._samsung_clk_register_pll = private unnamed_addr constant [26 x i8] c"_samsung_clk_register_pll\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"drivers/clk/samsung/clk-pll.c\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"%s: could not allocate rate table for %s\0A\00", align 1
@samsung_pll2126_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll2126_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@samsung_pll3000_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll3000_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@samsung_pll35xx_clk_min_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll35xx_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@samsung_pll35xx_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll3xxx_enable, ptr @samsung_pll3xxx_disable, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll35xx_recalc_rate, ptr @samsung_pll_round_rate, ptr null, ptr null, ptr null, ptr @samsung_pll35xx_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@samsung_pll0822x_clk_min_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll0822x_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@samsung_pll0822x_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll3xxx_enable, ptr @samsung_pll3xxx_disable, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll0822x_recalc_rate, ptr @samsung_pll_round_rate, ptr null, ptr null, ptr null, ptr @samsung_pll0822x_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@samsung_pll45xx_clk_min_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll45xx_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@samsung_pll45xx_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll45xx_recalc_rate, ptr @samsung_pll_round_rate, ptr null, ptr null, ptr null, ptr @samsung_pll45xx_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@samsung_pll36xx_clk_min_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll36xx_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@samsung_pll36xx_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll3xxx_enable, ptr @samsung_pll3xxx_disable, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll36xx_recalc_rate, ptr @samsung_pll_round_rate, ptr null, ptr null, ptr null, ptr @samsung_pll36xx_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@samsung_pll0831x_clk_min_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll0831x_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@samsung_pll0831x_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll3xxx_enable, ptr @samsung_pll3xxx_disable, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll0831x_recalc_rate, ptr @samsung_pll_round_rate, ptr null, ptr null, ptr null, ptr @samsung_pll0831x_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@samsung_pll6552_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll6552_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@samsung_pll6553_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll6553_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@samsung_pll46xx_clk_min_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll46xx_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@samsung_pll46xx_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll46xx_recalc_rate, ptr @samsung_pll_round_rate, ptr null, ptr null, ptr null, ptr @samsung_pll46xx_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@samsung_s3c2410_mpll_clk_min_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @samsung_s3c2410_mpll_enable, ptr @samsung_s3c2410_mpll_disable, ptr null, ptr null, ptr null, ptr null, ptr @samsung_s3c2410_pll_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@samsung_s3c2410_mpll_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @samsung_s3c2410_mpll_enable, ptr @samsung_s3c2410_mpll_disable, ptr null, ptr null, ptr null, ptr null, ptr @samsung_s3c2410_pll_recalc_rate, ptr @samsung_pll_round_rate, ptr null, ptr null, ptr null, ptr @samsung_s3c2410_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@samsung_s3c2410_upll_clk_min_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @samsung_s3c2410_upll_enable, ptr @samsung_s3c2410_upll_disable, ptr null, ptr null, ptr null, ptr null, ptr @samsung_s3c2410_pll_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@samsung_s3c2410_upll_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @samsung_s3c2410_upll_enable, ptr @samsung_s3c2410_upll_disable, ptr null, ptr null, ptr null, ptr null, ptr @samsung_s3c2410_pll_recalc_rate, ptr @samsung_pll_round_rate, ptr null, ptr null, ptr null, ptr @samsung_s3c2410_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@samsung_s3c2440_mpll_clk_min_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @samsung_s3c2410_mpll_enable, ptr @samsung_s3c2410_mpll_disable, ptr null, ptr null, ptr null, ptr null, ptr @samsung_s3c2440_mpll_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@samsung_s3c2440_mpll_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @samsung_s3c2410_mpll_enable, ptr @samsung_s3c2410_mpll_disable, ptr null, ptr null, ptr null, ptr null, ptr @samsung_s3c2440_mpll_recalc_rate, ptr @samsung_pll_round_rate, ptr null, ptr null, ptr null, ptr @samsung_s3c2410_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@samsung_pll2550x_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll2550x_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@samsung_pll2550xx_clk_min_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll2550xx_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@samsung_pll2550xx_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll2550xx_recalc_rate, ptr @samsung_pll_round_rate, ptr null, ptr null, ptr null, ptr @samsung_pll2550xx_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@samsung_pll2650x_clk_min_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll2650x_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@samsung_pll2650x_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll2650x_recalc_rate, ptr @samsung_pll_round_rate, ptr null, ptr null, ptr null, ptr @samsung_pll2650x_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@samsung_pll2650xx_clk_min_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll2650xx_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@samsung_pll2650xx_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pll2650xx_recalc_rate, ptr @samsung_pll_round_rate, ptr null, ptr null, ptr null, ptr @samsung_pll2650xx_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"\014%s: Unknown pll type for pll clk %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"\013%s: failed to register pll clock %s : %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@timekeeping_suspended = external dso_local local_unnamed_addr global i32, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"\013Could not lock PLL %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"\013%s: Invalid rate : %lu for pll clk %s\0A\00", align 1
@__func__.samsung_pll35xx_set_rate = private unnamed_addr constant [25 x i8] c"samsung_pll35xx_set_rate\00", align 1
@__func__.samsung_pll0822x_set_rate = private unnamed_addr constant [26 x i8] c"samsung_pll0822x_set_rate\00", align 1
@__func__.samsung_pll45xx_set_rate = private unnamed_addr constant [25 x i8] c"samsung_pll45xx_set_rate\00", align 1
@__func__.samsung_pll36xx_set_rate = private unnamed_addr constant [25 x i8] c"samsung_pll36xx_set_rate\00", align 1
@__func__.samsung_pll0831x_set_rate = private unnamed_addr constant [26 x i8] c"samsung_pll0831x_set_rate\00", align 1
@__func__.samsung_pll46xx_set_rate = private unnamed_addr constant [25 x i8] c"samsung_pll46xx_set_rate\00", align 1
@__func__.samsung_s3c2410_pll_set_rate = private unnamed_addr constant [29 x i8] c"samsung_s3c2410_pll_set_rate\00", align 1
@__func__.samsung_pll2550xx_set_rate = private unnamed_addr constant [27 x i8] c"samsung_pll2550xx_set_rate\00", align 1
@__func__.samsung_pll2650x_set_rate = private unnamed_addr constant [26 x i8] c"samsung_pll2650x_set_rate\00", align 1
@__func__.samsung_pll2650xx_set_rate = private unnamed_addr constant [27 x i8] c"samsung_pll2650xx_set_rate\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_clk_pll__152_76_samsung_pll_disable_early_timeout3], section "llvm.metadata"

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal i32 @samsung_pll_disable_early_timeout() #0 section ".init.text" {
  store i1 true, ptr @pll_early_timeout, align 1
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @samsung_clk_register_pll(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 section ".init.text" {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %6, %4
  %7 = phi i32 [ %9, %6 ], [ 0, %4 ]
  %8 = getelementptr %struct.samsung_pll_clock, ptr %1, i32 %7
  tail call fastcc void @_samsung_clk_register_pll(ptr noundef %0, ptr noundef %8, ptr noundef %3) #10
  %9 = add nuw i32 %7, 1
  %10 = icmp eq i32 %9, %2
  br i1 %10, label %11, label %6

11:                                               ; preds = %6, %4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @_samsung_clk_register_pll(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 section ".init.text" {
  %4 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #11
  %5 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i32 20, i1 false), !annotation !8
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 36) #12
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds %struct.samsung_pll_clock, ptr %1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  br i1 %8, label %11, label %13

11:                                               ; preds = %3
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._samsung_clk_register_pll, ptr noundef %10) #13
  br label %169

13:                                               ; preds = %3
  store ptr %10, ptr %4, align 4
  %14 = getelementptr inbounds %struct.samsung_pll_clock, ptr %1, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 6
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.samsung_pll_clock, ptr %1, i32 0, i32 2
  %18 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 2
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 5
  store i8 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.samsung_pll_clock, ptr %1, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %37, label %23

23:                                               ; preds = %23, %13
  %24 = phi i32 [ %28, %23 ], [ 0, %13 ]
  %25 = getelementptr %struct.samsung_pll_rate_table, ptr %21, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  %28 = add i32 %24, 1
  br i1 %27, label %29, label %23

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.samsung_clk_pll, ptr %7, i32 0, i32 6
  store i32 %24, ptr %30, align 4
  %31 = mul i32 %24, 36
  %32 = tail call ptr @kmemdup(ptr noundef nonnull %21, i32 noundef %31, i32 noundef 3264) #11
  %33 = getelementptr inbounds %struct.samsung_clk_pll, ptr %7, i32 0, i32 7
  store ptr %32, ptr %33, align 8
  %34 = icmp eq ptr %32, null
  br i1 %34, label %35, label %37, !prof !9

35:                                               ; preds = %29
  %36 = load ptr, ptr %9, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1456, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__._samsung_clk_register_pll, ptr noundef %36) #11
  br label %37

37:                                               ; preds = %35, %29, %13
  %38 = getelementptr inbounds %struct.samsung_pll_clock, ptr %1, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  switch i32 %39, label %144 [
    i32 0, label %40
    i32 1, label %42
    i32 2, label %44
    i32 4, label %44
    i32 23, label %44
    i32 24, label %44
    i32 25, label %44
    i32 22, label %53
    i32 27, label %53
    i32 6, label %62
    i32 7, label %64
    i32 8, label %64
    i32 3, label %71
    i32 5, label %71
    i32 28, label %80
    i32 12, label %89
    i32 13, label %89
    i32 14, label %91
    i32 9, label %93
    i32 10, label %93
    i32 11, label %93
    i32 26, label %93
    i32 15, label %100
    i32 16, label %107
    i32 17, label %114
    i32 18, label %121
    i32 19, label %123
    i32 20, label %130
    i32 21, label %137
  ]

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 1
  store ptr @samsung_pll2126_clk_ops, ptr %41, align 4
  br label %148

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 1
  store ptr @samsung_pll3000_clk_ops, ptr %43, align 4
  br label %148

44:                                               ; preds = %37, %37, %37, %37, %37
  %45 = getelementptr inbounds %struct.samsung_clk_pll, ptr %7, i32 0, i32 3
  store i16 31, ptr %45, align 4
  %46 = getelementptr inbounds %struct.samsung_clk_pll, ptr %7, i32 0, i32 4
  store i16 29, ptr %46, align 2
  %47 = getelementptr inbounds %struct.samsung_clk_pll, ptr %7, i32 0, i32 7
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, null
  %50 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 1
  br i1 %49, label %51, label %52

51:                                               ; preds = %44
  store ptr @samsung_pll35xx_clk_min_ops, ptr %50, align 4
  br label %148

52:                                               ; preds = %44
  store ptr @samsung_pll35xx_clk_ops, ptr %50, align 4
  br label %148

53:                                               ; preds = %37, %37
  %54 = getelementptr inbounds %struct.samsung_clk_pll, ptr %7, i32 0, i32 3
  store i16 31, ptr %54, align 4
  %55 = getelementptr inbounds %struct.samsung_clk_pll, ptr %7, i32 0, i32 4
  store i16 29, ptr %55, align 2
  %56 = getelementptr inbounds %struct.samsung_clk_pll, ptr %7, i32 0, i32 7
  %57 = load ptr, ptr %56, align 8
  %58 = icmp eq ptr %57, null
  %59 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 1
  br i1 %58, label %60, label %61

60:                                               ; preds = %53
  store ptr @samsung_pll0822x_clk_min_ops, ptr %59, align 4
  br label %148

61:                                               ; preds = %53
  store ptr @samsung_pll0822x_clk_ops, ptr %59, align 4
  br label %148

62:                                               ; preds = %37
  %63 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 1
  store ptr @samsung_pll45xx_clk_min_ops, ptr %63, align 4
  br label %148

64:                                               ; preds = %37, %37
  %65 = getelementptr inbounds %struct.samsung_clk_pll, ptr %7, i32 0, i32 7
  %66 = load ptr, ptr %65, align 8
  %67 = icmp eq ptr %66, null
  %68 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 1
  br i1 %67, label %69, label %70

69:                                               ; preds = %64
  store ptr @samsung_pll45xx_clk_min_ops, ptr %68, align 4
  br label %148

70:                                               ; preds = %64
  store ptr @samsung_pll45xx_clk_ops, ptr %68, align 4
  br label %148

71:                                               ; preds = %37, %37
  %72 = getelementptr inbounds %struct.samsung_clk_pll, ptr %7, i32 0, i32 3
  store i16 31, ptr %72, align 4
  %73 = getelementptr inbounds %struct.samsung_clk_pll, ptr %7, i32 0, i32 4
  store i16 29, ptr %73, align 2
  %74 = getelementptr inbounds %struct.samsung_clk_pll, ptr %7, i32 0, i32 7
  %75 = load ptr, ptr %74, align 8
  %76 = icmp eq ptr %75, null
  %77 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 1
  br i1 %76, label %78, label %79

78:                                               ; preds = %71
  store ptr @samsung_pll36xx_clk_min_ops, ptr %77, align 4
  br label %148

79:                                               ; preds = %71
  store ptr @samsung_pll36xx_clk_ops, ptr %77, align 4
  br label %148

80:                                               ; preds = %37
  %81 = getelementptr inbounds %struct.samsung_clk_pll, ptr %7, i32 0, i32 3
  store i16 31, ptr %81, align 4
  %82 = getelementptr inbounds %struct.samsung_clk_pll, ptr %7, i32 0, i32 4
  store i16 29, ptr %82, align 2
  %83 = getelementptr inbounds %struct.samsung_clk_pll, ptr %7, i32 0, i32 7
  %84 = load ptr, ptr %83, align 8
  %85 = icmp eq ptr %84, null
  %86 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 1
  br i1 %85, label %87, label %88

87:                                               ; preds = %80
  store ptr @samsung_pll0831x_clk_min_ops, ptr %86, align 4
  br label %148

88:                                               ; preds = %80
  store ptr @samsung_pll0831x_clk_ops, ptr %86, align 4
  br label %148

89:                                               ; preds = %37, %37
  %90 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 1
  store ptr @samsung_pll6552_clk_ops, ptr %90, align 4
  br label %148

91:                                               ; preds = %37
  %92 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 1
  store ptr @samsung_pll6553_clk_ops, ptr %92, align 4
  br label %148

93:                                               ; preds = %37, %37, %37, %37
  %94 = getelementptr inbounds %struct.samsung_clk_pll, ptr %7, i32 0, i32 7
  %95 = load ptr, ptr %94, align 8
  %96 = icmp eq ptr %95, null
  %97 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 1
  br i1 %96, label %98, label %99

98:                                               ; preds = %93
  store ptr @samsung_pll46xx_clk_min_ops, ptr %97, align 4
  br label %148

99:                                               ; preds = %93
  store ptr @samsung_pll46xx_clk_ops, ptr %97, align 4
  br label %148

100:                                              ; preds = %37
  %101 = getelementptr inbounds %struct.samsung_clk_pll, ptr %7, i32 0, i32 7
  %102 = load ptr, ptr %101, align 8
  %103 = icmp eq ptr %102, null
  %104 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 1
  br i1 %103, label %105, label %106

105:                                              ; preds = %100
  store ptr @samsung_s3c2410_mpll_clk_min_ops, ptr %104, align 4
  br label %148

106:                                              ; preds = %100
  store ptr @samsung_s3c2410_mpll_clk_ops, ptr %104, align 4
  br label %148

107:                                              ; preds = %37
  %108 = getelementptr inbounds %struct.samsung_clk_pll, ptr %7, i32 0, i32 7
  %109 = load ptr, ptr %108, align 8
  %110 = icmp eq ptr %109, null
  %111 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 1
  br i1 %110, label %112, label %113

112:                                              ; preds = %107
  store ptr @samsung_s3c2410_upll_clk_min_ops, ptr %111, align 4
  br label %148

113:                                              ; preds = %107
  store ptr @samsung_s3c2410_upll_clk_ops, ptr %111, align 4
  br label %148

114:                                              ; preds = %37
  %115 = getelementptr inbounds %struct.samsung_clk_pll, ptr %7, i32 0, i32 7
  %116 = load ptr, ptr %115, align 8
  %117 = icmp eq ptr %116, null
  %118 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 1
  br i1 %117, label %119, label %120

119:                                              ; preds = %114
  store ptr @samsung_s3c2440_mpll_clk_min_ops, ptr %118, align 4
  br label %148

120:                                              ; preds = %114
  store ptr @samsung_s3c2440_mpll_clk_ops, ptr %118, align 4
  br label %148

121:                                              ; preds = %37
  %122 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 1
  store ptr @samsung_pll2550x_clk_ops, ptr %122, align 4
  br label %148

123:                                              ; preds = %37
  %124 = getelementptr inbounds %struct.samsung_clk_pll, ptr %7, i32 0, i32 7
  %125 = load ptr, ptr %124, align 8
  %126 = icmp eq ptr %125, null
  %127 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 1
  br i1 %126, label %128, label %129

128:                                              ; preds = %123
  store ptr @samsung_pll2550xx_clk_min_ops, ptr %127, align 4
  br label %148

129:                                              ; preds = %123
  store ptr @samsung_pll2550xx_clk_ops, ptr %127, align 4
  br label %148

130:                                              ; preds = %37
  %131 = getelementptr inbounds %struct.samsung_clk_pll, ptr %7, i32 0, i32 7
  %132 = load ptr, ptr %131, align 8
  %133 = icmp eq ptr %132, null
  %134 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 1
  br i1 %133, label %135, label %136

135:                                              ; preds = %130
  store ptr @samsung_pll2650x_clk_min_ops, ptr %134, align 4
  br label %148

136:                                              ; preds = %130
  store ptr @samsung_pll2650x_clk_ops, ptr %134, align 4
  br label %148

137:                                              ; preds = %37
  %138 = getelementptr inbounds %struct.samsung_clk_pll, ptr %7, i32 0, i32 7
  %139 = load ptr, ptr %138, align 8
  %140 = icmp eq ptr %139, null
  %141 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 1
  br i1 %140, label %142, label %143

142:                                              ; preds = %137
  store ptr @samsung_pll2650xx_clk_min_ops, ptr %141, align 4
  br label %148

143:                                              ; preds = %137
  store ptr @samsung_pll2650xx_clk_ops, ptr %141, align 4
  br label %148

144:                                              ; preds = %37
  %145 = load ptr, ptr %9, align 4
  %146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__._samsung_clk_register_pll, ptr noundef %145) #13
  %147 = load i32, ptr %38, align 4
  br label %148

148:                                              ; preds = %144, %143, %142, %136, %135, %129, %128, %121, %120, %119, %113, %112, %106, %105, %99, %98, %91, %89, %88, %87, %79, %78, %70, %69, %62, %61, %60, %52, %51, %42, %40
  %149 = phi i32 [ 21, %142 ], [ 21, %143 ], [ 20, %135 ], [ 20, %136 ], [ 19, %128 ], [ 19, %129 ], [ 17, %119 ], [ 17, %120 ], [ 16, %112 ], [ 16, %113 ], [ 15, %105 ], [ 15, %106 ], [ %39, %98 ], [ %39, %99 ], [ 28, %87 ], [ 28, %88 ], [ %39, %78 ], [ %39, %79 ], [ %39, %69 ], [ %39, %70 ], [ %39, %60 ], [ %39, %61 ], [ %39, %51 ], [ %39, %52 ], [ %147, %144 ], [ 18, %121 ], [ 14, %91 ], [ %39, %89 ], [ 6, %62 ], [ 1, %42 ], [ 0, %40 ]
  %150 = getelementptr inbounds %struct.clk_hw, ptr %7, i32 0, i32 2
  store ptr %4, ptr %150, align 8
  %151 = getelementptr inbounds %struct.samsung_clk_pll, ptr %7, i32 0, i32 5
  store i32 %149, ptr %151, align 8
  %152 = getelementptr inbounds %struct.samsung_pll_clock, ptr %1, i32 0, i32 5
  %153 = load i32, ptr %152, align 4
  %154 = getelementptr i8, ptr %2, i32 %153
  %155 = getelementptr inbounds %struct.samsung_clk_pll, ptr %7, i32 0, i32 1
  store ptr %154, ptr %155, align 4
  %156 = getelementptr inbounds %struct.samsung_pll_clock, ptr %1, i32 0, i32 4
  %157 = load i32, ptr %156, align 4
  %158 = getelementptr i8, ptr %2, i32 %157
  %159 = getelementptr inbounds %struct.samsung_clk_pll, ptr %7, i32 0, i32 2
  store ptr %158, ptr %159, align 8
  %160 = getelementptr inbounds %struct.samsung_clk_provider, ptr %0, i32 0, i32 1
  %161 = load ptr, ptr %160, align 4
  %162 = call i32 @clk_hw_register(ptr noundef %161, ptr noundef nonnull %7) #11
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %148
  %165 = load ptr, ptr %9, align 4
  %166 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__._samsung_clk_register_pll, ptr noundef %165, i32 noundef %162) #13
  call void @kfree(ptr noundef nonnull %7) #11
  br label %169

167:                                              ; preds = %148
  %168 = load i32, ptr %1, align 4
  call void @samsung_clk_add_lookup(ptr noundef %0, ptr noundef nonnull %7, i32 noundef %168) #11
  br label %169

169:                                              ; preds = %167, %164, %11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_add_lookup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_pll2126_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !10
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 255
  %9 = lshr i32 %6, 8
  %10 = and i32 %9, 63
  %11 = and i32 %6, 3
  %12 = add nuw nsw i32 %8, 8
  %13 = zext i32 %12 to i64
  %14 = mul nuw nsw i64 %13, %3
  %15 = add nuw nsw i32 %10, 2
  %16 = shl nuw nsw i32 %15, %11
  %17 = icmp ult i64 %14, 4294967296
  br i1 %17, label %18, label %21, !prof !11

18:                                               ; preds = %2
  %19 = trunc i64 %14 to i32
  %20 = udiv i32 %19, %16
  br label %25

21:                                               ; preds = %2
  %22 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %16, i64 %14) #14, !srcloc !12
  %23 = extractvalue { i64, i64 } %22, 1
  %24 = trunc i64 %23 to i32
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi i32 [ %20, %18 ], [ %24, %21 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_pll3000_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !10
  %7 = lshr i32 %6, 8
  %8 = and i32 %7, 3
  %9 = and i32 %6, 3
  %10 = lshr i32 %6, 15
  %11 = and i32 %10, 510
  %12 = add nuw nsw i32 %11, 16
  %13 = zext i32 %12 to i64
  %14 = mul nuw nsw i64 %13, %3
  %15 = shl nuw nsw i32 %8, %9
  %16 = icmp ult i64 %14, 4294967296
  br i1 %16, label %17, label %20, !prof !11

17:                                               ; preds = %2
  %18 = trunc i64 %14 to i32
  %19 = udiv i32 %18, %15
  br label %24

20:                                               ; preds = %2
  %21 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %15, i64 %14) #14, !srcloc !12
  %22 = extractvalue { i64, i64 } %21, 1
  %23 = trunc i64 %22 to i32
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i32 [ %19, %17 ], [ %23, %20 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_pll35xx_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !10
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 1023
  %9 = lshr i32 %6, 8
  %10 = and i32 %9, 63
  %11 = and i32 %6, 7
  %12 = zext i32 %8 to i64
  %13 = mul nuw nsw i64 %12, %3
  %14 = shl nuw nsw i32 %10, %11
  %15 = icmp ult i64 %13, 4294967296
  br i1 %15, label %16, label %19, !prof !11

16:                                               ; preds = %2
  %17 = trunc i64 %13 to i32
  %18 = udiv i32 %17, %14
  br label %23

19:                                               ; preds = %2
  %20 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %14, i64 %13) #14, !srcloc !12
  %21 = extractvalue { i64, i64 } %20, 1
  %22 = trunc i64 %21 to i32
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i32 [ %18, %16 ], [ %22, %19 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_pll3xxx_enable(ptr noundef %0) #7 {
  %2 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !10
  %5 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 3
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = shl nuw i32 1, %7
  %9 = or i32 %8, %4
  %10 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %9) #11, !srcloc !13
  %11 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 4
  %12 = load i16, ptr %11, align 2
  %13 = zext i16 %12 to i32
  %14 = shl nuw i32 1, %13
  %15 = tail call fastcc i32 @samsung_pll_lock_wait(ptr noundef %0, i32 noundef %14)
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @samsung_pll3xxx_disable(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !10
  %5 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 3
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = shl nuw i32 1, %7
  %9 = xor i32 %8, -1
  %10 = and i32 %4, %9
  %11 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %10) #11, !srcloc !13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @samsung_pll_round_rate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #8 {
  %4 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %14, %3
  %10 = phi i32 [ %15, %14 ], [ 0, %3 ]
  %11 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, %1
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = add nuw i32 %10, 1
  %16 = icmp eq i32 %15, %7
  br i1 %16, label %17, label %9

17:                                               ; preds = %14
  %18 = add i32 %7, -1
  br label %19

19:                                               ; preds = %17, %3
  %20 = phi i32 [ -1, %3 ], [ %18, %17 ]
  %21 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %20
  %22 = load i32, ptr %21, align 4
  br label %23

23:                                               ; preds = %19, %9
  %24 = phi i32 [ %22, %19 ], [ %12, %9 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_pll35xx_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #7 {
  %4 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %12

9:                                                ; preds = %12
  %10 = add nuw i32 %13, 1
  %11 = icmp eq i32 %10, %7
  br i1 %11, label %19, label %12

12:                                               ; preds = %9, %3
  %13 = phi i32 [ %10, %9 ], [ 0, %3 ]
  %14 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %9

17:                                               ; preds = %12
  %18 = icmp eq ptr %14, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %17, %9, %3
  %20 = tail call ptr @clk_hw_get_name(ptr noundef %0) #11
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.samsung_pll35xx_set_rate, i32 noundef %1, ptr noundef %20) #13
  br label %75

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !10
  %26 = lshr i32 %25, 16
  %27 = and i32 %26, 1023
  %28 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, %27
  br i1 %30, label %34, label %31

31:                                               ; preds = %22
  %32 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 1
  %33 = load i32, ptr %32, align 4
  br label %46

34:                                               ; preds = %22
  %35 = lshr i32 %25, 8
  %36 = and i32 %35, 63
  %37 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, %36
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = and i32 %25, -8
  %42 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = or i32 %43, %41
  %45 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %44) #11, !srcloc !13
  br label %75

46:                                               ; preds = %34, %31
  %47 = phi i32 [ %33, %31 ], [ %38, %34 ]
  %48 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 1
  %49 = mul i32 %47, 270
  %50 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #11, !srcloc !13
  %52 = and i32 %25, -67059464
  %53 = load i32, ptr %28, align 4
  %54 = shl i32 %53, 16
  %55 = load i32, ptr %48, align 4
  %56 = shl i32 %55, 8
  %57 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = or i32 %54, %52
  %60 = or i32 %59, %56
  %61 = or i32 %60, %58
  %62 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %61) #11, !srcloc !13
  %63 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 3
  %64 = load i16, ptr %63, align 4
  %65 = zext i16 %64 to i32
  %66 = shl nuw i32 1, %65
  %67 = and i32 %66, %61
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %46
  %70 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 4
  %71 = load i16, ptr %70, align 2
  %72 = zext i16 %71 to i32
  %73 = shl nuw i32 1, %72
  %74 = tail call fastcc i32 @samsung_pll_lock_wait(ptr noundef %0, i32 noundef %73)
  br label %75

75:                                               ; preds = %69, %46, %40, %19
  %76 = phi i32 [ %74, %69 ], [ 0, %40 ], [ -22, %19 ], [ 0, %46 ]
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @samsung_pll_lock_wait(ptr noundef %0, i32 noundef %1) unnamed_addr #7 {
  %3 = load i1, ptr @pll_early_timeout, align 1
  %4 = xor i1 %3, true
  %5 = load i32, ptr @timekeeping_suspended, align 4
  %6 = icmp ne i32 %5, 0
  %7 = select i1 %4, i1 true, i1 %6
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 2
  br label %10

10:                                               ; preds = %16, %8
  %11 = phi i32 [ 999999, %8 ], [ %17, %16 ]
  %12 = load ptr, ptr %9, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !10
  %14 = and i32 %13, %1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !15
  %17 = add nsw i32 %11, -1
  %18 = icmp eq i32 %11, 0
  br i1 %18, label %36, label %10

19:                                               ; preds = %2
  %20 = tail call i64 @ktime_get() #11
  %21 = add i64 %20, 20000000
  %22 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 2
  br label %23

23:                                               ; preds = %28, %19
  %24 = load ptr, ptr %22, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !10
  %26 = and i32 %25, %1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = tail call i64 @ktime_get() #11
  %30 = icmp sgt i64 %29, %21
  br i1 %30, label %31, label %23

31:                                               ; preds = %28
  %32 = load ptr, ptr %22, align 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #11, !srcloc !10
  %34 = and i32 %33, %1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31, %16
  %37 = tail call ptr @clk_hw_get_name(ptr noundef %0) #11
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %37) #13
  br label %39

39:                                               ; preds = %36, %31, %23, %10
  %40 = phi i32 [ -110, %36 ], [ 0, %31 ], [ 0, %10 ], [ 0, %23 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_pll0822x_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !10
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 1023
  %9 = lshr i32 %6, 8
  %10 = and i32 %9, 63
  %11 = and i32 %6, 7
  %12 = zext i32 %8 to i64
  %13 = mul nuw nsw i64 %12, %3
  %14 = shl nuw nsw i32 %10, %11
  %15 = icmp ult i64 %13, 4294967296
  br i1 %15, label %16, label %19, !prof !11

16:                                               ; preds = %2
  %17 = trunc i64 %13 to i32
  %18 = udiv i32 %17, %14
  br label %23

19:                                               ; preds = %2
  %20 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %14, i64 %13) #14, !srcloc !12
  %21 = extractvalue { i64, i64 } %20, 1
  %22 = trunc i64 %21 to i32
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i32 [ %18, %16 ], [ %22, %19 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_pll0822x_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #7 {
  %4 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %12

9:                                                ; preds = %12
  %10 = add nuw i32 %13, 1
  %11 = icmp eq i32 %10, %7
  br i1 %11, label %19, label %12

12:                                               ; preds = %9, %3
  %13 = phi i32 [ %10, %9 ], [ 0, %3 ]
  %14 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %9

17:                                               ; preds = %12
  %18 = icmp eq ptr %14, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %17, %9, %3
  %20 = tail call ptr @clk_hw_get_name(ptr noundef %0) #11
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.samsung_pll0822x_set_rate, i32 noundef %1, ptr noundef %20) #13
  br label %54

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !10
  %26 = and i32 %25, -67059464
  %27 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = shl i32 %28, 16
  %30 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = shl i32 %31, 8
  %33 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = or i32 %29, %26
  %36 = or i32 %35, %32
  %37 = or i32 %36, %34
  %38 = mul i32 %31, 150
  %39 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #11, !srcloc !13
  %41 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %37) #11, !srcloc !13
  %42 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 3
  %43 = load i16, ptr %42, align 4
  %44 = zext i16 %43 to i32
  %45 = shl nuw i32 1, %44
  %46 = and i32 %45, %37
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %22
  %49 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 4
  %50 = load i16, ptr %49, align 2
  %51 = zext i16 %50 to i32
  %52 = shl nuw i32 1, %51
  %53 = tail call fastcc i32 @samsung_pll_lock_wait(ptr noundef %0, i32 noundef %52)
  br label %54

54:                                               ; preds = %48, %22, %19
  %55 = phi i32 [ %53, %48 ], [ -22, %19 ], [ 0, %22 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_pll45xx_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !10
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 1023
  %9 = lshr i32 %6, 8
  %10 = and i32 %9, 63
  %11 = and i32 %6, 7
  %12 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 8
  %15 = sext i1 %14 to i32
  %16 = add nsw i32 %11, %15
  %17 = zext i32 %8 to i64
  %18 = mul nuw nsw i64 %17, %3
  %19 = shl nuw nsw i32 %10, %16
  %20 = icmp ult i64 %18, 4294967296
  br i1 %20, label %21, label %24, !prof !11

21:                                               ; preds = %2
  %22 = trunc i64 %18 to i32
  %23 = udiv i32 %22, %19
  br label %28

24:                                               ; preds = %2
  %25 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %19, i64 %18) #14, !srcloc !12
  %26 = extractvalue { i64, i64 } %25, 1
  %27 = trunc i64 %26 to i32
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i32 [ %23, %21 ], [ %27, %24 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_pll45xx_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #7 {
  %4 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %12

9:                                                ; preds = %12
  %10 = add nuw i32 %13, 1
  %11 = icmp eq i32 %10, %7
  br i1 %11, label %19, label %12

12:                                               ; preds = %9, %3
  %13 = phi i32 [ %10, %9 ], [ 0, %3 ]
  %14 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %9

17:                                               ; preds = %12
  %18 = icmp eq ptr %14, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %17, %9, %3
  %20 = tail call ptr @clk_hw_get_name(ptr noundef %0) #11
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.samsung_pll45xx_set_rate, i32 noundef %1, ptr noundef %20) #13
  br label %89

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !10
  %26 = load ptr, ptr %23, align 4
  %27 = getelementptr i8, ptr %26, i32 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #11, !srcloc !10
  %29 = lshr i32 %25, 16
  %30 = and i32 %29, 1023
  %31 = and i32 %28, 31
  %32 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %22
  %36 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 1
  %37 = load i32, ptr %36, align 4
  br label %54

38:                                               ; preds = %22
  %39 = lshr i32 %25, 8
  %40 = and i32 %39, 63
  %41 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %38
  %45 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %31, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = and i32 %25, -8
  %50 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = or i32 %51, %49
  %53 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %52) #11, !srcloc !13
  br label %89

54:                                               ; preds = %44, %38, %35
  %55 = phi i32 [ %37, %35 ], [ %42, %38 ], [ %40, %44 ]
  %56 = and i32 %25, -67059464
  %57 = shl i32 %33, 16
  %58 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 1
  %59 = shl i32 %55, 8
  %60 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = or i32 %57, %56
  %63 = or i32 %62, %59
  %64 = or i32 %63, %61
  %65 = load ptr, ptr %23, align 4
  %66 = getelementptr i8, ptr %65, i32 4
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #11, !srcloc !10
  %68 = and i32 %67, -32
  %69 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 5
  %70 = load i32, ptr %69, align 4
  %71 = or i32 %68, %70
  %72 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 5
  %73 = load i32, ptr %72, align 4
  switch i32 %73, label %84 [
    i32 7, label %74
    i32 8, label %79
  ]

74:                                               ; preds = %54
  %75 = load i32, ptr %58, align 4
  %76 = mul i32 %75, 400
  %77 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %76) #11, !srcloc !13
  br label %84

79:                                               ; preds = %54
  %80 = load i32, ptr %58, align 4
  %81 = mul i32 %80, 240
  %82 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %81) #11, !srcloc !13
  br label %84

84:                                               ; preds = %79, %74, %54
  %85 = load ptr, ptr %23, align 4
  %86 = getelementptr i8, ptr %85, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %71) #11, !srcloc !13
  %87 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %64) #11, !srcloc !13
  %88 = tail call fastcc i32 @samsung_pll_lock_wait(ptr noundef %0, i32 noundef 536870912)
  br label %89

89:                                               ; preds = %84, %48, %19
  %90 = phi i32 [ %88, %84 ], [ 0, %48 ], [ -22, %19 ]
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_pll36xx_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !10
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #11, !srcloc !10
  %10 = and i32 %6, 33488896
  %11 = lshr i32 %6, 8
  %12 = and i32 %11, 63
  %13 = and i32 %6, 7
  %14 = shl i32 %9, 16
  %15 = ashr exact i32 %14, 16
  %16 = add nsw i32 %15, %10
  %17 = zext i32 %16 to i64
  %18 = mul nuw i64 %17, %3
  %19 = shl nuw nsw i32 %12, %13
  %20 = icmp ult i64 %18, 4294967296
  br i1 %20, label %21, label %25, !prof !11

21:                                               ; preds = %2
  %22 = trunc i64 %18 to i32
  %23 = udiv i32 %22, %19
  %24 = lshr i32 %23, 16
  br label %30

25:                                               ; preds = %2
  %26 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %19, i64 %18) #14, !srcloc !12
  %27 = extractvalue { i64, i64 } %26, 1
  %28 = lshr i64 %27, 16
  %29 = trunc i64 %28 to i32
  br label %30

30:                                               ; preds = %25, %21
  %31 = phi i32 [ %24, %21 ], [ %29, %25 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_pll36xx_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #7 {
  %4 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %12

9:                                                ; preds = %12
  %10 = add nuw i32 %13, 1
  %11 = icmp eq i32 %10, %7
  br i1 %11, label %19, label %12

12:                                               ; preds = %9, %3
  %13 = phi i32 [ %10, %9 ], [ 0, %3 ]
  %14 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %9

17:                                               ; preds = %12
  %18 = icmp eq ptr %14, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %17, %9, %3
  %20 = tail call ptr @clk_hw_get_name(ptr noundef %0) #11
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.samsung_pll36xx_set_rate, i32 noundef %1, ptr noundef %20) #13
  br label %89

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !10
  %26 = load ptr, ptr %23, align 4
  %27 = getelementptr i8, ptr %26, i32 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #11, !srcloc !10
  %29 = lshr i32 %25, 16
  %30 = and i32 %29, 511
  %31 = and i32 %28, 65535
  %32 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, %30
  br i1 %34, label %38, label %35

35:                                               ; preds = %22
  %36 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 1
  %37 = load i32, ptr %36, align 4
  br label %54

38:                                               ; preds = %22
  %39 = lshr i32 %25, 8
  %40 = and i32 %39, 63
  %41 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, %40
  br i1 %43, label %44, label %54

44:                                               ; preds = %38
  %45 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, %31
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = and i32 %25, -8
  %50 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = or i32 %51, %49
  %53 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %52) #11, !srcloc !13
  br label %89

54:                                               ; preds = %44, %38, %35
  %55 = phi i32 [ %37, %35 ], [ %42, %38 ], [ %40, %44 ]
  %56 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 1
  %57 = mul i32 %55, 3000
  %58 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %57) #11, !srcloc !13
  %60 = and i32 %25, -33505032
  %61 = load i32, ptr %32, align 4
  %62 = shl i32 %61, 16
  %63 = load i32, ptr %56, align 4
  %64 = shl i32 %63, 8
  %65 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = or i32 %62, %60
  %68 = or i32 %67, %64
  %69 = or i32 %68, %66
  %70 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %69) #11, !srcloc !13
  %71 = and i32 %28, -65536
  %72 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 4
  %73 = load i32, ptr %72, align 4
  %74 = or i32 %73, %71
  %75 = load ptr, ptr %23, align 4
  %76 = getelementptr i8, ptr %75, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %74) #11, !srcloc !13
  %77 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 3
  %78 = load i16, ptr %77, align 4
  %79 = zext i16 %78 to i32
  %80 = shl nuw i32 1, %79
  %81 = and i32 %80, %69
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %54
  %84 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 4
  %85 = load i16, ptr %84, align 2
  %86 = zext i16 %85 to i32
  %87 = shl nuw i32 1, %86
  %88 = tail call fastcc i32 @samsung_pll_lock_wait(ptr noundef %0, i32 noundef %87)
  br label %89

89:                                               ; preds = %83, %54, %48, %19
  %90 = phi i32 [ %88, %83 ], [ 0, %48 ], [ -22, %19 ], [ 0, %54 ]
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_pll0831x_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !10
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #11, !srcloc !10
  %10 = and i32 %6, 33488896
  %11 = lshr i32 %6, 8
  %12 = and i32 %11, 63
  %13 = and i32 %6, 7
  %14 = shl i32 %9, 16
  %15 = ashr exact i32 %14, 16
  %16 = add nsw i32 %15, %10
  %17 = zext i32 %16 to i64
  %18 = mul nuw i64 %17, %3
  %19 = shl nuw nsw i32 %12, %13
  %20 = icmp ult i64 %18, 4294967296
  br i1 %20, label %21, label %25, !prof !11

21:                                               ; preds = %2
  %22 = trunc i64 %18 to i32
  %23 = udiv i32 %22, %19
  %24 = lshr i32 %23, 16
  br label %30

25:                                               ; preds = %2
  %26 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %19, i64 %18) #14, !srcloc !12
  %27 = extractvalue { i64, i64 } %26, 1
  %28 = lshr i64 %27, 16
  %29 = trunc i64 %28 to i32
  br label %30

30:                                               ; preds = %25, %21
  %31 = phi i32 [ %24, %21 ], [ %29, %25 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_pll0831x_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #7 {
  %4 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %12

9:                                                ; preds = %12
  %10 = add nuw i32 %13, 1
  %11 = icmp eq i32 %10, %7
  br i1 %11, label %19, label %12

12:                                               ; preds = %9, %3
  %13 = phi i32 [ %10, %9 ], [ 0, %3 ]
  %14 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %9

17:                                               ; preds = %12
  %18 = icmp eq ptr %14, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %17, %9, %3
  %20 = tail call ptr @clk_hw_get_name(ptr noundef %0) #11
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.samsung_pll0831x_set_rate, i32 noundef %1, ptr noundef %20) #13
  br label %64

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !10
  %26 = load ptr, ptr %23, align 4
  %27 = getelementptr i8, ptr %26, i32 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #11, !srcloc !10
  %29 = and i32 %25, -33505032
  %30 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = shl i32 %31, 16
  %33 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = shl i32 %34, 8
  %36 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = or i32 %32, %29
  %39 = or i32 %38, %35
  %40 = or i32 %39, %37
  %41 = and i32 %28, -65536
  %42 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 4
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 65535
  %45 = or i32 %44, %41
  %46 = mul i32 %34, 500
  %47 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #11, !srcloc !13
  %49 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %40) #11, !srcloc !13
  %50 = load ptr, ptr %23, align 4
  %51 = getelementptr i8, ptr %50, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %45) #11, !srcloc !13
  %52 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 3
  %53 = load i16, ptr %52, align 4
  %54 = zext i16 %53 to i32
  %55 = shl nuw i32 1, %54
  %56 = and i32 %55, %40
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %22
  %59 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 4
  %60 = load i16, ptr %59, align 2
  %61 = zext i16 %60 to i32
  %62 = shl nuw i32 1, %61
  %63 = tail call fastcc i32 @samsung_pll_lock_wait(ptr noundef %0, i32 noundef %62)
  br label %64

64:                                               ; preds = %58, %22, %19
  %65 = phi i32 [ %63, %58 ], [ -22, %19 ], [ 0, %22 ]
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_pll6552_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !10
  %7 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 13
  %10 = select i1 %9, i32 5, i32 8
  %11 = lshr i32 %6, %10
  %12 = select i1 %9, i32 14, i32 16
  %13 = lshr i32 %6, %12
  %14 = and i32 %13, 1023
  %15 = and i32 %11, 63
  %16 = and i32 %6, 7
  %17 = zext i32 %14 to i64
  %18 = mul nuw nsw i64 %17, %3
  %19 = shl nuw nsw i32 %15, %16
  %20 = icmp ult i64 %18, 4294967296
  br i1 %20, label %21, label %24, !prof !11

21:                                               ; preds = %2
  %22 = trunc i64 %18 to i32
  %23 = udiv i32 %22, %19
  br label %28

24:                                               ; preds = %2
  %25 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %19, i64 %18) #14, !srcloc !12
  %26 = extractvalue { i64, i64 } %25, 1
  %27 = trunc i64 %26 to i32
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i32 [ %23, %21 ], [ %27, %24 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_pll6553_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !10
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #11, !srcloc !10
  %10 = and i32 %6, 16711680
  %11 = lshr i32 %6, 8
  %12 = and i32 %11, 63
  %13 = and i32 %6, 7
  %14 = and i32 %9, 65535
  %15 = or i32 %14, %10
  %16 = zext i32 %15 to i64
  %17 = mul nuw nsw i64 %16, %3
  %18 = shl nuw nsw i32 %12, %13
  %19 = icmp ult i64 %17, 4294967296
  br i1 %19, label %20, label %24, !prof !11

20:                                               ; preds = %2
  %21 = trunc i64 %17 to i32
  %22 = udiv i32 %21, %18
  %23 = lshr i32 %22, 16
  br label %29

24:                                               ; preds = %2
  %25 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %18, i64 %17) #14, !srcloc !12
  %26 = extractvalue { i64, i64 } %25, 1
  %27 = lshr i64 %26, 16
  %28 = trunc i64 %27 to i32
  br label %29

29:                                               ; preds = %24, %20
  %30 = phi i32 [ %23, %20 ], [ %28, %24 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_pll46xx_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !10
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #11, !srcloc !10
  %10 = lshr i32 %6, 16
  %11 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 26
  %14 = select i1 %13, i32 1023, i32 511
  %15 = and i32 %14, %10
  %16 = lshr i32 %6, 8
  %17 = and i32 %16, 63
  %18 = and i32 %6, 7
  %19 = icmp eq i32 %12, 11
  %20 = select i1 %19, i32 4095, i32 65535
  %21 = and i32 %20, %9
  %22 = icmp eq i32 %12, 9
  %23 = or i1 %22, %13
  %24 = select i1 %23, i32 16, i32 10
  %25 = shl nuw nsw i32 %15, %24
  %26 = add nuw nsw i32 %25, %21
  %27 = zext i32 %26 to i64
  %28 = mul nuw nsw i64 %27, %3
  %29 = shl nuw nsw i32 %17, %18
  %30 = icmp ult i64 %28, 4294967296
  br i1 %30, label %31, label %35, !prof !11

31:                                               ; preds = %2
  %32 = trunc i64 %28 to i32
  %33 = udiv i32 %32, %29
  %34 = zext i32 %33 to i64
  br label %38

35:                                               ; preds = %2
  %36 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %29, i64 %28) #14, !srcloc !12
  %37 = extractvalue { i64, i64 } %36, 1
  br label %38

38:                                               ; preds = %35, %31
  %39 = phi i64 [ %34, %31 ], [ %37, %35 ]
  %40 = zext i32 %24 to i64
  %41 = lshr i64 %39, %40
  %42 = trunc i64 %41 to i32
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_pll46xx_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #7 {
  %4 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %12

9:                                                ; preds = %12
  %10 = add nuw i32 %13, 1
  %11 = icmp eq i32 %10, %7
  br i1 %11, label %19, label %12

12:                                               ; preds = %9, %3
  %13 = phi i32 [ %10, %9 ], [ 0, %3 ]
  %14 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %9

17:                                               ; preds = %12
  %18 = icmp eq ptr %14, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %17, %9, %3
  %20 = tail call ptr @clk_hw_get_name(ptr noundef %0) #11
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.samsung_pll46xx_set_rate, i32 noundef %1, ptr noundef %20) #13
  br label %99

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !10
  %26 = load ptr, ptr %23, align 4
  %27 = getelementptr i8, ptr %26, i32 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #11, !srcloc !10
  %29 = lshr i32 %25, 16
  %30 = and i32 %29, 511
  %31 = and i32 %28, 65535
  %32 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %22
  %36 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 1
  %37 = load i32, ptr %36, align 4
  br label %54

38:                                               ; preds = %22
  %39 = lshr i32 %25, 8
  %40 = and i32 %39, 63
  %41 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %38
  %45 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %31, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = and i32 %25, -8
  %50 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = or i32 %51, %49
  %53 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %52) #11, !srcloc !13
  br label %99

54:                                               ; preds = %44, %38, %35
  %55 = phi i32 [ %37, %35 ], [ %42, %38 ], [ %40, %44 ]
  %56 = mul i32 %55, 3000
  %57 = tail call i32 @llvm.umin.i32(i32 %56, i32 65535)
  %58 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 5
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 26
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = and i32 %25, -67059464
  br label %69

63:                                               ; preds = %54
  %64 = and i32 %25, -167722760
  %65 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 8
  %66 = load i32, ptr %65, align 4
  %67 = shl i32 %66, 27
  %68 = or i32 %67, %64
  br label %69

69:                                               ; preds = %63, %61
  %70 = phi i32 [ %62, %61 ], [ %68, %63 ]
  %71 = shl i32 %33, 16
  %72 = shl i32 %55, 8
  %73 = or i32 %72, %71
  %74 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 3
  %75 = load i32, ptr %74, align 4
  %76 = or i32 %73, %70
  %77 = or i32 %76, %75
  %78 = load ptr, ptr %23, align 4
  %79 = getelementptr i8, ptr %78, i32 4
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #11, !srcloc !10
  %81 = and i32 %80, -524288000
  %82 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 4
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 6
  %85 = load i32, ptr %84, align 4
  %86 = shl i32 %85, 16
  %87 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 7
  %88 = load i32, ptr %87, align 4
  %89 = shl i32 %88, 24
  %90 = or i32 %81, %83
  %91 = or i32 %90, %86
  %92 = or i32 %91, %89
  %93 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %57) #11, !srcloc !13
  %95 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %77) #11, !srcloc !13
  %96 = load ptr, ptr %23, align 4
  %97 = getelementptr i8, ptr %96, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %92) #11, !srcloc !13
  %98 = tail call fastcc i32 @samsung_pll_lock_wait(ptr noundef %0, i32 noundef 536870912)
  br label %99

99:                                               ; preds = %69, %48, %19
  %100 = phi i32 [ %98, %69 ], [ 0, %48 ], [ -22, %19 ]
  ret i32 %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_s3c2410_mpll_enable(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #11, !srcloc !10
  %6 = and i32 %5, -33
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #11, !srcloc !13
  %9 = and i32 %5, 32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 64424400) #11
  br label %13

13:                                               ; preds = %11, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @samsung_s3c2410_mpll_disable(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #11, !srcloc !10
  %6 = or i32 %5, 32
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #11, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_s3c2410_pll_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !10
  %7 = lshr i32 %6, 12
  %8 = and i32 %7, 255
  %9 = lshr i32 %6, 4
  %10 = and i32 %9, 31
  %11 = and i32 %6, 3
  %12 = add nuw nsw i32 %8, 8
  %13 = zext i32 %12 to i64
  %14 = mul nuw nsw i64 %13, %3
  %15 = add nuw nsw i32 %10, 2
  %16 = shl nuw nsw i32 %15, %11
  %17 = icmp ult i64 %14, 4294967296
  br i1 %17, label %18, label %21, !prof !11

18:                                               ; preds = %2
  %19 = trunc i64 %14 to i32
  %20 = udiv i32 %19, %16
  br label %25

21:                                               ; preds = %2
  %22 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %16, i64 %14) #14, !srcloc !12
  %23 = extractvalue { i64, i64 } %22, 1
  %24 = trunc i64 %23 to i32
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi i32 [ %20, %18 ], [ %24, %21 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_s3c2410_pll_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #7 {
  %4 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %12

9:                                                ; preds = %12
  %10 = add nuw i32 %13, 1
  %11 = icmp eq i32 %10, %7
  br i1 %11, label %19, label %12

12:                                               ; preds = %9, %3
  %13 = phi i32 [ %10, %9 ], [ 0, %3 ]
  %14 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %9

17:                                               ; preds = %12
  %18 = icmp eq ptr %14, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %17, %9, %3
  %20 = tail call ptr @clk_hw_get_name(ptr noundef %0) #11
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.samsung_s3c2410_pll_set_rate, i32 noundef %1, ptr noundef %20) #13
  br label %40

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !10
  %26 = and i32 %25, -1044980
  %27 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = shl i32 %28, 12
  %30 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = shl i32 %31, 4
  %33 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = or i32 %29, %26
  %36 = or i32 %35, %32
  %37 = or i32 %36, %34
  %38 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %37) #11, !srcloc !13
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 64424400) #11
  br label %40

40:                                               ; preds = %22, %19
  %41 = phi i32 [ 0, %22 ], [ -22, %19 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_s3c2410_upll_enable(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #11, !srcloc !10
  %6 = and i32 %5, -129
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #11, !srcloc !13
  %9 = and i32 %5, 128
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 64424400) #11
  br label %13

13:                                               ; preds = %11, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @samsung_s3c2410_upll_disable(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #11, !srcloc !10
  %6 = or i32 %5, 128
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #11, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_s3c2440_mpll_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !10
  %7 = lshr i32 %6, 4
  %8 = and i32 %7, 31
  %9 = and i32 %6, 3
  %10 = lshr i32 %6, 11
  %11 = and i32 %10, 510
  %12 = add nuw nsw i32 %11, 16
  %13 = zext i32 %12 to i64
  %14 = mul nuw nsw i64 %13, %3
  %15 = add nuw nsw i32 %8, 2
  %16 = shl nuw nsw i32 %15, %9
  %17 = icmp ult i64 %14, 4294967296
  br i1 %17, label %18, label %21, !prof !11

18:                                               ; preds = %2
  %19 = trunc i64 %14 to i32
  %20 = udiv i32 %19, %16
  br label %25

21:                                               ; preds = %2
  %22 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %16, i64 %14) #14, !srcloc !12
  %23 = extractvalue { i64, i64 } %22, 1
  %24 = trunc i64 %23 to i32
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi i32 [ %20, %18 ], [ %24, %21 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_pll2550x_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #11, !srcloc !10
  %6 = and i32 %5, 1048576
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %2
  %9 = zext i32 %1 to i64
  %10 = lshr i32 %5, 14
  %11 = and i32 %10, 63
  %12 = lshr i32 %5, 4
  %13 = and i32 %12, 1023
  %14 = and i32 %5, 7
  %15 = zext i32 %13 to i64
  %16 = mul nuw nsw i64 %15, %9
  %17 = shl nuw nsw i32 %11, %14
  %18 = icmp ult i64 %16, 4294967296
  br i1 %18, label %19, label %22, !prof !11

19:                                               ; preds = %8
  %20 = trunc i64 %16 to i32
  %21 = udiv i32 %20, %17
  br label %26

22:                                               ; preds = %8
  %23 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %17, i64 %16) #14, !srcloc !12
  %24 = extractvalue { i64, i64 } %23, 1
  %25 = trunc i64 %24 to i32
  br label %26

26:                                               ; preds = %22, %19, %2
  %27 = phi i32 [ 0, %2 ], [ %21, %19 ], [ %25, %22 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_pll2550xx_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !10
  %7 = lshr i32 %6, 9
  %8 = and i32 %7, 1023
  %9 = lshr i32 %6, 3
  %10 = and i32 %9, 63
  %11 = and i32 %6, 7
  %12 = zext i32 %8 to i64
  %13 = mul nuw nsw i64 %12, %3
  %14 = shl nuw nsw i32 %10, %11
  %15 = icmp ult i64 %13, 4294967296
  br i1 %15, label %16, label %19, !prof !11

16:                                               ; preds = %2
  %17 = trunc i64 %13 to i32
  %18 = udiv i32 %17, %14
  br label %23

19:                                               ; preds = %2
  %20 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %14, i64 %13) #14, !srcloc !12
  %21 = extractvalue { i64, i64 } %20, 1
  %22 = trunc i64 %21 to i32
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i32 [ %18, %16 ], [ %22, %19 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_pll2550xx_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #7 {
  %4 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %12

9:                                                ; preds = %12
  %10 = add nuw i32 %13, 1
  %11 = icmp eq i32 %10, %7
  br i1 %11, label %19, label %12

12:                                               ; preds = %9, %3
  %13 = phi i32 [ %10, %9 ], [ 0, %3 ]
  %14 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %9

17:                                               ; preds = %12
  %18 = icmp eq ptr %14, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %17, %9, %3
  %20 = tail call ptr @clk_hw_get_name(ptr noundef %0) #11
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.samsung_pll2550xx_set_rate, i32 noundef %1, ptr noundef %20) #13
  br label %59

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !10
  %26 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = lshr i32 %25, 9
  %31 = and i32 %30, 1023
  %32 = lshr i32 %25, 3
  %33 = and i32 %32, 63
  %34 = icmp ne i32 %31, %27
  %35 = icmp ne i32 %33, %29
  %36 = or i1 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %22
  %38 = and i32 %25, -8
  %39 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = or i32 %40, %38
  %42 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %41) #11, !srcloc !13
  br label %59

43:                                               ; preds = %22
  %44 = mul i32 %29, 270
  %45 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #11, !srcloc !13
  %47 = and i32 %25, -524288
  %48 = load i32, ptr %26, align 4
  %49 = shl i32 %48, 9
  %50 = load i32, ptr %28, align 4
  %51 = shl i32 %50, 3
  %52 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = or i32 %49, %47
  %55 = or i32 %54, %51
  %56 = or i32 %55, %53
  %57 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %56) #11, !srcloc !13
  %58 = tail call fastcc i32 @samsung_pll_lock_wait(ptr noundef %0, i32 noundef 2097152)
  br label %59

59:                                               ; preds = %43, %37, %19
  %60 = phi i32 [ %58, %43 ], [ 0, %37 ], [ -22, %19 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_pll2650x_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !10
  %7 = and i32 %6, 33488896
  %8 = lshr i32 %6, 8
  %9 = and i32 %8, 63
  %10 = and i32 %6, 7
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !10
  %14 = shl i32 %13, 16
  %15 = ashr exact i32 %14, 16
  %16 = add nsw i32 %15, %7
  %17 = zext i32 %16 to i64
  %18 = mul nuw i64 %17, %3
  %19 = shl nuw nsw i32 %9, %10
  %20 = icmp ult i64 %18, 4294967296
  br i1 %20, label %21, label %25, !prof !11

21:                                               ; preds = %2
  %22 = trunc i64 %18 to i32
  %23 = udiv i32 %22, %19
  %24 = lshr i32 %23, 16
  br label %30

25:                                               ; preds = %2
  %26 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %19, i64 %18) #14, !srcloc !12
  %27 = extractvalue { i64, i64 } %26, 1
  %28 = lshr i64 %27, 16
  %29 = trunc i64 %28 to i32
  br label %30

30:                                               ; preds = %25, %21
  %31 = phi i32 [ %24, %21 ], [ %29, %25 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_pll2650x_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #7 {
  %4 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %12

9:                                                ; preds = %12
  %10 = add nuw i32 %13, 1
  %11 = icmp eq i32 %10, %7
  br i1 %11, label %19, label %12

12:                                               ; preds = %9, %3
  %13 = phi i32 [ %10, %9 ], [ 0, %3 ]
  %14 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %9

17:                                               ; preds = %12
  %18 = icmp eq ptr %14, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %17, %9, %3
  %20 = tail call ptr @clk_hw_get_name(ptr noundef %0) #11
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.samsung_pll2650x_set_rate, i32 noundef %1, ptr noundef %20) #13
  br label %55

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !10
  %26 = load ptr, ptr %23, align 4
  %27 = getelementptr i8, ptr %26, i32 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #11, !srcloc !10
  %29 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = mul i32 %30, 3000
  %32 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #11, !srcloc !13
  %34 = and i32 %25, 2113978616
  %35 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = shl i32 %36, 16
  %38 = load i32, ptr %29, align 4
  %39 = shl i32 %38, 8
  %40 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = or i32 %34, %37
  %43 = or i32 %42, %39
  %44 = or i32 %43, %41
  %45 = or i32 %44, -2147483648
  %46 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %45) #11, !srcloc !13
  %47 = and i32 %28, -65536
  %48 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 4
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 65535
  %51 = or i32 %50, %47
  %52 = load ptr, ptr %23, align 4
  %53 = getelementptr i8, ptr %52, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #11, !srcloc !13
  %54 = tail call fastcc i32 @samsung_pll_lock_wait(ptr noundef %0, i32 noundef 536870912)
  br label %55

55:                                               ; preds = %22, %19
  %56 = phi i32 [ %54, %22 ], [ -22, %19 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_pll2650xx_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !10
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #11, !srcloc !10
  %10 = lshr i32 %6, 3
  %11 = and i32 %10, 63
  %12 = and i32 %6, 7
  %13 = shl i32 %6, 7
  %14 = and i32 %13, 33488896
  %15 = shl i32 %9, 16
  %16 = ashr exact i32 %15, 16
  %17 = add nsw i32 %16, %14
  %18 = zext i32 %17 to i64
  %19 = mul nuw i64 %18, %3
  %20 = shl nuw nsw i32 %11, %12
  %21 = icmp ult i64 %19, 4294967296
  br i1 %21, label %22, label %26, !prof !11

22:                                               ; preds = %2
  %23 = trunc i64 %19 to i32
  %24 = udiv i32 %23, %20
  %25 = lshr i32 %24, 16
  br label %31

26:                                               ; preds = %2
  %27 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %20, i64 %19) #14, !srcloc !12
  %28 = extractvalue { i64, i64 } %27, 1
  %29 = lshr i64 %28, 16
  %30 = trunc i64 %29 to i32
  br label %31

31:                                               ; preds = %26, %22
  %32 = phi i32 [ %25, %22 ], [ %30, %26 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_pll2650xx_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #7 {
  %4 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %12

9:                                                ; preds = %12
  %10 = add nuw i32 %13, 1
  %11 = icmp eq i32 %10, %7
  br i1 %11, label %19, label %12

12:                                               ; preds = %9, %3
  %13 = phi i32 [ %10, %9 ], [ 0, %3 ]
  %14 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %9

17:                                               ; preds = %12
  %18 = icmp eq ptr %14, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %17, %9, %3
  %20 = tail call ptr @clk_hw_get_name(ptr noundef %0) #11
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.samsung_pll2650xx_set_rate, i32 noundef %1, ptr noundef %20) #13
  br label %55

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !10
  %26 = load ptr, ptr %23, align 4
  %27 = getelementptr i8, ptr %26, i32 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #11, !srcloc !10
  %29 = and i32 %25, 2138832896
  %30 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = shl i32 %31, 9
  %33 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = shl i32 %34, 3
  %36 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = or i32 %29, %32
  %39 = or i32 %38, %35
  %40 = or i32 %39, %37
  %41 = or i32 %40, -2139095040
  %42 = and i32 %28, -65536
  %43 = getelementptr %struct.samsung_pll_rate_table, ptr %5, i32 %13, i32 4
  %44 = load i32, ptr %43, align 4
  %45 = sub i32 0, %44
  %46 = and i32 %45, 65535
  %47 = or i32 %46, %42
  %48 = mul i32 %34, 3000
  %49 = getelementptr inbounds %struct.samsung_clk_pll, ptr %0, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #11, !srcloc !13
  %51 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %41) #11, !srcloc !13
  %52 = load ptr, ptr %23, align 4
  %53 = getelementptr i8, ptr %52, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %47) #11, !srcloc !13
  %54 = tail call fastcc i32 @samsung_pll_lock_wait(ptr noundef %0, i32 noundef 2097152)
  br label %55

55:                                               ; preds = %22, %19
  %56 = phi i32 [ %54, %22 ], [ -22, %19 ]
  ret i32 %56
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { cold }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2434901}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2147774348, i64 2147774628, i64 2147774962, i64 2147775296}
!13 = !{i64 2434483}
!14 = !{i64 2151134215}
!15 = !{i64 2151134057}
