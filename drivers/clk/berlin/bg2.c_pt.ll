; ModuleID = '/llk/IR/drivers/clk/berlin/bg2.c_pt.bc'
source_filename = "../drivers/clk/berlin/bg2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.berlin2_pll_map = type { [16 x i8], i8, i8, i8, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.berlin2_div_data = type { ptr, ptr, i32, i32, %struct.berlin2_div_map, i8 }
%struct.berlin2_div_map = type { i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8 }
%struct.berlin2_gate_data = type { ptr, ptr, i8, i32 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }

@__of_table_berlin2_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,berlin2-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @berlin2_clock_setup }, section "__clk_of_table", align 4
@clk_data = internal unnamed_addr global ptr null, align 4
@gbase = internal unnamed_addr global ptr null, align 4
@clk_names = internal unnamed_addr global [29 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], align 4
@bg2_pll_map = internal constant %struct.berlin2_pll_map { [16 x i8] c"\0A\0F\14\19\1E(2<P\00\00\00\00\00\00\00", i8 10, i8 6, i8 1, i8 7 }, section ".init.rodata", align 1
@.str = private unnamed_addr constant [32 x i8] c"marvell,berlin2-global-register\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"avpll_vcoA\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"avpll_vcoB\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"syspll_byp\00", align 1
@lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"mempll_byp\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"cpupll_byp\00", align 1
@bg2_divs = internal constant [25 x %struct.berlin2_div_data] [%struct.berlin2_div_data { ptr @.str.38, ptr @.compoundliteral, i32 6, i32 8, %struct.berlin2_div_map { i16 340, i16 356, i16 340, i16 356, i16 356, i16 336, i8 0, i8 3, i8 3, i8 4, i8 5, i8 0 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.7, ptr @.compoundliteral.39, i32 5, i32 0, %struct.berlin2_div_map { i16 340, i16 356, i16 340, i16 356, i16 356, i16 0, i8 6, i8 6, i8 9, i8 7, i8 8, i8 0 }, i8 2 }, %struct.berlin2_div_data { ptr @.str.40, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 340, i16 356, i16 340, i16 356, i16 356, i16 336, i8 17, i8 12, i8 20, i8 13, i8 14, i8 16 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.41, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 340, i16 356, i16 340, i16 356, i16 356, i16 336, i8 23, i8 15, i8 26, i8 16, i8 17, i8 1 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.42, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 340, i16 356, i16 344, i16 356, i16 356, i16 336, i8 29, i8 18, i8 0, i8 19, i8 20, i8 4 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.43, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 344, i16 356, i16 344, i16 356, i16 356, i16 336, i8 3, i8 21, i8 6, i8 22, i8 23, i8 5 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.44, ptr @default_parent_ids, i32 6, i32 8, %struct.berlin2_div_map { i16 344, i16 356, i16 344, i16 356, i16 356, i16 336, i8 9, i8 24, i8 12, i8 25, i8 26, i8 6 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.45, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 344, i16 356, i16 344, i16 356, i16 356, i16 336, i8 15, i8 27, i8 18, i8 28, i8 29, i8 2 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.46, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 344, i16 356, i16 344, i16 356, i16 360, i16 336, i8 21, i8 30, i8 24, i8 31, i8 0, i8 3 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.47, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 344, i16 360, i16 348, i16 360, i16 360, i16 336, i8 27, i8 1, i8 0, i8 2, i8 3, i8 18 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.48, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 348, i16 360, i16 348, i16 360, i16 360, i16 336, i8 3, i8 4, i8 6, i8 5, i8 6, i8 21 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.49, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 348, i16 360, i16 348, i16 360, i16 360, i16 336, i8 9, i8 7, i8 12, i8 8, i8 9, i8 20 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.50, ptr @.compoundliteral.51, i32 1, i32 0, %struct.berlin2_div_map { i16 0, i16 0, i16 348, i16 360, i16 360, i16 336, i8 0, i8 0, i8 17, i8 10, i8 11, i8 22 }, i8 1 }, %struct.berlin2_div_data { ptr @.str.52, ptr @.compoundliteral.53, i32 1, i32 0, %struct.berlin2_div_map { i16 0, i16 0, i16 348, i16 360, i16 360, i16 336, i8 0, i8 0, i8 20, i8 14, i8 15, i8 24 }, i8 1 }, %struct.berlin2_div_data { ptr @.str.54, ptr @.compoundliteral.55, i32 1, i32 0, %struct.berlin2_div_map { i16 0, i16 0, i16 348, i16 360, i16 360, i16 336, i8 0, i8 0, i8 23, i8 16, i8 17, i8 25 }, i8 1 }, %struct.berlin2_div_data { ptr @.str.56, ptr @.compoundliteral.57, i32 1, i32 0, %struct.berlin2_div_map { i16 0, i16 0, i16 352, i16 360, i16 360, i16 336, i8 0, i8 0, i8 0, i8 12, i8 13, i8 23 }, i8 1 }, %struct.berlin2_div_data { ptr @.str.58, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 556, i16 556, i16 556, i16 556, i16 556, i16 556, i8 1, i8 4, i8 7, i8 5, i8 6, i8 0 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.59, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 560, i16 560, i16 560, i16 560, i16 560, i16 560, i8 1, i8 4, i8 7, i8 5, i8 6, i8 0 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.60, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 564, i16 564, i16 564, i16 564, i16 564, i16 564, i8 1, i8 4, i8 7, i8 5, i8 6, i8 0 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.61, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 568, i16 568, i16 568, i16 568, i16 568, i16 568, i8 1, i8 4, i8 7, i8 5, i8 6, i8 0 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.62, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 572, i16 572, i16 572, i16 572, i16 572, i16 572, i8 1, i8 4, i8 7, i8 5, i8 6, i8 0 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.63, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 576, i16 576, i16 576, i16 576, i16 576, i16 576, i8 1, i8 4, i8 7, i8 5, i8 6, i8 0 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.64, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 580, i16 580, i16 580, i16 580, i16 580, i16 580, i8 1, i8 4, i8 7, i8 5, i8 6, i8 0 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.65, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 588, i16 588, i16 588, i16 588, i16 588, i16 588, i8 1, i8 4, i8 7, i8 5, i8 6, i8 0 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.66, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 592, i16 592, i16 592, i16 592, i16 592, i16 592, i8 1, i8 4, i8 7, i8 5, i8 6, i8 0 }, i8 3 }], section ".init.rodata", align 4
@bg2_gates = internal unnamed_addr constant [15 x %struct.berlin2_gate_data] [%struct.berlin2_gate_data { ptr @.str.67, ptr @.str.44, i8 7, i32 0 }, %struct.berlin2_gate_data { ptr @.str.68, ptr @.str.44, i8 8, i32 0 }, %struct.berlin2_gate_data { ptr @.str.69, ptr @.str.44, i8 9, i32 0 }, %struct.berlin2_gate_data { ptr @.str.70, ptr @.str.44, i8 10, i32 8 }, %struct.berlin2_gate_data { ptr @.str.71, ptr @.str.44, i8 11, i32 0 }, %struct.berlin2_gate_data { ptr @.str.72, ptr @.str.44, i8 12, i32 0 }, %struct.berlin2_gate_data { ptr @.str.73, ptr @.str.44, i8 13, i32 8 }, %struct.berlin2_gate_data { ptr @.str.74, ptr @.str.44, i8 14, i32 0 }, %struct.berlin2_gate_data { ptr @.str.75, ptr @.str.44, i8 15, i32 0 }, %struct.berlin2_gate_data { ptr @.str.76, ptr @.str.44, i8 17, i32 0 }, %struct.berlin2_gate_data { ptr @.str.77, ptr @.str.44, i8 19, i32 0 }, %struct.berlin2_gate_data { ptr @.str.78, ptr @.str.79, i8 26, i32 0 }, %struct.berlin2_gate_data { ptr @.str.80, ptr @.str.33, i8 27, i32 0 }, %struct.berlin2_gate_data { ptr @.str.81, ptr @.str.35, i8 28, i32 0 }, %struct.berlin2_gate_data { ptr @.str.82, ptr @.str.37, i8 29, i32 0 }], section ".init.rodata", align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"twd\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"\013%pOF: Unable to register leaf clock %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"refclk\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"video_ext0\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"syspll\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"mempll\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"cpupll\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"avpll_a1\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"avpll_a2\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"avpll_a3\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"avpll_a4\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"avpll_a5\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"avpll_a6\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"avpll_a7\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"avpll_a8\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"avpll_b1\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"avpll_b2\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"avpll_b3\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"avpll_b4\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"avpll_b5\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"avpll_b6\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"avpll_b7\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"avpll_b8\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"audio1_pll\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"audio_fast_pll\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"video0_pll\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"video0_in\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"video1_pll\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"video1_in\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"video2_pll\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"video2_in\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"sys\00", align 1
@.compoundliteral = internal constant [6 x i8] c"\02\10\11\12\13\02", align 1
@.compoundliteral.39 = internal constant [5 x i8] c"\04\03\03\03\03", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"drmfigo\00", align 1
@default_parent_ids = internal constant [6 x i8] c"\02\10\09\12\13\02", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"cfg\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"gfx\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"zsp\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"perif\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"pcube\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"vscope\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"nfc_ecc\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"vpp\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"app\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"audio0\00", align 1
@.compoundliteral.51 = internal constant [1 x i8] c"\16", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"audio2\00", align 1
@.compoundliteral.53 = internal constant [1 x i8] c"\16", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"audio3\00", align 1
@.compoundliteral.55 = internal constant [1 x i8] c"\16", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"audio1\00", align 1
@.compoundliteral.57 = internal constant [1 x i8] c"\15", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"gfx3d_core\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"gfx3d_sys\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"arc\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"vip\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"sdio0xin\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"sdio1xin\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"gfx3d_extra\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"gc360\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"sdio_dllmst\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"geth0\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"geth1\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"sata\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"ahbapb\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"usb0\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"usb1\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"pbridge\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"sdio0\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"sdio1\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"nfc\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"smemc\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"audiohd\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"audiohd_pll\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"video0\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"video1\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"video2\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_berlin2_clk], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @berlin2_clock_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca [9 x ptr], align 4
  %3 = tail call ptr @of_get_parent(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i32 36, i1 false), !annotation !8
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 168) #8
  store ptr %5, ptr @clk_data, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %224, label %7

