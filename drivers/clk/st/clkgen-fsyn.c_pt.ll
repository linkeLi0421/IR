; ModuleID = '/llk/IR/drivers/clk/st/clkgen-fsyn.c_pt.bc'
source_filename = "../drivers/clk/st/clkgen-fsyn.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clkgen_quadfs_data_clks = type { ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clkgen_quadfs_data = type { i8, i8, i8, i8, i8, i8, i8, %struct.clkgen_field, %struct.clkgen_field, %struct.clkgen_field, %struct.clkgen_field, %struct.clkgen_field, [4 x %struct.clkgen_field], [4 x %struct.clkgen_field], [4 x %struct.clkgen_field], [4 x %struct.clkgen_field], [4 x %struct.clkgen_field], [4 x %struct.clkgen_field], [4 x %struct.clkgen_field], ptr, ptr, ptr }
%struct.clkgen_field = type { i32, i32, i32 }
%struct.clkgen_clk_out = type { ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.st_clk_quadfs_pll = type { %struct.clk_hw, ptr, ptr, ptr, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.st_clk_quadfs_fsynth = type { %struct.clk_hw, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.stm_fs = type { i32, i32, i32, i32, i32 }

@__of_table_quadfs660C = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,quadfs-pll\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @st_of_quadfs660C_setup }, section "__clk_of_table", align 4
@__of_table_quadfs660D = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,quadfs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @st_of_quadfs660D_setup }, section "__clk_of_table", align 4
@__of_table_quadfs660D0 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,quadfs-d0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @st_of_quadfs660D0_setup }, section "__clk_of_table", align 4
@__of_table_quadfs660D2 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,quadfs-d2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @st_of_quadfs660D2_setup }, section "__clk_of_table", align 4
@__of_table_quadfs660D3 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,quadfs-d3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @st_of_quadfs660D3_setup }, section "__clk_of_table", align 4
@st_fs660c32_C_data = internal constant %struct.clkgen_quadfs_data_clks { ptr @st_fs660c32_C, ptr @st_fs660c32_C_clks }, align 4
@.str = private unnamed_addr constant [34 x i8] c"\013%s: Failed to get base address\0A\00", align 1
@__func__.st_of_quadfs_setup = private unnamed_addr constant [19 x i8] c"st_of_quadfs_setup\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%pOFn.pll\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"drivers/clk/st/clkgen-fsyn.c\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@st_quadfs_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @quadfs_fsynth_enable, ptr @quadfs_fsynth_disable, ptr @quadfs_fsynth_is_enabled, ptr null, ptr null, ptr null, ptr @quadfs_recalc_rate, ptr @quadfs_round_rate, ptr null, ptr null, ptr null, ptr @quadfs_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"\013%s:%s error calculating rate\0A\00", align 1
@__func__.quadfs_recalc_rate = private unnamed_addr constant [19 x i8] c"quadfs_recalc_rate\00", align 1
@st_fs660c32_C = internal constant %struct.clkgen_quadfs_data { i8 0, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, %struct.clkgen_field { i32 756, i32 7, i32 16 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer, %struct.clkgen_field { i32 752, i32 1, i32 12 }, %struct.clkgen_field { i32 752, i32 1, i32 24 }, [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 752, i32 1, i32 0 }, %struct.clkgen_field { i32 752, i32 1, i32 1 }, %struct.clkgen_field { i32 752, i32 1, i32 2 }, %struct.clkgen_field { i32 752, i32 1, i32 3 }], [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 752, i32 1, i32 8 }, %struct.clkgen_field { i32 752, i32 1, i32 9 }, %struct.clkgen_field { i32 752, i32 1, i32 10 }, %struct.clkgen_field { i32 752, i32 1, i32 11 }], [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 764, i32 1, i32 0 }, %struct.clkgen_field { i32 764, i32 1, i32 1 }, %struct.clkgen_field { i32 764, i32 1, i32 2 }, %struct.clkgen_field { i32 764, i32 1, i32 3 }], [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 772, i32 31, i32 15 }, %struct.clkgen_field { i32 776, i32 31, i32 15 }, %struct.clkgen_field { i32 780, i32 31, i32 15 }, %struct.clkgen_field { i32 784, i32 31, i32 15 }], [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 772, i32 32767, i32 0 }, %struct.clkgen_field { i32 776, i32 32767, i32 0 }, %struct.clkgen_field { i32 780, i32 32767, i32 0 }, %struct.clkgen_field { i32 784, i32 32767, i32 0 }], [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 772, i32 15, i32 20 }, %struct.clkgen_field { i32 776, i32 15, i32 20 }, %struct.clkgen_field { i32 780, i32 15, i32 20 }, %struct.clkgen_field { i32 784, i32 15, i32 20 }], [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 772, i32 1, i32 24 }, %struct.clkgen_field { i32 776, i32 1, i32 24 }, %struct.clkgen_field { i32 780, i32 1, i32 24 }, %struct.clkgen_field { i32 784, i32 1, i32 24 }], ptr @st_quadfs_pll_c32_ops, ptr @clk_fs660c32_dig_get_params, ptr @clk_fs660c32_dig_get_rate }, align 4
@st_fs660c32_C_clks = internal constant [4 x %struct.clkgen_clk_out] [%struct.clkgen_clk_out { ptr @.str.5, i32 0 }, %struct.clkgen_clk_out { ptr @.str.6, i32 0 }, %struct.clkgen_clk_out { ptr @.str.7, i32 0 }, %struct.clkgen_clk_out { ptr @.str.8, i32 0 }], align 4
@st_quadfs_pll_c32_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @quadfs_pll_enable, ptr @quadfs_pll_disable, ptr @quadfs_pll_is_enabled, ptr null, ptr null, ptr null, ptr @quadfs_pll_fs660c32_recalc_rate, ptr @quadfs_pll_fs660c32_round_rate, ptr null, ptr null, ptr null, ptr @quadfs_pll_fs660c32_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.5 = private unnamed_addr constant [17 x i8] c"clk-s-c0-fs0-ch0\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"clk-s-c0-fs0-ch1\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"clk-s-c0-fs0-ch2\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"clk-s-c0-fs0-ch3\00", align 1
@st_fs660c32_D_data = internal constant %struct.clkgen_quadfs_data_clks { ptr @st_fs660c32_D, ptr null }, align 4
@st_fs660c32_D = internal constant %struct.clkgen_quadfs_data { i8 0, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, %struct.clkgen_field { i32 676, i32 7, i32 16 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer, %struct.clkgen_field { i32 672, i32 1, i32 12 }, %struct.clkgen_field { i32 672, i32 1, i32 24 }, [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 672, i32 1, i32 0 }, %struct.clkgen_field { i32 672, i32 1, i32 1 }, %struct.clkgen_field { i32 672, i32 1, i32 2 }, %struct.clkgen_field { i32 672, i32 1, i32 3 }], [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 672, i32 1, i32 8 }, %struct.clkgen_field { i32 672, i32 1, i32 9 }, %struct.clkgen_field { i32 672, i32 1, i32 10 }, %struct.clkgen_field { i32 672, i32 1, i32 11 }], [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 684, i32 1, i32 0 }, %struct.clkgen_field { i32 684, i32 1, i32 1 }, %struct.clkgen_field { i32 684, i32 1, i32 2 }, %struct.clkgen_field { i32 684, i32 1, i32 3 }], [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 692, i32 31, i32 15 }, %struct.clkgen_field { i32 696, i32 31, i32 15 }, %struct.clkgen_field { i32 700, i32 31, i32 15 }, %struct.clkgen_field { i32 704, i32 31, i32 15 }], [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 692, i32 32767, i32 0 }, %struct.clkgen_field { i32 696, i32 32767, i32 0 }, %struct.clkgen_field { i32 700, i32 32767, i32 0 }, %struct.clkgen_field { i32 704, i32 32767, i32 0 }], [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 692, i32 15, i32 20 }, %struct.clkgen_field { i32 696, i32 15, i32 20 }, %struct.clkgen_field { i32 700, i32 15, i32 20 }, %struct.clkgen_field { i32 704, i32 15, i32 20 }], [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 692, i32 1, i32 24 }, %struct.clkgen_field { i32 696, i32 1, i32 24 }, %struct.clkgen_field { i32 700, i32 1, i32 24 }, %struct.clkgen_field { i32 704, i32 1, i32 24 }], ptr @st_quadfs_pll_c32_ops, ptr @clk_fs660c32_dig_get_params, ptr @clk_fs660c32_dig_get_rate }, align 4
@st_fs660c32_D0_data = internal constant %struct.clkgen_quadfs_data_clks { ptr @st_fs660c32_D, ptr @st_fs660c32_D0_clks }, align 4
@st_fs660c32_D0_clks = internal constant [4 x %struct.clkgen_clk_out] [%struct.clkgen_clk_out { ptr @.str.9, i32 0 }, %struct.clkgen_clk_out { ptr @.str.10, i32 0 }, %struct.clkgen_clk_out { ptr @.str.11, i32 0 }, %struct.clkgen_clk_out { ptr @.str.12, i32 0 }], align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"clk-s-d0-fs0-ch0\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"clk-s-d0-fs0-ch1\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"clk-s-d0-fs0-ch2\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"clk-s-d0-fs0-ch3\00", align 1
@st_fs660c32_D2_data = internal constant %struct.clkgen_quadfs_data_clks { ptr @st_fs660c32_D, ptr @st_fs660c32_D2_clks }, align 4
@st_fs660c32_D2_clks = internal constant [4 x %struct.clkgen_clk_out] [%struct.clkgen_clk_out { ptr @.str.13, i32 0 }, %struct.clkgen_clk_out { ptr @.str.14, i32 0 }, %struct.clkgen_clk_out { ptr @.str.15, i32 0 }, %struct.clkgen_clk_out { ptr @.str.16, i32 0 }], align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"clk-s-d2-fs0-ch0\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"clk-s-d2-fs0-ch1\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"clk-s-d2-fs0-ch2\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"clk-s-d2-fs0-ch3\00", align 1
@st_fs660c32_D3_data = internal constant %struct.clkgen_quadfs_data_clks { ptr @st_fs660c32_D, ptr @st_fs660c32_D3_clks }, align 4
@st_fs660c32_D3_clks = internal constant [4 x %struct.clkgen_clk_out] [%struct.clkgen_clk_out { ptr @.str.17, i32 0 }, %struct.clkgen_clk_out { ptr @.str.18, i32 0 }, %struct.clkgen_clk_out { ptr @.str.19, i32 0 }, %struct.clkgen_clk_out { ptr @.str.20, i32 0 }], align 4
@.str.17 = private unnamed_addr constant [17 x i8] c"clk-s-d3-fs0-ch0\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"clk-s-d3-fs0-ch1\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"clk-s-d3-fs0-ch2\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"clk-s-d3-fs0-ch3\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__of_table_quadfs660C, ptr @__of_table_quadfs660D, ptr @__of_table_quadfs660D0, ptr @__of_table_quadfs660D2, ptr @__of_table_quadfs660D3], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @st_of_quadfs660C_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @st_of_quadfs_setup(ptr noundef %0, ptr noundef nonnull @st_fs660c32_C_data) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @st_of_quadfs660D_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @st_of_quadfs_setup(ptr noundef %0, ptr noundef nonnull @st_fs660c32_D_data) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @st_of_quadfs660D0_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @st_of_quadfs_setup(ptr noundef %0, ptr noundef nonnull @st_fs660c32_D0_data) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @st_of_quadfs660D2_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @st_of_quadfs_setup(ptr noundef %0, ptr noundef nonnull @st_fs660c32_D2_data) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @st_of_quadfs660D3_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @st_of_quadfs_setup(ptr noundef %0, ptr noundef nonnull @st_fs660c32_D3_data) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @st_of_quadfs_setup(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 section ".init.text" {
  %3 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = tail call ptr @of_get_parent(ptr noundef %0) #10
  %7 = tail call ptr @of_iomap(ptr noundef %6, i32 noundef 0) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.st_of_quadfs_setup) #11
  br label %28

11:                                               ; preds = %5, %2
  %12 = phi ptr [ %3, %2 ], [ %7, %5 ]
  %13 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %11
  %16 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.1, ptr noundef %0) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %20 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 4) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  store i32 0, ptr %20, align 8
  %23 = load ptr, ptr %1, align 4
  %24 = tail call fastcc ptr @st_clk_register_quadfs_pll(ptr noundef nonnull %16, ptr noundef nonnull %13, ptr noundef %23, ptr noundef nonnull %12, ptr noundef nonnull %20) #9
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call fastcc void @st_of_create_quadfs_fsynths(ptr noundef %0, ptr noundef nonnull %16, ptr noundef %1, ptr noundef nonnull %12, ptr noundef nonnull %20) #9
  br label %27

