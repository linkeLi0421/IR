; ModuleID = '/llk/IR/drivers/clk/rockchip/clk.c_pt.bc'
source_filename = "../drivers/clk/rockchip/clk.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rockchip_clk_init:\09\09\09\09\09"
module asm "\09.asciz \09\22rockchip_clk_init\22\09\09\09\09\09"
module asm "__kstrtabns_rockchip_clk_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rockchip_clk_of_add_provider:\09\09\09\09\09"
module asm "\09.asciz \09\22rockchip_clk_of_add_provider\22\09\09\09\09\09"
module asm "__kstrtabns_rockchip_clk_of_add_provider:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rockchip_clk_add_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22rockchip_clk_add_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_rockchip_clk_add_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rockchip_clk_register_plls:\09\09\09\09\09"
module asm "\09.asciz \09\22rockchip_clk_register_plls\22\09\09\09\09\09"
module asm "__kstrtabns_rockchip_clk_register_plls:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rockchip_clk_register_branches:\09\09\09\09\09"
module asm "\09.asciz \09\22rockchip_clk_register_branches\22\09\09\09\09\09"
module asm "__kstrtabns_rockchip_clk_register_branches:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rockchip_clk_register_armclk:\09\09\09\09\09"
module asm "\09.asciz \09\22rockchip_clk_register_armclk\22\09\09\09\09\09"
module asm "__kstrtabns_rockchip_clk_register_armclk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rockchip_clk_protect_critical:\09\09\09\09\09"
module asm "\09.asciz \09\22rockchip_clk_protect_critical\22\09\09\09\09\09"
module asm "__kstrtabns_rockchip_clk_protect_critical:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rockchip_register_restart_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22rockchip_register_restart_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_rockchip_register_restart_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rockchip_clk_provider = type { ptr, %struct.clk_onecell_data, ptr, ptr, %struct.spinlock }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rockchip_pll_clock = type { i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i8, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.rockchip_clk_branch = type { i32, i32, ptr, ptr, i8, i32, i32, i8, i8, i8, i32, i8, i8, i8, ptr, i32, i8, i8, ptr }
%struct.rockchip_clk_frac = type { %struct.notifier_block, %struct.clk_fractional_divider, %struct.clk_gate, %struct.clk_mux, ptr, i32, i8, i32 }
%struct.clk_fractional_divider = type { %struct.clk_hw, ptr, i8, i8, i32, i8, i8, i32, i8, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }
%struct.clk_fixed_factor = type { %struct.clk_hw, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"rockchip,grf\00", align 1
@__kstrtab_rockchip_clk_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_rockchip_clk_init = external dso_local constant [0 x i8], align 1
@__ksymtab_rockchip_clk_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rockchip_clk_init to i32), ptr @__kstrtab_rockchip_clk_init, ptr @__kstrtabns_rockchip_clk_init }, section "___ksymtab_gpl+rockchip_clk_init", align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"\013%s: could not register clk provider\0A\00", align 1
@__func__.rockchip_clk_of_add_provider = private unnamed_addr constant [29 x i8] c"rockchip_clk_of_add_provider\00", align 1
@__kstrtab_rockchip_clk_of_add_provider = external dso_local constant [0 x i8], align 1
@__kstrtabns_rockchip_clk_of_add_provider = external dso_local constant [0 x i8], align 1
@__ksymtab_rockchip_clk_of_add_provider = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rockchip_clk_of_add_provider to i32), ptr @__kstrtab_rockchip_clk_of_add_provider, ptr @__kstrtabns_rockchip_clk_of_add_provider }, section "___ksymtab_gpl+rockchip_clk_of_add_provider", align 4
@__kstrtab_rockchip_clk_add_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_rockchip_clk_add_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_rockchip_clk_add_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rockchip_clk_add_lookup to i32), ptr @__kstrtab_rockchip_clk_add_lookup, ptr @__kstrtabns_rockchip_clk_add_lookup }, section "___ksymtab_gpl+rockchip_clk_add_lookup", align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"\013%s: failed to register clock %s\0A\00", align 1
@__func__.rockchip_clk_register_plls = private unnamed_addr constant [27 x i8] c"rockchip_clk_register_plls\00", align 1
@__kstrtab_rockchip_clk_register_plls = external dso_local constant [0 x i8], align 1
@__kstrtabns_rockchip_clk_register_plls = external dso_local constant [0 x i8], align 1
@__ksymtab_rockchip_clk_register_plls = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rockchip_clk_register_plls to i32), ptr @__kstrtab_rockchip_clk_register_plls, ptr @__kstrtabns_rockchip_clk_register_plls }, section "___ksymtab_gpl+rockchip_clk_register_plls", align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"\013%s: unknown clock type %d\0A\00", align 1
@__func__.rockchip_clk_register_branches = private unnamed_addr constant [31 x i8] c"rockchip_clk_register_branches\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"\013%s: failed to register clock %s: %ld\0A\00", align 1
@__kstrtab_rockchip_clk_register_branches = external dso_local constant [0 x i8], align 1
@__kstrtabns_rockchip_clk_register_branches = external dso_local constant [0 x i8], align 1
@__ksymtab_rockchip_clk_register_branches = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rockchip_clk_register_branches to i32), ptr @__kstrtab_rockchip_clk_register_branches, ptr @__kstrtabns_rockchip_clk_register_branches }, section "___ksymtab_gpl+rockchip_clk_register_branches", align 4
@__func__.rockchip_clk_register_armclk = private unnamed_addr constant [29 x i8] c"rockchip_clk_register_armclk\00", align 1
@__kstrtab_rockchip_clk_register_armclk = external dso_local constant [0 x i8], align 1
@__kstrtabns_rockchip_clk_register_armclk = external dso_local constant [0 x i8], align 1
@__ksymtab_rockchip_clk_register_armclk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rockchip_clk_register_armclk to i32), ptr @__kstrtab_rockchip_clk_register_armclk, ptr @__kstrtabns_rockchip_clk_register_armclk }, section "___ksymtab_gpl+rockchip_clk_register_armclk", align 4
@__kstrtab_rockchip_clk_protect_critical = external dso_local constant [0 x i8], align 1
@__kstrtabns_rockchip_clk_protect_critical = external dso_local constant [0 x i8], align 1
@__ksymtab_rockchip_clk_protect_critical = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rockchip_clk_protect_critical to i32), ptr @__kstrtab_rockchip_clk_protect_critical, ptr @__kstrtabns_rockchip_clk_protect_critical }, section "___ksymtab_gpl+rockchip_clk_protect_critical", align 4
@rst_base = internal unnamed_addr global ptr null, align 4
@reg_restart = internal unnamed_addr global i32 0, align 4
@cb_restart = internal unnamed_addr global ptr null, align 4
@rockchip_restart_handler = internal global %struct.notifier_block { ptr @rockchip_restart_notify, ptr null, i32 128 }, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"\013%s: cannot register restart handler, %d\0A\00", align 1
@__func__.rockchip_register_restart_notifier = private unnamed_addr constant [35 x i8] c"rockchip_register_restart_notifier\00", align 1
@__kstrtab_rockchip_register_restart_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_rockchip_register_restart_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_rockchip_register_restart_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rockchip_register_restart_notifier to i32), ptr @__kstrtab_rockchip_register_restart_notifier, ptr @__kstrtabns_rockchip_register_restart_notifier }, section "___ksymtab_gpl+rockchip_register_restart_notifier", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [55 x i8] c"\013%s: fractional child clock for %s can only be a mux\0A\00", align 1
@__func__.rockchip_clk_register_frac_branch = private unnamed_addr constant [34 x i8] c"rockchip_clk_register_frac_branch\00", align 1
@clk_gate_ops = external dso_local constant %struct.clk_ops, align 4
@clk_fractional_divider_ops = external dso_local constant %struct.clk_ops, align 4
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@.str.7 = private unnamed_addr constant [48 x i8] c"\013%s: failed to register clock notifier for %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [68 x i8] c"\014%s: could not find %s as parent of %s, rate changes may not work\0A\00", align 1
@clk_mux_ro_ops = external dso_local constant %struct.clk_ops, align 4
@clk_divider_ro_ops = external dso_local constant %struct.clk_ops, align 4
@clk_divider_ops = external dso_local constant %struct.clk_ops, align 4
@clk_fixed_factor_ops = external dso_local constant %struct.clk_ops, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_rockchip_clk_add_lookup, ptr @__ksymtab_rockchip_clk_init, ptr @__ksymtab_rockchip_clk_of_add_provider, ptr @__ksymtab_rockchip_clk_protect_critical, ptr @__ksymtab_rockchip_clk_register_armclk, ptr @__ksymtab_rockchip_clk_register_branches, ptr @__ksymtab_rockchip_clk_register_plls, ptr @__ksymtab_rockchip_register_restart_notifier], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rockchip_clk_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 24) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %3
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 4) #10
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %28, label %10, !prof !8

