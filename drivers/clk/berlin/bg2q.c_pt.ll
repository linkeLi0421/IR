; ModuleID = '/llk/IR/drivers/clk/berlin/bg2q.c_pt.bc'
source_filename = "../drivers/clk/berlin/bg2q.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.berlin2_pll_map = type { [16 x i8], i8, i8, i8, i8 }
%struct.berlin2_div_data = type { ptr, ptr, i32, i32, %struct.berlin2_div_map, i8 }
%struct.berlin2_div_map = type { i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.berlin2_gate_data = type { ptr, ptr, i8, i32 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }

@__of_table_berlin2q_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,berlin2q-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @berlin2q_clock_setup }, section "__clk_of_table", align 4
@clk_data = internal unnamed_addr global ptr null, align 4
@gbase = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [35 x i8] c"\013%pOF: Unable to map global base\0A\00", align 1
@cpupll_base = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"\013%pOF: Unable to map cpupll base\0A\00", align 1
@clk_names = internal unnamed_addr global [11 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], align 4
@bg2q_pll_map = internal constant %struct.berlin2_pll_map { [16 x i8] c"\01\00\02\00\03\04\00\06\08\00\00\00\00\00\00\00", i8 1, i8 7, i8 2, i8 9 }, section ".init.rodata", align 1
@bg2q_divs = internal constant [13 x %struct.berlin2_div_data] [%struct.berlin2_div_data { ptr @.str.16, ptr @default_parent_ids, i32 6, i32 8, %struct.berlin2_div_map { i16 236, i16 248, i16 236, i16 248, i16 248, i16 232, i8 0, i8 3, i8 3, i8 4, i8 5, i8 0 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.17, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 236, i16 248, i16 236, i16 248, i16 248, i16 232, i8 6, i8 6, i8 9, i8 7, i8 8, i8 17 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.18, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 236, i16 248, i16 236, i16 248, i16 248, i16 232, i8 12, i8 9, i8 15, i8 10, i8 11, i8 1 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.19, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 236, i16 248, i16 236, i16 248, i16 248, i16 232, i8 18, i8 12, i8 21, i8 13, i8 14, i8 4 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.20, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 236, i16 248, i16 236, i16 248, i16 248, i16 232, i8 24, i8 15, i8 27, i8 16, i8 17, i8 6 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.21, ptr @default_parent_ids, i32 6, i32 8, %struct.berlin2_div_map { i16 240, i16 248, i16 240, i16 248, i16 248, i16 232, i8 0, i8 18, i8 3, i8 19, i8 20, i8 7 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.22, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 240, i16 248, i16 240, i16 248, i16 248, i16 232, i8 6, i8 21, i8 9, i8 22, i8 23, i8 2 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.23, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 240, i16 248, i16 240, i16 248, i16 248, i16 232, i8 12, i8 24, i8 15, i8 25, i8 26, i8 3 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.24, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 240, i16 248, i16 240, i16 248, i16 248, i16 232, i8 18, i8 27, i8 21, i8 28, i8 29, i8 19 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.25, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 240, i16 248, i16 240, i16 248, i16 252, i16 232, i8 24, i8 30, i8 27, i8 31, i8 0, i8 21 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.26, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 244, i16 252, i16 244, i16 252, i16 252, i16 232, i8 0, i8 1, i8 3, i8 2, i8 3, i8 20 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.27, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 344, i16 344, i16 344, i16 344, i16 344, i16 344, i8 1, i8 4, i8 7, i8 5, i8 6, i8 0 }, i8 3 }, %struct.berlin2_div_data { ptr @.str.28, ptr @default_parent_ids, i32 6, i32 0, %struct.berlin2_div_map { i16 348, i16 348, i16 348, i16 348, i16 348, i16 348, i8 1, i8 4, i8 7, i8 5, i8 6, i8 0 }, i8 3 }], section ".init.rodata", align 4
@lock = internal global %struct.spinlock zeroinitializer, align 4
@bg2q_gates = internal unnamed_addr constant [12 x %struct.berlin2_gate_data] [%struct.berlin2_gate_data { ptr @.str.29, ptr @.str.21, i8 5, i32 0 }, %struct.berlin2_gate_data { ptr @.str.30, ptr @.str.21, i8 8, i32 0 }, %struct.berlin2_gate_data { ptr @.str.31, ptr @.str.21, i8 9, i32 0 }, %struct.berlin2_gate_data { ptr @.str.32, ptr @.str.21, i8 10, i32 8 }, %struct.berlin2_gate_data { ptr @.str.33, ptr @.str.21, i8 11, i32 0 }, %struct.berlin2_gate_data { ptr @.str.34, ptr @.str.21, i8 12, i32 0 }, %struct.berlin2_gate_data { ptr @.str.35, ptr @.str.21, i8 13, i32 0 }, %struct.berlin2_gate_data { ptr @.str.36, ptr @.str.21, i8 14, i32 0 }, %struct.berlin2_gate_data { ptr @.str.37, ptr @.str.21, i8 15, i32 8 }, %struct.berlin2_gate_data { ptr @.str.38, ptr @.str.21, i8 16, i32 0 }, %struct.berlin2_gate_data { ptr @.str.39, ptr @.str.21, i8 18, i32 0 }, %struct.berlin2_gate_data { ptr @.str.40, ptr @.str.21, i8 22, i32 0 }], section ".init.rodata", align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"twd\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"\013%pOF: Unable to register leaf clock %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"refclk\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"syspll\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"cpupll\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"avpll_b1\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"avpll_b2\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"avpll_b3\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"avpll_b4\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"avpll_b5\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"avpll_b6\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"avpll_b7\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"avpll_b8\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"sys\00", align 1
@default_parent_ids = internal constant [6 x i8] c"\01\06\07\08\09\01", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"drmfigo\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"cfg\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"gfx2d\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"zsp\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"perif\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"pcube\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"vscope\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"nfc_ecc\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"vpp\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"app\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"sdio0xin\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"sdio1xin\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"gfx2daxi\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"geth0\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"sata\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"ahbapb\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"usb0\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"usb1\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"usb2\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"usb3\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"pbridge\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"sdio\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"nfc\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"pcie\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_berlin2q_clk], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @berlin2q_clock_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca [9 x ptr], align 4
  %3 = tail call ptr @of_get_parent(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i32 36, i1 false), !annotation !8
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 116) #8
  store ptr %5, ptr @clk_data, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %107, label %7