7:                                                ; preds = %1
  store i32 41, ptr %5, align 8
  %8 = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %5, i32 0, i32 1
  %9 = tail call ptr @of_iomap(ptr noundef %3, i32 noundef 0) #7
  store ptr %9, ptr @gbase, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %224, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @clk_names, align 4
  %13 = tail call ptr @of_clk_get_by_name(ptr noundef %0, ptr noundef %12) #7
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @__clk_get_name(ptr noundef %13) #7
  store ptr %16, ptr @clk_names, align 4
  tail call void @clk_put(ptr noundef %13) #7
  br label %17

17:                                               ; preds = %15, %11
  %18 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 1), align 4
  %19 = tail call ptr @of_clk_get_by_name(ptr noundef %0, ptr noundef %18) #7
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = tail call ptr @__clk_get_name(ptr noundef %19) #7
  store ptr %22, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 1), align 4
  tail call void @clk_put(ptr noundef %19) #7
  br label %23

23:                                               ; preds = %21, %17
  %24 = load ptr, ptr @gbase, align 4
  %25 = getelementptr i8, ptr %24, i32 20
  %26 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 2), align 4
  %27 = load ptr, ptr @clk_names, align 4
  %28 = tail call i32 @berlin2_pll_register(ptr noundef nonnull @bg2_pll_map, ptr noundef %25, ptr noundef %26, ptr noundef %27, i32 noundef 0) #7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %222

