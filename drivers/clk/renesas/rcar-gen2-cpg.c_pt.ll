; ModuleID = '/llk/IR/drivers/clk/renesas/rcar-gen2-cpg.c_pt.bc'
source_filename = "../drivers/clk/renesas/rcar-gen2-cpg.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_div_table = type { i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpg_core_clk = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.rcar_gen2_cpg_pll_config = type { i8, i8, i8, i8 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.cpg_z_clk = type { %struct.clk_hw, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_fixed_factor = type { %struct.clk_hw, i32, i32 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@cpg_pll_config = internal unnamed_addr global ptr null, section ".init.data", align 4
@cpg_pll0_div = internal unnamed_addr global i32 0, section ".init.data", align 4
@cpg_mode = internal unnamed_addr global i32 0, section ".init.data", align 4
@cpg_sdh_div_table = internal constant [12 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 2 }, %struct.clk_div_table { i32 1, i32 3 }, %struct.clk_div_table { i32 2, i32 4 }, %struct.clk_div_table { i32 3, i32 6 }, %struct.clk_div_table { i32 4, i32 8 }, %struct.clk_div_table { i32 5, i32 12 }, %struct.clk_div_table { i32 6, i32 16 }, %struct.clk_div_table { i32 7, i32 18 }, %struct.clk_div_table { i32 8, i32 24 }, %struct.clk_div_table { i32 10, i32 36 }, %struct.clk_div_table { i32 11, i32 48 }, %struct.clk_div_table zeroinitializer], align 4
@cpg_sd01_div_table = internal constant [9 x %struct.clk_div_table] [%struct.clk_div_table { i32 4, i32 8 }, %struct.clk_div_table { i32 5, i32 12 }, %struct.clk_div_table { i32 6, i32 16 }, %struct.clk_div_table { i32 7, i32 18 }, %struct.clk_div_table { i32 8, i32 24 }, %struct.clk_div_table { i32 10, i32 36 }, %struct.clk_div_table { i32 11, i32 48 }, %struct.clk_div_table { i32 12, i32 10 }, %struct.clk_div_table zeroinitializer], align 4
@cpg_quirks = internal unnamed_addr global i32 0, section ".init.data", align 4
@cpg_lock = internal global %struct.spinlock zeroinitializer, align 4
@cpg_quirks_match = internal constant [2 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr null, ptr null, ptr null, ptr @.str, ptr inttoptr (i32 1 to ptr), ptr null }, %struct.soc_device_attribute zeroinitializer], section ".init.rodata", align 4
@cpg_z_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpg_z_clk_recalc_rate, ptr null, ptr @cpg_z_clk_determine_rate, ptr null, ptr null, ptr @cpg_z_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@cpg_adsp_div_table = internal constant [11 x %struct.clk_div_table] [%struct.clk_div_table { i32 1, i32 3 }, %struct.clk_div_table { i32 2, i32 4 }, %struct.clk_div_table { i32 3, i32 6 }, %struct.clk_div_table { i32 4, i32 8 }, %struct.clk_div_table { i32 5, i32 12 }, %struct.clk_div_table { i32 6, i32 16 }, %struct.clk_div_table { i32 7, i32 18 }, %struct.clk_div_table { i32 8, i32 24 }, %struct.clk_div_table { i32 10, i32 36 }, %struct.clk_div_table { i32 11, i32 48 }, %struct.clk_div_table zeroinitializer], align 4
@clk_divider_ops = external dso_local constant %struct.clk_ops, align 4
@clk_gate_ops = external dso_local constant %struct.clk_ops, align 4
@clk_fixed_factor_ops = external dso_local constant %struct.clk_ops, align 4
@.str = private unnamed_addr constant [9 x i8] c"r8a77470\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @rcar_gen2_cpg_clk_register(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr nocapture noundef readnone %5) local_unnamed_addr #0 section ".init.text" {
  %7 = getelementptr inbounds %struct.cpg_core_clk, ptr %1, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr ptr, ptr %3, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %84, label %12