10:                                               ; preds = %7
  %11 = extractvalue { i32, i1 } %8, 0
  %12 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %10
  %15 = icmp eq i32 %2, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %16, %14
  %17 = phi i32 [ %19, %16 ], [ 0, %14 ]
  %18 = getelementptr ptr, ptr %12, i32 %17
  store ptr inttoptr (i32 -2 to ptr), ptr %18, align 4
  %19 = add nuw i32 %17, 1
  %20 = icmp eq i32 %19, %2
  br i1 %20, label %21, label %16

21:                                               ; preds = %16, %14
  store ptr %1, ptr %5, align 8
  %22 = getelementptr inbounds %struct.rockchip_clk_provider, ptr %5, i32 0, i32 1
  store ptr %12, ptr %22, align 4
  %23 = getelementptr inbounds %struct.rockchip_clk_provider, ptr %5, i32 0, i32 1, i32 1
  store i32 %2, ptr %23, align 8
  %24 = getelementptr inbounds %struct.rockchip_clk_provider, ptr %5, i32 0, i32 2
  store ptr %0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.rockchip_clk_provider, ptr %5, i32 0, i32 4
  store i32 0, ptr %25, align 4
  %26 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %0, ptr noundef nonnull @.str) #10
  %27 = getelementptr inbounds %struct.rockchip_clk_provider, ptr %5, i32 0, i32 3
  store ptr %26, ptr %27, align 8
  br label %29

28:                                               ; preds = %10, %7
  tail call void @kfree(ptr noundef nonnull %5) #10
  br label %29