27:                                               ; preds = %26, %22, %18
  tail call void @kfree(ptr noundef nonnull %16) #10
  br label %28

28:                                               ; preds = %27, %15, %11, %9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @st_clk_register_quadfs_pll(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 section ".init.text" {
  %6 = alloca ptr, align 4
  %7 = alloca %struct.clk_init_data, align 4
  store ptr %1, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #10
  %8 = getelementptr inbounds i8, ptr %7, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %8, i8 0, i32 12, i1 false), !annotation !8
  %9 = icmp eq ptr %0, null
  %10 = icmp eq ptr %1, null
  %11 = or i1 %9, %10
  br i1 %11, label %12, label %13, !prof !9

12:                                               ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 455, i32 noundef 9, ptr noundef null) #10
  br label %31

13:                                               ; preds = %5
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 28) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %13
  store ptr %0, ptr %7, align 4
  %18 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %2, i32 0, i32 19
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 1
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 6
  store i32 64, ptr %21, align 4
  %22 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 2
  store ptr %6, ptr %22, align 4
  %23 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 5
  store i8 1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %15, i32 0, i32 3
  store ptr %2, ptr %24, align 4
  %25 = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %15, i32 0, i32 1
  store ptr %3, ptr %25, align 4
  %26 = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %15, i32 0, i32 2
  store ptr %4, ptr %26, align 8
  %27 = getelementptr inbounds %struct.clk_hw, ptr %15, i32 0, i32 2
  store ptr %7, ptr %27, align 8
  %28 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %15) #10
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  call void @kfree(ptr noundef nonnull %15) #10
  br label %31

