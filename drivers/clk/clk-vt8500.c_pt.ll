; ModuleID = '/llk/IR/drivers/clk/clk-vt8500.c_pt.bc'
source_filename = "../drivers/clk/clk-vt8500.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_device = type { %struct.clk_hw, ptr, i32, ptr, i32, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_pll = type { %struct.clk_hw, ptr, ptr, i32 }

@__of_table_vt8500_device = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"via,vt8500-device-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vtwm_device_clk_init }, section "__clk_of_table", align 4
@__of_table_vt8500_pll = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"via,vt8500-pll-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vt8500_pll_init }, section "__clk_of_table", align 4
@__of_table_wm8650_pll = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wm,wm8650-pll-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wm8650_pll_init }, section "__clk_of_table", align 4
@__of_table_wm8750_pll = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wm,wm8750-pll-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wm8750_pll_init }, section "__clk_of_table", align 4
@__of_table_wm8850_pll = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wm,wm8850-pll-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wm8850_pll_init }, section "__clk_of_table", align 4
@pmc_base = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [25 x i8] c"drivers/clk/clk-vt8500.c\00", align 1
@_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"enable-reg\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"enable-bit\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"\013%s: enable-bit property required for gated clock\0A\00", align 1
@__func__.vtwm_device_clk_init = private unnamed_addr constant [21 x i8] c"vtwm_device_clk_init\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"divisor-reg\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"divisor-mask\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@vt8500_gated_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @vt8500_dclk_enable, ptr @vt8500_dclk_disable, ptr @vt8500_dclk_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@vt8500_divisor_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vt8500_dclk_recalc_rate, ptr @vt8500_dclk_round_rate, ptr null, ptr null, ptr null, ptr @vt8500_dclk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@vt8500_gated_divisor_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @vt8500_dclk_enable, ptr @vt8500_dclk_disable, ptr @vt8500_dclk_is_enabled, ptr null, ptr null, ptr null, ptr @vt8500_dclk_recalc_rate, ptr @vt8500_dclk_round_rate, ptr null, ptr null, ptr null, ptr @vt8500_dclk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [48 x i8] c"\013%s: Invalid clock description in device tree\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"via,vt8500-pmc\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"\013%s:of_iomap(pmc) failed\0A\00", align 1
@__func__.vtwm_set_pmc_base = private unnamed_addr constant [18 x i8] c"vtwm_set_pmc_base\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"\013%s: invalid divisor for clock\0A\00", align 1
@__func__.vt8500_dclk_set_rate = private unnamed_addr constant [21 x i8] c"vt8500_dclk_set_rate\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@vtwm_pll_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vtwm_pll_recalc_rate, ptr @vtwm_pll_round_rate, ptr null, ptr null, ptr null, ptr @vtwm_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.12 = private unnamed_addr constant [35 x i8] c"\013%s: requested rate out of range\0A\00", align 1
@__func__.vt8500_find_pll_bits = private unnamed_addr constant [21 x i8] c"vt8500_find_pll_bits\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"\014%s: requested rate %lu, found rate %lu\0A\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"\014%s: rate error is %lu\0A\00", align 1
@__func__.wm8650_find_pll_bits = private unnamed_addr constant [21 x i8] c"wm8650_find_pll_bits\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"\014%s: impossible rate %lu\0A\00", align 1
@__func__.wm8750_find_pll_bits = private unnamed_addr constant [21 x i8] c"wm8750_find_pll_bits\00", align 1
@.str.16 = private unnamed_addr constant [69 x i8] c"\014%s: PLL recommended input frequency 10..200Mhz (requested %d Mhz)\0A\00", align 1
@__func__.wm8750_get_filter = private unnamed_addr constant [18 x i8] c"wm8750_get_filter\00", align 1
@__func__.wm8850_find_pll_bits = private unnamed_addr constant [21 x i8] c"wm8850_find_pll_bits\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"\013%s: invalid pll type\0A\00", align 1
@__func__.vtwm_pll_set_rate = private unnamed_addr constant [18 x i8] c"vtwm_pll_set_rate\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__of_table_vt8500_device, ptr @__of_table_vt8500_pll, ptr @__of_table_wm8650_pll, ptr @__of_table_wm8750_pll, ptr @__of_table_wm8850_pll], section "llvm.metadata"
@switch.table.vtwm_device_clk_init = private unnamed_addr constant [3 x ptr] [ptr @vt8500_gated_clk_ops, ptr @vt8500_divisor_clk_ops, ptr @vt8500_gated_divisor_clk_ops], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @vtwm_device_clk_init(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  %7 = load ptr, ptr %0, align 4
  store ptr %7, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store ptr null, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, i8 0, i32 28, i1 false), !annotation !8
  %8 = load ptr, ptr @pmc_base, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  tail call fastcc void @vtwm_set_pmc_base() #9
  br label %11

11:                                               ; preds = %10, %1
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 32) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16, !prof !9

15:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 238, i32 noundef 9, ptr noundef null) #8
  br label %66

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.clk_device, ptr %13, i32 0, i32 5
  store ptr @_lock, ptr %17, align 4
  %18 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load ptr, ptr @pmc_base, align 4
  %22 = load i32, ptr %2, align 4
  %23 = getelementptr i8, ptr %21, i32 %22
  %24 = getelementptr inbounds %struct.clk_device, ptr %13, i32 0, i32 3
  store ptr %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.clk_device, ptr %13, i32 0, i32 4
  %26 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %25, i32 noundef 1, i32 noundef 0) #8
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %30, label %28

28:                                               ; preds = %20
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.vtwm_device_clk_init) #11
  br label %66

30:                                               ; preds = %20, %16
  %31 = phi i32 [ 0, %16 ], [ 1, %20 ]
  %32 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #8
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load ptr, ptr @pmc_base, align 4
  %36 = load i32, ptr %3, align 4
  %37 = getelementptr i8, ptr %35, i32 %36
  %38 = getelementptr inbounds %struct.clk_device, ptr %13, i32 0, i32 1
  store ptr %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.clk_device, ptr %13, i32 0, i32 2
  store i32 31, ptr %39, align 8
  %40 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %39, i32 noundef 1, i32 noundef 0) #8
  %41 = or i32 %31, 2
  br label %42

42:                                               ; preds = %34, %30
  %43 = phi i32 [ %31, %30 ], [ %41, %34 ]
  %44 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull %4) #8
  %45 = add nsw i32 %43, -1
  %46 = icmp ult i32 %45, 3
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.vtwm_device_clk_init) #11
  call void @kfree(ptr noundef nonnull %13) #8
  br label %66

49:                                               ; preds = %42
  %50 = getelementptr inbounds [3 x ptr], ptr @switch.table.vtwm_device_clk_init, i32 0, i32 %45
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 1
  store ptr %51, ptr %52, align 4
  %53 = load ptr, ptr %4, align 4
  store ptr %53, ptr %6, align 4
  %54 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 6
  store i32 0, ptr %54, align 4
  %55 = call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #8
  store ptr %55, ptr %5, align 4
  %56 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 2
  store ptr %5, ptr %56, align 4
  %57 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 5
  store i8 1, ptr %57, align 4
  %58 = getelementptr inbounds %struct.clk_hw, ptr %13, i32 0, i32 2
  store ptr %6, ptr %58, align 8
  %59 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %13) #8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61, !prof !10