29:                                               ; preds = %28, %21, %3
  %30 = phi ptr [ %5, %21 ], [ inttoptr (i32 -12 to ptr), %28 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %30
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rockchip_clk_of_add_provider(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rockchip_clk_provider, ptr %1, i32 0, i32 1
  %4 = tail call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %3) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.rockchip_clk_of_add_provider) #12
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @rockchip_clk_add_lookup(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #4 {
  %4 = getelementptr inbounds %struct.rockchip_clk_provider, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ne ptr %5, null
  %7 = icmp ne i32 %2, 0
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = getelementptr ptr, ptr %5, i32 %2
  store ptr %1, ptr %10, align 4
  br label %11

11:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rockchip_clk_register_plls(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %50, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.rockchip_clk_provider, ptr %0, i32 0, i32 1
  br label %8

8:                                                ; preds = %46, %6
  %9 = phi ptr [ %1, %6 ], [ %48, %46 ]
  %10 = phi i32 [ 0, %6 ], [ %47, %46 ]
  %11 = getelementptr inbounds %struct.rockchip_pll_clock, ptr %9, i32 0, i32 9
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.rockchip_pll_clock, ptr %9, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.rockchip_pll_clock, ptr %9, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.rockchip_pll_clock, ptr %9, i32 0, i32 3
  %18 = load i8, ptr %17, align 4
  %19 = getelementptr inbounds %struct.rockchip_pll_clock, ptr %9, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.rockchip_pll_clock, ptr %9, i32 0, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.rockchip_pll_clock, ptr %9, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.rockchip_pll_clock, ptr %9, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.rockchip_pll_clock, ptr %9, i32 0, i32 11
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.rockchip_pll_clock, ptr %9, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.rockchip_pll_clock, ptr %9, i32 0, i32 10
  %32 = load i8, ptr %31, align 4
  %33 = tail call ptr @rockchip_clk_register_pll(ptr noundef %0, i32 noundef %12, ptr noundef %14, ptr noundef %16, i8 noundef zeroext %18, i32 noundef %20, i32 noundef %3, i32 noundef %22, i32 noundef %24, i32 noundef %26, ptr noundef %28, i32 noundef %30, i8 noundef zeroext %32) #10
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %38

35:                                               ; preds = %8
  %36 = load ptr, ptr %13, align 4
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.rockchip_clk_register_plls, ptr noundef %36) #12
  br label %46

38:                                               ; preds = %8
  %39 = load i32, ptr %9, align 4
  %40 = load ptr, ptr %7, align 4
  %41 = icmp ne ptr %40, null
  %42 = icmp ne i32 %39, 0
  %43 = and i1 %42, %41
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = getelementptr ptr, ptr %40, i32 %39
  store ptr %33, ptr %45, align 4
  br label %46

46:                                               ; preds = %44, %38, %35
  %47 = add nuw i32 %10, 1
  %48 = getelementptr %struct.rockchip_pll_clock, ptr %9, i32 1
  %49 = icmp eq i32 %47, %2
  br i1 %49, label %50, label %8

50:                                               ; preds = %46, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rockchip_clk_register_pll(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rockchip_clk_register_branches(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.clk_init_data, align 4
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %489, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.rockchip_clk_provider, ptr %0, i32 0, i32 4
  %8 = getelementptr inbounds i8, ptr %4, i32 12
  %9 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 6
  %10 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 1
  %11 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 2
  %12 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 5
  %13 = getelementptr inbounds %struct.rockchip_clk_provider, ptr %0, i32 0, i32 1
  %14 = getelementptr inbounds %struct.rockchip_clk_provider, ptr %0, i32 0, i32 3
  br label %15

15:                                               ; preds = %484, %6
  %16 = phi ptr [ %1, %6 ], [ %487, %484 ]
  %17 = phi ptr [ null, %6 ], [ %485, %484 ]
  %18 = phi i32 [ 0, %6 ], [ %486, %484 ]
  %19 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  switch i32 %22, label %462 [
    i32 1, label %23
    i32 2, label %44
    i32 3, label %64
    i32 4, label %87
    i32 10, label %213
    i32 5, label %242
    i32 0, label %258
    i32 6, label %355
    i32 7, label %370
    i32 8, label %388
    i32 9, label %436
  ]

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 4
  %29 = load i8, ptr %28, align 4
  %30 = load ptr, ptr %0, align 4
  %31 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr i8, ptr %30, i32 %32
  %34 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 7
  %35 = load i8, ptr %34, align 4
  %36 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 8
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl nsw i32 -1, %38
  %40 = xor i32 %39, -1
  %41 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 9
  %42 = load i8, ptr %41, align 2
  %43 = call ptr @clk_register_mux_table(ptr noundef null, ptr noundef %25, ptr noundef %27, i8 noundef zeroext %29, i32 noundef %20, ptr noundef %33, i8 noundef zeroext %35, i32 noundef %40, i8 noundef zeroext %42, ptr noundef null, ptr noundef %7) #10
  br label %462

44:                                               ; preds = %15
  %45 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 4
  %50 = load i8, ptr %49, align 4
  %51 = load ptr, ptr %14, align 4
  %52 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 6
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 7
  %55 = load i8, ptr %54, align 4
  %56 = zext i8 %55 to i32
  %57 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 8
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 9
  %61 = load i8, ptr %60, align 2
  %62 = zext i8 %61 to i32
  %63 = call ptr @rockchip_clk_register_muxgrf(ptr noundef %46, ptr noundef %48, i8 noundef zeroext %50, i32 noundef %20, ptr noundef %51, i32 noundef %53, i32 noundef %56, i32 noundef %59, i32 noundef %62) #10
  br label %462

64:                                               ; preds = %15
  %65 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 14
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  %68 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 3
  %71 = load ptr, ptr %70, align 4
  %72 = load ptr, ptr %71, align 4
  %73 = load ptr, ptr %0, align 4
  %74 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 6
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr i8, ptr %73, i32 %75
  %77 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 11
  %78 = load i8, ptr %77, align 4
  %79 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 12
  %80 = load i8, ptr %79, align 1
  %81 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 13
  %82 = load i8, ptr %81, align 2
  br i1 %67, label %85, label %83

83:                                               ; preds = %64
  %84 = call ptr @clk_register_divider_table(ptr noundef null, ptr noundef %69, ptr noundef %72, i32 noundef %20, ptr noundef %76, i8 noundef zeroext %78, i8 noundef zeroext %80, i8 noundef zeroext %82, ptr noundef nonnull %66, ptr noundef %7) #10
  br label %462

85:                                               ; preds = %64
  %86 = call ptr @clk_register_divider_table(ptr noundef null, ptr noundef %69, ptr noundef %72, i32 noundef %20, ptr noundef %76, i8 noundef zeroext %78, i8 noundef zeroext %80, i8 noundef zeroext %82, ptr noundef null, ptr noundef %7) #10
  br label %462

87:                                               ; preds = %15
  %88 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 2
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 3
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 4
  %93 = load i8, ptr %92, align 4
  %94 = load ptr, ptr %0, align 4
  %95 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 6
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 13
  %98 = load i8, ptr %97, align 2
  %99 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 15
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 16
  %102 = load i8, ptr %101, align 4
  %103 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 17
  %104 = load i8, ptr %103, align 1
  %105 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 18
  %106 = load ptr, ptr %105, align 4
  %107 = icmp slt i32 %96, 0
  br i1 %107, label %470, label %108

108:                                              ; preds = %87
  %109 = icmp eq ptr %106, null
  br i1 %109, label %116, label %110

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %106, i32 0, i32 1
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %116, label %114

114:                                              ; preds = %110
  %115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.rockchip_clk_register_frac_branch, ptr noundef %89) #12
  br label %470

116:                                              ; preds = %110, %108
  %117 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %118 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %117, i32 noundef 3520, i32 noundef 128) #9
  %119 = icmp eq ptr %118, null
  br i1 %119, label %470, label %120

120:                                              ; preds = %116
  %121 = icmp sgt i32 %100, -1
  br i1 %121, label %122, label %129

122:                                              ; preds = %120
  %123 = getelementptr inbounds %struct.rockchip_clk_frac, ptr %118, i32 0, i32 2
  %124 = getelementptr inbounds %struct.rockchip_clk_frac, ptr %118, i32 0, i32 2, i32 3
  store i8 %104, ptr %124, align 1
  %125 = getelementptr i8, ptr %94, i32 %100
  %126 = getelementptr inbounds %struct.rockchip_clk_frac, ptr %118, i32 0, i32 2, i32 1
  store ptr %125, ptr %126, align 4
  %127 = getelementptr inbounds %struct.rockchip_clk_frac, ptr %118, i32 0, i32 2, i32 2
  store i8 %102, ptr %127, align 8
  %128 = getelementptr inbounds %struct.rockchip_clk_frac, ptr %118, i32 0, i32 2, i32 4
  store ptr %7, ptr %128, align 4
  br label %129

129:                                              ; preds = %122, %120
  %130 = phi ptr [ @clk_gate_ops, %122 ], [ null, %120 ]
  %131 = phi ptr [ %123, %122 ], [ null, %120 ]
  %132 = getelementptr inbounds %struct.rockchip_clk_frac, ptr %118, i32 0, i32 1
  %133 = getelementptr inbounds %struct.rockchip_clk_frac, ptr %118, i32 0, i32 1, i32 8
  store i8 %98, ptr %133, align 4
  %134 = getelementptr i8, ptr %94, i32 %96
  %135 = getelementptr inbounds %struct.rockchip_clk_frac, ptr %118, i32 0, i32 1, i32 1
  store ptr %134, ptr %135, align 8
  %136 = getelementptr inbounds %struct.rockchip_clk_frac, ptr %118, i32 0, i32 1, i32 2
  store i8 16, ptr %136, align 4
  %137 = getelementptr inbounds %struct.rockchip_clk_frac, ptr %118, i32 0, i32 1, i32 3
  store i8 16, ptr %137, align 1
  %138 = getelementptr inbounds %struct.rockchip_clk_frac, ptr %118, i32 0, i32 1, i32 4
  store i32 -65536, ptr %138, align 8
  %139 = getelementptr inbounds %struct.rockchip_clk_frac, ptr %118, i32 0, i32 1, i32 5
  store i8 0, ptr %139, align 4
  %140 = getelementptr inbounds %struct.rockchip_clk_frac, ptr %118, i32 0, i32 1, i32 6
  store i8 16, ptr %140, align 1
  %141 = getelementptr inbounds %struct.rockchip_clk_frac, ptr %118, i32 0, i32 1, i32 7
  store i32 65535, ptr %141, align 8
  %142 = getelementptr inbounds %struct.rockchip_clk_frac, ptr %118, i32 0, i32 1, i32 10
  store ptr %7, ptr %142, align 4
  %143 = getelementptr inbounds %struct.rockchip_clk_frac, ptr %118, i32 0, i32 1, i32 9
  store ptr @rockchip_fractional_approximation, ptr %143, align 8
  %144 = zext i8 %93 to i32
  %145 = or i32 %20, 1024
  %146 = call ptr @clk_hw_register_composite(ptr noundef null, ptr noundef %89, ptr noundef %91, i32 noundef %144, ptr noundef null, ptr noundef null, ptr noundef %132, ptr noundef nonnull @clk_fractional_divider_ops, ptr noundef %131, ptr noundef %130, i32 noundef %145) #10
  %147 = icmp ugt ptr %146, inttoptr (i32 -4096 to ptr)
  br i1 %147, label %148, label %149

148:                                              ; preds = %129
  call void @kfree(ptr noundef nonnull %118) #10
  br label %462

149:                                              ; preds = %129
  br i1 %109, label %210, label %150

150:                                              ; preds = %149
  %151 = getelementptr inbounds %struct.rockchip_clk_frac, ptr %118, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %8, i8 0, i32 12, i1 false) #10, !annotation !9
  %152 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %106, i32 0, i32 3
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %106, i32 0, i32 4
  %155 = load i8, ptr %154, align 4
  %156 = zext i8 %155 to i32
  %157 = call i32 @match_string(ptr noundef %153, i32 noundef %156, ptr noundef %89) #10
  %158 = getelementptr inbounds %struct.rockchip_clk_frac, ptr %118, i32 0, i32 5
  store i32 %157, ptr %158, align 4
  %159 = getelementptr inbounds %struct.rockchip_clk_frac, ptr %118, i32 0, i32 4
  store ptr @clk_mux_ops, ptr %159, align 8
  store ptr @rockchip_clk_frac_notifier_cb, ptr %118, align 8
  %160 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %106, i32 0, i32 6
  %161 = load i32, ptr %160, align 4
  %162 = getelementptr i8, ptr %94, i32 %161
  %163 = getelementptr inbounds %struct.rockchip_clk_frac, ptr %118, i32 0, i32 3, i32 1
  store ptr %162, ptr %163, align 4
  %164 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %106, i32 0, i32 7
  %165 = load i8, ptr %164, align 4
  %166 = getelementptr inbounds %struct.rockchip_clk_frac, ptr %118, i32 0, i32 3, i32 4
  store i8 %165, ptr %166, align 8
  %167 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %106, i32 0, i32 8
  %168 = load i8, ptr %167, align 1
  %169 = zext i8 %168 to i32
  %170 = shl nsw i32 -1, %169
  %171 = xor i32 %170, -1
  %172 = getelementptr inbounds %struct.rockchip_clk_frac, ptr %118, i32 0, i32 3, i32 3
  store i32 %171, ptr %172, align 4
  %173 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %106, i32 0, i32 9
  %174 = load i8, ptr %173, align 2
  %175 = getelementptr inbounds %struct.rockchip_clk_frac, ptr %118, i32 0, i32 3, i32 5
  store i8 %174, ptr %175, align 1
  %176 = getelementptr inbounds %struct.rockchip_clk_frac, ptr %118, i32 0, i32 3, i32 6
  store ptr %7, ptr %176, align 4
  %177 = getelementptr inbounds %struct.rockchip_clk_frac, ptr %118, i32 0, i32 3, i32 0, i32 2
  store ptr %4, ptr %177, align 8
  %178 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %106, i32 0, i32 2
  %179 = load ptr, ptr %178, align 4
  store ptr %179, ptr %4, align 4
  %180 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %106, i32 0, i32 5
  %181 = load i32, ptr %180, align 4
  %182 = or i32 %181, 4
  store i32 %182, ptr %9, align 4
  store ptr @clk_mux_ops, ptr %10, align 4
  %183 = load ptr, ptr %152, align 4
  store ptr %183, ptr %11, align 4
  %184 = load i8, ptr %154, align 4
  store i8 %184, ptr %12, align 4
  %185 = call ptr @clk_register(ptr noundef null, ptr noundef %151) #10
  %186 = icmp ugt ptr %185, inttoptr (i32 -4096 to ptr)
  br i1 %186, label %187, label %188