12:                                               ; preds = %6
  %13 = tail call ptr @__clk_get_name(ptr noundef %10) #8
  %14 = getelementptr inbounds %struct.cpg_core_clk, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %84 [
    i32 5, label %16
    i32 6, label %20
    i32 7, label %33
    i32 8, label %39
    i32 9, label %44
    i32 10, label %47
    i32 11, label %52
    i32 12, label %78
    i32 13, label %55
    i32 14, label %60
    i32 15, label %65
    i32 16, label %70
  ]

16:                                               ; preds = %12
  %17 = load ptr, ptr @cpg_pll_config, align 4
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  br label %73

20:                                               ; preds = %12
  %21 = load ptr, ptr @cpg_pll_config, align 4
  %22 = getelementptr inbounds %struct.rcar_gen2_cpg_pll_config, ptr %21, i32 0, i32 3
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = load i32, ptr @cpg_pll0_div, align 4
  %26 = icmp eq i8 %23, 0
  br i1 %26, label %27, label %73

27:                                               ; preds = %20
  %28 = getelementptr i8, ptr %4, i32 216
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %30 = lshr i32 %29, 23
  %31 = and i32 %30, 254
  %32 = add nuw nsw i32 %31, 2
  br label %73

33:                                               ; preds = %12
  %34 = load ptr, ptr @cpg_pll_config, align 4
  %35 = getelementptr inbounds %struct.rcar_gen2_cpg_pll_config, ptr %34, i32 0, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = lshr i8 %36, 1
  %38 = zext i8 %37 to i32
  br label %73

39:                                               ; preds = %12
  %40 = load ptr, ptr @cpg_pll_config, align 4
  %41 = getelementptr inbounds %struct.rcar_gen2_cpg_pll_config, ptr %40, i32 0, i32 2
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  br label %73

44:                                               ; preds = %12
  %45 = load ptr, ptr %1, align 4
  %46 = tail call fastcc ptr @cpg_z_clk_register(ptr noundef %45, ptr noundef %13, ptr noundef %4) #9
  br label %84

47:                                               ; preds = %12
  %48 = load i32, ptr @cpg_mode, align 4
  %49 = and i32 %48, 262144
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, i32 24, i32 36
  br label %73

52:                                               ; preds = %12
  %53 = load ptr, ptr %1, align 4
  %54 = tail call fastcc ptr @cpg_adsp_clk_register(ptr noundef %53, ptr noundef %13, ptr noundef %4) #9
  br label %84

55:                                               ; preds = %12
  %56 = load i32, ptr @cpg_quirks, align 4
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %58, ptr @cpg_sd01_div_table, ptr getelementptr inbounds ([9 x %struct.clk_div_table], ptr @cpg_sd01_div_table, i32 0, i32 1)
  br label %78

60:                                               ; preds = %12
  %61 = load i32, ptr @cpg_quirks, align 4
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %63, ptr @cpg_sd01_div_table, ptr getelementptr inbounds ([9 x %struct.clk_div_table], ptr @cpg_sd01_div_table, i32 0, i32 1)
  br label %78

65:                                               ; preds = %12
  %66 = load i32, ptr @cpg_mode, align 4
  %67 = and i32 %66, 14
  %68 = icmp eq i32 %67, 4
  %69 = select i1 %68, i32 8, i32 10
  br label %73

70:                                               ; preds = %12
  %71 = load ptr, ptr %1, align 4
  %72 = tail call fastcc ptr @cpg_rcan_clk_register(ptr noundef %71, ptr noundef %13, ptr noundef %4) #9
  br label %84

73:                                               ; preds = %65, %47, %39, %33, %27, %20, %16
  %74 = phi i32 [ %19, %16 ], [ %25, %27 ], [ %25, %20 ], [ 1, %33 ], [ 1, %39 ], [ %51, %47 ], [ %69, %65 ]
  %75 = phi i32 [ 1, %16 ], [ %32, %27 ], [ %24, %20 ], [ %38, %33 ], [ %43, %39 ], [ 1, %47 ], [ 1, %65 ]
  %76 = load ptr, ptr %1, align 4
  %77 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %76, ptr noundef %13, i32 noundef 0, i32 noundef %75, i32 noundef %74) #8
  br label %84