61:                                               ; preds = %49
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 297, i32 noundef 9, ptr noundef null) #8
  call void @kfree(ptr noundef nonnull %13) #8
  br label %66

62:                                               ; preds = %49
  %63 = call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef nonnull %13) #8
  %64 = load ptr, ptr %4, align 4
  %65 = call i32 @clk_hw_register_clkdev(ptr noundef nonnull %13, ptr noundef %64, ptr noundef null) #8
  br label %66

66:                                               ; preds = %62, %61, %47, %28, %15
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @vt8500_pll_init(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @vtwm_pll_clk_init(ptr noundef %0, i32 noundef 0) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @wm8650_pll_init(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @vtwm_pll_clk_init(ptr noundef %0, i32 noundef 1) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @wm8750_pll_init(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @vtwm_pll_clk_init(ptr noundef %0, i32 noundef 2) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @wm8850_pll_init(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @vtwm_pll_clk_init(ptr noundef %0, i32 noundef 3) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @vtwm_set_pmc_base() unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.8) #8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @of_iomap(ptr noundef nonnull %1, i32 noundef 0) #8
  br label %7

5:                                                ; preds = %0
  %6 = tail call ptr @ioremap(i32 noundef -669843456, i32 noundef 4096) #8
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi ptr [ %6, %5 ], [ %4, %3 ]
  store ptr %8, ptr @pmc_base, align 4
  tail call void @of_node_put(ptr noundef %1) #8
  %9 = load ptr, ptr @pmc_base, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.vtwm_set_pmc_base) #11
  br label %13

13:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vt8500_dclk_enable(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.clk_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.clk_device, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %8 = getelementptr inbounds %struct.clk_device, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = shl nuw i32 1, %9
  %11 = or i32 %10, %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %12 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %11) #8, !srcloc !14
  %13 = load ptr, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %4) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vt8500_dclk_disable(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.clk_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.clk_device, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %8 = getelementptr inbounds %struct.clk_device, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = shl nuw i32 1, %9
  %11 = xor i32 %10, -1
  %12 = and i32 %7, %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  %13 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %12) #8, !srcloc !14
  %14 = load ptr, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vt8500_dclk_is_enabled(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.clk_device, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  %5 = getelementptr inbounds %struct.clk_device, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %4, %6
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vt8500_dclk_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.clk_device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
  %6 = getelementptr inbounds %struct.clk_device, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, %5
  %9 = icmp ne i32 %7, 63
  %10 = and i32 %8, 32
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %9, i1 true, i1 %11
  %13 = shl i32 %8, 6
  %14 = and i32 %13, 1984
  %15 = select i1 %12, i32 %8, i32 %14
  %16 = icmp eq i32 %15, 0
  %17 = add i32 %7, 1
  %18 = select i1 %16, i32 %17, i32 %15
  %19 = udiv i32 %1, %18
  ret i32 %19
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @vt8500_dclk_round_rate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #7 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %2, align 4
  %7 = udiv i32 %6, %1
  %8 = mul i32 %7, %1
  %9 = icmp ult i32 %8, %6
  %10 = zext i1 %9 to i32
  %11 = add i32 %7, %10
  %12 = getelementptr inbounds %struct.clk_device, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 63
  %15 = icmp ugt i32 %11, 31
  %16 = select i1 %14, i1 %15, i1 false
  %17 = add i32 %11, 64
  %18 = and i32 %17, -64
  %19 = select i1 %16, i32 %18, i32 %11
  %20 = udiv i32 %6, %19
  br label %21

21:                                               ; preds = %5, %3
  %22 = phi i32 [ %20, %5 ], [ 0, %3 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vt8500_dclk_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #6 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %48, label %5

5:                                                ; preds = %3
  %6 = udiv i32 %2, %1
  %7 = getelementptr inbounds %struct.clk_device, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = icmp eq i32 %6, %9
  %11 = select i1 %10, i32 0, i32 %6
  %12 = icmp eq i32 %8, 63
  %13 = icmp ugt i32 %11, 31
  %14 = select i1 %12, i1 %13, i1 false
  %15 = lshr i32 %11, 6
  %16 = add nuw nsw i32 %15, 32
  %17 = select i1 %14, i32 %16, i32 %11
  %18 = icmp ugt i32 %17, %8
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.vt8500_dclk_set_rate) #11
  br label %48

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.clk_device, ptr %0, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %23) #8
  %25 = load ptr, ptr @pmc_base, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  %27 = and i32 %26, 24
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %29, %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !20
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !21
  %30 = load ptr, ptr @pmc_base, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  %32 = and i32 %31, 24
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %29

34:                                               ; preds = %29, %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !22
  tail call void @arm_heavy_mb() #8
  %35 = getelementptr inbounds %struct.clk_device, ptr %0, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %17) #8, !srcloc !14
  %37 = load ptr, ptr @pmc_base, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  %39 = and i32 %38, 24
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %41, %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !20
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !21
  %42 = load ptr, ptr @pmc_base, align 4
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  %44 = and i32 %43, 24
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %41

46:                                               ; preds = %41, %34
  %47 = load ptr, ptr %22, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %47, i32 noundef %24) #8
  br label %48

48:                                               ; preds = %46, %19, %3
  %49 = phi i32 [ -22, %19 ], [ 0, %46 ], [ 0, %3 ]
  ret i32 %49
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @vtwm_pll_clk_init(ptr noundef %0, i32 noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  %7 = load ptr, ptr %0, align 4
  store ptr %7, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #8
  %8 = getelementptr inbounds i8, ptr %6, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %8, i8 0, i32 12, i1 false), !annotation !8
  %9 = load ptr, ptr @pmc_base, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  tail call fastcc void @vtwm_set_pmc_base() #9
  br label %12

12:                                               ; preds = %11, %2
  %13 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #8
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %16, label %15, !prof !10

15:                                               ; preds = %12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 687, i32 noundef 9, ptr noundef null) #8
  br label %43

16:                                               ; preds = %12
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %18 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 24) #10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21, !prof !9

20:                                               ; preds = %16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 691, i32 noundef 9, ptr noundef null) #8
  br label %43

21:                                               ; preds = %16
  %22 = load ptr, ptr @pmc_base, align 4
  %23 = load i32, ptr %3, align 4
  %24 = getelementptr i8, ptr %22, i32 %23
  %25 = getelementptr inbounds %struct.clk_pll, ptr %18, i32 0, i32 1
  store ptr %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.clk_pll, ptr %18, i32 0, i32 2
  store ptr @_lock, ptr %26, align 8
  %27 = getelementptr inbounds %struct.clk_pll, ptr %18, i32 0, i32 3
  store i32 %1, ptr %27, align 4
  %28 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull %4) #8
  %29 = load ptr, ptr %4, align 4
  store ptr %29, ptr %6, align 4
  %30 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 1
  store ptr @vtwm_pll_ops, ptr %30, align 4
  %31 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 6
  store i32 0, ptr %31, align 4
  %32 = call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #8
  store ptr %32, ptr %5, align 4
  %33 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 2
  store ptr %5, ptr %33, align 4
  %34 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 5
  store i8 1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.clk_hw, ptr %18, i32 0, i32 2
  store ptr %6, ptr %35, align 8
  %36 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %18) #8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38, !prof !10

