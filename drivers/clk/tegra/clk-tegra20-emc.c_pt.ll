; ModuleID = '/llk/IR/drivers/clk/tegra/clk-tegra20-emc.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk-tegra20-emc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra20_clk_set_emc_round_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra20_clk_set_emc_round_callback\22\09\09\09\09\09"
module asm "__kstrtabns_tegra20_clk_set_emc_round_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra20_clk_prepare_emc_mc_same_freq:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra20_clk_prepare_emc_mc_same_freq\22\09\09\09\09\09"
module asm "__kstrtabns_tegra20_clk_prepare_emc_mc_same_freq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tegra_clk_emc = type { %struct.clk_hw, ptr, i8, i8, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@.str = private unnamed_addr constant [4 x i8] c"emc\00", align 1
@__kstrtab_tegra20_clk_set_emc_round_callback = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra20_clk_set_emc_round_callback = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra20_clk_set_emc_round_callback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra20_clk_set_emc_round_callback to i32), ptr @__kstrtab_tegra20_clk_set_emc_round_callback, ptr @__kstrtabns_tegra20_clk_set_emc_round_callback }, section "___ksymtab_gpl+tegra20_clk_set_emc_round_callback", align 4
@tegra_clk_emc_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @emc_recalc_rate, ptr null, ptr @emc_determine_rate, ptr @emc_set_parent, ptr @emc_get_parent, ptr @emc_set_rate, ptr @emc_set_rate_and_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@emc_parent_clk_names = internal constant [4 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], align 4
@__kstrtab_tegra20_clk_prepare_emc_mc_same_freq = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra20_clk_prepare_emc_mc_same_freq = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra20_clk_prepare_emc_mc_same_freq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra20_clk_prepare_emc_mc_same_freq to i32), ptr @__kstrtab_tegra20_clk_prepare_emc_mc_same_freq, ptr @__kstrtabns_tegra20_clk_prepare_emc_mc_same_freq }, section "___ksymtab_gpl+tegra20_clk_prepare_emc_mc_same_freq", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@emc_determine_rate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"\013tegra-emc-clk: can't find parent for rate %lu emc_rate %lu\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"pll_m\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"pll_c\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"pll_p\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"clk_m\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_tegra20_clk_prepare_emc_mc_same_freq, ptr @__ksymtab_tegra20_clk_set_emc_round_callback], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra20_clk_set_emc_round_callback(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @__clk_lookup(ptr noundef nonnull @.str) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @__clk_get_hw(ptr noundef nonnull %3) #7
  %7 = getelementptr inbounds %struct.tegra_clk_emc, ptr %6, i32 0, i32 4
  store ptr %0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.tegra_clk_emc, ptr %6, i32 0, i32 5
  store ptr %1, ptr %8, align 4
  br label %9

9:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_lookup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @tegra20_clk_emc_driver_available(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.tegra_clk_emc, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra20_clk_register_emc(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #7
  %4 = getelementptr inbounds i8, ptr %3, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 12, i1 false), !annotation !8
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 28) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = zext i1 %1 to i8
  store ptr @.str, ptr %3, align 4
  %10 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 1
  store ptr @tegra_clk_emc_ops, ptr %10, align 4
  %11 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 6
  store i32 2048, ptr %11, align 4
  %12 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 2
  store ptr @emc_parent_clk_names, ptr %12, align 4
  %13 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 5
  store i8 4, ptr %13, align 4
  %14 = getelementptr inbounds %struct.tegra_clk_emc, ptr %6, i32 0, i32 1
  store ptr %0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.clk_hw, ptr %6, i32 0, i32 2
  store ptr %3, ptr %15, align 8
  %16 = getelementptr inbounds %struct.tegra_clk_emc, ptr %6, i32 0, i32 3
  store i8 %9, ptr %16, align 1
  %17 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %6) #7
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %20

19:                                               ; preds = %8
  call void @kfree(ptr noundef nonnull %6) #7
  br label %20