187:                                              ; preds = %150
  call void @kfree(ptr noundef nonnull %118) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #10
  br label %462

188:                                              ; preds = %150
  %189 = load i32, ptr %106, align 4
  %190 = load ptr, ptr %13, align 4
  %191 = icmp ne ptr %190, null
  %192 = icmp ne i32 %189, 0
  %193 = and i1 %192, %191
  br i1 %193, label %194, label %196

194:                                              ; preds = %188
  %195 = getelementptr ptr, ptr %190, i32 %189
  store ptr %185, ptr %195, align 4
  br label %196

196:                                              ; preds = %194, %188
  %197 = load i32, ptr %158, align 4
  %198 = icmp sgt i32 %197, -1
  br i1 %198, label %199, label %206

199:                                              ; preds = %196
  %200 = getelementptr inbounds %struct.clk_hw, ptr %146, i32 0, i32 1
  %201 = load ptr, ptr %200, align 4
  %202 = call i32 @clk_notifier_register(ptr noundef %201, ptr noundef nonnull %118) #10
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %209, label %204

204:                                              ; preds = %199
  %205 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rockchip_clk_register_frac_branch, ptr noundef %89) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #10
  br label %210

206:                                              ; preds = %196
  %207 = load ptr, ptr %178, align 4
  %208 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.rockchip_clk_register_frac_branch, ptr noundef %89, ptr noundef %207) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #10
  br label %210