38:                                               ; preds = %21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 711, i32 noundef 9, ptr noundef null) #8
  call void @kfree(ptr noundef nonnull %18) #8
  br label %43

39:                                               ; preds = %21
  %40 = call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef nonnull %18) #8
  %41 = load ptr, ptr %4, align 4
  %42 = call i32 @clk_hw_register_clkdev(ptr noundef nonnull %18, ptr noundef %41, ptr noundef null) #8
  br label %43

43:                                               ; preds = %39, %38, %20, %15
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vtwm_pll_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !23
  %6 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %47 [
    i32 0, label %8
    i32 1, label %16
    i32 2, label %25
    i32 3, label %36
  ]

8:                                                ; preds = %2
  %9 = shl i32 %5, 1
  %10 = and i32 %9, 62
  %11 = mul i32 %10, %1
  %12 = lshr i32 %5, 8
  %13 = and i32 %12, 1
  %14 = xor i32 %13, 1
  %15 = lshr i32 %11, %14
  br label %47

16:                                               ; preds = %2
  %17 = and i32 %5, 1023
  %18 = mul i32 %17, %1
  %19 = lshr i32 %5, 10
  %20 = and i32 %19, 7
  %21 = lshr i32 %5, 13
  %22 = and i32 %21, 3
  %23 = shl nuw nsw i32 %20, %22
  %24 = udiv i32 %18, %23
  br label %47

25:                                               ; preds = %2
  %26 = lshr i32 %5, 16
  %27 = and i32 %26, 255
  %28 = add nuw nsw i32 %27, 1
  %29 = mul i32 %28, %1
  %30 = lshr i32 %5, 8
  %31 = and i32 %30, 1
  %32 = add nuw nsw i32 %31, 1
  %33 = and i32 %5, 7
  %34 = shl nuw nsw i32 %32, %33
  %35 = udiv i32 %29, %34
  br label %47

36:                                               ; preds = %2
  %37 = lshr i32 %5, 15
  %38 = and i32 %37, 254
  %39 = add nuw nsw i32 %38, 2
  %40 = mul i32 %39, %1
  %41 = lshr i32 %5, 8
  %42 = and i32 %41, 1
  %43 = add nuw nsw i32 %42, 1
  %44 = and i32 %5, 3
  %45 = shl nuw nsw i32 %43, %44
  %46 = udiv i32 %40, %45
  br label %47

47:                                               ; preds = %36, %25, %16, %8, %2
  %48 = phi i32 [ %46, %36 ], [ %35, %25 ], [ %24, %16 ], [ %15, %8 ], [ 0, %2 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vtwm_pll_round_rate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #6 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %131 [
    i32 0, label %10
    i32 1, label %37
    i32 2, label %102
    i32 3, label %116
  ]

10:                                               ; preds = %3
  %11 = load i32, ptr %2, align 4
  %12 = shl i32 %11, 2
  %13 = icmp ugt i32 %12, %1
  %14 = mul i32 %11, 62
  %15 = icmp ult i32 %14, %1
  %16 = or i1 %13, %15
  br i1 %16, label %29, label %17

17:                                               ; preds = %10
  %18 = mul i32 %11, 31
  %19 = icmp ult i32 %18, %1
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = lshr i32 %11, %21
  %23 = udiv i32 %1, %22
  store i32 %23, ptr %5, align 4
  %24 = mul i32 %23, %22
  %25 = icmp eq i32 %24, %1
  br i1 %25, label %31, label %26

26:                                               ; preds = %17
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.vt8500_find_pll_bits, i32 noundef %1, i32 noundef %24) #11
  %28 = load i32, ptr %2, align 4
  br label %31

29:                                               ; preds = %10
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.vt8500_find_pll_bits) #11
  br label %131

31:                                               ; preds = %26, %17
  %32 = phi i32 [ %28, %26 ], [ %11, %17 ]
  %33 = xor i1 %19, true
  %34 = zext i1 %33 to i32
  %35 = lshr i32 %32, %34
  %36 = mul i32 %23, %35
  br label %131

37:                                               ; preds = %3
  %38 = load i32, ptr %2, align 4
  %39 = icmp eq i32 %38, 0
  %40 = add i32 %1, -600000001
  %41 = icmp ult i32 %40, -562500001
  %42 = or i1 %41, %39
  br i1 %42, label %131, label %43

43:                                               ; preds = %37
  %44 = icmp ult i32 %1, 75000001
  br i1 %44, label %50, label %45

45:                                               ; preds = %43
  %46 = icmp ult i32 %1, 150000001
  br i1 %46, label %50, label %47

47:                                               ; preds = %45
  %48 = icmp ult i32 %1, 300000001
  %49 = zext i1 %48 to i32
  br label %50

50:                                               ; preds = %47, %45, %43
  %51 = phi i32 [ 3, %43 ], [ %49, %47 ], [ 2, %45 ]
  %52 = mul nuw i32 %1, 5
  %53 = shl i32 %52, %51
  %54 = freeze i32 %53
  %55 = freeze i32 %38
  %56 = udiv i32 %54, %55
  %57 = mul i32 %56, %55
  %58 = sub i32 %54, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %92, label %60

60:                                               ; preds = %50
  %61 = shl nuw i32 %1, 2
  %62 = shl i32 %61, %51
  %63 = freeze i32 %62
  %64 = freeze i32 %38
  %65 = udiv i32 %63, %64
  %66 = mul i32 %65, %64
  %67 = sub i32 %63, %66
  %68 = icmp ult i32 %67, %58
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = icmp eq i32 %67, 0
  br i1 %70, label %92, label %71

71:                                               ; preds = %69, %60
  %72 = phi i32 [ %56, %60 ], [ %65, %69 ]
  %73 = phi i32 [ %58, %60 ], [ %67, %69 ]
  %74 = mul nuw nsw i32 %1, 3
  %75 = shl i32 %74, %51
  %76 = freeze i32 %75
  %77 = freeze i32 %38
  %78 = udiv i32 %76, %77
  %79 = mul i32 %78, %77
  %80 = sub i32 %76, %79
  %81 = icmp ult i32 %80, %73
  br i1 %81, label %82, label %84

82:                                               ; preds = %71
  %83 = icmp eq i32 %80, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %82, %71
  %85 = phi i32 [ %72, %71 ], [ %78, %82 ]
  %86 = phi i32 [ %73, %71 ], [ %80, %82 ]
  %87 = add i32 %85, -1024
  %88 = icmp ult i32 %87, -1021
  br i1 %88, label %131, label %89