31:                                               ; preds = %30, %17, %13, %12
  %32 = phi ptr [ inttoptr (i32 -22 to ptr), %12 ], [ %28, %30 ], [ %28, %17 ], [ inttoptr (i32 -12 to ptr), %13 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #10
  ret ptr %32
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @st_of_create_quadfs_fsynths(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 section ".init.text" {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 8) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %52, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.clk_onecell_data, ptr %9, i32 0, i32 1
  store i32 4, ptr %12, align 4
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 16) #12
  store ptr %14, ptr %9, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.clkgen_quadfs_data_clks, ptr %2, i32 0, i32 1
  br label %19

18:                                               ; preds = %11
  tail call void @kfree(ptr noundef nonnull %9) #10
  br label %52

19:                                               ; preds = %47, %16
  %20 = phi i32 [ 0, %16 ], [ %48, %47 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store ptr null, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4
  %21 = load ptr, ptr %17, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = getelementptr %struct.clkgen_clk_out, ptr %21, i32 %20
  %25 = load ptr, ptr %24, align 4
  store ptr %25, ptr %6, align 4
  %26 = getelementptr %struct.clkgen_clk_out, ptr %21, i32 %20, i32 1
  %27 = load i32, ptr %26, align 4
  store i32 %27, ptr %7, align 4
  br label %34

28:                                               ; preds = %19
  %29 = call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %6, i32 noundef 1, i32 noundef %20) #10
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = call i32 @of_clk_detect_critical(ptr noundef %0, i32 noundef %20, ptr noundef nonnull %7) #10
  %33 = load ptr, ptr %6, align 4
  br label %34

34:                                               ; preds = %31, %23
  %35 = phi ptr [ %33, %31 ], [ %25, %23 ]
  %36 = load i8, ptr %35, align 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %2, align 4
  %40 = load i32, ptr %7, align 4
  %41 = call fastcc ptr @st_clk_register_quadfs_fsynth(ptr noundef %35, ptr noundef %1, ptr noundef %39, ptr noundef %3, i32 noundef %20, i32 noundef %40, ptr noundef %4) #9
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = load ptr, ptr %9, align 8
  %45 = getelementptr ptr, ptr %44, i32 %20
  store ptr %41, ptr %45, align 4
  br label %47

46:                                               ; preds = %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  br label %50

47:                                               ; preds = %43, %38, %34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  %48 = add nuw nsw i32 %20, 1
  %49 = icmp eq i32 %48, 4
  br i1 %49, label %50, label %19

50:                                               ; preds = %47, %46
  %51 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %9) #10
  br label %52

52:                                               ; preds = %50, %18, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_detect_critical(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @st_clk_register_quadfs_fsynth(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #0 section ".init.text" {
  %8 = alloca ptr, align 4
  %9 = alloca %struct.clk_init_data, align 4
  store ptr %1, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %9) #10
  %10 = getelementptr inbounds i8, ptr %9, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %10, i8 0, i32 12, i1 false), !annotation !8
  %11 = icmp eq ptr %0, null
  %12 = icmp eq ptr %1, null
  %13 = or i1 %11, %12
  br i1 %13, label %14, label %15, !prof !9

14:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 893, i32 noundef 9, ptr noundef null) #10
  br label %33

15:                                               ; preds = %7
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 44) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %33, label %19

19:                                               ; preds = %15
  store ptr %0, ptr %9, align 4
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 1
  store ptr @st_quadfs_ops, ptr %20, align 4
  %21 = or i32 %5, 64
  %22 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 6
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 2
  store ptr %8, ptr %23, align 4
  %24 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 5
  store i8 1, ptr %24, align 4
  %25 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %17, i32 0, i32 3
  store ptr %2, ptr %25, align 4
  %26 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %17, i32 0, i32 1
  store ptr %3, ptr %26, align 4
  %27 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %17, i32 0, i32 4
  store i32 %4, ptr %27, align 8
  %28 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %17, i32 0, i32 2
  store ptr %6, ptr %28, align 8
  %29 = getelementptr inbounds %struct.clk_hw, ptr %17, i32 0, i32 2
  store ptr %9, ptr %29, align 8
  %30 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %17) #10
  %31 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  call void @kfree(ptr noundef nonnull %17) #10
  br label %33

33:                                               ; preds = %32, %19, %15, %14
  %34 = phi ptr [ inttoptr (i32 -22 to ptr), %14 ], [ %30, %32 ], [ %30, %19 ], [ inttoptr (i32 -12 to ptr), %15 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #10
  ret ptr %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @quadfs_fsynth_enable(ptr nocapture noundef readonly %0) #6 {
  tail call fastcc void @quadfs_fsynth_program_rate(ptr noundef %0)
  %2 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %3) #10
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  %9 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %0, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr %struct.clkgen_quadfs_data, ptr %12, i32 0, i32 13, i32 %14
  %16 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %12, i32 0, i32 4
  %17 = load i8, ptr %16, align 4, !range !10
  %18 = xor i8 %17, 1
  %19 = zext i8 %18 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %20 = load i32, ptr %15, align 4
  %21 = getelementptr i8, ptr %10, i32 %20
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !13
  %23 = getelementptr %struct.clkgen_quadfs_data, ptr %12, i32 0, i32 13, i32 %14, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr %struct.clkgen_quadfs_data, ptr %12, i32 0, i32 13, i32 %14, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = shl i32 %24, %26
  %28 = xor i32 %27, -1
  %29 = and i32 %22, %28
  %30 = shl i32 %19, %26
  %31 = or i32 %29, %30
  %32 = load i32, ptr %15, align 4
  %33 = getelementptr i8, ptr %10, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #10, !srcloc !14
  %34 = load ptr, ptr %11, align 4
  %35 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %34, i32 0, i32 6
  %36 = load i8, ptr %35, align 2, !range !10
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %54, label %38

38:                                               ; preds = %7
  %39 = load ptr, ptr %9, align 4
  %40 = load i32, ptr %13, align 4
  %41 = getelementptr %struct.clkgen_quadfs_data, ptr %34, i32 0, i32 12, i32 %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr i8, ptr %39, i32 %42
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !13
  %45 = getelementptr %struct.clkgen_quadfs_data, ptr %34, i32 0, i32 12, i32 %40, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr %struct.clkgen_quadfs_data, ptr %34, i32 0, i32 12, i32 %40, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = shl i32 %46, %48
  %50 = xor i32 %49, -1
  %51 = and i32 %44, %50
  %52 = load i32, ptr %41, align 4
  %53 = getelementptr i8, ptr %39, i32 %52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #10, !srcloc !14
  br label %54

54:                                               ; preds = %38, %7
  %55 = load ptr, ptr %2, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %55, i32 noundef %8) #10
  br label %58

