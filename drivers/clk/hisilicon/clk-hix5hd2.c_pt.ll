; ModuleID = '/llk/IR/drivers/clk/hisilicon/clk-hix5hd2.c_pt.bc'
source_filename = "../drivers/clk/hisilicon/clk-hix5hd2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.hisi_fixed_rate_clock = type { i32, ptr, ptr, i32, i32 }
%struct.hisi_mux_clock = type { i32, ptr, ptr, i8, i32, i32, i8, i8, i8, ptr, ptr }
%struct.hisi_gate_clock = type { i32, ptr, ptr, i32, i32, i8, i8, ptr }
%struct.hix5hd2_complex_clock = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.hisi_clock_data = type { %struct.clk_onecell_data, ptr }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.hix5hd2_clk_complex = type { %struct.clk_hw, i32, ptr, i32, i32, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@__of_table_hix5hd2_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hix5hd2-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hix5hd2_clk_init }, section "__clk_of_table", align 4
@hix5hd2_fixed_rate_clks = internal global [30 x %struct.hisi_fixed_rate_clock] [%struct.hisi_fixed_rate_clock { i32 1, ptr @.str, ptr null, i32 0, i32 1200000000 }, %struct.hisi_fixed_rate_clock { i32 2, ptr @.str.1, ptr null, i32 0, i32 400000000 }, %struct.hisi_fixed_rate_clock { i32 3, ptr @.str.2, ptr null, i32 0, i32 48000000 }, %struct.hisi_fixed_rate_clock { i32 4, ptr @.str.3, ptr null, i32 0, i32 24000000 }, %struct.hisi_fixed_rate_clock { i32 5, ptr @.str.4, ptr null, i32 0, i32 600000000 }, %struct.hisi_fixed_rate_clock { i32 6, ptr @.str.5, ptr null, i32 0, i32 300000000 }, %struct.hisi_fixed_rate_clock { i32 7, ptr @.str.6, ptr null, i32 0, i32 75000000 }, %struct.hisi_fixed_rate_clock { i32 8, ptr @.str.7, ptr null, i32 0, i32 200000000 }, %struct.hisi_fixed_rate_clock { i32 9, ptr @.str.8, ptr null, i32 0, i32 100000000 }, %struct.hisi_fixed_rate_clock { i32 10, ptr @.str.9, ptr null, i32 0, i32 40000000 }, %struct.hisi_fixed_rate_clock { i32 11, ptr @.str.10, ptr null, i32 0, i32 150000000 }, %struct.hisi_fixed_rate_clock { i32 12, ptr @.str.11, ptr null, i32 0, i32 1728000000 }, %struct.hisi_fixed_rate_clock { i32 13, ptr @.str.12, ptr null, i32 0, i32 28000000 }, %struct.hisi_fixed_rate_clock { i32 14, ptr @.str.13, ptr null, i32 0, i32 432000000 }, %struct.hisi_fixed_rate_clock { i32 15, ptr @.str.14, ptr null, i32 0, i32 345000000 }, %struct.hisi_fixed_rate_clock { i32 16, ptr @.str.15, ptr null, i32 0, i32 288000000 }, %struct.hisi_fixed_rate_clock { i32 17, ptr @.str.16, ptr null, i32 0, i32 60000000 }, %struct.hisi_fixed_rate_clock { i32 18, ptr @.str.17, ptr null, i32 0, i32 750000000 }, %struct.hisi_fixed_rate_clock { i32 19, ptr @.str.18, ptr null, i32 0, i32 500000000 }, %struct.hisi_fixed_rate_clock { i32 20, ptr @.str.19, ptr null, i32 0, i32 54000000 }, %struct.hisi_fixed_rate_clock { i32 21, ptr @.str.20, ptr null, i32 0, i32 27000000 }, %struct.hisi_fixed_rate_clock { i32 22, ptr @.str.21, ptr null, i32 0, i32 1500000000 }, %struct.hisi_fixed_rate_clock { i32 23, ptr @.str.22, ptr null, i32 0, i32 375000000 }, %struct.hisi_fixed_rate_clock { i32 24, ptr @.str.23, ptr null, i32 0, i32 187000000 }, %struct.hisi_fixed_rate_clock { i32 25, ptr @.str.24, ptr null, i32 0, i32 250000000 }, %struct.hisi_fixed_rate_clock { i32 26, ptr @.str.25, ptr null, i32 0, i32 125000000 }, %struct.hisi_fixed_rate_clock { i32 27, ptr @.str.26, ptr null, i32 0, i32 2000000 }, %struct.hisi_fixed_rate_clock { i32 28, ptr @.str.27, ptr null, i32 0, i32 50000000 }, %struct.hisi_fixed_rate_clock { i32 29, ptr @.str.28, ptr null, i32 0, i32 25000000 }, %struct.hisi_fixed_rate_clock { i32 30, ptr @.str.29, ptr null, i32 0, i32 83333333 }], section ".init.data", align 4
@hix5hd2_mux_clks = internal global [4 x %struct.hisi_mux_clock] [%struct.hisi_mux_clock { i32 64, ptr @.str.30, ptr @sfc_mux_p, i8 5, i32 4, i32 92, i8 8, i8 3, i8 0, ptr @sfc_mux_table, ptr null }, %struct.hisi_mux_clock { i32 65, ptr @.str.31, ptr @sdio_mux_p, i8 4, i32 4, i32 160, i8 8, i8 2, i8 0, ptr @sdio_mux_table, ptr null }, %struct.hisi_mux_clock { i32 67, ptr @.str.32, ptr @sdio_mux_p, i8 4, i32 4, i32 156, i8 8, i8 2, i8 0, ptr @sdio_mux_table, ptr null }, %struct.hisi_mux_clock { i32 66, ptr @.str.33, ptr @fephy_mux_p, i8 2, i32 4, i32 288, i8 8, i8 2, i8 0, ptr @fephy_mux_table, ptr null }], section ".init.data", align 4
@hix5hd2_gate_clks = internal global [25 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 129, ptr @.str.35, ptr @.str.30, i32 4, i32 92, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 128, ptr @.str.36, ptr @.str.35, i32 4, i32 92, i8 4, i8 1, ptr null }, %struct.hisi_gate_clock { i32 137, ptr @.str.37, ptr @.str.7, i32 4, i32 156, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 136, ptr @.str.38, ptr @.str.32, i32 4, i32 156, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 138, ptr @.str.39, ptr @.str.38, i32 4, i32 156, i8 4, i8 1, ptr null }, %struct.hisi_gate_clock { i32 131, ptr @.str.40, ptr @.str.7, i32 4, i32 160, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 130, ptr @.str.41, ptr @.str.31, i32 4, i32 160, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 132, ptr @.str.42, ptr @.str.41, i32 4, i32 160, i8 4, i8 1, ptr null }, %struct.hisi_gate_clock { i32 133, ptr @.str.43, ptr null, i32 0, i32 204, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 134, ptr @.str.44, ptr @.str.43, i32 0, i32 204, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 135, ptr @.str.45, ptr @.str.44, i32 4, i32 288, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 139, ptr @.str.46, ptr @.str.3, i32 4, i32 376, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 140, ptr @.str.47, ptr @.str.46, i32 4, i32 376, i8 4, i8 1, ptr null }, %struct.hisi_gate_clock { i32 141, ptr @.str.48, ptr @.str.8, i32 4, i32 108, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 142, ptr @.str.49, ptr @.str.48, i32 4, i32 108, i8 5, i8 1, ptr null }, %struct.hisi_gate_clock { i32 143, ptr @.str.50, ptr @.str.8, i32 4, i32 108, i8 8, i8 0, ptr null }, %struct.hisi_gate_clock { i32 144, ptr @.str.51, ptr @.str.50, i32 4, i32 108, i8 9, i8 1, ptr null }, %struct.hisi_gate_clock { i32 145, ptr @.str.52, ptr @.str.8, i32 4, i32 108, i8 12, i8 0, ptr null }, %struct.hisi_gate_clock { i32 146, ptr @.str.53, ptr @.str.52, i32 4, i32 108, i8 13, i8 1, ptr null }, %struct.hisi_gate_clock { i32 147, ptr @.str.54, ptr @.str.8, i32 4, i32 108, i8 16, i8 0, ptr null }, %struct.hisi_gate_clock { i32 148, ptr @.str.55, ptr @.str.54, i32 4, i32 108, i8 17, i8 1, ptr null }, %struct.hisi_gate_clock { i32 149, ptr @.str.56, ptr @.str.8, i32 4, i32 108, i8 20, i8 0, ptr null }, %struct.hisi_gate_clock { i32 150, ptr @.str.57, ptr @.str.56, i32 4, i32 108, i8 21, i8 1, ptr null }, %struct.hisi_gate_clock { i32 151, ptr @.str.58, ptr @.str.8, i32 4, i32 108, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 152, ptr @.str.59, ptr @.str.58, i32 4, i32 108, i8 1, i8 1, ptr null }], section ".init.data", align 4
@hix5hd2_complex_clks = internal global [4 x %struct.hix5hd2_complex_clock] [%struct.hix5hd2_complex_clock { ptr @.str.61, ptr @.str.45, i32 192, i32 204, i32 10, i32 1280, i32 288, i32 0, i32 16, i32 1 }, %struct.hix5hd2_complex_clock { ptr @.str.62, ptr @.str.44, i32 193, i32 204, i32 20, i32 2560, i32 360, i32 2, i32 0, i32 1 }, %struct.hix5hd2_complex_clock { ptr @.str.63, ptr null, i32 194, i32 168, i32 31, i32 768, i32 172, i32 1, i32 0, i32 0 }, %struct.hix5hd2_complex_clock { ptr @.str.64, ptr null, i32 195, i32 184, i32 255, i32 258048, i32 188, i32 7, i32 16128, i32 0 }], section ".init.data", align 4
@.str = private unnamed_addr constant [6 x i8] c"1200m\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"400m\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"48m\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"24m\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"600m\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"300m\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"75m\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"200m\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"100m\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"40m\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"150m\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"1728m\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"28p8m\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"432m\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"345p6m\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"288m\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"60m\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"750m\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"500m\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"54m\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"27m\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"1500m\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"375m\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"187m\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"250m\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"125m\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"2m\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"50m\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"25m\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"83m\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"sfc_mux\00", align 1
@sfc_mux_p = internal constant [5 x ptr] [ptr @.str.3, ptr @.str.10, ptr @.str.7, ptr @.str.8, ptr @.str.6], section ".init.rodata", align 4
@sfc_mux_table = internal global [5 x i32] [i32 0, i32 4, i32 5, i32 6, i32 7], align 4
@.str.31 = private unnamed_addr constant [8 x i8] c"mmc_mux\00", align 1
@sdio_mux_p = internal constant [4 x ptr] [ptr @.str.6, ptr @.str.8, ptr @.str.27, ptr @.str.34], section ".init.rodata", align 4
@sdio_mux_table = internal global [4 x i32] [i32 0, i32 1, i32 2, i32 3], align 4
@.str.32 = private unnamed_addr constant [7 x i8] c"sd_mux\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"fephy_mux\00", align 1
@fephy_mux_p = internal constant [2 x ptr] [ptr @.str.28, ptr @.str.25], section ".init.rodata", align 4
@fephy_mux_table = internal global [2 x i32] [i32 0, i32 1], align 4
@.str.34 = private unnamed_addr constant [4 x i8] c"15m\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"clk_sfc\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"rst_sfc\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"clk_sd_biu\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"clk_sd_ciu\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"rst_sd_ciu\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"clk_mmc_biu\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"clk_mmc_ciu\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"rst_mmc_ciu\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"clk_fwd_bus\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"clk_fwd_sys\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"clk_fephy\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"clk_wdg0\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"rst_wdg0\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"clk_i2c0\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"rst_i2c0\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"clk_i2c1\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"rst_i2c1\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"clk_i2c2\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"rst_i2c2\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"clk_i2c3\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"rst_i2c3\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"clk_i2c4\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"rst_i2c4\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"clk_i2c5\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"rst_i2c5\00", align 1
@clk_ether_ops = internal constant %struct.clk_ops { ptr @clk_ether_prepare, ptr @clk_ether_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@clk_complex_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_complex_enable, ptr @clk_complex_disable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.60 = private unnamed_addr constant [35 x i8] c"\013%s: failed to register clock %s\0A\00", align 1
@__func__.hix5hd2_clk_register_complex = private unnamed_addr constant [29 x i8] c"hix5hd2_clk_register_complex\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.61 = private unnamed_addr constant [9 x i8] c"clk_mac0\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"clk_mac1\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"clk_sata\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"clk_usb\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_hix5hd2_clk], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @hix5hd2_clk_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @hisi_clk_init(ptr noundef %0, i32 noundef 256) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @hisi_clk_register_fixed_rate(ptr noundef nonnull @hix5hd2_fixed_rate_clks, i32 noundef 30, ptr noundef nonnull %2) #7
  %6 = tail call i32 @hisi_clk_register_mux(ptr noundef nonnull @hix5hd2_mux_clks, i32 noundef 4, ptr noundef nonnull %2) #7
  %7 = tail call i32 @hisi_clk_register_gate(ptr noundef nonnull @hix5hd2_gate_clks, i32 noundef 25, ptr noundef nonnull %2) #7
  tail call fastcc void @hix5hd2_clk_register_complex(ptr noundef nonnull %2) #8
  br label %8

8:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hisi_clk_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_fixed_rate(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_mux(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_gate(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @hix5hd2_clk_register_complex(ptr nocapture noundef readonly %0) unnamed_addr #0 section ".init.text" {
  %2 = alloca %struct.clk_init_data, align 4
  %3 = getelementptr inbounds %struct.hisi_clock_data, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 1
  %6 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 6
  %7 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 2
  %8 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 5
  br label %9

9:                                                ; preds = %59, %1
  %10 = phi i32 [ 0, %1 ], [ %60, %59 ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, i8 0, i32 28, i1 false), !annotation !8
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %12 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 40) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %58, label %14

14:                                               ; preds = %9
  %15 = getelementptr %struct.hix5hd2_complex_clock, ptr @hix5hd2_complex_clks, i32 %10
  %16 = load ptr, ptr %15, align 4
  store ptr %16, ptr %2, align 4
  %17 = getelementptr %struct.hix5hd2_complex_clock, ptr @hix5hd2_complex_clks, i32 %10, i32 9
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 1
  %20 = select i1 %19, ptr @clk_ether_ops, ptr @clk_complex_ops
  store ptr %20, ptr %5, align 4
  store i32 0, ptr %6, align 4
  %21 = getelementptr %struct.hix5hd2_complex_clock, ptr @hix5hd2_complex_clks, i32 %10, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  %24 = select i1 %23, ptr null, ptr %21
  store ptr %24, ptr %7, align 4
  %25 = icmp ne ptr %22, null
  %26 = zext i1 %25 to i8
  store i8 %26, ptr %8, align 4
  %27 = getelementptr %struct.hix5hd2_complex_clock, ptr @hix5hd2_complex_clks, i32 %10, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr i8, ptr %4, i32 %28
  %30 = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %12, i32 0, i32 2
  store ptr %29, ptr %30, align 8
  %31 = getelementptr %struct.hix5hd2_complex_clock, ptr @hix5hd2_complex_clks, i32 %10, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %12, i32 0, i32 3
  store i32 %32, ptr %33, align 4
  %34 = getelementptr %struct.hix5hd2_complex_clock, ptr @hix5hd2_complex_clks, i32 %10, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %12, i32 0, i32 4
  store i32 %35, ptr %36, align 8
  %37 = getelementptr %struct.hix5hd2_complex_clock, ptr @hix5hd2_complex_clks, i32 %10, i32 6
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr i8, ptr %4, i32 %38
  %40 = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %12, i32 0, i32 5
  store ptr %39, ptr %40, align 4
  %41 = getelementptr %struct.hix5hd2_complex_clock, ptr @hix5hd2_complex_clks, i32 %10, i32 7
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %12, i32 0, i32 6
  store i32 %42, ptr %43, align 8
  %44 = getelementptr %struct.hix5hd2_complex_clock, ptr @hix5hd2_complex_clks, i32 %10, i32 8
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %12, i32 0, i32 7
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.clk_hw, ptr %12, i32 0, i32 2
  store ptr %2, ptr %47, align 8
  %48 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %12) #7
  %49 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %50, label %53

50:                                               ; preds = %14
  call void @kfree(ptr noundef nonnull %12) #7
  %51 = load ptr, ptr %15, align 4
  %52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.hix5hd2_clk_register_complex, ptr noundef %51) #10
  br label %59

53:                                               ; preds = %14
  %54 = load ptr, ptr %0, align 4
  %55 = getelementptr %struct.hix5hd2_complex_clock, ptr @hix5hd2_complex_clks, i32 %10, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr ptr, ptr %54, i32 %56
  store ptr %48, ptr %57, align 4
  br label %59

58:                                               ; preds = %9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #7
  br label %62

59:                                               ; preds = %53, %50
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #7
  %60 = add nuw nsw i32 %10, 1
  %61 = icmp eq i32 %60, 4
  br i1 %61, label %62, label %9

62:                                               ; preds = %59, %58
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_ether_prepare(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !9
  %5 = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = or i32 %6, %4
  %10 = or i32 %9, %8
  %11 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %10) #7, !srcloc !10
  %12 = load i32, ptr %7, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %10, %13
  %15 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %14) #7, !srcloc !10
  %16 = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %0, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #7, !srcloc !9
  %19 = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = or i32 %20, %18
  %22 = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %0, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %21, %24
  %26 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %25) #7, !srcloc !10
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #7
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #7
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #7
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #7
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #7
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #7
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #7
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #7
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #7
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #7
  %37 = load i32, ptr %19, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %25, %38
  %40 = load i32, ptr %22, align 4
  %41 = or i32 %39, %40
  %42 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %41) #7, !srcloc !10
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #7
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #7
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #7
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #7
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #7
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #7
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #7
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #7
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #7
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #7
  %53 = load i32, ptr %19, align 4
  %54 = or i32 %53, %41
  %55 = load i32, ptr %22, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  %58 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %57) #7, !srcloc !10
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #7
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748000) #7
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748000) #7
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748000) #7
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748000) #7
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 214748000) #7
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 214748000) #7
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 214748000) #7
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 214748000) #7
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 214748000) #7
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 214748000) #7
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748000) #7
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 214748000) #7
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 214748000) #7
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 214748000) #7
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 214748000) #7
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 214748000) #7
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 214748000) #7
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 214748000) #7
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 214748000) #7
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %79(i32 noundef 214748000) #7
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %80(i32 noundef 214748000) #7
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %81(i32 noundef 214748000) #7
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 214748000) #7
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %83(i32 noundef 214748000) #7
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %84(i32 noundef 214748000) #7
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %85(i32 noundef 214748000) #7
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %86(i32 noundef 214748000) #7
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %87(i32 noundef 214748000) #7
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %88(i32 noundef 214748000) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_ether_unprepare(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !9
  %5 = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = xor i32 %6, -1
  %8 = and i32 %4, %7
  %9 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %8) #7, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_complex_enable(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !9
  %5 = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, %4
  %8 = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %7, %10
  %12 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %11) #7, !srcloc !10
  %13 = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %0, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !9
  %16 = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %0, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, %15
  %19 = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %0, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %18, %21
  %23 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %22) #7, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_complex_disable(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !9
  %5 = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, %4
  %8 = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %7, %10
  %12 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %11) #7, !srcloc !10
  %13 = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %0, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !9
  %16 = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %0, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, %15
  %19 = getelementptr inbounds %struct.hix5hd2_clk_complex, ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %18, %21
  %23 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %22) #7, !srcloc !10
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { cold }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

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
!9 = !{i64 2814207}
!10 = !{i64 2813789}