89:                                               ; preds = %84
  %90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.wm8650_find_pll_bits, i32 noundef %86) #11
  %91 = load i32, ptr %2, align 4
  br label %95

92:                                               ; preds = %82, %69, %50
  %93 = phi i32 [ 5, %50 ], [ 4, %69 ], [ 3, %82 ]
  %94 = phi i32 [ %56, %50 ], [ %65, %69 ], [ %78, %82 ]
  store i32 %94, ptr %5, align 4
  store i32 %93, ptr %6, align 4
  br label %95

95:                                               ; preds = %92, %89
  %96 = phi i32 [ %93, %92 ], [ 2, %89 ]
  %97 = phi i32 [ %94, %92 ], [ %85, %89 ]
  %98 = phi i32 [ %38, %92 ], [ %91, %89 ]
  %99 = mul i32 %97, %98
  %100 = shl nuw nsw i32 %96, %51
  %101 = udiv i32 %99, %100
  br label %131

102:                                              ; preds = %3
  %103 = load i32, ptr %2, align 4
  %104 = call fastcc i32 @wm8750_find_pll_bits(i32 noundef %1, i32 noundef %103, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %131

106:                                              ; preds = %102
  %107 = load i32, ptr %2, align 4
  %108 = load i32, ptr %5, align 4
  %109 = add i32 %108, 1
  %110 = mul i32 %109, %107
  %111 = load i32, ptr %6, align 4
  %112 = add i32 %111, 1
  %113 = load i32, ptr %7, align 4
  %114 = shl i32 %112, %113
  %115 = udiv i32 %110, %114
  br label %131

116:                                              ; preds = %3
  %117 = load i32, ptr %2, align 4
  %118 = call fastcc i32 @wm8850_find_pll_bits(i32 noundef %1, i32 noundef %117, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %116
  %121 = load i32, ptr %2, align 4
  %122 = load i32, ptr %5, align 4
  %123 = shl i32 %122, 1
  %124 = add i32 %123, 2
  %125 = mul i32 %124, %121
  %126 = load i32, ptr %6, align 4
  %127 = add i32 %126, 1
  %128 = load i32, ptr %7, align 4
  %129 = shl i32 %127, %128
  %130 = udiv i32 %125, %129
  br label %131

131:                                              ; preds = %120, %116, %106, %102, %95, %84, %37, %31, %29, %3
  %132 = phi i32 [ %130, %120 ], [ %115, %106 ], [ %101, %95 ], [ %36, %31 ], [ -22, %84 ], [ -22, %37 ], [ -22, %3 ], [ -22, %29 ], [ %104, %102 ], [ %118, %116 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 %132
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vtwm_pll_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #6 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %126 [
    i32 0, label %10
    i32 1, label %35
    i32 2, label %96
    i32 3, label %112
  ]

10:                                               ; preds = %3
  %11 = shl i32 %2, 2
  %12 = icmp ugt i32 %11, %1
  %13 = mul i32 %2, 62
  %14 = icmp ult i32 %13, %1
  %15 = or i1 %12, %14
  br i1 %15, label %28, label %16

16:                                               ; preds = %10
  %17 = mul i32 %2, 31
  %18 = icmp ult i32 %17, %1
  %19 = select i1 %18, i32 1, i32 2
  store i32 %19, ptr %6, align 4
  %20 = xor i1 %18, true
  %21 = zext i1 %20 to i32
  %22 = lshr i32 %2, %21
  %23 = udiv i32 %1, %22
  store i32 %23, ptr %5, align 4
  %24 = mul i32 %23, %22
  %25 = icmp eq i32 %24, %1
  br i1 %25, label %30, label %26

26:                                               ; preds = %16
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.vt8500_find_pll_bits, i32 noundef %1, i32 noundef %24) #11
  br label %30

28:                                               ; preds = %10
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.vt8500_find_pll_bits) #11
  br label %156

30:                                               ; preds = %26, %16
  %31 = select i1 %18, i32 256, i32 0
  %32 = lshr i32 %23, 1
  %33 = and i32 %32, 31
  %34 = or i32 %33, %31
  br label %128

35:                                               ; preds = %3
  %36 = icmp eq i32 %2, 0
  %37 = add i32 %1, -600000001
  %38 = icmp ult i32 %37, -562500001
  %39 = or i1 %38, %36
  br i1 %39, label %156, label %40

40:                                               ; preds = %35
  %41 = icmp ult i32 %1, 75000001
  br i1 %41, label %47, label %42

42:                                               ; preds = %40
  %43 = icmp ult i32 %1, 150000001
  br i1 %43, label %47, label %44

44:                                               ; preds = %42
  %45 = icmp ult i32 %1, 300000001
  %46 = zext i1 %45 to i32
  br label %47

47:                                               ; preds = %44, %42, %40
  %48 = phi i32 [ 3, %40 ], [ %46, %44 ], [ 2, %42 ]
  %49 = mul nuw i32 %1, 5
  %50 = shl i32 %49, %48
  %51 = freeze i32 %50
  %52 = udiv i32 %51, %2
  %53 = mul i32 %52, %2
  %54 = sub i32 %51, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %85, label %56

56:                                               ; preds = %47
  %57 = shl nuw i32 %1, 2
  %58 = shl i32 %57, %48
  %59 = freeze i32 %58
  %60 = udiv i32 %59, %2
  %61 = mul i32 %60, %2
  %62 = sub i32 %59, %61
  %63 = icmp ult i32 %62, %54
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = icmp eq i32 %62, 0
  br i1 %65, label %85, label %66

66:                                               ; preds = %64, %56
  %67 = phi i32 [ %52, %56 ], [ %60, %64 ]
  %68 = phi i32 [ %54, %56 ], [ %62, %64 ]
  %69 = mul nuw nsw i32 %1, 3
  %70 = shl i32 %69, %48
  %71 = freeze i32 %70
  %72 = udiv i32 %71, %2
  %73 = mul i32 %72, %2
  %74 = sub i32 %71, %73
  %75 = icmp ult i32 %74, %68
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = icmp eq i32 %74, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %76, %66
  %79 = phi i32 [ %67, %66 ], [ %72, %76 ]
  %80 = phi i32 [ %68, %66 ], [ %74, %76 ]
  %81 = add i32 %79, -1024
  %82 = icmp ult i32 %81, -1021
  br i1 %82, label %156, label %83

83:                                               ; preds = %78
  %84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.wm8650_find_pll_bits, i32 noundef %80) #11
  br label %88

85:                                               ; preds = %76, %64, %47
  %86 = phi i32 [ 5, %47 ], [ 4, %64 ], [ 3, %76 ]
  %87 = phi i32 [ %52, %47 ], [ %60, %64 ], [ %72, %76 ]
  store i32 %87, ptr %5, align 4
  store i32 %86, ptr %6, align 4
  br label %88

88:                                               ; preds = %85, %83
  %89 = phi i32 [ %87, %85 ], [ %79, %83 ]
  %90 = phi i32 [ %86, %85 ], [ 2, %83 ]
  %91 = shl nuw nsw i32 %48, 13
  %92 = shl nuw nsw i32 %90, 10
  %93 = or i32 %92, %91
  %94 = and i32 %89, 1023
  %95 = or i32 %93, %94
  br label %128