7:                                                ; preds = %1
  store i32 28, ptr %5, align 8
  %8 = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %5, i32 0, i32 1
  %9 = tail call ptr @of_iomap(ptr noundef %3, i32 noundef 0) #7
  store ptr %9, ptr @gbase, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %0) #9
  br label %107

13:                                               ; preds = %7
  %14 = tail call ptr @of_iomap(ptr noundef %3, i32 noundef 1) #7
  store ptr %14, ptr @cpupll_base, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %0) #9
  %18 = load ptr, ptr @gbase, align 4
  tail call void @iounmap(ptr noundef %18) #7
  br label %107

19:                                               ; preds = %13
  %20 = load ptr, ptr @clk_names, align 4
  %21 = tail call ptr @of_clk_get_by_name(ptr noundef %0, ptr noundef %20) #7
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call ptr @__clk_get_name(ptr noundef %21) #7
  store ptr %24, ptr @clk_names, align 4
  tail call void @clk_put(ptr noundef %21) #7
  br label %25

25:                                               ; preds = %23, %19
  %26 = load ptr, ptr @gbase, align 4
  %27 = getelementptr i8, ptr %26, i32 48
  %28 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @clk_names, i32 0, i32 1), align 4
  %29 = load ptr, ptr @clk_names, align 4
  %30 = tail call i32 @berlin2_pll_register(ptr noundef nonnull @bg2q_pll_map, ptr noundef %27, ptr noundef %28, ptr noundef %29, i32 noundef 0) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %104

32:                                               ; preds = %25
  %33 = load ptr, ptr @cpupll_base, align 4
  %34 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @clk_names, i32 0, i32 2), align 4
  %35 = load ptr, ptr @clk_names, align 4
  %36 = tail call i32 @berlin2_pll_register(ptr noundef nonnull @bg2q_pll_map, ptr noundef %33, ptr noundef %34, ptr noundef %35, i32 noundef 0) #7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %104

38:                                               ; preds = %56, %32
  %39 = phi i32 [ %66, %56 ], [ 0, %32 ]
  %40 = getelementptr [13 x %struct.berlin2_div_data], ptr @bg2q_divs, i32 0, i32 %39
  %41 = getelementptr [13 x %struct.berlin2_div_data], ptr @bg2q_divs, i32 0, i32 %39, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr [13 x %struct.berlin2_div_data], ptr @bg2q_divs, i32 0, i32 %39, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = call i32 @llvm.smax.i32(i32 %42, i32 1)
  br label %46