78:                                               ; preds = %60, %55, %12
  %79 = phi i8 [ 0, %60 ], [ 4, %55 ], [ 8, %12 ]
  %80 = phi ptr [ %64, %60 ], [ %59, %55 ], [ @cpg_sdh_div_table, %12 ]
  %81 = load ptr, ptr %1, align 4
  %82 = getelementptr i8, ptr %4, i32 116
  %83 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef %81, ptr noundef %13, i32 noundef 0, ptr noundef %82, i8 noundef zeroext %79, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull %80, ptr noundef nonnull @cpg_lock) #8
  br label %84

84:                                               ; preds = %78, %73, %70, %52, %44, %12, %6
  %85 = phi ptr [ %72, %70 ], [ %83, %78 ], [ %77, %73 ], [ %54, %52 ], [ %46, %44 ], [ %10, %6 ], [ inttoptr (i32 -22 to ptr), %12 ]
  ret ptr %85
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @cpg_z_clk_register(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 section ".init.text" {
  %4 = alloca ptr, align 4
  %5 = alloca %struct.clk_init_data, align 4
  store ptr %1, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #8
  %6 = getelementptr inbounds i8, ptr %5, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, i8 0, i32 16, i1 false)
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 20) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %3
  store ptr %0, ptr %5, align 4
  %11 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 1
  store ptr @cpg_z_clk_ops, ptr %11, align 4
  %12 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 2
  store ptr %4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 5
  store i8 1, ptr %13, align 4
  %14 = getelementptr i8, ptr %2, i32 224
  %15 = getelementptr inbounds %struct.cpg_z_clk, ptr %8, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr i8, ptr %2, i32 4
  %17 = getelementptr inbounds %struct.cpg_z_clk, ptr %8, i32 0, i32 2
  store ptr %16, ptr %17, align 8
  %18 = getelementptr inbounds %struct.clk_hw, ptr %8, i32 0, i32 2
  store ptr %5, ptr %18, align 8
  %19 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %8) #8
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  call void @kfree(ptr noundef nonnull %8) #8
  br label %22