30:                                               ; preds = %23
  %31 = load ptr, ptr @gbase, align 4
  %32 = getelementptr i8, ptr %31, i32 40
  %33 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 3), align 4
  %34 = load ptr, ptr @clk_names, align 4
  %35 = tail call i32 @berlin2_pll_register(ptr noundef nonnull @bg2_pll_map, ptr noundef %32, ptr noundef %33, ptr noundef %34, i32 noundef 0) #7
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %222

37:                                               ; preds = %30
  %38 = load ptr, ptr @gbase, align 4
  %39 = getelementptr i8, ptr %38, i32 60
  %40 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 4), align 4
  %41 = load ptr, ptr @clk_names, align 4
  %42 = tail call i32 @berlin2_pll_register(ptr noundef nonnull @bg2_pll_map, ptr noundef %39, ptr noundef %40, ptr noundef %41, i32 noundef 0) #7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %222

44:                                               ; preds = %37
  %45 = tail call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef nonnull @.str) #7
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i8 0, i8 2
  %48 = load ptr, ptr @gbase, align 4
  %49 = getelementptr i8, ptr %48, i32 80
  %50 = load ptr, ptr @clk_names, align 4
  %51 = tail call i32 @berlin2_avpll_vco_register(ptr noundef %49, ptr noundef nonnull @.str.1, ptr noundef %50, i8 noundef zeroext %47, i32 noundef 0) #7
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %222

53:                                               ; preds = %56
  %54 = add nuw nsw i32 %57, 1
  %55 = icmp eq i32 %54, 8
  br i1 %55, label %66, label %56