209:                                              ; preds = %199
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #10
  br label %210

210:                                              ; preds = %209, %206, %204, %149
  %211 = getelementptr inbounds %struct.clk_hw, ptr %146, i32 0, i32 1
  %212 = load ptr, ptr %211, align 4
  br label %462

213:                                              ; preds = %15
  %214 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 2
  %215 = load ptr, ptr %214, align 4
  %216 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 3
  %217 = load ptr, ptr %216, align 4
  %218 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 4
  %219 = load i8, ptr %218, align 4
  %220 = load ptr, ptr %0, align 4
  %221 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 6
  %222 = load i32, ptr %221, align 4
  %223 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 7
  %224 = load i8, ptr %223, align 4
  %225 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 8
  %226 = load i8, ptr %225, align 1
  %227 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 9
  %228 = load i8, ptr %227, align 2
  %229 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 11
  %230 = load i8, ptr %229, align 4
  %231 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 12
  %232 = load i8, ptr %231, align 1
  %233 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 13
  %234 = load i8, ptr %233, align 2
  %235 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 15
  %236 = load i32, ptr %235, align 4
  %237 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 16
  %238 = load i8, ptr %237, align 4
  %239 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 17
  %240 = load i8, ptr %239, align 1
  %241 = call ptr @rockchip_clk_register_halfdiv(ptr noundef %215, ptr noundef %217, i8 noundef zeroext %219, ptr noundef %220, i32 noundef %222, i8 noundef zeroext %224, i8 noundef zeroext %226, i8 noundef zeroext %228, i8 noundef zeroext %230, i8 noundef zeroext %232, i8 noundef zeroext %234, i32 noundef %236, i8 noundef zeroext %238, i8 noundef zeroext %240, i32 noundef %20, ptr noundef %7) #10
  br label %462

242:                                              ; preds = %15
  %243 = or i32 %20, 4
  %244 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 2
  %245 = load ptr, ptr %244, align 4
  %246 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 3
  %247 = load ptr, ptr %246, align 4
  %248 = load ptr, ptr %247, align 4
  %249 = load ptr, ptr %0, align 4
  %250 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 15
  %251 = load i32, ptr %250, align 4
  %252 = getelementptr i8, ptr %249, i32 %251
  %253 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 16
  %254 = load i8, ptr %253, align 4
  %255 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 17
  %256 = load i8, ptr %255, align 1
  %257 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %245, ptr noundef %248, i32 noundef %243, ptr noundef %252, i8 noundef zeroext %254, i8 noundef zeroext %256, ptr noundef %7) #10
  br label %462

258:                                              ; preds = %15
  %259 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 2
  %260 = load ptr, ptr %259, align 4
  %261 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 3
  %262 = load ptr, ptr %261, align 4
  %263 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 4
  %264 = load i8, ptr %263, align 4
  %265 = load ptr, ptr %0, align 4
  %266 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 6
  %267 = load i32, ptr %266, align 4
  %268 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 7
  %269 = load i8, ptr %268, align 4
  %270 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 8
  %271 = load i8, ptr %270, align 1
  %272 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 9
  %273 = load i8, ptr %272, align 2
  %274 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 10
  %275 = load i32, ptr %274, align 4
  %276 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 11
  %277 = load i8, ptr %276, align 4
  %278 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 12
  %279 = load i8, ptr %278, align 1
  %280 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 13
  %281 = load i8, ptr %280, align 2
  %282 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 14
  %283 = load ptr, ptr %282, align 4
  %284 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 15
  %285 = load i32, ptr %284, align 4
  %286 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 16
  %287 = load i8, ptr %286, align 4
  %288 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 17
  %289 = load i8, ptr %288, align 1
  %290 = zext i8 %264 to i32
  %291 = icmp ugt i8 %264, 1
  br i1 %291, label %292, label %309

292:                                              ; preds = %258
  %293 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %294 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %293, i32 noundef 3520, i32 noundef 32) #9
  %295 = icmp eq ptr %294, null
  br i1 %295, label %470, label %296