58:                                               ; preds = %57, %54
  %59 = load ptr, ptr %9, align 4
  %60 = load ptr, ptr %11, align 4
  %61 = load i32, ptr %13, align 4
  %62 = getelementptr %struct.clkgen_quadfs_data, ptr %60, i32 0, i32 14, i32 %61
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr i8, ptr %59, i32 %63
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !13
  %66 = getelementptr %struct.clkgen_quadfs_data, ptr %60, i32 0, i32 14, i32 %61, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr %struct.clkgen_quadfs_data, ptr %60, i32 0, i32 14, i32 %61, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = shl i32 %67, %69
  %71 = xor i32 %70, -1
  %72 = and i32 %65, %71
  %73 = shl nuw i32 1, %69
  %74 = or i32 %72, %73
  %75 = load i32, ptr %62, align 4
  %76 = getelementptr i8, ptr %59, i32 %75
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %74) #10, !srcloc !14
  %77 = load ptr, ptr %9, align 4
  %78 = load ptr, ptr %11, align 4
  %79 = load i32, ptr %13, align 4
  %80 = getelementptr %struct.clkgen_quadfs_data, ptr %78, i32 0, i32 14, i32 %79
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr i8, ptr %77, i32 %81
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !13
  %84 = getelementptr %struct.clkgen_quadfs_data, ptr %78, i32 0, i32 14, i32 %79, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr %struct.clkgen_quadfs_data, ptr %78, i32 0, i32 14, i32 %79, i32 2
  %87 = load i32, ptr %86, align 4
  %88 = shl i32 %85, %87
  %89 = xor i32 %88, -1
  %90 = and i32 %83, %89
  %91 = load i32, ptr %80, align 4
  %92 = getelementptr i8, ptr %77, i32 %91
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %90) #10, !srcloc !14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quadfs_fsynth_disable(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %3) #10
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  %9 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %0, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr %struct.clkgen_quadfs_data, ptr %12, i32 0, i32 13, i32 %14
  %16 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %12, i32 0, i32 4
  %17 = load i8, ptr %16, align 4, !range !10
  %18 = zext i8 %17 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %19 = load i32, ptr %15, align 4
  %20 = getelementptr i8, ptr %10, i32 %19
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !13
  %22 = getelementptr %struct.clkgen_quadfs_data, ptr %12, i32 0, i32 13, i32 %14, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr %struct.clkgen_quadfs_data, ptr %12, i32 0, i32 13, i32 %14, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = shl i32 %23, %25
  %27 = xor i32 %26, -1
  %28 = and i32 %21, %27
  %29 = shl nuw i32 %18, %25
  %30 = or i32 %28, %29
  %31 = load i32, ptr %15, align 4
  %32 = getelementptr i8, ptr %10, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #10, !srcloc !14
  %33 = load ptr, ptr %2, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %33, i32 noundef %8) #10
  br label %36

36:                                               ; preds = %35, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @quadfs_fsynth_is_enabled(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr %struct.clkgen_quadfs_data, ptr %5, i32 0, i32 13, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %3, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !15
  %12 = getelementptr %struct.clkgen_quadfs_data, ptr %5, i32 0, i32 13, i32 %7, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %11, %13
  %15 = getelementptr %struct.clkgen_quadfs_data, ptr %5, i32 0, i32 13, i32 %7, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %14, %16
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %18, i32 0, i32 4
  %20 = load i8, ptr %19, align 4, !range !10
  %21 = icmp eq i8 %20, 0
  %22 = icmp eq i32 %17, 0
  %23 = icmp ne i32 %17, 0
  %24 = select i1 %21, i1 %23, i1 %22
  %25 = zext i1 %24 to i32
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @quadfs_recalc_rate(ptr noundef %0, i32 noundef %1) #6 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stm_fs, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %6, i32 0, i32 21
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %0, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr %struct.clkgen_quadfs_data, ptr %6, i32 0, i32 15, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr i8, ptr %10, i32 %14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !15
  %17 = getelementptr %struct.clkgen_quadfs_data, ptr %6, i32 0, i32 15, i32 %12, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = lshr i32 %16, %18
  %20 = getelementptr %struct.clkgen_quadfs_data, ptr %6, i32 0, i32 15, i32 %12, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %19, %21
  %23 = getelementptr inbounds %struct.stm_fs, ptr %4, i32 0, i32 1
  store i32 %22, ptr %23, align 4
  %24 = load ptr, ptr %9, align 4
  %25 = load ptr, ptr %5, align 4
  %26 = load i32, ptr %11, align 4
  %27 = getelementptr %struct.clkgen_quadfs_data, ptr %25, i32 0, i32 16, i32 %26
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr i8, ptr %24, i32 %28
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !15
  %31 = getelementptr %struct.clkgen_quadfs_data, ptr %25, i32 0, i32 16, i32 %26, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = lshr i32 %30, %32
  %34 = getelementptr %struct.clkgen_quadfs_data, ptr %25, i32 0, i32 16, i32 %26, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %33, %35
  %37 = getelementptr inbounds %struct.stm_fs, ptr %4, i32 0, i32 2
  store i32 %36, ptr %37, align 4
  %38 = load ptr, ptr %9, align 4
  %39 = load ptr, ptr %5, align 4
  %40 = load i32, ptr %11, align 4
  %41 = getelementptr %struct.clkgen_quadfs_data, ptr %39, i32 0, i32 17, i32 %40
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr i8, ptr %38, i32 %42
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !15
  %45 = getelementptr %struct.clkgen_quadfs_data, ptr %39, i32 0, i32 17, i32 %40, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = lshr i32 %44, %46
  %48 = getelementptr %struct.clkgen_quadfs_data, ptr %39, i32 0, i32 17, i32 %40, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %47, %49
  %51 = getelementptr inbounds %struct.stm_fs, ptr %4, i32 0, i32 3
  store i32 %50, ptr %51, align 4
  %52 = load ptr, ptr %5, align 4
  %53 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %52, i32 0, i32 5
  %54 = load i8, ptr %53, align 1, !range !10
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %2
  %57 = load ptr, ptr %9, align 4
  %58 = load i32, ptr %11, align 4
  %59 = getelementptr %struct.clkgen_quadfs_data, ptr %52, i32 0, i32 18, i32 %58
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr i8, ptr %57, i32 %60
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !15
  %63 = getelementptr %struct.clkgen_quadfs_data, ptr %52, i32 0, i32 18, i32 %58, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = lshr i32 %62, %64
  %66 = getelementptr %struct.clkgen_quadfs_data, ptr %52, i32 0, i32 18, i32 %58, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %65, %67
  br label %69

69:                                               ; preds = %56, %2
  %70 = phi i32 [ %68, %56 ], [ 1, %2 ]
  %71 = getelementptr inbounds %struct.stm_fs, ptr %4, i32 0, i32 4
  store i32 %70, ptr %71, align 4
  %72 = icmp eq i32 %22, 0
  %73 = icmp eq i32 %36, 0
  %74 = select i1 %72, i1 %73, i1 false
  %75 = icmp eq i32 %50, 0
  %76 = select i1 %74, i1 %75, i1 false
  br i1 %76, label %89, label %77

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %0, i32 0, i32 5
  store i32 %22, ptr %78, align 4
  %79 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %0, i32 0, i32 6
  store i32 %36, ptr %79, align 4
  %80 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %0, i32 0, i32 7
  store i32 %50, ptr %80, align 4
  %81 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %0, i32 0, i32 8
  store i32 %70, ptr %81, align 4
  %82 = call i32 %8(i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %3) #10
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %77
  %85 = call ptr @clk_hw_get_name(ptr noundef %0) #10
  %86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %85, ptr noundef nonnull @__func__.quadfs_recalc_rate) #11
  br label %87

87:                                               ; preds = %84, %77
  %88 = load i32, ptr %3, align 4
  br label %89