56:                                               ; preds = %53, %44
  %57 = phi i32 [ %54, %53 ], [ 0, %44 ]
  %58 = load ptr, ptr @gbase, align 4
  %59 = getelementptr i8, ptr %58, i32 80
  %60 = add nuw nsw i32 %57, 5
  %61 = getelementptr [29 x ptr], ptr @clk_names, i32 0, i32 %60
  %62 = load ptr, ptr %61, align 4
  %63 = trunc i32 %57 to i8
  %64 = tail call i32 @berlin2_avpll_channel_register(ptr noundef %59, ptr noundef %62, i8 noundef zeroext %63, ptr noundef nonnull @.str.1, i8 noundef zeroext %47, i32 noundef 0) #7
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %53, label %222

66:                                               ; preds = %53
  %67 = load ptr, ptr @gbase, align 4
  %68 = getelementptr i8, ptr %67, i32 204
  %69 = load ptr, ptr @clk_names, align 4
  %70 = or i8 %47, 1
  %71 = tail call i32 @berlin2_avpll_vco_register(ptr noundef %68, ptr noundef nonnull @.str.2, ptr noundef %69, i8 noundef zeroext %70, i32 noundef 0) #7
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %76, label %222

73:                                               ; preds = %76
  %74 = add nuw nsw i32 %77, 1
  %75 = icmp eq i32 %74, 8
  br i1 %75, label %86, label %76

76:                                               ; preds = %73, %66
  %77 = phi i32 [ %74, %73 ], [ 0, %66 ]
  %78 = load ptr, ptr @gbase, align 4
  %79 = getelementptr i8, ptr %78, i32 204
  %80 = add nuw nsw i32 %77, 13
  %81 = getelementptr [29 x ptr], ptr @clk_names, i32 0, i32 %80
  %82 = load ptr, ptr %81, align 4
  %83 = trunc i32 %77 to i8
  %84 = tail call i32 @berlin2_avpll_channel_register(ptr noundef %79, ptr noundef %82, i8 noundef zeroext %83, ptr noundef nonnull @.str.2, i8 noundef zeroext %70, i32 noundef 0) #7
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %73, label %222

86:                                               ; preds = %73
  %87 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 2), align 4
  store ptr %87, ptr %2, align 4
  %88 = load ptr, ptr @clk_names, align 4
  %89 = getelementptr inbounds [9 x ptr], ptr %2, i32 0, i32 1
  store ptr %88, ptr %89, align 4
  %90 = load ptr, ptr @gbase, align 4
  %91 = getelementptr i8, ptr %90, i32 356
  %92 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.3, i8 noundef zeroext 2, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %91, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @lock) #7
  %93 = icmp ugt ptr %92, inttoptr (i32 -4096 to ptr)
  br i1 %93, label %222, label %94

94:                                               ; preds = %86
  %95 = call ptr @clk_hw_get_name(ptr noundef %92) #7
  store ptr %95, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 2), align 4
  %96 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 3), align 4
  store ptr %96, ptr %2, align 4
  %97 = load ptr, ptr @clk_names, align 4
  store ptr %97, ptr %89, align 4
  %98 = load ptr, ptr @gbase, align 4
  %99 = getelementptr i8, ptr %98, i32 356
  %100 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.4, i8 noundef zeroext 2, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %99, i8 noundef zeroext 1, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @lock) #7
  %101 = icmp ugt ptr %100, inttoptr (i32 -4096 to ptr)
  br i1 %101, label %222, label %102

102:                                              ; preds = %94
  %103 = call ptr @clk_hw_get_name(ptr noundef %100) #7
  store ptr %103, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 3), align 4
  %104 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 4), align 4
  store ptr %104, ptr %2, align 4
  %105 = load ptr, ptr @clk_names, align 4
  store ptr %105, ptr %89, align 4
  %106 = load ptr, ptr @gbase, align 4
  %107 = getelementptr i8, ptr %106, i32 356
  %108 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.5, i8 noundef zeroext 2, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %107, i8 noundef zeroext 2, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @lock) #7
  %109 = icmp ugt ptr %108, inttoptr (i32 -4096 to ptr)
  br i1 %109, label %222, label %110