296:                                              ; preds = %292
  %297 = getelementptr i8, ptr %265, i32 %267
  %298 = getelementptr inbounds %struct.clk_mux, ptr %294, i32 0, i32 1
  store ptr %297, ptr %298, align 4
  %299 = getelementptr inbounds %struct.clk_mux, ptr %294, i32 0, i32 4
  store i8 %269, ptr %299, align 8
  %300 = zext i8 %271 to i32
  %301 = shl nsw i32 -1, %300
  %302 = xor i32 %301, -1
  %303 = getelementptr inbounds %struct.clk_mux, ptr %294, i32 0, i32 3
  store i32 %302, ptr %303, align 4
  %304 = getelementptr inbounds %struct.clk_mux, ptr %294, i32 0, i32 5
  store i8 %273, ptr %304, align 1
  %305 = getelementptr inbounds %struct.clk_mux, ptr %294, i32 0, i32 6
  store ptr %7, ptr %305, align 4
  %306 = and i8 %273, 8
  %307 = icmp eq i8 %306, 0
  %308 = select i1 %307, ptr @clk_mux_ops, ptr @clk_mux_ro_ops
  br label %309

309:                                              ; preds = %296, %258
  %310 = phi ptr [ %294, %296 ], [ null, %258 ]
  %311 = phi ptr [ %308, %296 ], [ null, %258 ]
  %312 = icmp sgt i32 %285, -1
  br i1 %312, label %313, label %323

313:                                              ; preds = %309
  %314 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %315 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %314, i32 noundef 3520, i32 noundef 24) #9
  %316 = icmp eq ptr %315, null
  br i1 %316, label %354, label %317

317:                                              ; preds = %313
  %318 = getelementptr inbounds %struct.clk_gate, ptr %315, i32 0, i32 3
  store i8 %289, ptr %318, align 1
  %319 = getelementptr i8, ptr %265, i32 %285
  %320 = getelementptr inbounds %struct.clk_gate, ptr %315, i32 0, i32 1
  store ptr %319, ptr %320, align 4
  %321 = getelementptr inbounds %struct.clk_gate, ptr %315, i32 0, i32 2
  store i8 %287, ptr %321, align 8
  %322 = getelementptr inbounds %struct.clk_gate, ptr %315, i32 0, i32 4
  store ptr %7, ptr %322, align 4
  br label %323

323:                                              ; preds = %317, %309
  %324 = phi ptr [ %315, %317 ], [ null, %309 ]
  %325 = phi ptr [ @clk_gate_ops, %317 ], [ null, %309 ]
  %326 = icmp eq i8 %279, 0
  br i1 %326, label %345, label %327

327:                                              ; preds = %323
  %328 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %329 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %328, i32 noundef 3520, i32 noundef 28) #9
  %330 = icmp eq ptr %329, null
  br i1 %330, label %331, label %332

331:                                              ; preds = %327
  call void @kfree(ptr noundef %324) #10
  br label %354

332:                                              ; preds = %327
  %333 = getelementptr inbounds %struct.clk_divider, ptr %329, i32 0, i32 4
  store i8 %281, ptr %333, align 2
  %334 = icmp eq i32 %275, 0
  %335 = select i1 %334, i32 %267, i32 %275
  %336 = getelementptr i8, ptr %265, i32 %335
  %337 = getelementptr inbounds %struct.clk_divider, ptr %329, i32 0, i32 1
  store ptr %336, ptr %337, align 4
  %338 = getelementptr inbounds %struct.clk_divider, ptr %329, i32 0, i32 2
  store i8 %277, ptr %338, align 8
  %339 = getelementptr inbounds %struct.clk_divider, ptr %329, i32 0, i32 3
  store i8 %279, ptr %339, align 1
  %340 = getelementptr inbounds %struct.clk_divider, ptr %329, i32 0, i32 6
  store ptr %7, ptr %340, align 8
  %341 = getelementptr inbounds %struct.clk_divider, ptr %329, i32 0, i32 5
  store ptr %283, ptr %341, align 4
  %342 = and i8 %281, 32
  %343 = icmp eq i8 %342, 0
  %344 = select i1 %343, ptr @clk_divider_ops, ptr @clk_divider_ro_ops
  br label %345

345:                                              ; preds = %332, %323
  %346 = phi ptr [ %329, %332 ], [ null, %323 ]
  %347 = phi ptr [ %344, %332 ], [ null, %323 ]
  %348 = call ptr @clk_hw_register_composite(ptr noundef null, ptr noundef %260, ptr noundef %262, i32 noundef %290, ptr noundef %310, ptr noundef %311, ptr noundef %346, ptr noundef %347, ptr noundef %324, ptr noundef %325, i32 noundef %20) #10
  %349 = icmp ugt ptr %348, inttoptr (i32 -4096 to ptr)
  br i1 %349, label %350, label %351

350:                                              ; preds = %345
  call void @kfree(ptr noundef %346) #10
  call void @kfree(ptr noundef %324) #10
  br label %462

351:                                              ; preds = %345
  %352 = getelementptr inbounds %struct.clk_hw, ptr %348, i32 0, i32 1
  %353 = load ptr, ptr %352, align 4
  br label %462

354:                                              ; preds = %331, %313
  call void @kfree(ptr noundef %310) #10
  br label %470

355:                                              ; preds = %15
  %356 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 2
  %357 = load ptr, ptr %356, align 4
  %358 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 3
  %359 = load ptr, ptr %358, align 4
  %360 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 4
  %361 = load i8, ptr %360, align 4
  %362 = load ptr, ptr %0, align 4
  %363 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 6
  %364 = load i32, ptr %363, align 4
  %365 = getelementptr i8, ptr %362, i32 %364
  %366 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 11
  %367 = load i8, ptr %366, align 4
  %368 = zext i8 %367 to i32
  %369 = call ptr @rockchip_clk_register_mmc(ptr noundef %357, ptr noundef %359, i8 noundef zeroext %361, ptr noundef %365, i32 noundef %368) #10
  br label %462

370:                                              ; preds = %15
  %371 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 2
  %372 = load ptr, ptr %371, align 4
  %373 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 3
  %374 = load ptr, ptr %373, align 4
  %375 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 4
  %376 = load i8, ptr %375, align 4
  %377 = load ptr, ptr %0, align 4
  %378 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 6
  %379 = load i32, ptr %378, align 4
  %380 = getelementptr i8, ptr %377, i32 %379
  %381 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 11
  %382 = load i8, ptr %381, align 4
  %383 = zext i8 %382 to i32
  %384 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 13
  %385 = load i8, ptr %384, align 2
  %386 = zext i8 %385 to i32
  %387 = call ptr @rockchip_clk_register_inverter(ptr noundef %372, ptr noundef %374, i8 noundef zeroext %376, ptr noundef %380, i32 noundef %383, i32 noundef %386, ptr noundef %7) #10
  br label %462