96:                                               ; preds = %3
  %97 = call fastcc i32 @wm8750_find_pll_bits(i32 noundef %1, i32 noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %156

99:                                               ; preds = %96
  %100 = load i32, ptr %4, align 4
  %101 = shl i32 %100, 24
  %102 = load i32, ptr %5, align 4
  %103 = shl i32 %102, 16
  %104 = add i32 %103, -65536
  %105 = or i32 %104, %101
  %106 = load i32, ptr %6, align 4
  %107 = shl i32 %106, 8
  %108 = add i32 %107, -256
  %109 = load i32, ptr %7, align 4
  %110 = or i32 %105, %109
  %111 = or i32 %110, %108
  br label %128

112:                                              ; preds = %3
  %113 = call fastcc i32 @wm8850_find_pll_bits(i32 noundef %1, i32 noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %156

115:                                              ; preds = %112
  %116 = load i32, ptr %5, align 4
  %117 = shl i32 %116, 15
  %118 = add i32 %117, -65536
  %119 = and i32 %118, -65536
  %120 = load i32, ptr %6, align 4
  %121 = shl i32 %120, 8
  %122 = add i32 %121, -256
  %123 = load i32, ptr %7, align 4
  %124 = or i32 %122, %123
  %125 = or i32 %124, %119
  br label %128

126:                                              ; preds = %3
  %127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.vtwm_pll_set_rate) #11
  br label %156

128:                                              ; preds = %115, %99, %88, %30
  %129 = phi i32 [ %125, %115 ], [ %111, %99 ], [ %95, %88 ], [ %34, %30 ]
  %130 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 2
  %131 = load ptr, ptr %130, align 4
  %132 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %131) #8
  %133 = load ptr, ptr @pmc_base, align 4
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %133) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  %135 = and i32 %134, 24
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %137, %128
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !20
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !21
  %138 = load ptr, ptr @pmc_base, align 4
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %138) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  %140 = and i32 %139, 24
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %137

142:                                              ; preds = %137, %128
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !24
  tail call void @arm_heavy_mb() #8
  %143 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 1
  %144 = load ptr, ptr %143, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %129) #8, !srcloc !14
  %145 = load ptr, ptr @pmc_base, align 4
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %145) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  %147 = and i32 %146, 24
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %149, %142
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !20
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !21
  %150 = load ptr, ptr @pmc_base, align 4
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %150) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  %152 = and i32 %151, 24
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %149

154:                                              ; preds = %149, %142
  %155 = load ptr, ptr %130, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %155, i32 noundef %132) #8
  br label %156

156:                                              ; preds = %154, %126, %112, %96, %78, %35, %28
  %157 = phi i32 [ 0, %154 ], [ -22, %78 ], [ -22, %35 ], [ -22, %28 ], [ %97, %96 ], [ %113, %112 ], [ -22, %126 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 %157
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @wm8750_find_pll_bits(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4, ptr nocapture noundef writeonly %5) unnamed_addr #6 {
  br label %7

7:                                                ; preds = %57, %6
  %8 = phi i32 [ -1, %6 ], [ %55, %57 ]
  %9 = phi i32 [ 7, %6 ], [ %58, %57 ]
  %10 = add i32 %9, 1
  br label %11

11:                                               ; preds = %54, %7
  %12 = phi i32 [ 0, %7 ], [ %14, %54 ]
  %13 = phi i32 [ %8, %7 ], [ %55, %54 ]
  %14 = add nuw nsw i32 %12, 1
  %15 = mul i32 %14, %1
  %16 = lshr i32 %15, %10
  %17 = icmp ugt i32 %16, %0
  br i1 %17, label %54, label %18

18:                                               ; preds = %11
  %19 = sub i32 %0, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %51

21:                                               ; preds = %178, %163, %147, %131, %115, %99, %83, %67, %18
  %22 = phi i32 [ 0, %178 ], [ 0, %163 ], [ 0, %147 ], [ 0, %131 ], [ 0, %115 ], [ 0, %99 ], [ 0, %83 ], [ 0, %67 ], [ 1, %18 ]
  %23 = phi i16 [ 1, %178 ], [ 1, %163 ], [ 1, %147 ], [ 1, %131 ], [ 1, %115 ], [ 1, %99 ], [ 1, %83 ], [ 1, %67 ], [ 2, %18 ]
  %24 = phi i32 [ 7, %67 ], [ 6, %83 ], [ 5, %99 ], [ 4, %115 ], [ 3, %131 ], [ 2, %147 ], [ 1, %163 ], [ 0, %178 ], [ %9, %18 ]
  %25 = phi i32 [ %61, %67 ], [ %77, %83 ], [ %93, %99 ], [ %109, %115 ], [ %125, %131 ], [ %141, %147 ], [ %157, %163 ], [ %173, %178 ], [ %12, %18 ]
  %26 = udiv i32 %1, 1000000
  %27 = trunc i32 %26 to i16
  %28 = udiv i16 %27, %23
  %29 = zext i16 %28 to i32
  %30 = add nsw i32 %29, -201
  %31 = icmp ult i32 %30, -191
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.wm8750_get_filter, i32 noundef %29) #11
  br label %34

34:                                               ; preds = %32, %21
  %35 = icmp ugt i16 %28, 165
  br i1 %35, label %49, label %36

36:                                               ; preds = %34
  %37 = icmp ugt i16 %28, 103
  br i1 %37, label %49, label %38

38:                                               ; preds = %36
  %39 = icmp ugt i16 %28, 64
  br i1 %39, label %49, label %40

40:                                               ; preds = %38
  %41 = icmp ugt i16 %28, 41
  br i1 %41, label %49, label %42

42:                                               ; preds = %40
  %43 = icmp ugt i16 %28, 25
  br i1 %43, label %49, label %44

44:                                               ; preds = %42
  %45 = icmp ugt i16 %28, 15
  br i1 %45, label %49, label %46

46:                                               ; preds = %44
  %47 = icmp ugt i16 %28, 9
  %48 = zext i1 %47 to i32
  br label %49

49:                                               ; preds = %46, %44, %42, %40, %38, %36, %34
  %50 = phi i32 [ 7, %34 ], [ 6, %36 ], [ 5, %38 ], [ 4, %40 ], [ 3, %42 ], [ 2, %44 ], [ %48, %46 ]
  store i32 %50, ptr %2, align 4
  store i32 %25, ptr %3, align 4
  store i32 %22, ptr %4, align 4
  store i32 %24, ptr %5, align 4
  br label %196

51:                                               ; preds = %18
  %52 = icmp ult i32 %19, %13
  br i1 %52, label %53, label %54

53:                                               ; preds = %51
  store i32 %12, ptr %3, align 4
  store i32 1, ptr %4, align 4
  store i32 %9, ptr %5, align 4
  br label %54

54:                                               ; preds = %53, %51, %11
  %55 = phi i32 [ %13, %11 ], [ %19, %53 ], [ %13, %51 ]
  %56 = icmp eq i32 %14, 256
  br i1 %56, label %57, label %11