89:                                               ; preds = %87, %69
  %90 = phi i32 [ %88, %87 ], [ 0, %69 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @quadfs_round_rate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #6 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stm_fs, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !8
  %6 = load i32, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4
  %7 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %8, i32 0, i32 21
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %8, i32 0, i32 20
  %12 = load ptr, ptr %11, align 4
  %13 = call i32 %12(i32 noundef %6, i32 noundef %1, ptr noundef nonnull %5) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = call i32 %10(i32 noundef %6, ptr noundef nonnull %5, ptr noundef nonnull %4) #10
  %17 = load i32, ptr %4, align 4
  br label %18

18:                                               ; preds = %15, %3
  %19 = phi i32 [ %17, %15 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #10
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @quadfs_set_rate(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #6 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stm_fs, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #10
  %6 = icmp ne i32 %1, 0
  %7 = icmp ne i32 %2, 0
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %72

9:                                                ; preds = %3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4
  %10 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %11, i32 0, i32 21
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %11, i32 0, i32 20
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 %15(i32 noundef %2, i32 noundef %1, ptr noundef nonnull %5) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %72

19:                                               ; preds = %9
  %20 = call i32 %13(i32 noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4) #10
  %21 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %72, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.stm_fs, ptr %5, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %0, i32 0, i32 5
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.stm_fs, ptr %5, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %0, i32 0, i32 6
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.stm_fs, ptr %5, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %0, i32 0, i32 7
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.stm_fs, ptr %5, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %0, i32 0, i32 8
  store i32 %34, ptr %35, align 4
  call fastcc void @quadfs_fsynth_program_rate(ptr noundef %0) #10
  %36 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %0, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %10, align 4
  %39 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %0, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr %struct.clkgen_quadfs_data, ptr %38, i32 0, i32 14, i32 %40
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  call void @arm_heavy_mb() #10
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr i8, ptr %37, i32 %42
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #10, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !13
  %45 = getelementptr %struct.clkgen_quadfs_data, ptr %38, i32 0, i32 14, i32 %40, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr %struct.clkgen_quadfs_data, ptr %38, i32 0, i32 14, i32 %40, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = shl i32 %46, %48
  %50 = xor i32 %49, -1
  %51 = and i32 %44, %50
  %52 = shl nuw i32 1, %48
  %53 = or i32 %51, %52
  %54 = load i32, ptr %41, align 4
  %55 = getelementptr i8, ptr %37, i32 %54
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #10, !srcloc !14
  %56 = load ptr, ptr %36, align 4
  %57 = load ptr, ptr %10, align 4
  %58 = load i32, ptr %39, align 4
  %59 = getelementptr %struct.clkgen_quadfs_data, ptr %57, i32 0, i32 14, i32 %58
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  call void @arm_heavy_mb() #10
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr i8, ptr %56, i32 %60
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #10, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !13
  %63 = getelementptr %struct.clkgen_quadfs_data, ptr %57, i32 0, i32 14, i32 %58, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr %struct.clkgen_quadfs_data, ptr %57, i32 0, i32 14, i32 %58, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = shl i32 %64, %66
  %68 = xor i32 %67, -1
  %69 = and i32 %62, %68
  %70 = load i32, ptr %59, align 4
  %71 = getelementptr i8, ptr %56, i32 %70
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %69) #10, !srcloc !14
  br label %72

72:                                               ; preds = %23, %19, %18, %3
  %73 = phi i32 [ 0, %23 ], [ -22, %3 ], [ -22, %19 ], [ -22, %18 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #10
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @quadfs_fsynth_program_rate(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr %struct.clkgen_quadfs_data, ptr %5, i32 0, i32 14, i32 %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %3, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !13
  %12 = getelementptr %struct.clkgen_quadfs_data, ptr %5, i32 0, i32 14, i32 %7, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr %struct.clkgen_quadfs_data, ptr %5, i32 0, i32 14, i32 %7, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = shl i32 %13, %15
  %17 = xor i32 %16, -1
  %18 = and i32 %11, %17
  %19 = load i32, ptr %8, align 4
  %20 = getelementptr i8, ptr %3, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #10, !srcloc !14
  %21 = load ptr, ptr %2, align 4
  %22 = load ptr, ptr %4, align 4
  %23 = load i32, ptr %6, align 4
  %24 = getelementptr %struct.clkgen_quadfs_data, ptr %22, i32 0, i32 15, i32 %23
  %25 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %0, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %27 = load i32, ptr %24, align 4
  %28 = getelementptr i8, ptr %21, i32 %27
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !13
  %30 = getelementptr %struct.clkgen_quadfs_data, ptr %22, i32 0, i32 15, i32 %23, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr %struct.clkgen_quadfs_data, ptr %22, i32 0, i32 15, i32 %23, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = shl i32 %31, %33
  %35 = xor i32 %34, -1
  %36 = and i32 %29, %35
  %37 = shl i32 %26, %33
  %38 = or i32 %36, %37
  %39 = load i32, ptr %24, align 4
  %40 = getelementptr i8, ptr %21, i32 %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #10, !srcloc !14
  %41 = load ptr, ptr %2, align 4
  %42 = load ptr, ptr %4, align 4
  %43 = load i32, ptr %6, align 4
  %44 = getelementptr %struct.clkgen_quadfs_data, ptr %42, i32 0, i32 16, i32 %43
  %45 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %0, i32 0, i32 6
  %46 = load i32, ptr %45, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %47 = load i32, ptr %44, align 4
  %48 = getelementptr i8, ptr %41, i32 %47
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !13
  %50 = getelementptr %struct.clkgen_quadfs_data, ptr %42, i32 0, i32 16, i32 %43, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr %struct.clkgen_quadfs_data, ptr %42, i32 0, i32 16, i32 %43, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = shl i32 %51, %53
  %55 = xor i32 %54, -1
  %56 = and i32 %49, %55
  %57 = shl i32 %46, %53
  %58 = or i32 %56, %57
  %59 = load i32, ptr %44, align 4
  %60 = getelementptr i8, ptr %41, i32 %59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #10, !srcloc !14
  %61 = load ptr, ptr %2, align 4
  %62 = load ptr, ptr %4, align 4
  %63 = load i32, ptr %6, align 4
  %64 = getelementptr %struct.clkgen_quadfs_data, ptr %62, i32 0, i32 17, i32 %63
  %65 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %0, i32 0, i32 7
  %66 = load i32, ptr %65, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %67 = load i32, ptr %64, align 4
  %68 = getelementptr i8, ptr %61, i32 %67
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !13
  %70 = getelementptr %struct.clkgen_quadfs_data, ptr %62, i32 0, i32 17, i32 %63, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr %struct.clkgen_quadfs_data, ptr %62, i32 0, i32 17, i32 %63, i32 2
  %73 = load i32, ptr %72, align 4
  %74 = shl i32 %71, %73
  %75 = xor i32 %74, -1
  %76 = and i32 %69, %75
  %77 = shl i32 %66, %73
  %78 = or i32 %76, %77
  %79 = load i32, ptr %64, align 4
  %80 = getelementptr i8, ptr %61, i32 %79
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %78) #10, !srcloc !14
  %81 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %0, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %1
  %85 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %82) #10
  br label %86

86:                                               ; preds = %84, %1
  %87 = phi i32 [ %85, %84 ], [ 0, %1 ]
  %88 = load ptr, ptr %4, align 4
  %89 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %88, i32 0, i32 5
  %90 = load i8, ptr %89, align 1, !range !10
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %112, label %92

92:                                               ; preds = %86
  %93 = load ptr, ptr %2, align 4
  %94 = load i32, ptr %6, align 4
  %95 = getelementptr %struct.clkgen_quadfs_data, ptr %88, i32 0, i32 18, i32 %94
  %96 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %0, i32 0, i32 8
  %97 = load i32, ptr %96, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %98 = load i32, ptr %95, align 4
  %99 = getelementptr i8, ptr %93, i32 %98
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !13
  %101 = getelementptr %struct.clkgen_quadfs_data, ptr %88, i32 0, i32 18, i32 %94, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = getelementptr %struct.clkgen_quadfs_data, ptr %88, i32 0, i32 18, i32 %94, i32 2
  %104 = load i32, ptr %103, align 4
  %105 = shl i32 %102, %104
  %106 = xor i32 %105, -1
  %107 = and i32 %100, %106
  %108 = shl i32 %97, %104
  %109 = or i32 %107, %108
  %110 = load i32, ptr %95, align 4
  %111 = getelementptr i8, ptr %93, i32 %110
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %109) #10, !srcloc !14
  br label %112

112:                                              ; preds = %92, %86
  %113 = load ptr, ptr %81, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %112
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %113, i32 noundef %87) #10
  br label %116