22:                                               ; preds = %21, %10, %3
  %23 = phi ptr [ %19, %21 ], [ %19, %10 ], [ inttoptr (i32 -12 to ptr), %3 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #8
  ret ptr %23
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @cpg_adsp_clk_register(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 section ".init.text" {
  %4 = alloca ptr, align 4
  store ptr %1, ptr %4, align 4
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 28) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %2, i32 604
  %10 = getelementptr inbounds %struct.clk_divider, ptr %6, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.clk_divider, ptr %6, i32 0, i32 3
  store i8 4, ptr %11, align 1
  %12 = getelementptr inbounds %struct.clk_divider, ptr %6, i32 0, i32 5
  store ptr @cpg_adsp_div_table, ptr %12, align 4
  %13 = getelementptr inbounds %struct.clk_divider, ptr %6, i32 0, i32 6
  store ptr @cpg_lock, ptr %13, align 8
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 24) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  tail call void @kfree(ptr noundef nonnull %6) #8
  br label %26

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.clk_gate, ptr %15, i32 0, i32 1
  store ptr %9, ptr %19, align 4
  %20 = getelementptr inbounds %struct.clk_gate, ptr %15, i32 0, i32 2
  store i8 8, ptr %20, align 8
  %21 = getelementptr inbounds %struct.clk_gate, ptr %15, i32 0, i32 3
  store i8 1, ptr %21, align 1
  %22 = getelementptr inbounds %struct.clk_gate, ptr %15, i32 0, i32 4
  store ptr @cpg_lock, ptr %22, align 4
  %23 = call ptr @clk_register_composite(ptr noundef null, ptr noundef %0, ptr noundef nonnull %4, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef nonnull %6, ptr noundef nonnull @clk_divider_ops, ptr noundef nonnull %15, ptr noundef nonnull @clk_gate_ops, i32 noundef 0) #8
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  call void @kfree(ptr noundef nonnull %15) #8
  call void @kfree(ptr noundef nonnull %6) #8
  br label %26

26:                                               ; preds = %25, %18, %17, %3
  %27 = phi ptr [ inttoptr (i32 -12 to ptr), %17 ], [ %23, %25 ], [ %23, %18 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %27
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @cpg_rcan_clk_register(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 section ".init.text" {
  %4 = alloca ptr, align 4
  store ptr %1, ptr %4, align 4
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 20) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.clk_fixed_factor, ptr %6, i32 0, i32 1
  store i32 1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.clk_fixed_factor, ptr %6, i32 0, i32 2
  store i32 6, ptr %10, align 8
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 24) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  tail call void @kfree(ptr noundef nonnull %6) #8
  br label %24

15:                                               ; preds = %8
  %16 = getelementptr i8, ptr %2, i32 624
  %17 = getelementptr inbounds %struct.clk_gate, ptr %12, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.clk_gate, ptr %12, i32 0, i32 2
  store i8 8, ptr %18, align 8
  %19 = getelementptr inbounds %struct.clk_gate, ptr %12, i32 0, i32 3
  store i8 1, ptr %19, align 1
  %20 = getelementptr inbounds %struct.clk_gate, ptr %12, i32 0, i32 4
  store ptr @cpg_lock, ptr %20, align 4
  %21 = call ptr @clk_register_composite(ptr noundef null, ptr noundef %0, ptr noundef nonnull %4, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef nonnull %6, ptr noundef nonnull @clk_fixed_factor_ops, ptr noundef nonnull %12, ptr noundef nonnull @clk_gate_ops, i32 noundef 0) #8
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  call void @kfree(ptr noundef nonnull %12) #8
  call void @kfree(ptr noundef nonnull %6) #8
  br label %24

24:                                               ; preds = %23, %15, %14, %3
  %25 = phi ptr [ inttoptr (i32 -12 to ptr), %14 ], [ %21, %23 ], [ %21, %15 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @rcar_gen2_cpg_init(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 section ".init.text" {
  store ptr %0, ptr @cpg_pll_config, align 4
  store i32 %1, ptr @cpg_pll0_div, align 4
  store i32 %2, ptr @cpg_mode, align 4
  %4 = tail call ptr @soc_device_match(ptr noundef nonnull @cpg_quirks_match) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.soc_device_attribute, ptr %4, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  store i32 %9, ptr @cpg_quirks, align 4
  br label %10

10:                                               ; preds = %6, %3
  store i32 0, ptr @cpg_lock, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpg_z_clk_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.cpg_z_clk, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %6 = lshr i32 %5, 8
  %7 = and i32 %6, 31
  %8 = sub nuw nsw i32 32, %7
  %9 = zext i32 %1 to i64
  %10 = zext i32 %8 to i64
  %11 = mul nuw nsw i64 %10, %9
  %12 = lshr i64 %11, 5
  %13 = trunc i64 %12 to i32
  ret i32 %13
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpg_z_clk_determine_rate(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 5
  %9 = icmp ult i32 %6, 134217728
  br i1 %9, label %10, label %14, !prof !11

10:                                               ; preds = %2
  %11 = trunc i64 %8 to i32
  %12 = udiv i32 %11, %4
  %13 = zext i32 %12 to i64
  br label %17

14:                                               ; preds = %2
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %4, i64 %8) #11, !srcloc !12
  %16 = extractvalue { i64, i64 } %15, 1
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi i64 [ %13, %10 ], [ %16, %14 ]
  %19 = tail call i64 @llvm.umax.i64(i64 %18, i64 1)
  %20 = trunc i64 %19 to i32
  %21 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = zext i32 %22 to i64
  %24 = shl nuw nsw i64 %23, 5
  %25 = icmp ult i32 %22, 134217728
  br i1 %25, label %26, label %30, !prof !11

26:                                               ; preds = %17
  %27 = trunc i64 %24 to i32
  %28 = udiv i32 %27, %4
  %29 = zext i32 %28 to i64
  br label %33

30:                                               ; preds = %17
  %31 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %4, i64 %24) #11, !srcloc !12
  %32 = extractvalue { i64, i64 } %31, 1
  br label %33

33:                                               ; preds = %30, %26
  %34 = phi i64 [ %29, %26 ], [ %32, %30 ]
  %35 = tail call i64 @llvm.umin.i64(i64 %34, i64 32)
  %36 = trunc i64 %35 to i32
  %37 = icmp ugt i32 %20, %36
  br i1 %37, label %59, label %38

38:                                               ; preds = %33
  %39 = load i32, ptr %1, align 4
  %40 = zext i32 %39 to i64
  %41 = shl nuw nsw i64 %40, 5
  %42 = icmp ult i32 %39, 134217728
  br i1 %42, label %43, label %46, !prof !11

43:                                               ; preds = %38
  %44 = trunc i64 %41 to i32
  %45 = udiv i32 %44, %4
  br label %50

46:                                               ; preds = %38
  %47 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %4, i64 %41) #11, !srcloc !12
  %48 = extractvalue { i64, i64 } %47, 1
  %49 = trunc i64 %48 to i32
  br label %50

50:                                               ; preds = %46, %43
  %51 = phi i32 [ %45, %43 ], [ %49, %46 ]
  %52 = tail call i32 @llvm.umax.i32(i32 %51, i32 %20)
  %53 = tail call i32 @llvm.umin.i32(i32 %52, i32 %36)
  %54 = zext i32 %4 to i64
  %55 = zext i32 %53 to i64
  %56 = mul nuw nsw i64 %55, %54
  %57 = lshr i64 %56, 5
  %58 = trunc i64 %57 to i32
  store i32 %58, ptr %1, align 4
  br label %59

59:                                               ; preds = %50, %33
  %60 = phi i32 [ 0, %50 ], [ -22, %33 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpg_z_clk_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = zext i32 %1 to i64
  %5 = shl nuw nsw i64 %4, 5
  %6 = icmp ult i32 %1, 134217728
  br i1 %6, label %7, label %10, !prof !11

7:                                                ; preds = %3
  %8 = trunc i64 %5 to i32
  %9 = udiv i32 %8, %2
  br label %14

10:                                               ; preds = %3
  %11 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %2, i64 %5) #11, !srcloc !12
  %12 = extractvalue { i64, i64 } %11, 1
  %13 = trunc i64 %12 to i32
  br label %14

14:                                               ; preds = %10, %7
  %15 = phi i32 [ %9, %7 ], [ %13, %10 ]
  %16 = getelementptr inbounds %struct.cpg_z_clk, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %20, label %42

20:                                               ; preds = %14
  %21 = tail call i32 @llvm.umax.i32(i32 %15, i32 1)
  %22 = getelementptr inbounds %struct.cpg_z_clk, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %25 = and i32 %24, -7937
  %26 = tail call i32 @llvm.usub.sat.i32(i32 32, i32 %21)
  %27 = shl nuw nsw i32 %26, 8
  %28 = or i32 %25, %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  tail call void @arm_heavy_mb() #8
  %29 = load ptr, ptr %22, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %28) #8, !srcloc !16
  %30 = load ptr, ptr %16, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  %32 = or i32 %31, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %33 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %32) #8, !srcloc !16
  br label %34

34:                                               ; preds = %39, %20
  %35 = phi i32 [ 1000, %20 ], [ %40, %39 ]
  %36 = load ptr, ptr %16, align 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !20
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !21
  %40 = add nsw i32 %35, -1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %34

42:                                               ; preds = %39, %34, %14
  %43 = phi i32 [ -16, %14 ], [ -110, %39 ], [ 0, %34 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_composite(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind readnone }

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
!8 = !{i64 3820195}
!9 = !{i64 2151522360}
!10 = !{i64 2151493297}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148440178, i64 2148440458, i64 2148440792, i64 2148441126}
!13 = !{i64 2151517475}
!14 = !{i64 2151517872}
!15 = !{i64 2151518084}
!16 = !{i64 3819777}
!17 = !{i64 2151518530}
!18 = !{i64 2151518797}
!19 = !{i64 2151519250}
!20 = !{i64 2151519580}
!21 = !{i64 2151519422}