57:                                               ; preds = %54
  %58 = add nsw i32 %9, -1
  %59 = icmp sgt i32 %9, 0
  br i1 %59, label %7, label %60

60:                                               ; preds = %73, %57
  %61 = phi i32 [ %63, %73 ], [ 0, %57 ]
  %62 = phi i32 [ %74, %73 ], [ %55, %57 ]
  %63 = add nuw nsw i32 %61, 1
  %64 = mul i32 %63, %1
  %65 = lshr i32 %64, 7
  %66 = icmp ugt i32 %65, %0
  br i1 %66, label %73, label %67

67:                                               ; preds = %60
  %68 = sub i32 %0, %65
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %21, label %70

70:                                               ; preds = %67
  %71 = icmp ult i32 %68, %62
  br i1 %71, label %72, label %73

72:                                               ; preds = %70
  store i32 %61, ptr %3, align 4
  store i32 0, ptr %4, align 4
  store i32 7, ptr %5, align 4
  br label %73

73:                                               ; preds = %72, %70, %60
  %74 = phi i32 [ %62, %60 ], [ %68, %72 ], [ %62, %70 ]
  %75 = icmp eq i32 %63, 256
  br i1 %75, label %76, label %60

76:                                               ; preds = %89, %73
  %77 = phi i32 [ %79, %89 ], [ 0, %73 ]
  %78 = phi i32 [ %90, %89 ], [ %74, %73 ]
  %79 = add nuw nsw i32 %77, 1
  %80 = mul i32 %79, %1
  %81 = lshr i32 %80, 6
  %82 = icmp ugt i32 %81, %0
  br i1 %82, label %89, label %83

83:                                               ; preds = %76
  %84 = sub i32 %0, %81
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %21, label %86

86:                                               ; preds = %83
  %87 = icmp ult i32 %84, %78
  br i1 %87, label %88, label %89

88:                                               ; preds = %86
  store i32 %77, ptr %3, align 4
  store i32 0, ptr %4, align 4
  store i32 6, ptr %5, align 4
  br label %89

89:                                               ; preds = %88, %86, %76
  %90 = phi i32 [ %78, %76 ], [ %84, %88 ], [ %78, %86 ]
  %91 = icmp eq i32 %79, 256
  br i1 %91, label %92, label %76

92:                                               ; preds = %105, %89
  %93 = phi i32 [ %95, %105 ], [ 0, %89 ]
  %94 = phi i32 [ %106, %105 ], [ %90, %89 ]
  %95 = add nuw nsw i32 %93, 1
  %96 = mul i32 %95, %1
  %97 = lshr i32 %96, 5
  %98 = icmp ugt i32 %97, %0
  br i1 %98, label %105, label %99

99:                                               ; preds = %92
  %100 = sub i32 %0, %97
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %21, label %102

102:                                              ; preds = %99
  %103 = icmp ult i32 %100, %94
  br i1 %103, label %104, label %105

104:                                              ; preds = %102
  store i32 %93, ptr %3, align 4
  store i32 0, ptr %4, align 4
  store i32 5, ptr %5, align 4
  br label %105

105:                                              ; preds = %104, %102, %92
  %106 = phi i32 [ %94, %92 ], [ %100, %104 ], [ %94, %102 ]
  %107 = icmp eq i32 %95, 256
  br i1 %107, label %108, label %92

108:                                              ; preds = %121, %105
  %109 = phi i32 [ %111, %121 ], [ 0, %105 ]
  %110 = phi i32 [ %122, %121 ], [ %106, %105 ]
  %111 = add nuw nsw i32 %109, 1
  %112 = mul i32 %111, %1
  %113 = lshr i32 %112, 4
  %114 = icmp ugt i32 %113, %0
  br i1 %114, label %121, label %115

115:                                              ; preds = %108
  %116 = sub i32 %0, %113
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %21, label %118

118:                                              ; preds = %115
  %119 = icmp ult i32 %116, %110
  br i1 %119, label %120, label %121

120:                                              ; preds = %118
  store i32 %109, ptr %3, align 4
  store i32 0, ptr %4, align 4
  store i32 4, ptr %5, align 4
  br label %121

121:                                              ; preds = %120, %118, %108
  %122 = phi i32 [ %110, %108 ], [ %116, %120 ], [ %110, %118 ]
  %123 = icmp eq i32 %111, 256
  br i1 %123, label %124, label %108

124:                                              ; preds = %137, %121
  %125 = phi i32 [ %127, %137 ], [ 0, %121 ]
  %126 = phi i32 [ %138, %137 ], [ %122, %121 ]
  %127 = add nuw nsw i32 %125, 1
  %128 = mul i32 %127, %1
  %129 = lshr i32 %128, 3
  %130 = icmp ugt i32 %129, %0
  br i1 %130, label %137, label %131

131:                                              ; preds = %124
  %132 = sub i32 %0, %129
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %21, label %134

134:                                              ; preds = %131
  %135 = icmp ult i32 %132, %126
  br i1 %135, label %136, label %137

136:                                              ; preds = %134
  store i32 %125, ptr %3, align 4
  store i32 0, ptr %4, align 4
  store i32 3, ptr %5, align 4
  br label %137

137:                                              ; preds = %136, %134, %124
  %138 = phi i32 [ %126, %124 ], [ %132, %136 ], [ %126, %134 ]
  %139 = icmp eq i32 %127, 256
  br i1 %139, label %140, label %124

140:                                              ; preds = %153, %137
  %141 = phi i32 [ %143, %153 ], [ 0, %137 ]
  %142 = phi i32 [ %154, %153 ], [ %138, %137 ]
  %143 = add nuw nsw i32 %141, 1
  %144 = mul i32 %143, %1
  %145 = lshr i32 %144, 2
  %146 = icmp ugt i32 %145, %0
  br i1 %146, label %153, label %147

147:                                              ; preds = %140
  %148 = sub i32 %0, %145
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %21, label %150

150:                                              ; preds = %147
  %151 = icmp ult i32 %148, %142
  br i1 %151, label %152, label %153

152:                                              ; preds = %150
  store i32 %141, ptr %3, align 4
  store i32 0, ptr %4, align 4
  store i32 2, ptr %5, align 4
  br label %153

153:                                              ; preds = %152, %150, %140
  %154 = phi i32 [ %142, %140 ], [ %148, %152 ], [ %142, %150 ]
  %155 = icmp eq i32 %143, 256
  br i1 %155, label %156, label %140

156:                                              ; preds = %169, %153
  %157 = phi i32 [ %159, %169 ], [ 0, %153 ]
  %158 = phi i32 [ %170, %169 ], [ %154, %153 ]
  %159 = add nuw nsw i32 %157, 1
  %160 = mul i32 %159, %1
  %161 = lshr i32 %160, 1
  %162 = icmp ugt i32 %161, %0
  br i1 %162, label %169, label %163

163:                                              ; preds = %156
  %164 = sub i32 %0, %161
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %21, label %166

