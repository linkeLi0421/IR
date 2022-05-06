; ModuleID = '/llk/IR/drivers/clk/st/clkgen-pll.c_pt.bc'
source_filename = "../drivers/clk/st/clkgen-pll.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clkgen_pll_data_clks = type { ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clkgen_pll_data = type { %struct.clkgen_field, %struct.clkgen_field, %struct.clkgen_field, %struct.clkgen_field, %struct.clkgen_field, %struct.clkgen_field, %struct.clkgen_field, %struct.clkgen_field, %struct.clkgen_field, i32, [4 x %struct.clkgen_field], [4 x %struct.clkgen_field], i8, %struct.clkgen_field, ptr, ptr }
%struct.clkgen_field = type { i32, i32, i32 }
%struct.clkgen_clk_out = type { ptr, i32 }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clkgen_pll = type { %struct.clk_hw, ptr, ptr, ptr, i32, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }

@clkgen_a9_lock = dso_local global %struct.spinlock zeroinitializer, align 4
@__of_table_c32_pll0 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,clkgen-pll0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clkgen_c32_pll0_setup }, section "__clk_of_table", align 4
@__of_table_c32_pll0_a0 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,clkgen-pll0-a0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clkgen_c32_pll0_a0_setup }, section "__clk_of_table", align 4
@__of_table_c32_pll0_c0 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,clkgen-pll0-c0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clkgen_c32_pll0_c0_setup }, section "__clk_of_table", align 4
@__of_table_c32_pll1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,clkgen-pll1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clkgen_c32_pll1_setup }, section "__clk_of_table", align 4
@__of_table_c32_pll1_c0 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,clkgen-pll1-c0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clkgen_c32_pll1_c0_setup }, section "__clk_of_table", align 4
@__of_table_c32_plla9 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-clkgen-plla9\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clkgen_c32_plla9_setup }, section "__clk_of_table", align 4
@__of_table_c28_plla9 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih418-clkgen-plla9\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clkgen_c28_plla9_setup }, section "__clk_of_table", align 4
@st_pll3200c32_cx_0_legacy_data = internal constant %struct.clkgen_pll_data_clks { ptr @st_pll3200c32_cx_0, ptr null }, align 4
@.str = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@clkgena_c32_odf_lock = internal global %struct.spinlock zeroinitializer, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@clk_divider_ops = external dso_local constant %struct.clk_ops, align 4
@clk_gate_ops = external dso_local constant %struct.clk_ops, align 4
@st_pll3200c32_cx_0 = internal constant %struct.clkgen_pll_data { %struct.clkgen_field { i32 672, i32 1, i32 8 }, %struct.clkgen_field { i32 672, i32 1, i32 8 }, %struct.clkgen_field { i32 672, i32 1, i32 24 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field { i32 676, i32 255, i32 16 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field { i32 676, i32 7, i32 0 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer, i32 1, [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 692, i32 63, i32 0 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer], [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 692, i32 1, i32 6 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer], i8 0, %struct.clkgen_field zeroinitializer, ptr null, ptr @stm_pll3200c32_ops }, align 4
@stm_pll3200c32_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clkgen_pll_enable, ptr @clkgen_pll_disable, ptr @clkgen_pll_is_enabled, ptr null, ptr null, ptr null, ptr @recalc_stm_pll3200c32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@st_pll3200c32_a0_data = internal constant %struct.clkgen_pll_data_clks { ptr @st_pll3200c32_cx_0, ptr @st_pll3200c32_ax_0_clks }, align 4
@st_pll3200c32_ax_0_clks = internal constant [1 x %struct.clkgen_clk_out] [%struct.clkgen_clk_out { ptr @.str.1, i32 0 }], align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"clk-s-a0-pll-odf-0\00", align 1
@st_pll3200c32_c0_data = internal constant %struct.clkgen_pll_data_clks { ptr @st_pll3200c32_cx_0, ptr @st_pll3200c32_cx_0_clks }, align 4
@st_pll3200c32_cx_0_clks = internal constant [1 x %struct.clkgen_clk_out] [%struct.clkgen_clk_out { ptr @.str.2, i32 0 }], align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"clk-s-c0-pll0-odf-0\00", align 1
@st_pll3200c32_cx_1_legacy_data = internal constant %struct.clkgen_pll_data_clks { ptr @st_pll3200c32_cx_1, ptr null }, align 4
@st_pll3200c32_cx_1 = internal constant %struct.clkgen_pll_data { %struct.clkgen_field { i32 712, i32 1, i32 8 }, %struct.clkgen_field { i32 712, i32 1, i32 8 }, %struct.clkgen_field { i32 712, i32 1, i32 24 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field { i32 716, i32 255, i32 16 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field { i32 716, i32 7, i32 0 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer, i32 1, [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 732, i32 63, i32 0 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer], [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 732, i32 1, i32 6 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer], i8 0, %struct.clkgen_field zeroinitializer, ptr null, ptr @stm_pll3200c32_ops }, align 4
@st_pll3200c32_c1_data = internal constant %struct.clkgen_pll_data_clks { ptr @st_pll3200c32_cx_1, ptr @st_pll3200c32_cx_1_clks }, align 4
@st_pll3200c32_cx_1_clks = internal constant [1 x %struct.clkgen_clk_out] [%struct.clkgen_clk_out { ptr @.str.3, i32 0 }], align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"clk-s-c0-pll1-odf-0\00", align 1
@st_pll3200c32_407_a9_data = internal constant %struct.clkgen_pll_data_clks { ptr @st_pll3200c32_407_a9, ptr @st_pll3200c32_407_a9_clks }, align 4
@st_pll3200c32_407_a9 = internal constant %struct.clkgen_pll_data { %struct.clkgen_field { i32 424, i32 1, i32 0 }, %struct.clkgen_field { i32 424, i32 1, i32 0 }, %struct.clkgen_field { i32 2172, i32 1, i32 0 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field { i32 432, i32 255, i32 0 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field { i32 424, i32 7, i32 25 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field { i32 424, i32 31, i32 1 }, i32 1, [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 432, i32 63, i32 8 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer], [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 428, i32 1, i32 28 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer], i8 1, %struct.clkgen_field { i32 420, i32 1, i32 1 }, ptr @clkgen_a9_lock, ptr @stm_pll3200c32_a9_ops }, align 4
@st_pll3200c32_407_a9_clks = internal constant [1 x %struct.clkgen_clk_out] [%struct.clkgen_clk_out { ptr @.str.4, i32 0 }], align 4
@stm_pll3200c32_a9_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clkgen_pll_enable, ptr @clkgen_pll_disable, ptr @clkgen_pll_is_enabled, ptr null, ptr null, ptr null, ptr @recalc_stm_pll3200c32, ptr @round_rate_stm_pll3200c32, ptr null, ptr null, ptr null, ptr @set_rate_stm_pll3200c32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@clk_pll3200c32_get_params.cp_table = internal unnamed_addr constant [19 x i8] c"08@HPX`hpx\80\88\90\98\A0\A8\B0\B8\C0", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"clockgen-a9-pll-odf\00", align 1
@st_pll4600c28_418_a9_data = internal constant %struct.clkgen_pll_data_clks { ptr @st_pll4600c28_418_a9, ptr @st_pll4600c28_418_a9_clks }, align 4
@st_pll4600c28_418_a9 = internal global %struct.clkgen_pll_data { %struct.clkgen_field { i32 424, i32 1, i32 0 }, %struct.clkgen_field { i32 424, i32 1, i32 0 }, %struct.clkgen_field { i32 2172, i32 1, i32 0 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field { i32 432, i32 255, i32 0 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field { i32 424, i32 7, i32 25 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer, i32 1, [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 432, i32 63, i32 8 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer], [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 428, i32 1, i32 28 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer], i8 1, %struct.clkgen_field { i32 420, i32 1, i32 1 }, ptr @clkgen_a9_lock, ptr @stm_pll4600c28_ops }, align 4
@st_pll4600c28_418_a9_clks = internal constant [1 x %struct.clkgen_clk_out] [%struct.clkgen_clk_out { ptr @.str.4, i32 0 }], align 4
@stm_pll4600c28_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clkgen_pll_enable, ptr @clkgen_pll_disable, ptr @clkgen_pll_is_enabled, ptr null, ptr null, ptr null, ptr @recalc_stm_pll4600c28, ptr @round_rate_stm_pll4600c28, ptr null, ptr null, ptr null, ptr @set_rate_stm_pll4600c28, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__of_table_c28_plla9, ptr @__of_table_c32_pll0, ptr @__of_table_c32_pll0_a0, ptr @__of_table_c32_pll0_c0, ptr @__of_table_c32_pll1, ptr @__of_table_c32_pll1_c0, ptr @__of_table_c32_plla9], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @clkgen_c32_pll0_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @clkgen_c32_pll_setup(ptr noundef %0, ptr noundef nonnull @st_pll3200c32_cx_0_legacy_data) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @clkgen_c32_pll0_a0_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @clkgen_c32_pll_setup(ptr noundef %0, ptr noundef nonnull @st_pll3200c32_a0_data) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @clkgen_c32_pll0_c0_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @clkgen_c32_pll_setup(ptr noundef %0, ptr noundef nonnull @st_pll3200c32_c0_data) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @clkgen_c32_pll1_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @clkgen_c32_pll_setup(ptr noundef %0, ptr noundef nonnull @st_pll3200c32_cx_1_legacy_data) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @clkgen_c32_pll1_c0_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @clkgen_c32_pll_setup(ptr noundef %0, ptr noundef nonnull @st_pll3200c32_c1_data) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @clkgen_c32_plla9_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @clkgen_c32_pll_setup(ptr noundef %0, ptr noundef nonnull @st_pll3200c32_407_a9_data) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @clkgen_c28_plla9_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @clkgen_c32_pll_setup(ptr noundef %0, ptr noundef nonnull @st_pll4600c28_418_a9_data) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @clkgen_c32_pll_setup(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 section ".init.text" {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4
  %6 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %74, label %8

8:                                                ; preds = %2
  %9 = tail call fastcc ptr @clkgen_get_register_base(ptr noundef %0) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %74, label %11

11:                                               ; preds = %8
  %12 = call i32 @of_clk_detect_critical(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #10
  %13 = load ptr, ptr %1, align 4
  %14 = load i32, ptr %3, align 4
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr inbounds %struct.clkgen_pll_data, ptr %13, i32 0, i32 14
  %17 = load ptr, ptr %16, align 4
  %18 = call fastcc ptr @clkgen_pll_register(ptr noundef nonnull %6, ptr noundef %13, ptr noundef nonnull %9, i32 noundef %14, ptr noundef %15, ptr noundef %17) #9
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %74, label %20

20:                                               ; preds = %11
  %21 = call ptr @__clk_get_name(ptr noundef %18) #10
  %22 = load ptr, ptr %1, align 4
  %23 = getelementptr inbounds %struct.clkgen_pll_data, ptr %22, i32 0, i32 9
  %24 = load i32, ptr %23, align 4
  %25 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %26 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 8) #11
  %27 = icmp eq ptr %26, null
  br i1 %27, label %74, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.clk_onecell_data, ptr %26, i32 0, i32 1
  store i32 %24, ptr %29, align 4
  %30 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %24, i32 4) #10
  %31 = extractvalue { i32, i1 } %30, 1
  br i1 %31, label %32, label %33, !prof !8

32:                                               ; preds = %28
  store ptr null, ptr %26, align 8
  br label %72

33:                                               ; preds = %28
  %34 = extractvalue { i32, i1 } %30, 0
  %35 = call noalias align 64 ptr @__kmalloc(i32 noundef %34, i32 noundef 3520) #12
  store ptr %35, ptr %26, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %72, label %37

37:                                               ; preds = %33
  %38 = icmp eq i32 %24, 0
  br i1 %38, label %70, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.clkgen_pll_data_clks, ptr %1, i32 0, i32 1
  br label %41

41:                                               ; preds = %65, %39
  %42 = phi i32 [ 0, %39 ], [ %68, %65 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4
  %43 = load ptr, ptr %40, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = getelementptr %struct.clkgen_clk_out, ptr %43, i32 %42
  %47 = load ptr, ptr %46, align 4
  store ptr %47, ptr %4, align 4
  %48 = getelementptr %struct.clkgen_clk_out, ptr %43, i32 %42, i32 1
  %49 = load i32, ptr %48, align 4
  store i32 %49, ptr %5, align 4
  br label %58

50:                                               ; preds = %41
  %51 = call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %4, i32 noundef 1, i32 noundef %42) #10
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %74

54:                                               ; preds = %50
  %55 = call i32 @of_clk_detect_critical(ptr noundef %0, i32 noundef %42, ptr noundef nonnull %5) #10
  %56 = load i32, ptr %5, align 4
  %57 = load ptr, ptr %4, align 4
  br label %58

58:                                               ; preds = %54, %45
  %59 = phi ptr [ %57, %54 ], [ %47, %45 ]
  %60 = phi i32 [ %56, %54 ], [ %49, %45 ]
  %61 = load ptr, ptr %1, align 4
  %62 = call fastcc ptr @clkgen_odf_register(ptr noundef %21, ptr noundef nonnull %9, ptr noundef %61, i32 noundef %60, i32 noundef %42, ptr noundef %59) #9
  %63 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %72

65:                                               ; preds = %58
  %66 = load ptr, ptr %26, align 8
  %67 = getelementptr ptr, ptr %66, i32 %42
  store ptr %62, ptr %67, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  %68 = add nuw nsw i32 %42, 1
  %69 = icmp eq i32 %68, %24
  br i1 %69, label %70, label %41

70:                                               ; preds = %65, %37
  %71 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %26) #10
  br label %74

72:                                               ; preds = %64, %33, %32
  call void @kfree(ptr noundef %21) #10
  %73 = load ptr, ptr %26, align 8
  call void @kfree(ptr noundef %73) #10
  call void @kfree(ptr noundef nonnull %26) #10
  br label %74

74:                                               ; preds = %72, %70, %53, %20, %11, %8, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @clkgen_get_register_base(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = tail call ptr @of_get_parent(ptr noundef %0) #10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @of_iomap(ptr noundef nonnull %2, i32 noundef 0) #10
  tail call void @of_node_put(ptr noundef nonnull %2) #10
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_detect_critical(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @clkgen_pll_register(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 section ".init.text" {
  %7 = alloca ptr, align 4
  %8 = alloca %struct.clk_init_data, align 4
  store ptr %0, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #10
  %9 = getelementptr inbounds i8, ptr %8, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %9, i8 0, i32 12, i1 false), !annotation !9
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 36) #11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %6
  store ptr %4, ptr %8, align 4
  %14 = getelementptr inbounds %struct.clkgen_pll_data, ptr %1, i32 0, i32 15
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  %17 = or i32 %3, 64
  %18 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 6
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 2
  store ptr %7, ptr %19, align 4
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 5
  store i8 1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.clkgen_pll, ptr %11, i32 0, i32 1
  store ptr %1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.clkgen_pll, ptr %11, i32 0, i32 2
  store ptr %2, ptr %22, align 8
  %23 = getelementptr inbounds %struct.clk_hw, ptr %11, i32 0, i32 2
  store ptr %8, ptr %23, align 8
  %24 = getelementptr inbounds %struct.clkgen_pll, ptr %11, i32 0, i32 3
  store ptr %5, ptr %24, align 4
  %25 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %11) #10
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %28

27:                                               ; preds = %13
  call void @kfree(ptr noundef nonnull %11) #10
  br label %28

28:                                               ; preds = %27, %13, %6
  %29 = phi ptr [ %25, %27 ], [ %25, %13 ], [ inttoptr (i32 -12 to ptr), %6 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #10
  ret ptr %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @clkgen_odf_register(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 section ".init.text" {
  %7 = alloca ptr, align 4
  store ptr %0, ptr %7, align 4
  %8 = or i32 %3, 68
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 24) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %47, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.clk_gate, ptr %10, i32 0, i32 3
  store i8 1, ptr %13, align 1
  %14 = getelementptr %struct.clkgen_pll_data, ptr %2, i32 0, i32 11, i32 %4
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %1, i32 %15
  %17 = getelementptr inbounds %struct.clk_gate, ptr %10, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  %18 = getelementptr %struct.clkgen_pll_data, ptr %2, i32 0, i32 11, i32 %4, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.clk_gate, ptr %10, i32 0, i32 2
  store i8 %20, ptr %21, align 8
  %22 = getelementptr inbounds %struct.clk_gate, ptr %10, i32 0, i32 4
  store ptr @clkgena_c32_odf_lock, ptr %22, align 4
  %23 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %24 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 28) #11
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %12
  tail call void @kfree(ptr noundef nonnull %10) #10
  br label %47

27:                                               ; preds = %12
  %28 = getelementptr inbounds %struct.clk_divider, ptr %24, i32 0, i32 4
  store i8 5, ptr %28, align 2
  %29 = getelementptr %struct.clkgen_pll_data, ptr %2, i32 0, i32 10, i32 %4
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr i8, ptr %1, i32 %30
  %32 = getelementptr inbounds %struct.clk_divider, ptr %24, i32 0, i32 1
  store ptr %31, ptr %32, align 4
  %33 = getelementptr %struct.clkgen_pll_data, ptr %2, i32 0, i32 10, i32 %4, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.clk_divider, ptr %24, i32 0, i32 2
  store i8 %35, ptr %36, align 8
  %37 = getelementptr %struct.clkgen_pll_data, ptr %2, i32 0, i32 10, i32 %4, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  %40 = tail call i32 @llvm.ctlz.i32(i32 %38, i1 false) #10, !range !10
  %41 = trunc i32 %40 to i8
  %42 = sub nuw nsw i8 32, %41
  %43 = select i1 %39, i8 0, i8 %42
  %44 = getelementptr inbounds %struct.clk_divider, ptr %24, i32 0, i32 3
  store i8 %43, ptr %44, align 1
  %45 = getelementptr inbounds %struct.clk_divider, ptr %24, i32 0, i32 6
  store ptr @clkgena_c32_odf_lock, ptr %45, align 8
  %46 = call ptr @clk_register_composite(ptr noundef null, ptr noundef %5, ptr noundef nonnull %7, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef nonnull %24, ptr noundef nonnull @clk_divider_ops, ptr noundef nonnull %10, ptr noundef nonnull @clk_gate_ops, i32 noundef %8) #10
  br label %47

47:                                               ; preds = %27, %26, %6
  %48 = phi ptr [ inttoptr (i32 -12 to ptr), %26 ], [ %46, %27 ], [ inttoptr (i32 -12 to ptr), %6 ]
  ret ptr %48
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_composite(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clkgen_pll_enable(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.clkgen_pll, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %3) #10
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  %9 = tail call fastcc i32 @__clkgen_pll_enable(ptr noundef %0)
  %10 = load ptr, ptr %2, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %10, i32 noundef %8) #10
  br label %13

13:                                               ; preds = %12, %7
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clkgen_pll_disable(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.clkgen_pll, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %3) #10
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  tail call fastcc void @__clkgen_pll_disable(ptr noundef %0)
  %9 = load ptr, ptr %2, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %9, i32 noundef %8) #10
  br label %12

12:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clkgen_pll_is_enabled(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.clkgen_pll, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.clkgen_pll, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i8, ptr %3, i32 %6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %9 = getelementptr inbounds %struct.clkgen_field, ptr %5, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = lshr i32 %8, %10
  %12 = getelementptr inbounds %struct.clkgen_field, ptr %5, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %11, %13
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @recalc_stm_pll3200c32(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.clkgen_pll, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.clkgen_pll, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %10 = getelementptr inbounds %struct.clkgen_field, ptr %6, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %9, %11
  %13 = getelementptr inbounds %struct.clkgen_field, ptr %6, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %12, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %63

17:                                               ; preds = %2
  %18 = load ptr, ptr %3, align 4
  %19 = load ptr, ptr %5, align 4
  %20 = getelementptr inbounds %struct.clkgen_pll_data, ptr %19, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr i8, ptr %18, i32 %21
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %24 = getelementptr inbounds %struct.clkgen_pll_data, ptr %19, i32 0, i32 2, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = lshr i32 %23, %25
  %27 = getelementptr inbounds %struct.clkgen_pll_data, ptr %19, i32 0, i32 2, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %26, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %63, label %31

31:                                               ; preds = %17
  %32 = load ptr, ptr %3, align 4
  %33 = load ptr, ptr %5, align 4
  %34 = getelementptr inbounds %struct.clkgen_pll_data, ptr %33, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr i8, ptr %32, i32 %35
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %38 = getelementptr inbounds %struct.clkgen_pll_data, ptr %33, i32 0, i32 4, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.clkgen_pll_data, ptr %33, i32 0, i32 4, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = load ptr, ptr %3, align 4
  %43 = load ptr, ptr %5, align 4
  %44 = getelementptr inbounds %struct.clkgen_pll_data, ptr %43, i32 0, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr i8, ptr %42, i32 %45
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %48 = getelementptr inbounds %struct.clkgen_pll_data, ptr %43, i32 0, i32 6, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = lshr i32 %47, %49
  %51 = getelementptr inbounds %struct.clkgen_pll_data, ptr %43, i32 0, i32 6, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %50, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %31
  %56 = lshr i32 %37, %39
  %57 = and i32 %56, %41
  %58 = udiv i32 %1, 1000
  %59 = shl nuw nsw i32 %58, 1
  %60 = mul i32 %59, %57
  %61 = udiv i32 %60, %53
  %62 = mul i32 %61, 1000
  br label %63

63:                                               ; preds = %55, %31, %17, %2
  %64 = phi i32 [ 0, %17 ], [ 0, %2 ], [ %62, %55 ], [ 0, %31 ]
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__clkgen_pll_enable(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.clkgen_pll, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.clkgen_pll, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.clkgen_pll_data, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %5, align 4
  %8 = getelementptr i8, ptr %3, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %10 = getelementptr inbounds %struct.clkgen_field, ptr %5, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %9, %11
  %13 = getelementptr inbounds %struct.clkgen_field, ptr %5, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %12, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %78, label %17

17:                                               ; preds = %1
  %18 = load ptr, ptr %2, align 4
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr inbounds %struct.clkgen_pll_data, ptr %19, i32 0, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr i8, ptr %18, i32 %21
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %24 = getelementptr inbounds %struct.clkgen_pll_data, ptr %19, i32 0, i32 1, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.clkgen_pll_data, ptr %19, i32 0, i32 1, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = shl i32 %25, %27
  %29 = xor i32 %28, -1
  %30 = and i32 %23, %29
  %31 = load i32, ptr %20, align 4
  %32 = getelementptr i8, ptr %18, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #10, !srcloc !15
  %33 = tail call i64 @ktime_get() #10
  %34 = add i64 %33, 10000000
  %35 = getelementptr inbounds %struct.clkgen_pll_data, ptr %5, i32 0, i32 2, i32 2
  %36 = getelementptr inbounds %struct.clkgen_pll_data, ptr %5, i32 0, i32 2, i32 1
  br label %37

37:                                               ; preds = %46, %17
  %38 = load i32, ptr %6, align 4
  %39 = getelementptr i8, ptr %3, i32 %38
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #10, !srcloc !11
  %41 = load i32, ptr %35, align 4
  %42 = lshr i32 %40, %41
  %43 = load i32, ptr %36, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %37
  %47 = tail call i64 @ktime_get() #10
  %48 = icmp sgt i64 %47, %34
  br i1 %48, label %49, label %37

49:                                               ; preds = %46
  %50 = load i32, ptr %6, align 4
  %51 = getelementptr i8, ptr %3, i32 %50
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #10, !srcloc !11
  %53 = load i32, ptr %35, align 4
  %54 = load i32, ptr %36, align 4
  %55 = lshr i32 %52, %53
  %56 = and i32 %55, %54
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %78, label %58

58:                                               ; preds = %49, %37
  %59 = load ptr, ptr %4, align 4
  %60 = getelementptr inbounds %struct.clkgen_pll_data, ptr %59, i32 0, i32 12
  %61 = load i8, ptr %60, align 4, !range !16
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %78, label %63

63:                                               ; preds = %58
  %64 = load ptr, ptr %2, align 4
  %65 = getelementptr inbounds %struct.clkgen_pll_data, ptr %59, i32 0, i32 13
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr i8, ptr %64, i32 %66
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %69 = getelementptr inbounds %struct.clkgen_pll_data, ptr %59, i32 0, i32 13, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.clkgen_pll_data, ptr %59, i32 0, i32 13, i32 2
  %72 = load i32, ptr %71, align 4
  %73 = shl i32 %70, %72
  %74 = xor i32 %73, -1
  %75 = and i32 %68, %74
  %76 = load i32, ptr %65, align 4
  %77 = getelementptr i8, ptr %64, i32 %76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %75) #10, !srcloc !15
  br label %78

78:                                               ; preds = %63, %58, %49, %1
  %79 = phi i32 [ 0, %1 ], [ 0, %58 ], [ 0, %63 ], [ -110, %49 ]
  ret i32 %79
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__clkgen_pll_disable(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.clkgen_pll, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.clkgen_pll, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i8, ptr %3, i32 %6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %9 = getelementptr inbounds %struct.clkgen_field, ptr %5, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = lshr i32 %8, %10
  %12 = getelementptr inbounds %struct.clkgen_field, ptr %5, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %11, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %57

16:                                               ; preds = %1
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr inbounds %struct.clkgen_pll_data, ptr %17, i32 0, i32 12
  %19 = load i8, ptr %18, align 4, !range !16
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %2, align 4
  %23 = getelementptr inbounds %struct.clkgen_pll_data, ptr %17, i32 0, i32 13
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr i8, ptr %22, i32 %24
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %27 = getelementptr inbounds %struct.clkgen_pll_data, ptr %17, i32 0, i32 13, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.clkgen_pll_data, ptr %17, i32 0, i32 13, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = shl i32 %28, %30
  %32 = xor i32 %31, -1
  %33 = and i32 %26, %32
  %34 = shl nuw i32 1, %30
  %35 = or i32 %33, %34
  %36 = load i32, ptr %23, align 4
  %37 = getelementptr i8, ptr %22, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #10, !srcloc !15
  %38 = load ptr, ptr %4, align 4
  br label %39

39:                                               ; preds = %21, %16
  %40 = phi ptr [ %38, %21 ], [ %17, %16 ]
  %41 = load ptr, ptr %2, align 4
  %42 = getelementptr inbounds %struct.clkgen_pll_data, ptr %40, i32 0, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr i8, ptr %41, i32 %43
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %46 = getelementptr inbounds %struct.clkgen_pll_data, ptr %40, i32 0, i32 1, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.clkgen_pll_data, ptr %40, i32 0, i32 1, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = shl i32 %47, %49
  %51 = xor i32 %50, -1
  %52 = and i32 %45, %51
  %53 = shl nuw i32 1, %49
  %54 = or i32 %52, %53
  %55 = load i32, ptr %42, align 4
  %56 = getelementptr i8, ptr %41, i32 %55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #10, !srcloc !15
  br label %57

57:                                               ; preds = %39, %1
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @round_rate_stm_pll3200c32(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #8 {
  %4 = add i32 %1, -1600000001
  %5 = icmp ult i32 %4, -800000001
  br i1 %5, label %158, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %2, align 4
  %8 = udiv i32 %7, 1000
  %9 = udiv i32 %1, 1000
  %10 = shl nuw nsw i32 %8, 1
  %11 = udiv i32 %9, %10
  %12 = icmp ult i32 %11, 8
  br i1 %12, label %19, label %13

13:                                               ; preds = %6
  %14 = icmp ugt i32 %11, 200
  br i1 %14, label %139, label %15

15:                                               ; preds = %13
  %16 = mul i32 %11, %10
  %17 = sub i32 %16, %9
  %18 = tail call i32 @llvm.abs.i32(i32 %17, i1 false) #10
  br label %19

19:                                               ; preds = %15, %6
  %20 = phi i32 [ 0, %6 ], [ %11, %15 ]
  %21 = phi i32 [ 0, %6 ], [ 1, %15 ]
  %22 = phi i32 [ -1, %6 ], [ %18, %15 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %139, label %24

24:                                               ; preds = %19
  %25 = shl nuw nsw i32 %9, 1
  %26 = udiv i32 %25, %10
  %27 = icmp ult i32 %26, 8
  br i1 %27, label %39, label %28

28:                                               ; preds = %24
  %29 = icmp ugt i32 %26, 200
  br i1 %29, label %139, label %30

30:                                               ; preds = %28
  %31 = mul i32 %26, %10
  %32 = lshr exact i32 %31, 1
  %33 = sub nsw i32 %32, %9
  %34 = tail call i32 @llvm.abs.i32(i32 %33, i1 false) #10
  %35 = icmp eq i32 %32, %9
  %36 = icmp ult i32 %34, %22
  %37 = select i1 %35, i1 true, i1 %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %30, %24
  %40 = phi i32 [ %20, %24 ], [ %26, %38 ], [ %20, %30 ]
  %41 = phi i32 [ %21, %24 ], [ 2, %38 ], [ %21, %30 ]
  %42 = phi i32 [ %22, %24 ], [ %34, %38 ], [ %22, %30 ]
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %139, label %44

44:                                               ; preds = %39
  %45 = mul nuw nsw i32 %9, 3
  %46 = udiv i32 %45, %10
  %47 = icmp ult i32 %46, 8
  br i1 %47, label %59, label %48

48:                                               ; preds = %44
  %49 = icmp ugt i32 %46, 200
  br i1 %49, label %139, label %50

50:                                               ; preds = %48
  %51 = mul i32 %46, %10
  %52 = udiv i32 %51, 3
  %53 = sub nsw i32 %52, %9
  %54 = tail call i32 @llvm.abs.i32(i32 %53, i1 false) #10
  %55 = icmp eq i32 %52, %9
  %56 = icmp ult i32 %54, %42
  %57 = select i1 %55, i1 true, i1 %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %50, %44
  %60 = phi i32 [ %40, %44 ], [ %46, %58 ], [ %40, %50 ]
  %61 = phi i32 [ %41, %44 ], [ 3, %58 ], [ %41, %50 ]
  %62 = phi i32 [ %42, %44 ], [ %54, %58 ], [ %42, %50 ]
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %139, label %64

64:                                               ; preds = %59
  %65 = shl nuw nsw i32 %9, 2
  %66 = udiv i32 %65, %10
  %67 = icmp ult i32 %66, 8
  br i1 %67, label %79, label %68

68:                                               ; preds = %64
  %69 = icmp ugt i32 %66, 200
  br i1 %69, label %139, label %70

70:                                               ; preds = %68
  %71 = mul i32 %66, %10
  %72 = lshr i32 %71, 2
  %73 = sub nsw i32 %72, %9
  %74 = tail call i32 @llvm.abs.i32(i32 %73, i1 false) #10
  %75 = icmp eq i32 %72, %9
  %76 = icmp ult i32 %74, %62
  %77 = select i1 %75, i1 true, i1 %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78, %70, %64
  %80 = phi i32 [ %60, %64 ], [ %66, %78 ], [ %60, %70 ]
  %81 = phi i32 [ %61, %64 ], [ 4, %78 ], [ %61, %70 ]
  %82 = phi i32 [ %62, %64 ], [ %74, %78 ], [ %62, %70 ]
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %139, label %84

84:                                               ; preds = %79
  %85 = mul nuw nsw i32 %9, 5
  %86 = udiv i32 %85, %10
  %87 = icmp ult i32 %86, 8
  br i1 %87, label %99, label %88

88:                                               ; preds = %84
  %89 = icmp ugt i32 %86, 200
  br i1 %89, label %139, label %90

90:                                               ; preds = %88
  %91 = mul i32 %86, %10
  %92 = udiv i32 %91, 5
  %93 = sub nsw i32 %92, %9
  %94 = tail call i32 @llvm.abs.i32(i32 %93, i1 false) #10
  %95 = icmp eq i32 %92, %9
  %96 = icmp ult i32 %94, %82
  %97 = select i1 %95, i1 true, i1 %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %99

99:                                               ; preds = %98, %90, %84
  %100 = phi i32 [ %80, %84 ], [ %86, %98 ], [ %80, %90 ]
  %101 = phi i32 [ %81, %84 ], [ 5, %98 ], [ %81, %90 ]
  %102 = phi i32 [ %82, %84 ], [ %94, %98 ], [ %82, %90 ]
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %139, label %104

104:                                              ; preds = %99
  %105 = mul nuw nsw i32 %9, 6
  %106 = udiv i32 %105, %10
  %107 = icmp ult i32 %106, 8
  br i1 %107, label %119, label %108

108:                                              ; preds = %104
  %109 = icmp ugt i32 %106, 200
  br i1 %109, label %139, label %110

110:                                              ; preds = %108
  %111 = mul i32 %106, %10
  %112 = udiv i32 %111, 6
  %113 = sub nsw i32 %112, %9
  %114 = tail call i32 @llvm.abs.i32(i32 %113, i1 false) #10
  %115 = icmp eq i32 %112, %9
  %116 = icmp ult i32 %114, %102
  %117 = select i1 %115, i1 true, i1 %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  br label %119

119:                                              ; preds = %118, %110, %104
  %120 = phi i32 [ %100, %104 ], [ %106, %118 ], [ %100, %110 ]
  %121 = phi i32 [ %101, %104 ], [ 6, %118 ], [ %101, %110 ]
  %122 = phi i32 [ %102, %104 ], [ %114, %118 ], [ %102, %110 ]
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %139, label %124

124:                                              ; preds = %119
  %125 = mul nuw nsw i32 %9, 7
  %126 = udiv i32 %125, %10
  %127 = icmp ult i32 %126, 8
  %128 = icmp ugt i32 %126, 200
  %129 = or i1 %127, %128
  br i1 %129, label %139, label %130

130:                                              ; preds = %124
  %131 = mul i32 %126, %10
  %132 = udiv i32 %131, 7
  %133 = sub nsw i32 %132, %9
  %134 = tail call i32 @llvm.abs.i32(i32 %133, i1 false) #10
  %135 = icmp eq i32 %132, %9
  %136 = icmp ult i32 %134, %122
  %137 = select i1 %135, i1 true, i1 %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  br label %139

139:                                              ; preds = %138, %130, %124, %119, %108, %99, %88, %79, %68, %59, %48, %39, %28, %19, %13
  %140 = phi i32 [ %20, %19 ], [ 0, %13 ], [ %20, %28 ], [ %40, %39 ], [ %40, %48 ], [ %60, %59 ], [ %60, %68 ], [ %80, %79 ], [ %80, %88 ], [ %100, %99 ], [ %100, %108 ], [ %120, %119 ], [ %120, %124 ], [ %126, %138 ], [ %120, %130 ]
  %141 = phi i32 [ %21, %19 ], [ 0, %13 ], [ %21, %28 ], [ %41, %39 ], [ %41, %48 ], [ %61, %59 ], [ %61, %68 ], [ %81, %79 ], [ %81, %88 ], [ %101, %99 ], [ %101, %108 ], [ %121, %119 ], [ %121, %124 ], [ 7, %138 ], [ %121, %130 ]
  %142 = phi i32 [ %22, %19 ], [ -1, %13 ], [ %22, %28 ], [ %42, %39 ], [ %42, %48 ], [ %62, %59 ], [ %62, %68 ], [ %82, %79 ], [ %82, %88 ], [ %102, %99 ], [ %102, %108 ], [ %122, %119 ], [ %122, %124 ], [ %134, %138 ], [ %122, %130 ]
  %143 = icmp eq i32 %142, -1
  br i1 %143, label %158, label %144

144:                                              ; preds = %144, %139
  %145 = phi i32 [ %151, %144 ], [ 6, %139 ]
  %146 = add i32 %145, -6
  %147 = getelementptr [19 x i8], ptr @clk_pll3200c32_get_params.cp_table, i32 0, i32 %146
  %148 = load i8, ptr %147, align 1
  %149 = zext i8 %148 to i32
  %150 = icmp ugt i32 %140, %149
  %151 = add i32 %145, 1
  br i1 %150, label %144, label %152

152:                                              ; preds = %144
  %153 = icmp eq i32 %141, 0
  %154 = select i1 %153, i32 1, i32 %141
  %155 = mul i32 %10, %140
  %156 = udiv i32 %155, %154
  %157 = mul i32 %156, 1000
  br label %158

158:                                              ; preds = %152, %139, %3
  %159 = phi i32 [ %157, %152 ], [ 0, %3 ], [ 0, %139 ]
  ret i32 %159
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_rate_stm_pll3200c32(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #7 {
  %4 = icmp eq i32 %2, 0
  %5 = add i32 %1, -1600000001
  %6 = icmp ult i32 %5, -800000001
  %7 = or i1 %6, %4
  br i1 %7, label %232, label %8

8:                                                ; preds = %3
  %9 = udiv i32 %2, 1000
  %10 = udiv i32 %1, 1000
  %11 = shl nuw nsw i32 %9, 1
  %12 = udiv i32 %10, %11
  %13 = icmp ult i32 %12, 8
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = icmp ugt i32 %12, 200
  br i1 %15, label %140, label %16

16:                                               ; preds = %14
  %17 = mul i32 %12, %11
  %18 = sub i32 %17, %10
  %19 = tail call i32 @llvm.abs.i32(i32 %18, i1 false) #10
  br label %20

20:                                               ; preds = %16, %8
  %21 = phi i32 [ 0, %8 ], [ 1, %16 ]
  %22 = phi i32 [ 0, %8 ], [ %12, %16 ]
  %23 = phi i32 [ -1, %8 ], [ %19, %16 ]
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %140, label %25

25:                                               ; preds = %20
  %26 = shl nuw nsw i32 %10, 1
  %27 = udiv i32 %26, %11
  %28 = icmp ult i32 %27, 8
  br i1 %28, label %40, label %29

29:                                               ; preds = %25
  %30 = icmp ugt i32 %27, 200
  br i1 %30, label %140, label %31

31:                                               ; preds = %29
  %32 = mul i32 %27, %11
  %33 = lshr exact i32 %32, 1
  %34 = sub nsw i32 %33, %10
  %35 = tail call i32 @llvm.abs.i32(i32 %34, i1 false) #10
  %36 = icmp eq i32 %33, %10
  %37 = icmp ult i32 %35, %23
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %31, %25
  %41 = phi i32 [ %21, %25 ], [ 2, %39 ], [ %21, %31 ]
  %42 = phi i32 [ %22, %25 ], [ %27, %39 ], [ %22, %31 ]
  %43 = phi i32 [ %23, %25 ], [ %35, %39 ], [ %23, %31 ]
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %140, label %45

45:                                               ; preds = %40
  %46 = mul nuw nsw i32 %10, 3
  %47 = udiv i32 %46, %11
  %48 = icmp ult i32 %47, 8
  br i1 %48, label %60, label %49

49:                                               ; preds = %45
  %50 = icmp ugt i32 %47, 200
  br i1 %50, label %140, label %51

51:                                               ; preds = %49
  %52 = mul i32 %47, %11
  %53 = udiv i32 %52, 3
  %54 = sub nsw i32 %53, %10
  %55 = tail call i32 @llvm.abs.i32(i32 %54, i1 false) #10
  %56 = icmp eq i32 %53, %10
  %57 = icmp ult i32 %55, %43
  %58 = select i1 %56, i1 true, i1 %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %51, %45
  %61 = phi i32 [ %41, %45 ], [ 3, %59 ], [ %41, %51 ]
  %62 = phi i32 [ %42, %45 ], [ %47, %59 ], [ %42, %51 ]
  %63 = phi i32 [ %43, %45 ], [ %55, %59 ], [ %43, %51 ]
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %140, label %65

65:                                               ; preds = %60
  %66 = shl nuw nsw i32 %10, 2
  %67 = udiv i32 %66, %11
  %68 = icmp ult i32 %67, 8
  br i1 %68, label %80, label %69

69:                                               ; preds = %65
  %70 = icmp ugt i32 %67, 200
  br i1 %70, label %140, label %71

71:                                               ; preds = %69
  %72 = mul i32 %67, %11
  %73 = lshr i32 %72, 2
  %74 = sub nsw i32 %73, %10
  %75 = tail call i32 @llvm.abs.i32(i32 %74, i1 false) #10
  %76 = icmp eq i32 %73, %10
  %77 = icmp ult i32 %75, %63
  %78 = select i1 %76, i1 true, i1 %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79, %71, %65
  %81 = phi i32 [ %61, %65 ], [ 4, %79 ], [ %61, %71 ]
  %82 = phi i32 [ %62, %65 ], [ %67, %79 ], [ %62, %71 ]
  %83 = phi i32 [ %63, %65 ], [ %75, %79 ], [ %63, %71 ]
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %140, label %85

85:                                               ; preds = %80
  %86 = mul nuw nsw i32 %10, 5
  %87 = udiv i32 %86, %11
  %88 = icmp ult i32 %87, 8
  br i1 %88, label %100, label %89

89:                                               ; preds = %85
  %90 = icmp ugt i32 %87, 200
  br i1 %90, label %140, label %91

91:                                               ; preds = %89
  %92 = mul i32 %87, %11
  %93 = udiv i32 %92, 5
  %94 = sub nsw i32 %93, %10
  %95 = tail call i32 @llvm.abs.i32(i32 %94, i1 false) #10
  %96 = icmp eq i32 %93, %10
  %97 = icmp ult i32 %95, %83
  %98 = select i1 %96, i1 true, i1 %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %100

100:                                              ; preds = %99, %91, %85
  %101 = phi i32 [ %81, %85 ], [ 5, %99 ], [ %81, %91 ]
  %102 = phi i32 [ %82, %85 ], [ %87, %99 ], [ %82, %91 ]
  %103 = phi i32 [ %83, %85 ], [ %95, %99 ], [ %83, %91 ]
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %140, label %105

105:                                              ; preds = %100
  %106 = mul nuw nsw i32 %10, 6
  %107 = udiv i32 %106, %11
  %108 = icmp ult i32 %107, 8
  br i1 %108, label %120, label %109

109:                                              ; preds = %105
  %110 = icmp ugt i32 %107, 200
  br i1 %110, label %140, label %111

111:                                              ; preds = %109
  %112 = mul i32 %107, %11
  %113 = udiv i32 %112, 6
  %114 = sub nsw i32 %113, %10
  %115 = tail call i32 @llvm.abs.i32(i32 %114, i1 false) #10
  %116 = icmp eq i32 %113, %10
  %117 = icmp ult i32 %115, %103
  %118 = select i1 %116, i1 true, i1 %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %120

120:                                              ; preds = %119, %111, %105
  %121 = phi i32 [ %101, %105 ], [ 6, %119 ], [ %101, %111 ]
  %122 = phi i32 [ %102, %105 ], [ %107, %119 ], [ %102, %111 ]
  %123 = phi i32 [ %103, %105 ], [ %115, %119 ], [ %103, %111 ]
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %140, label %125

125:                                              ; preds = %120
  %126 = mul nuw nsw i32 %10, 7
  %127 = udiv i32 %126, %11
  %128 = icmp ult i32 %127, 8
  %129 = icmp ugt i32 %127, 200
  %130 = or i1 %128, %129
  br i1 %130, label %140, label %131

131:                                              ; preds = %125
  %132 = mul i32 %127, %11
  %133 = udiv i32 %132, 7
  %134 = sub nsw i32 %133, %10
  %135 = tail call i32 @llvm.abs.i32(i32 %134, i1 false) #10
  %136 = icmp eq i32 %133, %10
  %137 = icmp ult i32 %135, %123
  %138 = select i1 %136, i1 true, i1 %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %131
  br label %140

140:                                              ; preds = %139, %131, %125, %120, %109, %100, %89, %80, %69, %60, %49, %40, %29, %20, %14
  %141 = phi i32 [ %21, %20 ], [ 0, %14 ], [ %21, %29 ], [ %41, %40 ], [ %41, %49 ], [ %61, %60 ], [ %61, %69 ], [ %81, %80 ], [ %81, %89 ], [ %101, %100 ], [ %101, %109 ], [ %121, %120 ], [ %121, %125 ], [ 7, %139 ], [ %121, %131 ]
  %142 = phi i32 [ %22, %20 ], [ 0, %14 ], [ %22, %29 ], [ %42, %40 ], [ %42, %49 ], [ %62, %60 ], [ %62, %69 ], [ %82, %80 ], [ %82, %89 ], [ %102, %100 ], [ %102, %109 ], [ %122, %120 ], [ %122, %125 ], [ %127, %139 ], [ %122, %131 ]
  %143 = phi i32 [ %23, %20 ], [ -1, %14 ], [ %23, %29 ], [ %43, %40 ], [ %43, %49 ], [ %63, %60 ], [ %63, %69 ], [ %83, %80 ], [ %83, %89 ], [ %103, %100 ], [ %103, %109 ], [ %123, %120 ], [ %123, %125 ], [ %135, %139 ], [ %123, %131 ]
  %144 = icmp eq i32 %143, -1
  br i1 %144, label %232, label %145

145:                                              ; preds = %145, %140
  %146 = phi i32 [ %152, %145 ], [ 6, %140 ]
  %147 = add i32 %146, -6
  %148 = getelementptr [19 x i8], ptr @clk_pll3200c32_get_params.cp_table, i32 0, i32 %147
  %149 = load i8, ptr %148, align 1
  %150 = zext i8 %149 to i32
  %151 = icmp ugt i32 %142, %150
  %152 = add i32 %146, 1
  br i1 %151, label %145, label %153

153:                                              ; preds = %145
  %154 = icmp eq i32 %141, 0
  %155 = select i1 %154, i32 1, i32 %141
  %156 = mul i32 %11, %142
  %157 = udiv i32 %156, %155
  %158 = mul i32 %157, 1000
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %232, label %160

160:                                              ; preds = %153
  %161 = getelementptr inbounds %struct.clkgen_pll, ptr %0, i32 0, i32 4
  store i32 %142, ptr %161, align 4
  %162 = getelementptr inbounds %struct.clkgen_pll, ptr %0, i32 0, i32 5
  store i32 %155, ptr %162, align 4
  %163 = getelementptr inbounds %struct.clkgen_pll, ptr %0, i32 0, i32 6
  store i32 %146, ptr %163, align 4
  tail call fastcc void @__clkgen_pll_disable(ptr noundef %0)
  %164 = getelementptr inbounds %struct.clkgen_pll, ptr %0, i32 0, i32 3
  %165 = load ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %169, label %167

167:                                              ; preds = %160
  %168 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %165) #10
  br label %169

169:                                              ; preds = %167, %160
  %170 = phi i32 [ %168, %167 ], [ 0, %160 ]
  %171 = getelementptr inbounds %struct.clkgen_pll, ptr %0, i32 0, i32 2
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr inbounds %struct.clkgen_pll, ptr %0, i32 0, i32 1
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr inbounds %struct.clkgen_pll_data, ptr %174, i32 0, i32 4
  %176 = load i32, ptr %161, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %177 = load i32, ptr %175, align 4
  %178 = getelementptr i8, ptr %172, i32 %177
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %178) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %180 = getelementptr inbounds %struct.clkgen_pll_data, ptr %174, i32 0, i32 4, i32 1
  %181 = load i32, ptr %180, align 4
  %182 = getelementptr inbounds %struct.clkgen_pll_data, ptr %174, i32 0, i32 4, i32 2
  %183 = load i32, ptr %182, align 4
  %184 = shl i32 %181, %183
  %185 = xor i32 %184, -1
  %186 = and i32 %179, %185
  %187 = shl i32 %176, %183
  %188 = or i32 %186, %187
  %189 = load i32, ptr %175, align 4
  %190 = getelementptr i8, ptr %172, i32 %189
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %190, i32 %188) #10, !srcloc !15
  %191 = load ptr, ptr %171, align 4
  %192 = load ptr, ptr %173, align 4
  %193 = getelementptr inbounds %struct.clkgen_pll_data, ptr %192, i32 0, i32 6
  %194 = load i32, ptr %162, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %195 = load i32, ptr %193, align 4
  %196 = getelementptr i8, ptr %191, i32 %195
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %196) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %198 = getelementptr inbounds %struct.clkgen_pll_data, ptr %192, i32 0, i32 6, i32 1
  %199 = load i32, ptr %198, align 4
  %200 = getelementptr inbounds %struct.clkgen_pll_data, ptr %192, i32 0, i32 6, i32 2
  %201 = load i32, ptr %200, align 4
  %202 = shl i32 %199, %201
  %203 = xor i32 %202, -1
  %204 = and i32 %197, %203
  %205 = shl i32 %194, %201
  %206 = or i32 %204, %205
  %207 = load i32, ptr %193, align 4
  %208 = getelementptr i8, ptr %191, i32 %207
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %208, i32 %206) #10, !srcloc !15
  %209 = load ptr, ptr %171, align 4
  %210 = load ptr, ptr %173, align 4
  %211 = getelementptr inbounds %struct.clkgen_pll_data, ptr %210, i32 0, i32 8
  %212 = load i32, ptr %163, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %213 = load i32, ptr %211, align 4
  %214 = getelementptr i8, ptr %209, i32 %213
  %215 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %214) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %216 = getelementptr inbounds %struct.clkgen_pll_data, ptr %210, i32 0, i32 8, i32 1
  %217 = load i32, ptr %216, align 4
  %218 = getelementptr inbounds %struct.clkgen_pll_data, ptr %210, i32 0, i32 8, i32 2
  %219 = load i32, ptr %218, align 4
  %220 = shl i32 %217, %219
  %221 = xor i32 %220, -1
  %222 = and i32 %215, %221
  %223 = shl i32 %212, %219
  %224 = or i32 %222, %223
  %225 = load i32, ptr %211, align 4
  %226 = getelementptr i8, ptr %209, i32 %225
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %226, i32 %224) #10, !srcloc !15
  %227 = load ptr, ptr %164, align 4
  %228 = icmp eq ptr %227, null
  br i1 %228, label %230, label %229

229:                                              ; preds = %169
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %227, i32 noundef %170) #10
  br label %230

230:                                              ; preds = %229, %169
  %231 = tail call fastcc i32 @__clkgen_pll_enable(ptr noundef %0)
  br label %232

232:                                              ; preds = %230, %153, %140, %3
  %233 = phi i32 [ 0, %230 ], [ -22, %3 ], [ -22, %153 ], [ -22, %140 ]
  ret i32 %233
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @recalc_stm_pll4600c28(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.clkgen_pll, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.clkgen_pll, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %10 = getelementptr inbounds %struct.clkgen_field, ptr %6, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %9, %11
  %13 = getelementptr inbounds %struct.clkgen_field, ptr %6, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %12, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %61

17:                                               ; preds = %2
  %18 = load ptr, ptr %3, align 4
  %19 = load ptr, ptr %5, align 4
  %20 = getelementptr inbounds %struct.clkgen_pll_data, ptr %19, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr i8, ptr %18, i32 %21
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %24 = getelementptr inbounds %struct.clkgen_pll_data, ptr %19, i32 0, i32 2, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = lshr i32 %23, %25
  %27 = getelementptr inbounds %struct.clkgen_pll_data, ptr %19, i32 0, i32 2, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %26, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %61, label %31

31:                                               ; preds = %17
  %32 = load ptr, ptr %3, align 4
  %33 = load ptr, ptr %5, align 4
  %34 = getelementptr inbounds %struct.clkgen_pll_data, ptr %33, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr i8, ptr %32, i32 %35
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %38 = getelementptr inbounds %struct.clkgen_pll_data, ptr %33, i32 0, i32 4, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = lshr i32 %37, %39
  %41 = getelementptr inbounds %struct.clkgen_pll_data, ptr %33, i32 0, i32 4, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %40, %42
  %44 = load ptr, ptr %3, align 4
  %45 = load ptr, ptr %5, align 4
  %46 = getelementptr inbounds %struct.clkgen_pll_data, ptr %45, i32 0, i32 6
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr i8, ptr %44, i32 %47
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %50 = getelementptr inbounds %struct.clkgen_pll_data, ptr %45, i32 0, i32 6, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = lshr i32 %49, %51
  %53 = getelementptr inbounds %struct.clkgen_pll_data, ptr %45, i32 0, i32 6, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %52, %54
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %56, i32 1, i32 %55
  %58 = udiv i32 %1, %57
  %59 = shl i32 %43, 1
  %60 = mul i32 %59, %58
  br label %61

61:                                               ; preds = %31, %17, %2
  %62 = phi i32 [ %60, %31 ], [ 0, %17 ], [ 0, %2 ]
  ret i32 %62
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @round_rate_stm_pll4600c28(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #8 {
  %4 = load i32, ptr %2, align 4
  %5 = add i32 %1, 1294967295
  %6 = icmp ult i32 %5, 1313967295
  br i1 %6, label %59, label %7

7:                                                ; preds = %43, %3
  %8 = phi i32 [ %44, %43 ], [ 0, %3 ]
  %9 = phi i32 [ %45, %43 ], [ 0, %3 ]
  %10 = phi i32 [ %46, %43 ], [ -1, %3 ]
  %11 = phi i32 [ %47, %43 ], [ 1, %3 ]
  %12 = udiv i32 %4, %11
  %13 = add i32 %12, -50000001
  %14 = icmp ult i32 %13, -46000001
  br i1 %14, label %43, label %15

15:                                               ; preds = %7
  %16 = shl nuw nsw i32 %12, 1
  %17 = udiv i32 %1, %16
  %18 = add nsw i32 %17, -247
  %19 = icmp ult i32 %18, -239
  br i1 %19, label %43, label %20

20:                                               ; preds = %15
  %21 = icmp ult i32 %17, 246
  %22 = add nuw nsw i32 %17, 1
  %23 = select i1 %21, i32 %22, i32 246
  br label %24

24:                                               ; preds = %31, %20
  %25 = phi i32 [ %8, %20 ], [ %36, %31 ]
  %26 = phi i32 [ %9, %20 ], [ %37, %31 ]
  %27 = phi i32 [ %10, %20 ], [ %38, %31 ]
  %28 = phi i32 [ %23, %20 ], [ %39, %31 ]
  %29 = mul i32 %28, %16
  %30 = icmp ult i32 %29, %1
  br i1 %30, label %43, label %31

31:                                               ; preds = %24
  %32 = sub i32 %29, %1
  %33 = icmp eq i32 %29, %1
  %34 = icmp ult i32 %32, %27
  %35 = select i1 %33, i1 true, i1 %34
  %36 = select i1 %35, i32 %28, i32 %25
  %37 = select i1 %35, i32 %11, i32 %26
  %38 = select i1 %35, i32 %32, i32 %27
  %39 = add i32 %28, -1
  %40 = icmp ugt i32 %39, 7
  %41 = icmp ne i32 %38, 0
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %24, label %43

43:                                               ; preds = %31, %24, %15, %7
  %44 = phi i32 [ %8, %7 ], [ %8, %15 ], [ %36, %31 ], [ %25, %24 ]
  %45 = phi i32 [ %9, %7 ], [ %9, %15 ], [ %37, %31 ], [ %26, %24 ]
  %46 = phi i32 [ %10, %7 ], [ %10, %15 ], [ %38, %31 ], [ %27, %24 ]
  %47 = add nuw nsw i32 %11, 1
  %48 = icmp ult i32 %11, 7
  %49 = icmp ne i32 %46, 0
  %50 = select i1 %48, i1 %49, i1 false
  br i1 %50, label %7, label %51

51:                                               ; preds = %43
  %52 = icmp eq i32 %46, -1
  br i1 %52, label %59, label %53

53:                                               ; preds = %51
  %54 = icmp eq i32 %45, 0
  %55 = select i1 %54, i32 1, i32 %45
  %56 = udiv i32 %4, %55
  %57 = shl i32 %44, 1
  %58 = mul i32 %57, %56
  br label %59

59:                                               ; preds = %53, %51, %3
  %60 = phi i32 [ %58, %53 ], [ 0, %3 ], [ 0, %51 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_rate_stm_pll4600c28(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #7 {
  %4 = icmp eq i32 %2, 0
  %5 = add i32 %1, 1294967295
  %6 = icmp ult i32 %5, 1313967295
  %7 = or i1 %6, %4
  br i1 %7, label %114, label %8

8:                                                ; preds = %44, %3
  %9 = phi i32 [ %45, %44 ], [ 0, %3 ]
  %10 = phi i32 [ %46, %44 ], [ 0, %3 ]
  %11 = phi i32 [ %47, %44 ], [ -1, %3 ]
  %12 = phi i32 [ %48, %44 ], [ 1, %3 ]
  %13 = udiv i32 %2, %12
  %14 = add i32 %13, -50000001
  %15 = icmp ult i32 %14, -46000001
  br i1 %15, label %44, label %16

16:                                               ; preds = %8
  %17 = shl nuw nsw i32 %13, 1
  %18 = udiv i32 %1, %17
  %19 = add nsw i32 %18, -247
  %20 = icmp ult i32 %19, -239
  br i1 %20, label %44, label %21

21:                                               ; preds = %16
  %22 = icmp ult i32 %18, 246
  %23 = add nuw nsw i32 %18, 1
  %24 = select i1 %22, i32 %23, i32 246
  br label %25

25:                                               ; preds = %32, %21
  %26 = phi i32 [ %9, %21 ], [ %37, %32 ]
  %27 = phi i32 [ %10, %21 ], [ %38, %32 ]
  %28 = phi i32 [ %11, %21 ], [ %39, %32 ]
  %29 = phi i32 [ %24, %21 ], [ %40, %32 ]
  %30 = mul i32 %29, %17
  %31 = icmp ult i32 %30, %1
  br i1 %31, label %44, label %32

32:                                               ; preds = %25
  %33 = sub i32 %30, %1
  %34 = icmp eq i32 %30, %1
  %35 = icmp ult i32 %33, %28
  %36 = select i1 %34, i1 true, i1 %35
  %37 = select i1 %36, i32 %29, i32 %26
  %38 = select i1 %36, i32 %12, i32 %27
  %39 = select i1 %36, i32 %33, i32 %28
  %40 = add i32 %29, -1
  %41 = icmp ugt i32 %40, 7
  %42 = icmp ne i32 %39, 0
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %25, label %44

44:                                               ; preds = %32, %25, %16, %8
  %45 = phi i32 [ %9, %8 ], [ %9, %16 ], [ %37, %32 ], [ %26, %25 ]
  %46 = phi i32 [ %10, %8 ], [ %10, %16 ], [ %38, %32 ], [ %27, %25 ]
  %47 = phi i32 [ %11, %8 ], [ %11, %16 ], [ %39, %32 ], [ %28, %25 ]
  %48 = add nuw nsw i32 %12, 1
  %49 = icmp ult i32 %12, 7
  %50 = icmp ne i32 %47, 0
  %51 = select i1 %49, i1 %50, i1 false
  br i1 %51, label %8, label %52

52:                                               ; preds = %44
  %53 = icmp eq i32 %47, -1
  br i1 %53, label %114, label %54

54:                                               ; preds = %52
  %55 = icmp eq i32 %46, 0
  %56 = select i1 %55, i32 1, i32 %46
  %57 = udiv i32 %2, %56
  %58 = shl i32 %45, 1
  %59 = mul i32 %58, %57
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %114, label %61

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.clkgen_pll, ptr %0, i32 0, i32 4
  store i32 %45, ptr %62, align 4
  %63 = getelementptr inbounds %struct.clkgen_pll, ptr %0, i32 0, i32 5
  store i32 %56, ptr %63, align 4
  tail call fastcc void @__clkgen_pll_disable(ptr noundef %0)
  %64 = getelementptr inbounds %struct.clkgen_pll, ptr %0, i32 0, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %61
  %68 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %65) #10
  br label %69

69:                                               ; preds = %67, %61
  %70 = phi i32 [ %68, %67 ], [ 0, %61 ]
  %71 = getelementptr inbounds %struct.clkgen_pll, ptr %0, i32 0, i32 2
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.clkgen_pll, ptr %0, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.clkgen_pll_data, ptr %74, i32 0, i32 4
  %76 = load i32, ptr %62, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %77 = load i32, ptr %75, align 4
  %78 = getelementptr i8, ptr %72, i32 %77
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %80 = getelementptr inbounds %struct.clkgen_pll_data, ptr %74, i32 0, i32 4, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.clkgen_pll_data, ptr %74, i32 0, i32 4, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = shl i32 %81, %83
  %85 = xor i32 %84, -1
  %86 = and i32 %79, %85
  %87 = shl i32 %76, %83
  %88 = or i32 %86, %87
  %89 = load i32, ptr %75, align 4
  %90 = getelementptr i8, ptr %72, i32 %89
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %88) #10, !srcloc !15
  %91 = load ptr, ptr %71, align 4
  %92 = load ptr, ptr %73, align 4
  %93 = getelementptr inbounds %struct.clkgen_pll_data, ptr %92, i32 0, i32 6
  %94 = load i32, ptr %63, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %95 = load i32, ptr %93, align 4
  %96 = getelementptr i8, ptr %91, i32 %95
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %98 = getelementptr inbounds %struct.clkgen_pll_data, ptr %92, i32 0, i32 6, i32 1
  %99 = load i32, ptr %98, align 4
  %100 = getelementptr inbounds %struct.clkgen_pll_data, ptr %92, i32 0, i32 6, i32 2
  %101 = load i32, ptr %100, align 4
  %102 = shl i32 %99, %101
  %103 = xor i32 %102, -1
  %104 = and i32 %97, %103
  %105 = shl i32 %94, %101
  %106 = or i32 %104, %105
  %107 = load i32, ptr %93, align 4
  %108 = getelementptr i8, ptr %91, i32 %107
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %106) #10, !srcloc !15
  %109 = load ptr, ptr %64, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %69
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %109, i32 noundef %70) #10
  br label %112

112:                                              ; preds = %111, %69
  %113 = tail call fastcc i32 @__clkgen_pll_enable(ptr noundef %0)
  br label %114

114:                                              ; preds = %112, %54, %52, %3
  %115 = phi i32 [ 0, %112 ], [ -22, %3 ], [ -22, %54 ], [ -22, %52 ]
  ret i32 %115
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

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
!10 = !{i32 0, i32 33}
!11 = !{i64 2971608}
!12 = !{i64 2151148277}
!13 = !{i64 2151149220}
!14 = !{i64 2151149770}
!15 = !{i64 2971190}
!16 = !{i8 0, i8 2}