110:                                              ; preds = %102
  %111 = call ptr @clk_hw_get_name(ptr noundef %108) #7
  store ptr %111, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 4), align 4
  %112 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 15), align 4
  store ptr %112, ptr %2, align 4
  %113 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 7), align 4
  store ptr %113, ptr %89, align 4
  %114 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 21), align 4
  %115 = load ptr, ptr @gbase, align 4
  %116 = getelementptr i8, ptr %115, i32 348
  %117 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef %114, i8 noundef zeroext 2, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %116, i8 noundef zeroext 29, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @lock) #7
  %118 = icmp ugt ptr %117, inttoptr (i32 -4096 to ptr)
  br i1 %118, label %222, label %119

119:                                              ; preds = %110
  %120 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 23), align 4
  store ptr %120, ptr %2, align 4
  %121 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 1), align 4
  store ptr %121, ptr %89, align 4
  %122 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 24), align 4
  %123 = load ptr, ptr @gbase, align 4
  %124 = getelementptr i8, ptr %123, i32 352
  %125 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef %122, i8 noundef zeroext 2, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %124, i8 noundef zeroext 4, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @lock) #7
  %126 = icmp ugt ptr %125, inttoptr (i32 -4096 to ptr)
  br i1 %126, label %222, label %127

127:                                              ; preds = %119
  %128 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 25), align 4
  store ptr %128, ptr %2, align 4
  %129 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 1), align 4
  store ptr %129, ptr %89, align 4
  %130 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 26), align 4
  %131 = load ptr, ptr @gbase, align 4
  %132 = getelementptr i8, ptr %131, i32 352
  %133 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef %130, i8 noundef zeroext 2, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %132, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @lock) #7
  %134 = icmp ugt ptr %133, inttoptr (i32 -4096 to ptr)
  br i1 %134, label %222, label %135

135:                                              ; preds = %127
  %136 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 6), align 4
  store ptr %136, ptr %2, align 4
  %137 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 14), align 4
  store ptr %137, ptr %89, align 4
  %138 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 25), align 4
  %139 = load ptr, ptr @gbase, align 4
  %140 = getelementptr i8, ptr %139, i32 352
  %141 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef %138, i8 noundef zeroext 2, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %140, i8 noundef zeroext 7, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @lock) #7
  %142 = icmp ugt ptr %141, inttoptr (i32 -4096 to ptr)
  br i1 %142, label %222, label %143

143:                                              ; preds = %135
  %144 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 27), align 4
  store ptr %144, ptr %2, align 4
  %145 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 1), align 4
  store ptr %145, ptr %89, align 4
  %146 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 28), align 4
  %147 = load ptr, ptr @gbase, align 4
  %148 = getelementptr i8, ptr %147, i32 352
  %149 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef %146, i8 noundef zeroext 2, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %148, i8 noundef zeroext 9, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @lock) #7
  %150 = icmp ugt ptr %149, inttoptr (i32 -4096 to ptr)
  br i1 %150, label %222, label %151

151:                                              ; preds = %143
  %152 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 13), align 4
  store ptr %152, ptr %2, align 4
  %153 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 9), align 4
  store ptr %153, ptr %89, align 4
  %154 = load ptr, ptr getelementptr inbounds ([29 x ptr], ptr @clk_names, i32 0, i32 27), align 4
  %155 = load ptr, ptr @gbase, align 4
  %156 = getelementptr i8, ptr %155, i32 352
  %157 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef %154, i8 noundef zeroext 2, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %156, i8 noundef zeroext 10, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @lock) #7
  %158 = icmp ugt ptr %157, inttoptr (i32 -4096 to ptr)
  br i1 %158, label %222, label %159

159:                                              ; preds = %177, %151
  %160 = phi i32 [ %187, %177 ], [ 0, %151 ]
  %161 = getelementptr [25 x %struct.berlin2_div_data], ptr @bg2_divs, i32 0, i32 %160
  %162 = getelementptr [25 x %struct.berlin2_div_data], ptr @bg2_divs, i32 0, i32 %160, i32 2
  %163 = load i32, ptr %162, align 4
  %164 = getelementptr [25 x %struct.berlin2_div_data], ptr @bg2_divs, i32 0, i32 %160, i32 1
  %165 = load ptr, ptr %164, align 4
  %166 = call i32 @llvm.smax.i32(i32 %163, i32 1)
  br label %167

167:                                              ; preds = %167, %159
  %168 = phi i32 [ 0, %159 ], [ %175, %167 ]
  %169 = getelementptr i8, ptr %165, i32 %168
  %170 = load i8, ptr %169, align 1
  %171 = zext i8 %170 to i32
  %172 = getelementptr [29 x ptr], ptr @clk_names, i32 0, i32 %171
  %173 = load ptr, ptr %172, align 4
  %174 = getelementptr [9 x ptr], ptr %2, i32 0, i32 %168
  store ptr %173, ptr %174, align 4
  %175 = add nuw nsw i32 %168, 1
  %176 = icmp eq i32 %175, %166
  br i1 %176, label %177, label %167