20:                                               ; preds = %19, %8, %2
  %21 = phi ptr [ null, %19 ], [ null, %2 ], [ %17, %8 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #7
  ret ptr %21
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra20_clk_prepare_emc_mc_same_freq(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = zext i1 %1 to i8
  %6 = tail call ptr @__clk_get_hw(ptr noundef nonnull %0) #7
  %7 = getelementptr inbounds %struct.tegra_clk_emc, ptr %6, i32 0, i32 2
  store i8 %5, ptr %7, align 4
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi i32 [ 0, %4 ], [ -22, %2 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @emc_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.tegra_clk_emc, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !9
  %6 = and i32 %5, 255
  %7 = shl i32 %1, 1
  %8 = add nuw nsw i32 %6, 2
  %9 = add i32 %7, -1
  %10 = add i32 %9, %8
  %11 = udiv i32 %10, %8
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @emc_determine_rate(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.tegra_clk_emc, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %1, align 4
  %6 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tegra_clk_emc, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %4(i32 noundef %5, i32 noundef %7, i32 noundef %9, ptr noundef %11) #7
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %100, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  %16 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  %17 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef 0) #7
  %18 = load ptr, ptr %15, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, ptr %16, align 4
  br label %24

22:                                               ; preds = %14
  %23 = tail call i32 @clk_hw_get_rate(ptr noundef %17) #7
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = icmp ugt i32 %12, %25
  br i1 %26, label %38, label %27

27:                                               ; preds = %24
  %28 = tail call i32 @div_frac_get(i32 noundef %12, i32 noundef %25, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  %29 = shl i32 %25, 1
  %30 = add i32 %28, 2
  %31 = add i32 %29, -1
  %32 = add i32 %31, %30
  %33 = udiv i32 %32, %30
  %34 = icmp eq i32 %33, %12
  br i1 %34, label %35, label %38

35:                                               ; preds = %87, %68, %49, %27
  %36 = phi i32 [ %25, %27 ], [ %47, %49 ], [ %66, %68 ], [ %85, %87 ]
  %37 = phi ptr [ %17, %27 ], [ %39, %49 ], [ %58, %68 ], [ %77, %87 ]
  store i32 %36, ptr %16, align 4
  store ptr %37, ptr %15, align 4
  store i32 %12, ptr %1, align 4
  br label %100

38:                                               ; preds = %27, %24
  %39 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef 1) #7
  %40 = load ptr, ptr %15, align 4
  %41 = icmp eq ptr %40, %39
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = tail call i32 @clk_hw_get_rate(ptr noundef %39) #7
  br label %46

44:                                               ; preds = %38
  %45 = load i32, ptr %16, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %45, %44 ], [ %43, %42 ]
  %48 = icmp ugt i32 %12, %47
  br i1 %48, label %57, label %49

49:                                               ; preds = %46
  %50 = tail call i32 @div_frac_get(i32 noundef %12, i32 noundef %47, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  %51 = shl i32 %47, 1
  %52 = add i32 %50, 2
  %53 = add i32 %51, -1
  %54 = add i32 %53, %52
  %55 = udiv i32 %54, %52
  %56 = icmp eq i32 %55, %12
  br i1 %56, label %35, label %57

57:                                               ; preds = %49, %46
  %58 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef 2) #7
  %59 = load ptr, ptr %15, align 4
  %60 = icmp eq ptr %59, %58
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = tail call i32 @clk_hw_get_rate(ptr noundef %58) #7
  br label %65

63:                                               ; preds = %57
  %64 = load i32, ptr %16, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %64, %63 ], [ %62, %61 ]
  %67 = icmp ugt i32 %12, %66
  br i1 %67, label %76, label %68

68:                                               ; preds = %65
  %69 = tail call i32 @div_frac_get(i32 noundef %12, i32 noundef %66, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  %70 = shl i32 %66, 1
  %71 = add i32 %69, 2
  %72 = add i32 %70, -1
  %73 = add i32 %72, %71
  %74 = udiv i32 %73, %71
  %75 = icmp eq i32 %74, %12
  br i1 %75, label %35, label %76

76:                                               ; preds = %68, %65
  %77 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef 3) #7
  %78 = load ptr, ptr %15, align 4
  %79 = icmp eq ptr %78, %77
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = tail call i32 @clk_hw_get_rate(ptr noundef %77) #7
  br label %84

82:                                               ; preds = %76
  %83 = load i32, ptr %16, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %83, %82 ], [ %81, %80 ]
  %86 = icmp ugt i32 %12, %85
  br i1 %86, label %95, label %87