116:                                              ; preds = %115, %112
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_fs660c32_dig_get_params(i32 noundef %0, i32 noundef %1, ptr nocapture noundef %2) #6 {
  %4 = zext i32 %1 to i64
  %5 = sext i32 %0 to i64
  %6 = shl nsw i64 %5, 20
  %7 = zext i32 %0 to i64
  %8 = shl nuw nsw i64 %7, 25
  %9 = getelementptr inbounds %struct.stm_fs, ptr %2, i32 0, i32 1
  %10 = getelementptr inbounds %struct.stm_fs, ptr %2, i32 0, i32 2
  %11 = getelementptr inbounds %struct.stm_fs, ptr %2, i32 0, i32 3
  %12 = getelementptr inbounds %struct.stm_fs, ptr %2, i32 0, i32 4
  br label %13

13:                                               ; preds = %96, %3
  %14 = phi i32 [ 0, %3 ], [ %98, %96 ]
  %15 = phi i32 [ -1, %3 ], [ %97, %96 ]
  %16 = zext i32 %14 to i64
  %17 = shl i64 %4, %16
  %18 = mul i64 %17, -1048576
  %19 = add i64 %18, %6
  %20 = tail call i64 @div64_u64(i64 noundef %19, i64 noundef %17) #10
  %21 = icmp ugt i64 %20, 32767
  br i1 %21, label %36, label %22

22:                                               ; preds = %13
  %23 = trunc i64 %20 to i32
  %24 = shl nuw nsw i32 1, %14
  %25 = shl nuw nsw i32 %23, 5
  %26 = zext i32 %25 to i64
  %27 = add nuw nsw i64 %26, 33554432
  %28 = zext i32 %24 to i64
  %29 = mul nuw nsw i64 %27, %28
  %30 = tail call i64 @div64_u64(i64 noundef %8, i64 noundef %29) #10
  %31 = trunc i64 %30 to i32
  %32 = sub i32 %1, %31
  %33 = tail call i32 @llvm.abs.i32(i32 %32, i1 false) #10
  %34 = icmp ult i32 %33, %15
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  store i32 0, ptr %9, align 4
  store i32 %23, ptr %10, align 4
  store i32 %14, ptr %11, align 4
  store i32 1, ptr %12, align 4
  br label %36

36:                                               ; preds = %35, %22, %13
  %37 = phi i32 [ %15, %13 ], [ %33, %35 ], [ %15, %22 ]
  %38 = mul i64 %17, -2064384
  %39 = add i64 %38, %6
  %40 = tail call i64 @div64_u64(i64 noundef %39, i64 noundef %17) #10
  %41 = icmp ugt i64 %40, 32767
  br i1 %41, label %56, label %42

42:                                               ; preds = %36
  %43 = trunc i64 %40 to i32
  %44 = shl nuw nsw i32 1, %14
  %45 = shl nuw nsw i32 %43, 5
  %46 = zext i32 %45 to i64
  %47 = add nuw nsw i64 %46, 66060288
  %48 = zext i32 %44 to i64
  %49 = mul nuw nsw i64 %47, %48
  %50 = tail call i64 @div64_u64(i64 noundef %8, i64 noundef %49) #10
  %51 = trunc i64 %50 to i32
  %52 = sub i32 %1, %51
  %53 = tail call i32 @llvm.abs.i32(i32 %52, i1 false) #10
  %54 = icmp ult i32 %53, %37
  br i1 %54, label %55, label %59

55:                                               ; preds = %42
  store i32 31, ptr %9, align 4
  store i32 %43, ptr %10, align 4
  store i32 %14, ptr %11, align 4
  store i32 1, ptr %12, align 4
  br label %59

56:                                               ; preds = %36
  %57 = icmp ugt i64 %20, %40
  %58 = select i1 %21, i1 %57, i1 false
  br i1 %58, label %96, label %59

59:                                               ; preds = %56, %55, %42
  %60 = phi i32 [ %37, %56 ], [ %37, %42 ], [ %53, %55 ]
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %151, label %62

62:                                               ; preds = %59
  %63 = shl nuw nsw i32 1, %14
  %64 = zext i32 %63 to i64
  br label %65

65:                                               ; preds = %90, %62
  %66 = phi i32 [ 1, %62 ], [ %92, %90 ]
  %67 = phi i32 [ %60, %62 ], [ %91, %90 ]
  %68 = zext i32 %66 to i64
  %69 = mul nsw i64 %68, -32768
  %70 = add nsw i64 %69, -1048576
  %71 = mul i64 %70, %17
  %72 = add i64 %71, %6
  %73 = tail call i64 @div64_u64(i64 noundef %72, i64 noundef %17) #10
  %74 = icmp ugt i64 %73, 32767
  br i1 %74, label %90, label %75

75:                                               ; preds = %65
  %76 = trunc i64 %73 to i32
  %77 = add nuw nsw i32 %66, 32
  %78 = zext i32 %77 to i64
  %79 = shl nuw nsw i64 %78, 20
  %80 = shl nuw nsw i32 %76, 5
  %81 = zext i32 %80 to i64
  %82 = add nuw nsw i64 %79, %81
  %83 = mul i64 %82, %64
  %84 = tail call i64 @div64_u64(i64 noundef %8, i64 noundef %83) #10
  %85 = trunc i64 %84 to i32
  %86 = sub i32 %1, %85
  %87 = tail call i32 @llvm.abs.i32(i32 %86, i1 false) #10
  %88 = icmp ult i32 %87, %67
  br i1 %88, label %89, label %90

89:                                               ; preds = %75
  store i32 %66, ptr %9, align 4
  store i32 %76, ptr %10, align 4
  store i32 %14, ptr %11, align 4
  store i32 1, ptr %12, align 4
  br label %90

90:                                               ; preds = %89, %75, %65
  %91 = phi i32 [ %67, %65 ], [ %87, %89 ], [ %67, %75 ]
  %92 = add nuw nsw i32 %66, 1
  %93 = icmp ult i32 %66, 30
  %94 = icmp ne i32 %91, 0
  %95 = select i1 %93, i1 %94, i1 false
  br i1 %95, label %65, label %96