177:                                              ; preds = %167
  %178 = getelementptr [25 x %struct.berlin2_div_data], ptr @bg2_divs, i32 0, i32 %160, i32 4
  %179 = load ptr, ptr @gbase, align 4
  %180 = load ptr, ptr %161, align 4
  %181 = getelementptr [25 x %struct.berlin2_div_data], ptr @bg2_divs, i32 0, i32 %160, i32 5
  %182 = load i8, ptr %181, align 2
  %183 = getelementptr [25 x %struct.berlin2_div_data], ptr @bg2_divs, i32 0, i32 %160, i32 3
  %184 = load i32, ptr %183, align 4
  %185 = call ptr @berlin2_div_register(ptr noundef %178, ptr noundef %179, ptr noundef %180, i8 noundef zeroext %182, ptr noundef nonnull %2, i32 noundef %163, i32 noundef %184, ptr noundef nonnull @lock) #7
  %186 = getelementptr ptr, ptr %8, i32 %160
  store ptr %185, ptr %186, align 4
  %187 = add nuw nsw i32 %160, 1
  %188 = icmp eq i32 %187, 25
  br i1 %188, label %189, label %159

189:                                              ; preds = %189, %177
  %190 = phi i32 [ %204, %189 ], [ 0, %177 ]
  %191 = getelementptr [15 x %struct.berlin2_gate_data], ptr @bg2_gates, i32 0, i32 %190
  %192 = load ptr, ptr %191, align 4
  %193 = getelementptr [15 x %struct.berlin2_gate_data], ptr @bg2_gates, i32 0, i32 %190, i32 1
  %194 = load ptr, ptr %193, align 4
  %195 = getelementptr [15 x %struct.berlin2_gate_data], ptr @bg2_gates, i32 0, i32 %190, i32 3
  %196 = load i32, ptr %195, align 4
  %197 = load ptr, ptr @gbase, align 4
  %198 = getelementptr i8, ptr %197, i32 336
  %199 = getelementptr [15 x %struct.berlin2_gate_data], ptr @bg2_gates, i32 0, i32 %190, i32 2
  %200 = load i8, ptr %199, align 4
  %201 = call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef %192, ptr noundef %194, ptr noundef null, ptr noundef null, i32 noundef %196, ptr noundef %198, i8 noundef zeroext %200, i8 noundef zeroext 0, ptr noundef nonnull @lock) #7
  %202 = add nuw nsw i32 %190, 25
  %203 = getelementptr ptr, ptr %8, i32 %202
  store ptr %201, ptr %203, align 4
  %204 = add nuw nsw i32 %190, 1
  %205 = icmp eq i32 %204, 15
  br i1 %205, label %206, label %189

206:                                              ; preds = %189
  %207 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 1, i32 noundef 3) #7
  %208 = getelementptr %struct.clk_hw_onecell_data, ptr %5, i32 41
  store ptr %207, ptr %208, align 4
  br label %209

209:                                              ; preds = %216, %206
  %210 = phi i32 [ 0, %206 ], [ %217, %216 ]
  %211 = getelementptr ptr, ptr %8, i32 %210
  %212 = load ptr, ptr %211, align 4
  %213 = icmp ugt ptr %212, inttoptr (i32 -4096 to ptr)
  br i1 %213, label %214, label %216

214:                                              ; preds = %209
  %215 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %0, i32 noundef %210) #9
  br label %222

216:                                              ; preds = %209
  %217 = add nuw nsw i32 %210, 1
  %218 = icmp eq i32 %217, 41
  br i1 %218, label %219, label %209

219:                                              ; preds = %216
  %220 = load ptr, ptr @clk_data, align 4
  %221 = call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %220) #7
  br label %224

222:                                              ; preds = %214, %151, %143, %135, %127, %119, %110, %102, %94, %86, %76, %66, %56, %44, %37, %30, %23
  %223 = load ptr, ptr @gbase, align 4
  call void @iounmap(ptr noundef %223) #7
  br label %224

224:                                              ; preds = %222, %219, %7, %1
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @berlin2_pll_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @berlin2_avpll_vco_register(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @berlin2_avpll_channel_register(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @berlin2_div_register(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_gate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