388:                                              ; preds = %15
  %389 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 2
  %390 = load ptr, ptr %389, align 4
  %391 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 3
  %392 = load ptr, ptr %391, align 4
  %393 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 4
  %394 = load i8, ptr %393, align 4
  %395 = load ptr, ptr %0, align 4
  %396 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 11
  %397 = load i8, ptr %396, align 4
  %398 = zext i8 %397 to i32
  %399 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 12
  %400 = load i8, ptr %399, align 1
  %401 = zext i8 %400 to i32
  %402 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 15
  %403 = load i32, ptr %402, align 4
  %404 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 16
  %405 = load i8, ptr %404, align 4
  %406 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 17
  %407 = load i8, ptr %406, align 1
  %408 = icmp eq i32 %403, 0
  br i1 %408, label %409, label %412

409:                                              ; preds = %388
  %410 = load ptr, ptr %392, align 4
  %411 = call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %390, ptr noundef %410, i32 noundef %20, i32 noundef %398, i32 noundef %401) #10
  br label %462

412:                                              ; preds = %388
  %413 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %414 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %413, i32 noundef 3520, i32 noundef 24) #9
  %415 = icmp eq ptr %414, null
  br i1 %415, label %470, label %416

416:                                              ; preds = %412
  %417 = getelementptr inbounds %struct.clk_gate, ptr %414, i32 0, i32 3
  store i8 %407, ptr %417, align 1
  %418 = getelementptr i8, ptr %395, i32 %403
  %419 = getelementptr inbounds %struct.clk_gate, ptr %414, i32 0, i32 1
  store ptr %418, ptr %419, align 4
  %420 = getelementptr inbounds %struct.clk_gate, ptr %414, i32 0, i32 2
  store i8 %405, ptr %420, align 8
  %421 = getelementptr inbounds %struct.clk_gate, ptr %414, i32 0, i32 4
  store ptr %7, ptr %421, align 4
  %422 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %423 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %422, i32 noundef 3520, i32 noundef 20) #9
  %424 = icmp eq ptr %423, null
  br i1 %424, label %425, label %426

425:                                              ; preds = %416
  call void @kfree(ptr noundef nonnull %414) #10
  br label %470

426:                                              ; preds = %416
  %427 = getelementptr inbounds %struct.clk_fixed_factor, ptr %423, i32 0, i32 1
  store i32 %398, ptr %427, align 4
  %428 = getelementptr inbounds %struct.clk_fixed_factor, ptr %423, i32 0, i32 2
  store i32 %401, ptr %428, align 8
  %429 = zext i8 %394 to i32
  %430 = call ptr @clk_hw_register_composite(ptr noundef null, ptr noundef %390, ptr noundef %392, i32 noundef %429, ptr noundef null, ptr noundef null, ptr noundef nonnull %423, ptr noundef nonnull @clk_fixed_factor_ops, ptr noundef nonnull %414, ptr noundef nonnull @clk_gate_ops, i32 noundef %20) #10
  %431 = icmp ugt ptr %430, inttoptr (i32 -4096 to ptr)
  br i1 %431, label %432, label %433

432:                                              ; preds = %426
  call void @kfree(ptr noundef nonnull %423) #10
  call void @kfree(ptr noundef nonnull %414) #10
  br label %462

433:                                              ; preds = %426
  %434 = getelementptr inbounds %struct.clk_hw, ptr %430, i32 0, i32 1
  %435 = load ptr, ptr %434, align 4
  br label %462

436:                                              ; preds = %15
  %437 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 2
  %438 = load ptr, ptr %437, align 4
  %439 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 3
  %440 = load ptr, ptr %439, align 4
  %441 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 4
  %442 = load i8, ptr %441, align 4
  %443 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 6
  %444 = load i32, ptr %443, align 4
  %445 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 7
  %446 = load i8, ptr %445, align 4
  %447 = zext i8 %446 to i32
  %448 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 8
  %449 = load i8, ptr %448, align 1
  %450 = zext i8 %449 to i32
  %451 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 11
  %452 = load i8, ptr %451, align 4
  %453 = zext i8 %452 to i32
  %454 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 12
  %455 = load i8, ptr %454, align 1
  %456 = zext i8 %455 to i32
  %457 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 13
  %458 = load i8, ptr %457, align 2
  %459 = zext i8 %458 to i32
  %460 = load ptr, ptr %0, align 4
  %461 = call ptr @rockchip_clk_register_ddrclk(ptr noundef %438, i32 noundef %20, ptr noundef %440, i8 noundef zeroext %442, i32 noundef %444, i32 noundef %447, i32 noundef %450, i32 noundef %453, i32 noundef %456, i32 noundef %459, ptr noundef %460, ptr noundef %7) #10
  br label %462

462:                                              ; preds = %436, %433, %432, %409, %370, %355, %351, %350, %242, %213, %210, %187, %148, %85, %83, %44, %23, %15
  %463 = phi ptr [ %17, %15 ], [ %461, %436 ], [ %387, %370 ], [ %369, %355 ], [ %257, %242 ], [ %241, %213 ], [ %84, %83 ], [ %86, %85 ], [ %63, %44 ], [ %43, %23 ], [ %146, %148 ], [ %212, %210 ], [ %185, %187 ], [ %348, %350 ], [ %353, %351 ], [ %411, %409 ], [ %430, %432 ], [ %435, %433 ]
  %464 = icmp eq ptr %463, null
  br i1 %464, label %465, label %468

465:                                              ; preds = %462
  %466 = load i32, ptr %21, align 4
  %467 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.rockchip_clk_register_branches, i32 noundef %466) #12
  br label %484

468:                                              ; preds = %462
  %469 = icmp ugt ptr %463, inttoptr (i32 -4096 to ptr)
  br i1 %469, label %470, label %476