46:                                               ; preds = %46, %38
  %47 = phi i32 [ 0, %38 ], [ %54, %46 ]
  %48 = getelementptr i8, ptr %44, i32 %47
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = getelementptr [11 x ptr], ptr @clk_names, i32 0, i32 %50
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr [9 x ptr], ptr %2, i32 0, i32 %47
  store ptr %52, ptr %53, align 4
  %54 = add nuw nsw i32 %47, 1
  %55 = icmp eq i32 %54, %45
  br i1 %55, label %56, label %46

56:                                               ; preds = %46
  %57 = getelementptr [13 x %struct.berlin2_div_data], ptr @bg2q_divs, i32 0, i32 %39, i32 4
  %58 = load ptr, ptr @gbase, align 4
  %59 = load ptr, ptr %40, align 4
  %60 = getelementptr [13 x %struct.berlin2_div_data], ptr @bg2q_divs, i32 0, i32 %39, i32 5
  %61 = load i8, ptr %60, align 2
  %62 = getelementptr [13 x %struct.berlin2_div_data], ptr @bg2q_divs, i32 0, i32 %39, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = call ptr @berlin2_div_register(ptr noundef %57, ptr noundef %58, ptr noundef %59, i8 noundef zeroext %61, ptr noundef nonnull %2, i32 noundef %42, i32 noundef %63, ptr noundef nonnull @lock) #7
  %65 = getelementptr ptr, ptr %8, i32 %39
  store ptr %64, ptr %65, align 4
  %66 = add nuw nsw i32 %39, 1
  %67 = icmp eq i32 %66, 13
  br i1 %67, label %68, label %38

68:                                               ; preds = %68, %56
  %69 = phi i32 [ %83, %68 ], [ 0, %56 ]
  %70 = getelementptr [12 x %struct.berlin2_gate_data], ptr @bg2q_gates, i32 0, i32 %69
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr [12 x %struct.berlin2_gate_data], ptr @bg2q_gates, i32 0, i32 %69, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr [12 x %struct.berlin2_gate_data], ptr @bg2q_gates, i32 0, i32 %69, i32 3
  %75 = load i32, ptr %74, align 4
  %76 = load ptr, ptr @gbase, align 4
  %77 = getelementptr i8, ptr %76, i32 232
  %78 = getelementptr [12 x %struct.berlin2_gate_data], ptr @bg2q_gates, i32 0, i32 %69, i32 2
  %79 = load i8, ptr %78, align 4
  %80 = call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef %71, ptr noundef %73, ptr noundef null, ptr noundef null, i32 noundef %75, ptr noundef %77, i8 noundef zeroext %79, i8 noundef zeroext 0, ptr noundef nonnull @lock) #7
  %81 = add nuw nsw i32 %69, 13
  %82 = getelementptr ptr, ptr %8, i32 %81
  store ptr %80, ptr %82, align 4
  %83 = add nuw nsw i32 %69, 1
  %84 = icmp eq i32 %83, 12
  br i1 %84, label %85, label %68

85:                                               ; preds = %68
  %86 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @clk_names, i32 0, i32 2), align 4
  %87 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef %86, i32 noundef 0, i32 noundef 1, i32 noundef 1) #7
  %88 = getelementptr %struct.clk_hw_onecell_data, ptr %5, i32 28
  store ptr %87, ptr %88, align 8
  %89 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 1, i32 noundef 3) #7
  %90 = getelementptr %struct.clk_hw_onecell_data, ptr %5, i32 27
  store ptr %89, ptr %90, align 4
  br label %91

91:                                               ; preds = %98, %85
  %92 = phi i32 [ 0, %85 ], [ %99, %98 ]
  %93 = getelementptr ptr, ptr %8, i32 %92
  %94 = load ptr, ptr %93, align 4
  %95 = icmp ugt ptr %94, inttoptr (i32 -4096 to ptr)
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %0, i32 noundef %92) #9
  br label %104

98:                                               ; preds = %91
  %99 = add nuw nsw i32 %92, 1
  %100 = icmp eq i32 %99, 28
  br i1 %100, label %101, label %91

101:                                              ; preds = %98
  %102 = load ptr, ptr @clk_data, align 4
  %103 = call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %102) #7
  br label %107

104:                                              ; preds = %96, %32, %25
  %105 = load ptr, ptr @cpupll_base, align 4
  call void @iounmap(ptr noundef %105) #7
  %106 = load ptr, ptr @gbase, align 4
  call void @iounmap(ptr noundef %106) #7
  br label %107

107:                                              ; preds = %104, %101, %16, %11, %1
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @berlin2_pll_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @berlin2_div_register(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_gate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #2

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