96:                                               ; preds = %90, %56
  %97 = phi i32 [ %37, %56 ], [ %91, %90 ]
  %98 = add nuw nsw i32 %14, 1
  %99 = icmp ult i32 %14, 8
  %100 = icmp ne i32 %97, 0
  %101 = select i1 %99, i1 %100, i1 false
  br i1 %101, label %13, label %102

102:                                              ; preds = %96
  %103 = icmp eq i32 %97, -1
  %104 = xor i1 %100, true
  %105 = or i1 %103, %104
  %106 = sext i1 %103 to i32
  br i1 %105, label %151, label %107

107:                                              ; preds = %102
  %108 = load i32, ptr %10, align 4
  %109 = tail call i32 @llvm.usub.sat.i32(i32 %108, i32 2)
  %110 = icmp ult i32 %109, 32768
  br i1 %110, label %111, label %151

111:                                              ; preds = %107
  %112 = load i32, ptr %12, align 4
  %113 = load i32, ptr %11, align 4
  %114 = load i32, ptr %9, align 4
  %115 = shl nuw i32 1, %113
  %116 = icmp eq i32 %112, 1
  %117 = select i1 %116, i32 1, i32 3
  %118 = add i32 %114, 32
  %119 = zext i32 %118 to i64
  %120 = shl nuw nsw i64 %119, 20
  %121 = zext i32 %115 to i64
  %122 = zext i32 %117 to i64
  %123 = mul nuw nsw i64 %122, %121
  %124 = add i32 %108, 2
  %125 = icmp ugt i32 %109, %124
  br i1 %125, label %151, label %126

126:                                              ; preds = %111
  %127 = zext i32 %109 to i64
  br label %128

128:                                              ; preds = %145, %126
  %129 = phi i32 [ %97, %126 ], [ %143, %145 ]
  %130 = phi i64 [ %127, %126 ], [ %146, %145 ]
  %131 = trunc i64 %130 to i32
  %132 = shl nuw nsw i32 %131, 5
  %133 = zext i32 %132 to i64
  %134 = add nuw nsw i64 %120, %133
  %135 = mul i64 %123, %134
  %136 = tail call i64 @div64_u64(i64 noundef %8, i64 noundef %135) #10
  %137 = trunc i64 %136 to i32
  %138 = sub i32 %1, %137
  %139 = tail call i32 @llvm.abs.i32(i32 %138, i1 false)
  %140 = icmp ult i32 %139, %129
  br i1 %140, label %141, label %142

141:                                              ; preds = %128
  store i32 %131, ptr %10, align 4
  br label %142

142:                                              ; preds = %141, %128
  %143 = phi i32 [ %139, %141 ], [ %129, %128 ]
  %144 = icmp ult i64 %130, 32767
  br i1 %144, label %145, label %151

145:                                              ; preds = %142
  %146 = add nuw nsw i64 %130, 1
  %147 = load i32, ptr %10, align 4
  %148 = add i32 %147, 2
  %149 = zext i32 %148 to i64
  %150 = icmp ult i64 %130, %149
  br i1 %150, label %128, label %151

151:                                              ; preds = %145, %142, %111, %107, %102, %59
  %152 = phi i32 [ %106, %102 ], [ 0, %107 ], [ 0, %111 ], [ 0, %145 ], [ 0, %142 ], [ 0, %59 ]
  ret i32 %152
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_fs660c32_dig_get_rate(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr inbounds %struct.stm_fs, ptr %1, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = shl nuw i32 1, %5
  %7 = getelementptr inbounds %struct.stm_fs, ptr %1, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 1
  %10 = select i1 %9, i32 1, i32 3
  %11 = getelementptr inbounds %struct.stm_fs, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 32
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 20
  %16 = getelementptr inbounds %struct.stm_fs, ptr %1, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = shl i32 %17, 5
  %19 = zext i32 %18 to i64
  %20 = add nuw nsw i64 %15, %19
  %21 = zext i32 %6 to i64
  %22 = zext i32 %10 to i64
  %23 = mul nuw nsw i64 %22, %21
  %24 = mul i64 %23, %20
  %25 = zext i32 %0 to i64
  %26 = shl nuw nsw i64 %25, 25
  %27 = tail call i64 @div64_u64(i64 noundef %26, i64 noundef %24) #10
  %28 = trunc i64 %27 to i32
  store i32 %28, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @quadfs_pll_enable(ptr nocapture noundef readonly %0) #6 {
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = add i32 %2, 1
  %4 = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %5) #10
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ]
  %11 = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = load i8, ptr %12, align 4, !range !10
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %34, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %12, i32 0, i32 9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %17, i32 %19
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !13
  %22 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %12, i32 0, i32 9, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %12, i32 0, i32 9, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = shl i32 %23, %25
  %27 = xor i32 %26, -1
  %28 = and i32 %21, %27
  %29 = shl nuw i32 1, %25
  %30 = or i32 %28, %29
  %31 = load i32, ptr %18, align 4
  %32 = getelementptr i8, ptr %17, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #10, !srcloc !14
  %33 = load ptr, ptr %11, align 4
  br label %34

34:                                               ; preds = %15, %9
  %35 = phi ptr [ %33, %15 ], [ %12, %9 ]
  %36 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %35, i32 0, i32 1
  %37 = load i8, ptr %36, align 1, !range !10
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %56, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %0, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %35, i32 0, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr i8, ptr %41, i32 %43
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !13
  %46 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %35, i32 0, i32 8, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %35, i32 0, i32 8, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = shl i32 %47, %49
  %51 = xor i32 %50, -1
  %52 = and i32 %45, %51
  %53 = load i32, ptr %42, align 4
  %54 = getelementptr i8, ptr %41, i32 %53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #10, !srcloc !14
  %55 = load ptr, ptr %11, align 4
  br label %56

56:                                               ; preds = %39, %34
  %57 = phi ptr [ %55, %39 ], [ %35, %34 ]
  %58 = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %0, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %57, i32 0, i32 7
  %61 = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %0, i32 0, i32 4
  %62 = load i32, ptr %61, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %63 = load i32, ptr %60, align 4
  %64 = getelementptr i8, ptr %59, i32 %63
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !13
  %66 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %57, i32 0, i32 7, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %57, i32 0, i32 7, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = shl i32 %67, %69
  %71 = xor i32 %70, -1
  %72 = and i32 %65, %71
  %73 = shl i32 %62, %69
  %74 = or i32 %72, %73
  %75 = load i32, ptr %60, align 4
  %76 = getelementptr i8, ptr %59, i32 %75
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %74) #10, !srcloc !14
  %77 = load ptr, ptr %58, align 4
  %78 = load ptr, ptr %11, align 4
  %79 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %78, i32 0, i32 10
  %80 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %78, i32 0, i32 3
  %81 = load i8, ptr %80, align 1, !range !10
  %82 = xor i8 %81, 1
  %83 = zext i8 %82 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %84 = load i32, ptr %79, align 4
  %85 = getelementptr i8, ptr %77, i32 %84
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !13
  %87 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %78, i32 0, i32 10, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %78, i32 0, i32 10, i32 2
  %90 = load i32, ptr %89, align 4
  %91 = shl i32 %88, %90
  %92 = xor i32 %91, -1
  %93 = and i32 %86, %92
  %94 = shl i32 %83, %90
  %95 = or i32 %93, %94
  %96 = load i32, ptr %79, align 4
  %97 = getelementptr i8, ptr %77, i32 %96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %95) #10, !srcloc !14
  %98 = load ptr, ptr %4, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %56
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %98, i32 noundef %10) #10
  br label %101