470:                                              ; preds = %468, %425, %412, %354, %292, %116, %114, %87
  %471 = phi ptr [ %463, %468 ], [ inttoptr (i32 -12 to ptr), %412 ], [ inttoptr (i32 -12 to ptr), %425 ], [ inttoptr (i32 -12 to ptr), %292 ], [ inttoptr (i32 -12 to ptr), %354 ], [ inttoptr (i32 -12 to ptr), %116 ], [ inttoptr (i32 -22 to ptr), %87 ], [ inttoptr (i32 -22 to ptr), %114 ]
  %472 = getelementptr inbounds %struct.rockchip_clk_branch, ptr %16, i32 0, i32 2
  %473 = load ptr, ptr %472, align 4
  %474 = ptrtoint ptr %471 to i32
  %475 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.rockchip_clk_register_branches, ptr noundef %473, i32 noundef %474) #12
  br label %484

476:                                              ; preds = %468
  %477 = load i32, ptr %16, align 4
  %478 = load ptr, ptr %13, align 4
  %479 = icmp ne ptr %478, null
  %480 = icmp ne i32 %477, 0
  %481 = and i1 %480, %479
  br i1 %481, label %482, label %484

482:                                              ; preds = %476
  %483 = getelementptr ptr, ptr %478, i32 %477
  store ptr %463, ptr %483, align 4
  br label %484

484:                                              ; preds = %482, %476, %470, %465
  %485 = phi ptr [ %471, %470 ], [ null, %465 ], [ %463, %476 ], [ %463, %482 ]
  %486 = add nuw i32 %18, 1
  %487 = getelementptr %struct.rockchip_clk_branch, ptr %16, i32 1
  %488 = icmp eq i32 %486, %2
  br i1 %488, label %489, label %15

489:                                              ; preds = %484, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_mux_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rockchip_clk_register_muxgrf(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rockchip_clk_register_halfdiv(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rockchip_clk_register_mmc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rockchip_clk_register_inverter(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rockchip_clk_register_ddrclk(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rockchip_clk_register_armclk(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef %5, ptr noundef %6, i32 noundef %7) #0 {
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.rockchip_clk_provider, ptr %0, i32 0, i32 4
  %11 = tail call ptr @rockchip_clk_register_cpuclk(ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %9, ptr noundef %10) #10
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = ptrtoint ptr %11 to i32
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.rockchip_clk_register_armclk, ptr noundef %2, i32 noundef %14) #12
  br label %24

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.rockchip_clk_provider, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp ne ptr %18, null
  %20 = icmp ne i32 %1, 0
  %21 = and i1 %20, %19
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = getelementptr ptr, ptr %18, i32 %1
  store ptr %11, ptr %23, align 4
  br label %24

24:                                               ; preds = %22, %16, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rockchip_clk_register_cpuclk(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rockchip_clk_protect_critical(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %18

4:                                                ; preds = %15, %2
  %5 = phi i32 [ %16, %15 ], [ 0, %2 ]
  %6 = getelementptr ptr, ptr %0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @__clk_lookup(ptr noundef %7) #10
  %9 = tail call i32 @clk_prepare(ptr noundef %8) #10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = tail call i32 @clk_enable(ptr noundef %8) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @clk_unprepare(ptr noundef %8) #10
  br label %15

15:                                               ; preds = %14, %11, %4
  %16 = add nuw nsw i32 %5, 1
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %18, label %4

18:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_lookup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rockchip_register_restart_notifier(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  store ptr %4, ptr @rst_base, align 4
  store i32 %1, ptr @reg_restart, align 4
  store ptr %2, ptr @cb_restart, align 4
  %5 = tail call i32 @register_restart_handler(ptr noundef nonnull @rockchip_restart_handler) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.rockchip_register_restart_notifier, i32 noundef %5) #12
  br label %9

9:                                                ; preds = %7, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_restart_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rockchip_fractional_approximation(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #10
  %7 = tail call i32 @clk_hw_get_rate(ptr noundef %6) #10
  %8 = mul i32 %1, 20
  %9 = icmp ugt i32 %8, %7
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = urem i32 %7, %1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #10
  %15 = tail call ptr @clk_hw_get_parent(ptr noundef %14) #10
  %16 = tail call i32 @clk_hw_get_rate(ptr noundef %15) #10
  store i32 %16, ptr %2, align 4
  br label %17

17:                                               ; preds = %13, %10, %5
  tail call void @clk_fractional_divider_general_approximation(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_composite(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_clk_frac_notifier_cb(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.rockchip_clk_frac, ptr %0, i32 0, i32 3
  switch i32 %1, label %36 [
    i32 1, label %5
    i32 2, label %23
  ]

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.rockchip_clk_frac, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.clk_ops, ptr %7, i32 0, i32 14
  %9 = load ptr, ptr %8, align 4
  %10 = tail call zeroext i8 %9(ptr noundef %4) #10
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds %struct.rockchip_clk_frac, ptr %0, i32 0, i32 7
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.rockchip_clk_frac, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %11
  br i1 %15, label %36, label %16

16:                                               ; preds = %5
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr inbounds %struct.clk_ops, ptr %17, i32 0, i32 13
  %19 = load ptr, ptr %18, align 4
  %20 = trunc i32 %14 to i8
  %21 = tail call i32 %19(ptr noundef %4, i8 noundef zeroext %20) #10
  %22 = getelementptr inbounds %struct.rockchip_clk_frac, ptr %0, i32 0, i32 6
  store i8 1, ptr %22, align 4
  br label %36

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.rockchip_clk_frac, ptr %0, i32 0, i32 6
  %25 = load i8, ptr %24, align 4, !range !10
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.rockchip_clk_frac, ptr %0, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.clk_ops, ptr %29, i32 0, i32 13
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.rockchip_clk_frac, ptr %0, i32 0, i32 7
  %33 = load i32, ptr %32, align 4
  %34 = trunc i32 %33 to i8
  %35 = tail call i32 %31(ptr noundef %4, i8 noundef zeroext %34) #10
  store i8 0, ptr %24, align 4
  br label %36

36:                                               ; preds = %27, %23, %16, %5, %3
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_fractional_divider_general_approximation(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_restart_notify(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load ptr, ptr @cb_restart, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void %4() #10
  br label %7

7:                                                ; preds = %6, %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %8 = load ptr, ptr @rst_base, align 4
  %9 = load i32, ptr @reg_restart, align 4
  %10 = getelementptr i8, ptr %8, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 64953) #10, !srcloc !12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
!11 = !{i64 2151241793}
!12 = !{i64 3034607}