87:                                               ; preds = %84
  %88 = tail call i32 @div_frac_get(i32 noundef %12, i32 noundef %85, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  %89 = shl i32 %85, 1
  %90 = add i32 %88, 2
  %91 = add i32 %89, -1
  %92 = add i32 %91, %90
  %93 = udiv i32 %92, %90
  %94 = icmp eq i32 %93, %12
  br i1 %94, label %35, label %95

95:                                               ; preds = %87, %84
  %96 = load i1, ptr @emc_determine_rate.__already_done, align 1
  br i1 %96, label %100, label %97, !prof !10

97:                                               ; preds = %95
  store i1 true, ptr @emc_determine_rate.__already_done, align 1
  %98 = load i32, ptr %1, align 4
  %99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %98, i32 noundef %12) #9
  br label %100

100:                                              ; preds = %97, %95, %35, %2
  %101 = phi i32 [ %12, %2 ], [ -22, %97 ], [ -22, %95 ], [ 0, %35 ]
  ret i32 %101
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @emc_set_parent(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.tegra_clk_emc, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !9
  %6 = and i32 %5, 1073741823
  %7 = zext i8 %1 to i32
  %8 = shl i32 %7, 30
  %9 = or i32 %6, %8
  %10 = and i32 %5, 255
  %11 = icmp eq i8 %1, 0
  %12 = icmp eq i32 %10, 0
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.tegra_clk_emc, ptr %0, i32 0, i32 3
  %16 = load i8, ptr %15, align 1, !range !11
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = or i32 %9, 536870912
  br label %22

20:                                               ; preds = %14, %2
  %21 = and i32 %9, -536870913
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = getelementptr inbounds %struct.tegra_clk_emc, ptr %0, i32 0, i32 2
  %25 = load i8, ptr %24, align 4, !range !11
  %26 = icmp eq i8 %25, 0
  %27 = and i32 %23, -65537
  %28 = select i1 %26, i32 0, i32 65536
  %29 = or i32 %28, %27
  %30 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %29) #7, !srcloc !12
  %31 = load ptr, ptr %3, align 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @emc_get_parent(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_clk_emc, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !9
  %5 = lshr i32 %4, 30
  %6 = trunc i32 %5 to i8
  ret i8 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @emc_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @div_frac_get(i32 noundef %1, i32 noundef %2, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  %5 = getelementptr inbounds %struct.tegra_clk_emc, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !9
  %8 = and i32 %7, -256
  %9 = or i32 %8, %4
  %10 = icmp ult i32 %9, 1073741824
  %11 = icmp eq i32 %4, 0
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.tegra_clk_emc, ptr %0, i32 0, i32 3
  %15 = load i8, ptr %14, align 1, !range !11
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = or i32 %9, 536870912
  br label %21

19:                                               ; preds = %13, %3
  %20 = and i32 %9, -536870913
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = getelementptr inbounds %struct.tegra_clk_emc, ptr %0, i32 0, i32 2
  %24 = load i8, ptr %23, align 4, !range !11
  %25 = icmp eq i8 %24, 0
  %26 = and i32 %22, -65537
  %27 = select i1 %25, i32 0, i32 65536
  %28 = or i32 %27, %26
  %29 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %28) #7, !srcloc !12
  %30 = load ptr, ptr %5, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @emc_set_rate_and_parent(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) #0 {
  %5 = tail call i32 @div_frac_get(i32 noundef %1, i32 noundef %2, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  %6 = getelementptr inbounds %struct.tegra_clk_emc, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !9
  %9 = and i32 %8, 1073741568
  %10 = zext i8 %3 to i32
  %11 = shl i32 %10, 30
  %12 = or i32 %9, %11
  %13 = or i32 %12, %5
  %14 = icmp eq i8 %3, 0
  %15 = icmp eq i32 %5, 0
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.tegra_clk_emc, ptr %0, i32 0, i32 3
  %19 = load i8, ptr %18, align 1, !range !11
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = or i32 %13, 536870912
  br label %25

23:                                               ; preds = %17, %4
  %24 = and i32 %13, -536870913
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = getelementptr inbounds %struct.tegra_clk_emc, ptr %0, i32 0, i32 2
  %28 = load i8, ptr %27, align 4, !range !11
  %29 = icmp eq i8 %28, 0
  %30 = and i32 %26, -65537
  %31 = select i1 %29, i32 0, i32 65536
  %32 = or i32 %31, %30
  %33 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %32) #7, !srcloc !12
  %34 = load ptr, ptr %6, align 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @div_frac_get(i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

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
!9 = !{i64 2861644}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i8 0, i8 2}
!12 = !{i64 2861226}
!13 = !{i64 2151119245}
!14 = !{i64 2151121472}
!15 = !{i64 2151124391}