101:                                              ; preds = %100, %56
  %102 = load ptr, ptr %11, align 4
  %103 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %102, i32 0, i32 2
  %104 = load i8, ptr %103, align 2, !range !10
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %137, label %106

106:                                              ; preds = %101
  %107 = load ptr, ptr %58, align 4
  %108 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %102, i32 0, i32 11
  %109 = load i32, ptr %108, align 4
  %110 = getelementptr i8, ptr %107, i32 %109
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !15
  %112 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %102, i32 0, i32 11, i32 2
  %113 = load i32, ptr %112, align 4
  %114 = lshr i32 %111, %113
  %115 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %102, i32 0, i32 11, i32 1
  %116 = load i32, ptr %115, align 4
  %117 = and i32 %114, %116
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %137

119:                                              ; preds = %123, %106
  %120 = load volatile i32, ptr @jiffies, align 64
  %121 = sub i32 %3, %120
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %137, label %123

123:                                              ; preds = %119
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !17
  %124 = load ptr, ptr %58, align 4
  %125 = load ptr, ptr %11, align 4
  %126 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %125, i32 0, i32 11
  %127 = load i32, ptr %126, align 4
  %128 = getelementptr i8, ptr %124, i32 %127
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %128) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !15
  %130 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %125, i32 0, i32 11, i32 2
  %131 = load i32, ptr %130, align 4
  %132 = lshr i32 %129, %131
  %133 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %125, i32 0, i32 11, i32 1
  %134 = load i32, ptr %133, align 4
  %135 = and i32 %132, %134
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %119, label %137

137:                                              ; preds = %123, %119, %106, %101
  %138 = phi i32 [ 0, %101 ], [ 0, %106 ], [ -110, %119 ], [ 0, %123 ]
  ret i32 %138
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quadfs_pll_disable(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %3) #10
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  %9 = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %12, i32 0, i32 10
  %14 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %12, i32 0, i32 3
  %15 = load i8, ptr %14, align 1, !range !10
  %16 = zext i8 %15 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %17 = load i32, ptr %13, align 4
  %18 = getelementptr i8, ptr %10, i32 %17
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !13
  %20 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %12, i32 0, i32 10, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %12, i32 0, i32 10, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = shl i32 %21, %23
  %25 = xor i32 %24, -1
  %26 = and i32 %19, %25
  %27 = shl nuw i32 %16, %23
  %28 = or i32 %26, %27
  %29 = load i32, ptr %13, align 4
  %30 = getelementptr i8, ptr %10, i32 %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #10, !srcloc !14
  %31 = load ptr, ptr %11, align 4
  %32 = load i8, ptr %31, align 4, !range !10
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %7
  %35 = load ptr, ptr %9, align 4
  %36 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %31, i32 0, i32 9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr i8, ptr %35, i32 %37
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !13
  %40 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %31, i32 0, i32 9, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %31, i32 0, i32 9, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = shl i32 %41, %43
  %45 = xor i32 %44, -1
  %46 = and i32 %39, %45
  %47 = load i32, ptr %36, align 4
  %48 = getelementptr i8, ptr %35, i32 %47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #10, !srcloc !14
  br label %49

49:                                               ; preds = %34, %7
  %50 = load ptr, ptr %2, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %50, i32 noundef %8) #10
  br label %53

53:                                               ; preds = %52, %49
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @quadfs_pll_is_enabled(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %5, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %3, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !15
  %10 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %5, i32 0, i32 10, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %9, %11
  %13 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %5, i32 0, i32 10, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %12, %14
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %16, i32 0, i32 3
  %18 = load i8, ptr %17, align 1, !range !10
  %19 = icmp eq i8 %18, 0
  %20 = icmp eq i32 %15, 0
  %21 = icmp ne i32 %15, 0
  %22 = select i1 %19, i1 %21, i1 %20
  %23 = zext i1 %22 to i32
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @quadfs_pll_fs660c32_recalc_rate(ptr nocapture noundef %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %6, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %4, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !15
  %11 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %6, i32 0, i32 7, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = lshr i32 %10, %12
  %14 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %6, i32 0, i32 7, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %13, %15
  %17 = add i32 %16, 16
  %18 = mul i32 %17, %1
  %19 = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %0, i32 0, i32 4
  store i32 %16, ptr %19, align 4
  ret i32 %18
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @quadfs_pll_fs660c32_round_rate(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #7 {
  %4 = load i32, ptr %2, align 4
  %5 = add i32 %1, -660000001
  %6 = icmp ult i32 %5, -276000001
  %7 = icmp ugt i32 %4, 40000000
  %8 = or i1 %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = udiv i32 %4, 1000
  %11 = udiv i32 %1, 1000
  %12 = udiv i32 %11, %10
  %13 = tail call i32 @llvm.umax.i32(i32 %12, i32 16) #10
  %14 = mul i32 %13, %4
  br label %15

15:                                               ; preds = %9, %3
  %16 = phi i32 [ %14, %9 ], [ %1, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @quadfs_pll_fs660c32_set_rate(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #6 {
  %4 = icmp ne i32 %1, 0
  %5 = icmp ne i32 %2, 0
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %53

7:                                                ; preds = %3
  %8 = add i32 %1, -660000001
  %9 = icmp ult i32 %8, -276000001
  %10 = icmp ugt i32 %2, 40000000
  %11 = or i1 %10, %9
  br i1 %11, label %53, label %12

12:                                               ; preds = %7
  %13 = udiv i32 %2, 1000
  %14 = udiv i32 %1, 1000
  %15 = udiv i32 %14, %13
  %16 = tail call i32 @llvm.umax.i32(i32 %15, i32 16) #10
  %17 = mul i32 %16, %2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %53, label %19

19:                                               ; preds = %12
  %20 = add nsw i32 %16, -16
  %21 = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %0, i32 0, i32 4
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %23) #10
  %27 = load i32, ptr %21, align 4
  br label %28

28:                                               ; preds = %25, %19
  %29 = phi i32 [ %27, %25 ], [ %20, %19 ]
  %30 = phi i32 [ %26, %25 ], [ 0, %19 ]
  %31 = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %0, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %0, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %34, i32 0, i32 7
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr i8, ptr %32, i32 %36
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !13
  %39 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %34, i32 0, i32 7, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %34, i32 0, i32 7, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = shl i32 %40, %42
  %44 = xor i32 %43, -1
  %45 = and i32 %38, %44
  %46 = shl i32 %29, %42
  %47 = or i32 %45, %46
  %48 = load i32, ptr %35, align 4
  %49 = getelementptr i8, ptr %32, i32 %48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #10, !srcloc !14
  %50 = load ptr, ptr %22, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %50, i32 noundef %30) #10
  br label %53

53:                                               ; preds = %52, %28, %12, %7, %3
  %54 = phi i32 [ -22, %3 ], [ -22, %12 ], [ 0, %52 ], [ 0, %28 ], [ -22, %7 ]
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { cold }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

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
!10 = !{i8 0, i8 2}
!11 = !{i64 2150625129}
!12 = !{i64 2977277}
!13 = !{i64 2150625679}
!14 = !{i64 2976859}
!15 = !{i64 2150624186}
!16 = !{i64 2150634116}
!17 = !{i64 2150633958}