166:                                              ; preds = %163
  %167 = icmp ult i32 %164, %158
  br i1 %167, label %168, label %169

168:                                              ; preds = %166
  store i32 %157, ptr %3, align 4
  store i32 0, ptr %4, align 4
  store i32 1, ptr %5, align 4
  br label %169

169:                                              ; preds = %168, %166, %156
  %170 = phi i32 [ %158, %156 ], [ %164, %168 ], [ %158, %166 ]
  %171 = icmp eq i32 %159, 256
  br i1 %171, label %172, label %156

172:                                              ; preds = %184, %169
  %173 = phi i32 [ %175, %184 ], [ 0, %169 ]
  %174 = phi i32 [ %185, %184 ], [ %170, %169 ]
  %175 = add nuw nsw i32 %173, 1
  %176 = mul i32 %175, %1
  %177 = icmp ugt i32 %176, %0
  br i1 %177, label %184, label %178

178:                                              ; preds = %172
  %179 = sub i32 %0, %176
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %21, label %181

181:                                              ; preds = %178
  %182 = icmp ult i32 %179, %174
  br i1 %182, label %183, label %184

183:                                              ; preds = %181
  store i32 %173, ptr %3, align 4
  store i32 0, ptr %4, align 4
  store i32 0, ptr %5, align 4
  br label %184

184:                                              ; preds = %183, %181, %172
  %185 = phi i32 [ %174, %172 ], [ %179, %183 ], [ %174, %181 ]
  %186 = icmp eq i32 %175, 256
  br i1 %186, label %187, label %172

187:                                              ; preds = %184
  %188 = icmp eq i32 %185, -1
  br i1 %188, label %189, label %191

189:                                              ; preds = %187
  %190 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.wm8750_find_pll_bits, i32 noundef %0) #11
  br label %196

191:                                              ; preds = %187
  %192 = sub i32 %0, %185
  %193 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.wm8750_find_pll_bits, i32 noundef %0, i32 noundef %192) #11
  %194 = load i32, ptr %4, align 4
  %195 = tail call fastcc i32 @wm8750_get_filter(i32 noundef %1, i32 noundef %194)
  store i32 %195, ptr %2, align 4
  br label %196

196:                                              ; preds = %191, %189, %49
  %197 = phi i32 [ 0, %49 ], [ -22, %189 ], [ 0, %191 ]
  ret i32 %197
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @wm8850_find_pll_bits(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #6 {
  %6 = shl i32 %1, 1
  br label %7

7:                                                ; preds = %24, %5
  %8 = phi i32 [ 0, %5 ], [ %10, %24 ]
  %9 = phi i32 [ -1, %5 ], [ %25, %24 ]
  %10 = add nuw nsw i32 %8, 1
  %11 = mul i32 %6, %10
  %12 = lshr i32 %11, 4
  %13 = icmp ugt i32 %12, %0
  br i1 %13, label %24, label %14

14:                                               ; preds = %7
  %15 = sub i32 %0, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %129, %114, %98, %82, %66, %50, %34, %14
  %18 = phi i32 [ 1, %66 ], [ 0, %129 ], [ 1, %50 ], [ 0, %114 ], [ 1, %34 ], [ 0, %98 ], [ 1, %14 ], [ 0, %82 ]
  %19 = phi i32 [ 0, %129 ], [ 0, %66 ], [ 1, %114 ], [ 1, %50 ], [ 2, %98 ], [ 2, %34 ], [ 3, %82 ], [ 3, %14 ]
  %20 = phi i32 [ %60, %66 ], [ %124, %129 ], [ %44, %50 ], [ %108, %114 ], [ %28, %34 ], [ %92, %98 ], [ %8, %14 ], [ %76, %82 ]
  store i32 %20, ptr %2, align 4
  store i32 %18, ptr %3, align 4
  store i32 %19, ptr %4, align 4
  br label %145

21:                                               ; preds = %14
  %22 = icmp ult i32 %15, %9
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  store i32 %8, ptr %2, align 4
  store i32 1, ptr %3, align 4
  store i32 3, ptr %4, align 4
  br label %24

24:                                               ; preds = %23, %21, %7
  %25 = phi i32 [ %9, %7 ], [ %15, %23 ], [ %9, %21 ]
  %26 = icmp eq i32 %10, 128
  br i1 %26, label %27, label %7

27:                                               ; preds = %40, %24
  %28 = phi i32 [ %30, %40 ], [ 0, %24 ]
  %29 = phi i32 [ %41, %40 ], [ %25, %24 ]
  %30 = add nuw nsw i32 %28, 1
  %31 = mul i32 %6, %30
  %32 = lshr i32 %31, 3
  %33 = icmp ugt i32 %32, %0
  br i1 %33, label %40, label %34

34:                                               ; preds = %27
  %35 = sub i32 %0, %32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %17, label %37

37:                                               ; preds = %34
  %38 = icmp ult i32 %35, %29
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  store i32 %28, ptr %2, align 4
  store i32 1, ptr %3, align 4
  store i32 2, ptr %4, align 4
  br label %40

40:                                               ; preds = %39, %37, %27
  %41 = phi i32 [ %29, %27 ], [ %35, %39 ], [ %29, %37 ]
  %42 = icmp eq i32 %30, 128
  br i1 %42, label %43, label %27

43:                                               ; preds = %56, %40
  %44 = phi i32 [ %46, %56 ], [ 0, %40 ]
  %45 = phi i32 [ %57, %56 ], [ %41, %40 ]
  %46 = add nuw nsw i32 %44, 1
  %47 = mul i32 %6, %46
  %48 = lshr i32 %47, 2
  %49 = icmp ugt i32 %48, %0
  br i1 %49, label %56, label %50

50:                                               ; preds = %43
  %51 = sub i32 %0, %48
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %17, label %53

53:                                               ; preds = %50
  %54 = icmp ult i32 %51, %45
  br i1 %54, label %55, label %56

55:                                               ; preds = %53
  store i32 %44, ptr %2, align 4
  store i32 1, ptr %3, align 4
  store i32 1, ptr %4, align 4
  br label %56

56:                                               ; preds = %55, %53, %43
  %57 = phi i32 [ %45, %43 ], [ %51, %55 ], [ %45, %53 ]
  %58 = icmp eq i32 %46, 128
  br i1 %58, label %59, label %43

59:                                               ; preds = %72, %56
  %60 = phi i32 [ %62, %72 ], [ 0, %56 ]
  %61 = phi i32 [ %73, %72 ], [ %57, %56 ]
  %62 = add nuw nsw i32 %60, 1
  %63 = mul i32 %6, %62
  %64 = lshr exact i32 %63, 1
  %65 = icmp ugt i32 %64, %0
  br i1 %65, label %72, label %66

66:                                               ; preds = %59
  %67 = sub i32 %0, %64
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %17, label %69

69:                                               ; preds = %66
  %70 = icmp ult i32 %67, %61
  br i1 %70, label %71, label %72

71:                                               ; preds = %69
  store i32 %60, ptr %2, align 4
  store i32 1, ptr %3, align 4
  store i32 0, ptr %4, align 4
  br label %72

72:                                               ; preds = %71, %69, %59
  %73 = phi i32 [ %61, %59 ], [ %67, %71 ], [ %61, %69 ]
  %74 = icmp eq i32 %62, 128
  br i1 %74, label %75, label %59

75:                                               ; preds = %88, %72
  %76 = phi i32 [ %78, %88 ], [ 0, %72 ]
  %77 = phi i32 [ %89, %88 ], [ %73, %72 ]
  %78 = add nuw nsw i32 %76, 1
  %79 = mul i32 %6, %78
  %80 = lshr i32 %79, 3
  %81 = icmp ugt i32 %80, %0
  br i1 %81, label %88, label %82

82:                                               ; preds = %75
  %83 = sub i32 %0, %80
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %17, label %85

85:                                               ; preds = %82
  %86 = icmp ult i32 %83, %77
  br i1 %86, label %87, label %88

87:                                               ; preds = %85
  store i32 %76, ptr %2, align 4
  store i32 0, ptr %3, align 4
  store i32 3, ptr %4, align 4
  br label %88

88:                                               ; preds = %87, %85, %75
  %89 = phi i32 [ %77, %75 ], [ %83, %87 ], [ %77, %85 ]
  %90 = icmp eq i32 %78, 128
  br i1 %90, label %91, label %75

91:                                               ; preds = %104, %88
  %92 = phi i32 [ %94, %104 ], [ 0, %88 ]
  %93 = phi i32 [ %105, %104 ], [ %89, %88 ]
  %94 = add nuw nsw i32 %92, 1
  %95 = mul i32 %6, %94
  %96 = lshr i32 %95, 2
  %97 = icmp ugt i32 %96, %0
  br i1 %97, label %104, label %98

98:                                               ; preds = %91
  %99 = sub i32 %0, %96
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %17, label %101

101:                                              ; preds = %98
  %102 = icmp ult i32 %99, %93
  br i1 %102, label %103, label %104

103:                                              ; preds = %101
  store i32 %92, ptr %2, align 4
  store i32 0, ptr %3, align 4
  store i32 2, ptr %4, align 4
  br label %104

104:                                              ; preds = %103, %101, %91
  %105 = phi i32 [ %93, %91 ], [ %99, %103 ], [ %93, %101 ]
  %106 = icmp eq i32 %94, 128
  br i1 %106, label %107, label %91

107:                                              ; preds = %120, %104
  %108 = phi i32 [ %110, %120 ], [ 0, %104 ]
  %109 = phi i32 [ %121, %120 ], [ %105, %104 ]
  %110 = add nuw nsw i32 %108, 1
  %111 = mul i32 %6, %110
  %112 = lshr exact i32 %111, 1
  %113 = icmp ugt i32 %112, %0
  br i1 %113, label %120, label %114

114:                                              ; preds = %107
  %115 = sub i32 %0, %112
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %17, label %117

117:                                              ; preds = %114
  %118 = icmp ult i32 %115, %109
  br i1 %118, label %119, label %120

119:                                              ; preds = %117
  store i32 %108, ptr %2, align 4
  store i32 0, ptr %3, align 4
  store i32 1, ptr %4, align 4
  br label %120

120:                                              ; preds = %119, %117, %107
  %121 = phi i32 [ %109, %107 ], [ %115, %119 ], [ %109, %117 ]
  %122 = icmp eq i32 %110, 128
  br i1 %122, label %123, label %107

123:                                              ; preds = %135, %120
  %124 = phi i32 [ %126, %135 ], [ 0, %120 ]
  %125 = phi i32 [ %136, %135 ], [ %121, %120 ]
  %126 = add nuw nsw i32 %124, 1
  %127 = mul i32 %6, %126
  %128 = icmp ugt i32 %127, %0
  br i1 %128, label %135, label %129

129:                                              ; preds = %123
  %130 = sub i32 %0, %127
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %17, label %132

132:                                              ; preds = %129
  %133 = icmp ult i32 %130, %125
  br i1 %133, label %134, label %135

134:                                              ; preds = %132
  store i32 %124, ptr %2, align 4
  store i32 0, ptr %3, align 4
  store i32 0, ptr %4, align 4
  br label %135

135:                                              ; preds = %134, %132, %123
  %136 = phi i32 [ %125, %123 ], [ %130, %134 ], [ %125, %132 ]
  %137 = icmp eq i32 %126, 128
  br i1 %137, label %138, label %123

138:                                              ; preds = %135
  %139 = icmp eq i32 %136, -1
  br i1 %139, label %140, label %142

140:                                              ; preds = %138
  %141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.wm8850_find_pll_bits, i32 noundef %0) #11
  br label %145

142:                                              ; preds = %138
  %143 = sub i32 %0, %136
  %144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.wm8850_find_pll_bits, i32 noundef %0, i32 noundef %143) #11
  br label %145

145:                                              ; preds = %142, %140, %17
  %146 = phi i32 [ 0, %17 ], [ -22, %140 ], [ 0, %142 ]
  ret i32 %146
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @wm8750_get_filter(i32 noundef %0, i32 noundef %1) unnamed_addr #6 {
  %3 = udiv i32 %0, 1000000
  %4 = add i32 %1, 1
  %5 = udiv i32 %3, %4
  %6 = add nsw i32 %5, -201
  %7 = icmp ult i32 %6, -191
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.wm8750_get_filter, i32 noundef %5) #11
  br label %10

10:                                               ; preds = %8, %2
  %11 = icmp ugt i32 %5, 165
  br i1 %11, label %25, label %12

12:                                               ; preds = %10
  %13 = icmp ugt i32 %5, 103
  br i1 %13, label %25, label %14

14:                                               ; preds = %12
  %15 = icmp ugt i32 %5, 64
  br i1 %15, label %25, label %16

16:                                               ; preds = %14
  %17 = icmp ugt i32 %5, 41
  br i1 %17, label %25, label %18

18:                                               ; preds = %16
  %19 = icmp ugt i32 %5, 25
  br i1 %19, label %25, label %20

20:                                               ; preds = %18
  %21 = icmp ugt i32 %5, 15
  br i1 %21, label %25, label %22

22:                                               ; preds = %20
  %23 = icmp ugt i32 %5, 9
  %24 = zext i1 %23 to i32
  br label %25

25:                                               ; preds = %22, %20, %18, %16, %14, %12, %10
  %26 = phi i32 [ 7, %10 ], [ 6, %12 ], [ 5, %14 ], [ 4, %16 ], [ 3, %18 ], [ 2, %20 ], [ %24, %22 ]
  ret i32 %26
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { cold }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

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
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 377533}
!12 = !{i64 2150586494}
!13 = !{i64 2150586763}
!14 = !{i64 377115}
!15 = !{i64 2150588727}
!16 = !{i64 2150588996}
!17 = !{i64 2150590608}
!18 = !{i64 2150592179}
!19 = !{i64 2150584406}
!20 = !{i64 2150584657}
!21 = !{i64 2150584499}
!22 = !{i64 2150595587}
!23 = !{i64 2150609072}
!24 = !{i64 2150606162}
