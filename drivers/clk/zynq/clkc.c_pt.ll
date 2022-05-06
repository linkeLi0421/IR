; ModuleID = '/llk/IR/drivers/clk/zynq/clkc.c_pt.bc'
source_filename = "../drivers/clk/zynq/clkc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@__of_table_zynq_clkc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,ps7-clkc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @zynq_clk_setup }, section "__clk_of_table", align 4
@.str = private unnamed_addr constant [14 x i8] c"xlnx,ps7-clkc\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"\013%s: clkc node not found\0A\00", align 1
@__func__.zynq_clock_init = private unnamed_addr constant [16 x i8] c"zynq_clock_init\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"\013%pOFn: failed to get resource\0A\00", align 1
@zynq_clkc_base = internal unnamed_addr global ptr null, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"\013%pOFn: Unable to get I/O memory\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"\016%s: clkc starts at %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"dummy_name\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"\016Zynq clock init\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"\013%s: clock output name not in DT\0A\00", align 1
@__func__.zynq_clk_setup = private unnamed_addr constant [15 x i8] c"zynq_clk_setup\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"fclk-enable\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"ps-clk-frequency\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"\014ps_clk frequency not specified, using 33 MHz.\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"ps_clk\00", align 1
@ps_clk = internal unnamed_addr global ptr null, align 4
@.str.13 = private unnamed_addr constant [11 x i8] c"armpll_int\00", align 1
@armpll_lock = internal global %struct.spinlock zeroinitializer, align 4
@armpll_parents = internal constant [2 x ptr] [ptr @.str.13, ptr @.str.12], section ".init.rodata", align 4
@clks = internal global [48 x ptr] zeroinitializer, align 4
@.str.14 = private unnamed_addr constant [11 x i8] c"ddrpll_int\00", align 1
@ddrpll_lock = internal global %struct.spinlock zeroinitializer, align 4
@ddrpll_parents = internal constant [2 x ptr] [ptr @.str.14, ptr @.str.12], section ".init.rodata", align 4
@.str.15 = private unnamed_addr constant [10 x i8] c"iopll_int\00", align 1
@iopll_lock = internal global %struct.spinlock zeroinitializer, align 4
@iopll_parents = internal constant [2 x ptr] [ptr @.str.15, ptr @.str.12], section ".init.rodata", align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"cpu_mux\00", align 1
@armclk_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.17 = private unnamed_addr constant [8 x i8] c"cpu_div\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"cpu_3or2x_div\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"cpu_2x_div\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"cpu_1x_div\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"clock-names\00", align 1
@swdtclk_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.22 = private unnamed_addr constant [10 x i8] c"ddr2x_div\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"ddrpll\00", align 1
@ddrclk_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.24 = private unnamed_addr constant [10 x i8] c"ddr3x_div\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"dci_div0\00", align 1
@dciclk_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.26 = private unnamed_addr constant [9 x i8] c"dci_div1\00", align 1
@gem0_mux_parents = internal global [2 x ptr] [ptr @.str.29, ptr @.str.5], section ".init.data", align 4
@.str.27 = private unnamed_addr constant [9 x i8] c"gem0_mux\00", align 1
@gem0clk_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.28 = private unnamed_addr constant [10 x i8] c"gem0_div0\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"gem0_div1\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"gem0_emio_mux\00", align 1
@gem1_mux_parents = internal global [2 x ptr] [ptr @.str.33, ptr @.str.5], section ".init.data", align 4
@.str.31 = private unnamed_addr constant [9 x i8] c"gem1_mux\00", align 1
@gem1clk_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.32 = private unnamed_addr constant [10 x i8] c"gem1_div0\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"gem1_div1\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"gem1_emio_mux\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"mio_clk_%2.2d\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"can_mux\00", align 1
@canclk_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.37 = private unnamed_addr constant [9 x i8] c"can_div0\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"can_div1\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"can0_gate\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"can1_gate\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"can0_mio_mux\00", align 1
@canmioclk_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.42 = private unnamed_addr constant [13 x i8] c"can1_mio_mux\00", align 1
@can0_mio_mux2_parents = internal constant [2 x ptr] [ptr @.str.39, ptr @.str.41], section ".init.rodata", align 4
@can1_mio_mux2_parents = internal constant [2 x ptr] [ptr @.str.40, ptr @.str.42], section ".init.rodata", align 4
@dbg_emio_mux_parents = internal global [2 x ptr] [ptr @.str.44, ptr @.str.5], section ".init.data", align 4
@.str.43 = private unnamed_addr constant [8 x i8] c"dbg_mux\00", align 1
@dbgclk_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.44 = private unnamed_addr constant [8 x i8] c"dbg_div\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"dbg_emio_mux\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"\014%s: trace clk enable failed\0A\00", align 1
@.str.47 = private unnamed_addr constant [35 x i8] c"\014%s: debug APB clk enable failed\0A\00", align 1
@aperclk_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.48 = private unnamed_addr constant [41 x i8] c"\013Zynq clk %d: register failed with %ld\0A\00", align 1
@clk_data = internal global %struct.clk_onecell_data zeroinitializer, align 4
@.str.49 = private unnamed_addr constant [13 x i8] c"swdt_ext_clk\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"%s_mux\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"%s_div0\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"%s_div1\00", align 1
@.str.53 = private unnamed_addr constant [28 x i8] c"\014%s: FCLK%u enable failed\0A\00", align 1
@__func__.zynq_clk_register_fclk = private unnamed_addr constant [23 x i8] c"zynq_clk_register_fclk\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"%s_div\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"gem0_emio_clk\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"gem1_emio_clk\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.57 = private unnamed_addr constant [15 x i8] c"trace_emio_clk\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_zynq_clkc], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @zynq_clk_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [48 x ptr], align 4
  %5 = alloca [4 x ptr], align 4
  %6 = alloca [4 x ptr], align 4
  %7 = alloca [2 x ptr], align 8
  %8 = alloca [54 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(192) %4, i8 0, i32 192, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  store i64 0, ptr %7, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %8) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(216) %8, i8 0, i32 216, i1 false), !annotation !8
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #8
  br label %13

10:                                               ; preds = %13
  %11 = add nuw nsw i32 %14, 1
  %12 = icmp eq i32 %11, 48
  br i1 %12, label %20, label %13

13:                                               ; preds = %10, %1
  %14 = phi i32 [ 0, %1 ], [ %11, %10 ]
  %15 = getelementptr [48 x ptr], ptr %4, i32 0, i32 %14
  %16 = call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef %15, i32 noundef 1, i32 noundef %14) #7
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %10, label %18

18:                                               ; preds = %13
  %19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.zynq_clk_setup) #8
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/zynq/clkc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 234, 0\0A.popsection", ""() #7, !srcloc !9
  unreachable

20:                                               ; preds = %10
  %21 = load ptr, ptr %4, align 4
  store ptr %21, ptr %5, align 4
  %22 = getelementptr inbounds [4 x ptr], ptr %5, i32 0, i32 1
  store ptr %21, ptr %22, align 4
  %23 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds [4 x ptr], ptr %5, i32 0, i32 2
  store ptr %24, ptr %25, align 4
  %26 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds [4 x ptr], ptr %5, i32 0, i32 3
  store ptr %27, ptr %28, align 4
  store ptr %27, ptr %6, align 4
  %29 = getelementptr inbounds [4 x ptr], ptr %6, i32 0, i32 1
  store ptr %27, ptr %29, align 4
  %30 = getelementptr inbounds [4 x ptr], ptr %6, i32 0, i32 2
  store ptr %21, ptr %30, align 4
  %31 = getelementptr inbounds [4 x ptr], ptr %6, i32 0, i32 3
  store ptr %24, ptr %31, align 4
  %32 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #7
  %33 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #7
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %20
  %36 = load i32, ptr %2, align 4
  br label %39

37:                                               ; preds = %20
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #8
  store i32 33333333, ptr %2, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ 33333333, %37 ]
  %41 = call ptr @clk_register_fixed_rate(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef null, i32 noundef 0, i32 noundef %40) #7
  store ptr %41, ptr @ps_clk, align 4
  %42 = load ptr, ptr @zynq_clkc_base, align 4
  %43 = getelementptr i8, ptr %42, i32 12
  %44 = call ptr @clk_register_zynq_pll(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, ptr noundef %42, ptr noundef %43, i8 noundef zeroext 0, ptr noundef nonnull @armpll_lock) #7
  %45 = load ptr, ptr %4, align 4
  %46 = load ptr, ptr @zynq_clkc_base, align 4
  %47 = call ptr @clk_register_mux_table(ptr noundef null, ptr noundef %45, ptr noundef nonnull @armpll_parents, i8 noundef zeroext 2, i32 noundef 128, ptr noundef %46, i8 noundef zeroext 4, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @armpll_lock) #7
  store ptr %47, ptr @clks, align 4
  %48 = load ptr, ptr @zynq_clkc_base, align 4
  %49 = getelementptr i8, ptr %48, i32 4
  %50 = getelementptr i8, ptr %48, i32 12
  %51 = call ptr @clk_register_zynq_pll(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, ptr noundef %49, ptr noundef %50, i8 noundef zeroext 1, ptr noundef nonnull @ddrpll_lock) #7
  %52 = load ptr, ptr %23, align 4
  %53 = load ptr, ptr @zynq_clkc_base, align 4
  %54 = getelementptr i8, ptr %53, i32 4
  %55 = call ptr @clk_register_mux_table(ptr noundef null, ptr noundef %52, ptr noundef nonnull @ddrpll_parents, i8 noundef zeroext 2, i32 noundef 128, ptr noundef %54, i8 noundef zeroext 4, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @ddrpll_lock) #7
  store ptr %55, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 1), align 4
  %56 = load ptr, ptr @zynq_clkc_base, align 4
  %57 = getelementptr i8, ptr %56, i32 8
  %58 = getelementptr i8, ptr %56, i32 12
  %59 = call ptr @clk_register_zynq_pll(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12, ptr noundef %57, ptr noundef %58, i8 noundef zeroext 2, ptr noundef nonnull @iopll_lock) #7
  %60 = load ptr, ptr %26, align 4
  %61 = load ptr, ptr @zynq_clkc_base, align 4
  %62 = getelementptr i8, ptr %61, i32 8
  %63 = call ptr @clk_register_mux_table(ptr noundef null, ptr noundef %60, ptr noundef nonnull @iopll_parents, i8 noundef zeroext 2, i32 noundef 128, ptr noundef %62, i8 noundef zeroext 4, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @iopll_lock) #7
  store ptr %63, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 2), align 4
  %64 = load ptr, ptr @zynq_clkc_base, align 4
  %65 = getelementptr i8, ptr %64, i32 196
  %66 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #7, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %67 = and i32 %66, 1
  store i32 %67, ptr %2, align 4
  %68 = load ptr, ptr @zynq_clkc_base, align 4
  %69 = getelementptr i8, ptr %68, i32 32
  %70 = call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull %5, i8 noundef zeroext 4, i32 noundef 128, ptr noundef %69, i8 noundef zeroext 4, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @armclk_lock) #7
  %71 = load ptr, ptr @zynq_clkc_base, align 4
  %72 = getelementptr i8, ptr %71, i32 32
  %73 = call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef 0, ptr noundef %72, i8 noundef zeroext 8, i8 noundef zeroext 6, i8 noundef zeroext 5, ptr noundef null, ptr noundef nonnull @armclk_lock) #7
  %74 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = load ptr, ptr @zynq_clkc_base, align 4
  %77 = getelementptr i8, ptr %76, i32 32
  %78 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %75, ptr noundef nonnull @.str.17, i32 noundef 12, ptr noundef %77, i8 noundef zeroext 24, i8 noundef zeroext 0, ptr noundef nonnull @armclk_lock) #7
  store ptr %78, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 3), align 4
  %79 = call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef 1, i32 noundef 2) #7
  %80 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 4
  %81 = load ptr, ptr %80, align 4
  %82 = load ptr, ptr @zynq_clkc_base, align 4
  %83 = getelementptr i8, ptr %82, i32 32
  %84 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %81, ptr noundef nonnull @.str.18, i32 noundef 8, ptr noundef %83, i8 noundef zeroext 25, i8 noundef zeroext 0, ptr noundef nonnull @armclk_lock) #7
  store ptr %84, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 4), align 4
  %85 = load i32, ptr %2, align 4
  %86 = add i32 %85, 2
  %87 = call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef 1, i32 noundef %86) #7
  %88 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 5
  %89 = load ptr, ptr %88, align 4
  %90 = load ptr, ptr @zynq_clkc_base, align 4
  %91 = getelementptr i8, ptr %90, i32 32
  %92 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %89, ptr noundef nonnull @.str.19, i32 noundef 8, ptr noundef %91, i8 noundef zeroext 26, i8 noundef zeroext 0, ptr noundef nonnull @armclk_lock) #7
  store ptr %92, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 5), align 4
  %93 = call i32 @clk_prepare(ptr noundef %92) #7
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %39
  %96 = call i32 @clk_enable(ptr noundef %92) #7
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %95
  call void @clk_unprepare(ptr noundef %92) #7
  br label %99

99:                                               ; preds = %98, %95, %39
  %100 = load i32, ptr %2, align 4
  %101 = shl i32 %100, 1
  %102 = add i32 %101, 4
  %103 = call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef 1, i32 noundef %102) #7
  %104 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 6
  %105 = load ptr, ptr %104, align 4
  %106 = load ptr, ptr @zynq_clkc_base, align 4
  %107 = getelementptr i8, ptr %106, i32 32
  %108 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %105, ptr noundef nonnull @.str.20, i32 noundef 8, ptr noundef %107, i8 noundef zeroext 27, i8 noundef zeroext 0, ptr noundef nonnull @armclk_lock) #7
  store ptr %108, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 6), align 4
  %109 = load ptr, ptr %104, align 4
  store ptr %109, ptr %7, align 8
  %110 = call i32 @of_property_match_string(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.49) #7
  %111 = icmp sgt i32 %110, -1
  br i1 %111, label %112, label %114

112:                                              ; preds = %99
  %113 = call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef %110) #7
  br label %114

114:                                              ; preds = %112, %99
  %115 = phi ptr [ %113, %112 ], [ @.str.5, %99 ]
  %116 = getelementptr inbounds [2 x ptr], ptr %7, i32 0, i32 1
  store ptr %115, ptr %116, align 4
  %117 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 45
  %118 = load ptr, ptr %117, align 4
  %119 = load ptr, ptr @zynq_clkc_base, align 4
  %120 = getelementptr i8, ptr %119, i32 516
  %121 = call ptr @clk_register_mux_table(ptr noundef null, ptr noundef %118, ptr noundef nonnull %7, i8 noundef zeroext 2, i32 noundef 132, ptr noundef %120, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @swdtclk_lock) #7
  store ptr %121, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 45), align 4
  %122 = load ptr, ptr @zynq_clkc_base, align 4
  %123 = getelementptr i8, ptr %122, i32 36
  %124 = call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef %123, i8 noundef zeroext 26, i8 noundef zeroext 6, i8 noundef zeroext 5, ptr noundef null, ptr noundef nonnull @ddrclk_lock) #7
  %125 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 7
  %126 = load ptr, ptr %125, align 4
  %127 = load ptr, ptr @zynq_clkc_base, align 4
  %128 = getelementptr i8, ptr %127, i32 36
  %129 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %126, ptr noundef nonnull @.str.22, i32 noundef 0, ptr noundef %128, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull @ddrclk_lock) #7
  store ptr %129, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 7), align 4
  %130 = call i32 @clk_prepare(ptr noundef %129) #7
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %114
  %133 = call i32 @clk_enable(ptr noundef %129) #7
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %132
  call void @clk_unprepare(ptr noundef %129) #7
  br label %136

136:                                              ; preds = %135, %132, %114
  %137 = load ptr, ptr @zynq_clkc_base, align 4
  %138 = getelementptr i8, ptr %137, i32 36
  %139 = call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef %138, i8 noundef zeroext 20, i8 noundef zeroext 6, i8 noundef zeroext 5, ptr noundef null, ptr noundef nonnull @ddrclk_lock) #7
  %140 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 8
  %141 = load ptr, ptr %140, align 4
  %142 = load ptr, ptr @zynq_clkc_base, align 4
  %143 = getelementptr i8, ptr %142, i32 36
  %144 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %141, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef %143, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull @ddrclk_lock) #7
  store ptr %144, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 8), align 4
  %145 = call i32 @clk_prepare(ptr noundef %144) #7
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %136
  %148 = call i32 @clk_enable(ptr noundef %144) #7
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %147
  call void @clk_unprepare(ptr noundef %144) #7
  br label %151

151:                                              ; preds = %150, %147, %136
  %152 = load ptr, ptr @zynq_clkc_base, align 4
  %153 = getelementptr i8, ptr %152, i32 40
  %154 = call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef %153, i8 noundef zeroext 8, i8 noundef zeroext 6, i8 noundef zeroext 5, ptr noundef null, ptr noundef nonnull @dciclk_lock) #7
  %155 = load ptr, ptr @zynq_clkc_base, align 4
  %156 = getelementptr i8, ptr %155, i32 40
  %157 = call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25, i32 noundef 4, ptr noundef %156, i8 noundef zeroext 20, i8 noundef zeroext 6, i8 noundef zeroext 5, ptr noundef null, ptr noundef nonnull @dciclk_lock) #7
  %158 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 9
  %159 = load ptr, ptr %158, align 4
  %160 = load ptr, ptr @zynq_clkc_base, align 4
  %161 = getelementptr i8, ptr %160, i32 40
  %162 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %159, ptr noundef nonnull @.str.26, i32 noundef 4, ptr noundef %161, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull @dciclk_lock) #7
  store ptr %162, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 9), align 4
  %163 = call i32 @clk_prepare(ptr noundef %162) #7
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %151
  %166 = call i32 @clk_enable(ptr noundef %162) #7
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %165
  call void @clk_unprepare(ptr noundef %162) #7
  br label %169

169:                                              ; preds = %168, %165, %151
  br label %170

170:                                              ; preds = %170, %169
  %171 = phi i32 [ %182, %170 ], [ 15, %169 ]
  %172 = load i32, ptr %3, align 4
  %173 = add nsw i32 %171, -15
  %174 = lshr i32 %172, %173
  %175 = and i32 %174, 1
  %176 = getelementptr [48 x ptr], ptr %4, i32 0, i32 %171
  %177 = load ptr, ptr %176, align 4
  %178 = load ptr, ptr @zynq_clkc_base, align 4
  %179 = getelementptr i8, ptr %178, i32 112
  %180 = shl i32 %173, 4
  %181 = getelementptr i8, ptr %179, i32 %180
  call fastcc void @zynq_clk_register_fclk(i32 noundef %171, ptr noundef %177, ptr noundef %181, ptr noundef nonnull %6, i32 noundef %175) #9
  %182 = add nuw nsw i32 %171, 1
  %183 = icmp eq i32 %182, 19
  br i1 %183, label %184, label %170

184:                                              ; preds = %170
  %185 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 10
  %186 = load ptr, ptr %185, align 4
  %187 = load ptr, ptr @zynq_clkc_base, align 4
  %188 = getelementptr i8, ptr %187, i32 76
  call fastcc void @zynq_clk_register_periph_clk(i32 noundef 10, i32 noundef 0, ptr noundef %186, ptr noundef null, ptr noundef %188, ptr noundef nonnull %6, i32 noundef 0) #9
  %189 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 11
  %190 = load ptr, ptr %189, align 4
  %191 = load ptr, ptr @zynq_clkc_base, align 4
  %192 = getelementptr i8, ptr %191, i32 72
  call fastcc void @zynq_clk_register_periph_clk(i32 noundef 11, i32 noundef 0, ptr noundef %190, ptr noundef null, ptr noundef %192, ptr noundef nonnull %6, i32 noundef 0) #9
  %193 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 12
  %194 = load ptr, ptr %193, align 4
  %195 = load ptr, ptr @zynq_clkc_base, align 4
  %196 = getelementptr i8, ptr %195, i32 104
  call fastcc void @zynq_clk_register_periph_clk(i32 noundef 12, i32 noundef 0, ptr noundef %194, ptr noundef null, ptr noundef %196, ptr noundef nonnull %6, i32 noundef 0) #9
  %197 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 21
  %198 = load ptr, ptr %197, align 4
  %199 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 22
  %200 = load ptr, ptr %199, align 4
  %201 = load ptr, ptr @zynq_clkc_base, align 4
  %202 = getelementptr i8, ptr %201, i32 80
  call fastcc void @zynq_clk_register_periph_clk(i32 noundef 21, i32 noundef 22, ptr noundef %198, ptr noundef %200, ptr noundef %202, ptr noundef nonnull %6, i32 noundef 1) #9
  %203 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 23
  %204 = load ptr, ptr %203, align 4
  %205 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 24
  %206 = load ptr, ptr %205, align 4
  %207 = load ptr, ptr @zynq_clkc_base, align 4
  %208 = getelementptr i8, ptr %207, i32 84
  call fastcc void @zynq_clk_register_periph_clk(i32 noundef 23, i32 noundef 24, ptr noundef %204, ptr noundef %206, ptr noundef %208, ptr noundef nonnull %6, i32 noundef 1) #9
  %209 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 25
  %210 = load ptr, ptr %209, align 4
  %211 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 26
  %212 = load ptr, ptr %211, align 4
  %213 = load ptr, ptr @zynq_clkc_base, align 4
  %214 = getelementptr i8, ptr %213, i32 88
  call fastcc void @zynq_clk_register_periph_clk(i32 noundef 25, i32 noundef 26, ptr noundef %210, ptr noundef %212, ptr noundef %214, ptr noundef nonnull %6, i32 noundef 1) #9
  %215 = call i32 @of_property_match_string(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.55) #7
  %216 = icmp sgt i32 %215, -1
  br i1 %216, label %217, label %219

217:                                              ; preds = %184
  %218 = call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef %215) #7
  store ptr %218, ptr getelementptr inbounds ([2 x ptr], ptr @gem0_mux_parents, i32 0, i32 1), align 4
  br label %219

219:                                              ; preds = %217, %184
  %220 = load ptr, ptr @zynq_clkc_base, align 4
  %221 = getelementptr i8, ptr %220, i32 64
  %222 = call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull %6, i8 noundef zeroext 4, i32 noundef 128, ptr noundef %221, i8 noundef zeroext 4, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @gem0clk_lock) #7
  %223 = load ptr, ptr @zynq_clkc_base, align 4
  %224 = getelementptr i8, ptr %223, i32 64
  %225 = call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, i32 noundef 0, ptr noundef %224, i8 noundef zeroext 8, i8 noundef zeroext 6, i8 noundef zeroext 5, ptr noundef null, ptr noundef nonnull @gem0clk_lock) #7
  %226 = load ptr, ptr @zynq_clkc_base, align 4
  %227 = getelementptr i8, ptr %226, i32 64
  %228 = call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef 4, ptr noundef %227, i8 noundef zeroext 20, i8 noundef zeroext 6, i8 noundef zeroext 5, ptr noundef null, ptr noundef nonnull @gem0clk_lock) #7
  %229 = load ptr, ptr @zynq_clkc_base, align 4
  %230 = getelementptr i8, ptr %229, i32 64
  %231 = call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @gem0_mux_parents, i8 noundef zeroext 2, i32 noundef 132, ptr noundef %230, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @gem0clk_lock) #7
  %232 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 13
  %233 = load ptr, ptr %232, align 4
  %234 = load ptr, ptr @zynq_clkc_base, align 4
  %235 = getelementptr i8, ptr %234, i32 64
  %236 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %233, ptr noundef nonnull @.str.30, i32 noundef 4, ptr noundef %235, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull @gem0clk_lock) #7
  store ptr %236, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 13), align 4
  %237 = call i32 @of_property_match_string(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.56) #7
  %238 = icmp sgt i32 %237, -1
  br i1 %238, label %239, label %241

239:                                              ; preds = %219
  %240 = call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef %237) #7
  store ptr %240, ptr getelementptr inbounds ([2 x ptr], ptr @gem1_mux_parents, i32 0, i32 1), align 4
  br label %241

241:                                              ; preds = %239, %219
  %242 = load ptr, ptr @zynq_clkc_base, align 4
  %243 = getelementptr i8, ptr %242, i32 68
  %244 = call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull %6, i8 noundef zeroext 4, i32 noundef 128, ptr noundef %243, i8 noundef zeroext 4, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @gem1clk_lock) #7
  %245 = load ptr, ptr @zynq_clkc_base, align 4
  %246 = getelementptr i8, ptr %245, i32 68
  %247 = call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef 0, ptr noundef %246, i8 noundef zeroext 8, i8 noundef zeroext 6, i8 noundef zeroext 5, ptr noundef null, ptr noundef nonnull @gem1clk_lock) #7
  %248 = load ptr, ptr @zynq_clkc_base, align 4
  %249 = getelementptr i8, ptr %248, i32 68
  %250 = call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, i32 noundef 4, ptr noundef %249, i8 noundef zeroext 20, i8 noundef zeroext 6, i8 noundef zeroext 5, ptr noundef null, ptr noundef nonnull @gem1clk_lock) #7
  %251 = load ptr, ptr @zynq_clkc_base, align 4
  %252 = getelementptr i8, ptr %251, i32 68
  %253 = call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.34, ptr noundef nonnull @gem1_mux_parents, i8 noundef zeroext 2, i32 noundef 132, ptr noundef %252, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @gem1clk_lock) #7
  %254 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 14
  %255 = load ptr, ptr %254, align 4
  %256 = load ptr, ptr @zynq_clkc_base, align 4
  %257 = getelementptr i8, ptr %256, i32 68
  %258 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %255, ptr noundef nonnull @.str.34, i32 noundef 4, ptr noundef %257, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull @gem1clk_lock) #7
  store ptr %258, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 14), align 4
  store i32 11, ptr %2, align 4
  %259 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %260 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %259, i32 noundef 3264, i32 noundef 11) #10
  br label %261

261:                                              ; preds = %269, %241
  %262 = phi i32 [ 0, %241 ], [ %272, %269 ]
  %263 = load i32, ptr %2, align 4
  %264 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %260, i32 noundef %263, ptr noundef nonnull @.str.35, i32 noundef %262)
  %265 = call i32 @of_property_match_string(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %260) #7
  %266 = icmp sgt i32 %265, -1
  br i1 %266, label %267, label %269

267:                                              ; preds = %261
  %268 = call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef %265) #7
  br label %269

269:                                              ; preds = %267, %261
  %270 = phi ptr [ %268, %267 ], [ @.str.5, %261 ]
  %271 = getelementptr [54 x ptr], ptr %8, i32 0, i32 %262
  store ptr %270, ptr %271, align 4
  %272 = add nuw nsw i32 %262, 1
  %273 = icmp eq i32 %272, 54
  br i1 %273, label %274, label %261

274:                                              ; preds = %269
  call void @kfree(ptr noundef %260) #7
  %275 = load ptr, ptr @zynq_clkc_base, align 4
  %276 = getelementptr i8, ptr %275, i32 92
  %277 = call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.36, ptr noundef nonnull %6, i8 noundef zeroext 4, i32 noundef 128, ptr noundef %276, i8 noundef zeroext 4, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @canclk_lock) #7
  %278 = load ptr, ptr @zynq_clkc_base, align 4
  %279 = getelementptr i8, ptr %278, i32 92
  %280 = call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.36, i32 noundef 0, ptr noundef %279, i8 noundef zeroext 8, i8 noundef zeroext 6, i8 noundef zeroext 5, ptr noundef null, ptr noundef nonnull @canclk_lock) #7
  %281 = load ptr, ptr @zynq_clkc_base, align 4
  %282 = getelementptr i8, ptr %281, i32 92
  %283 = call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, i32 noundef 4, ptr noundef %282, i8 noundef zeroext 20, i8 noundef zeroext 6, i8 noundef zeroext 5, ptr noundef null, ptr noundef nonnull @canclk_lock) #7
  %284 = load ptr, ptr @zynq_clkc_base, align 4
  %285 = getelementptr i8, ptr %284, i32 92
  %286 = call ptr @clk_register_gate(ptr noundef null, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, i32 noundef 4, ptr noundef %285, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull @canclk_lock) #7
  %287 = load ptr, ptr @zynq_clkc_base, align 4
  %288 = getelementptr i8, ptr %287, i32 92
  %289 = call ptr @clk_register_gate(ptr noundef null, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.38, i32 noundef 4, ptr noundef %288, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull @canclk_lock) #7
  %290 = load ptr, ptr @zynq_clkc_base, align 4
  %291 = getelementptr i8, ptr %290, i32 96
  %292 = call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.41, ptr noundef nonnull %8, i8 noundef zeroext 54, i32 noundef 132, ptr noundef %291, i8 noundef zeroext 0, i32 noundef 63, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @canmioclk_lock) #7
  %293 = load ptr, ptr @zynq_clkc_base, align 4
  %294 = getelementptr i8, ptr %293, i32 96
  %295 = call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.42, ptr noundef nonnull %8, i8 noundef zeroext 54, i32 noundef 132, ptr noundef %294, i8 noundef zeroext 16, i32 noundef 63, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @canmioclk_lock) #7
  %296 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 19
  %297 = load ptr, ptr %296, align 4
  %298 = load ptr, ptr @zynq_clkc_base, align 4
  %299 = getelementptr i8, ptr %298, i32 96
  %300 = call ptr @clk_register_mux_table(ptr noundef null, ptr noundef %297, ptr noundef nonnull @can0_mio_mux2_parents, i8 noundef zeroext 2, i32 noundef 132, ptr noundef %299, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @canmioclk_lock) #7
  store ptr %300, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 19), align 4
  %301 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 20
  %302 = load ptr, ptr %301, align 4
  %303 = load ptr, ptr @zynq_clkc_base, align 4
  %304 = getelementptr i8, ptr %303, i32 96
  %305 = call ptr @clk_register_mux_table(ptr noundef null, ptr noundef %302, ptr noundef nonnull @can1_mio_mux2_parents, i8 noundef zeroext 2, i32 noundef 132, ptr noundef %304, i8 noundef zeroext 22, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @canmioclk_lock) #7
  store ptr %305, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 20), align 4
  %306 = call i32 @of_property_match_string(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.57) #7
  %307 = icmp sgt i32 %306, -1
  br i1 %307, label %308, label %310

308:                                              ; preds = %274
  %309 = call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef %306) #7
  store ptr %309, ptr getelementptr inbounds ([2 x ptr], ptr @dbg_emio_mux_parents, i32 0, i32 1), align 4
  br label %310

310:                                              ; preds = %308, %274
  %311 = load ptr, ptr @zynq_clkc_base, align 4
  %312 = getelementptr i8, ptr %311, i32 100
  %313 = call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.43, ptr noundef nonnull %6, i8 noundef zeroext 4, i32 noundef 128, ptr noundef %312, i8 noundef zeroext 4, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @dbgclk_lock) #7
  %314 = load ptr, ptr @zynq_clkc_base, align 4
  %315 = getelementptr i8, ptr %314, i32 100
  %316 = call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.43, i32 noundef 0, ptr noundef %315, i8 noundef zeroext 8, i8 noundef zeroext 6, i8 noundef zeroext 5, ptr noundef null, ptr noundef nonnull @dbgclk_lock) #7
  %317 = load ptr, ptr @zynq_clkc_base, align 4
  %318 = getelementptr i8, ptr %317, i32 100
  %319 = call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.45, ptr noundef nonnull @dbg_emio_mux_parents, i8 noundef zeroext 2, i32 noundef 128, ptr noundef %318, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @dbgclk_lock) #7
  %320 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 46
  %321 = load ptr, ptr %320, align 4
  %322 = load ptr, ptr @zynq_clkc_base, align 4
  %323 = getelementptr i8, ptr %322, i32 100
  %324 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %321, ptr noundef nonnull @.str.45, i32 noundef 4, ptr noundef %323, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull @dbgclk_lock) #7
  store ptr %324, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 46), align 4
  %325 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 47
  %326 = load ptr, ptr %325, align 4
  %327 = load ptr, ptr %104, align 4
  %328 = load ptr, ptr @zynq_clkc_base, align 4
  %329 = getelementptr i8, ptr %328, i32 100
  %330 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %326, ptr noundef %327, i32 noundef 0, ptr noundef %329, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull @dbgclk_lock) #7
  store ptr %330, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 47), align 4
  %331 = load ptr, ptr @zynq_clkc_base, align 4
  %332 = getelementptr i8, ptr %331, i32 100
  %333 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %332) #7, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  store i32 %333, ptr %2, align 4
  %334 = and i32 %333, 1
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %346, label %336

336:                                              ; preds = %310
  %337 = load ptr, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 46), align 4
  %338 = call i32 @clk_prepare(ptr noundef %337) #7
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %344

340:                                              ; preds = %336
  %341 = call i32 @clk_enable(ptr noundef %337) #7
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %346, label %343

343:                                              ; preds = %340
  call void @clk_unprepare(ptr noundef %337) #7
  br label %344

344:                                              ; preds = %343, %336
  %345 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.zynq_clk_setup) #8
  br label %346

346:                                              ; preds = %344, %340, %310
  %347 = load i32, ptr %2, align 4
  %348 = and i32 %347, 2
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %360, label %350

350:                                              ; preds = %346
  %351 = load ptr, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 47), align 4
  %352 = call i32 @clk_prepare(ptr noundef %351) #7
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %358

354:                                              ; preds = %350
  %355 = call i32 @clk_enable(ptr noundef %351) #7
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %360, label %357

357:                                              ; preds = %354
  call void @clk_unprepare(ptr noundef %351) #7
  br label %358

358:                                              ; preds = %357, %350
  %359 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.zynq_clk_setup) #8
  br label %360

360:                                              ; preds = %358, %354, %346
  %361 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 27
  %362 = load ptr, ptr %361, align 4
  %363 = load ptr, ptr %88, align 4
  %364 = load ptr, ptr @zynq_clkc_base, align 4
  %365 = getelementptr i8, ptr %364, i32 44
  %366 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %362, ptr noundef %363, i32 noundef 0, ptr noundef %365, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull @aperclk_lock) #7
  store ptr %366, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 27), align 4
  %367 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 28
  %368 = load ptr, ptr %367, align 4
  %369 = load ptr, ptr %104, align 4
  %370 = load ptr, ptr @zynq_clkc_base, align 4
  %371 = getelementptr i8, ptr %370, i32 44
  %372 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %368, ptr noundef %369, i32 noundef 0, ptr noundef %371, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @aperclk_lock) #7
  store ptr %372, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 28), align 4
  %373 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 29
  %374 = load ptr, ptr %373, align 4
  %375 = load ptr, ptr %104, align 4
  %376 = load ptr, ptr @zynq_clkc_base, align 4
  %377 = getelementptr i8, ptr %376, i32 44
  %378 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %374, ptr noundef %375, i32 noundef 0, ptr noundef %377, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @aperclk_lock) #7
  store ptr %378, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 29), align 4
  %379 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 30
  %380 = load ptr, ptr %379, align 4
  %381 = load ptr, ptr %104, align 4
  %382 = load ptr, ptr @zynq_clkc_base, align 4
  %383 = getelementptr i8, ptr %382, i32 44
  %384 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %380, ptr noundef %381, i32 noundef 0, ptr noundef %383, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull @aperclk_lock) #7
  store ptr %384, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 30), align 4
  %385 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 31
  %386 = load ptr, ptr %385, align 4
  %387 = load ptr, ptr %104, align 4
  %388 = load ptr, ptr @zynq_clkc_base, align 4
  %389 = getelementptr i8, ptr %388, i32 44
  %390 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %386, ptr noundef %387, i32 noundef 0, ptr noundef %389, i8 noundef zeroext 7, i8 noundef zeroext 0, ptr noundef nonnull @aperclk_lock) #7
  store ptr %390, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 31), align 4
  %391 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 32
  %392 = load ptr, ptr %391, align 4
  %393 = load ptr, ptr %104, align 4
  %394 = load ptr, ptr @zynq_clkc_base, align 4
  %395 = getelementptr i8, ptr %394, i32 44
  %396 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %392, ptr noundef %393, i32 noundef 0, ptr noundef %395, i8 noundef zeroext 10, i8 noundef zeroext 0, ptr noundef nonnull @aperclk_lock) #7
  store ptr %396, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 32), align 4
  %397 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 33
  %398 = load ptr, ptr %397, align 4
  %399 = load ptr, ptr %104, align 4
  %400 = load ptr, ptr @zynq_clkc_base, align 4
  %401 = getelementptr i8, ptr %400, i32 44
  %402 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %398, ptr noundef %399, i32 noundef 0, ptr noundef %401, i8 noundef zeroext 11, i8 noundef zeroext 0, ptr noundef nonnull @aperclk_lock) #7
  store ptr %402, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 33), align 4
  %403 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 34
  %404 = load ptr, ptr %403, align 4
  %405 = load ptr, ptr %104, align 4
  %406 = load ptr, ptr @zynq_clkc_base, align 4
  %407 = getelementptr i8, ptr %406, i32 44
  %408 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %404, ptr noundef %405, i32 noundef 0, ptr noundef %407, i8 noundef zeroext 14, i8 noundef zeroext 0, ptr noundef nonnull @aperclk_lock) #7
  store ptr %408, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 34), align 4
  %409 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 35
  %410 = load ptr, ptr %409, align 4
  %411 = load ptr, ptr %104, align 4
  %412 = load ptr, ptr @zynq_clkc_base, align 4
  %413 = getelementptr i8, ptr %412, i32 44
  %414 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %410, ptr noundef %411, i32 noundef 0, ptr noundef %413, i8 noundef zeroext 15, i8 noundef zeroext 0, ptr noundef nonnull @aperclk_lock) #7
  store ptr %414, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 35), align 4
  %415 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 36
  %416 = load ptr, ptr %415, align 4
  %417 = load ptr, ptr %104, align 4
  %418 = load ptr, ptr @zynq_clkc_base, align 4
  %419 = getelementptr i8, ptr %418, i32 44
  %420 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %416, ptr noundef %417, i32 noundef 0, ptr noundef %419, i8 noundef zeroext 16, i8 noundef zeroext 0, ptr noundef nonnull @aperclk_lock) #7
  store ptr %420, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 36), align 4
  %421 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 37
  %422 = load ptr, ptr %421, align 4
  %423 = load ptr, ptr %104, align 4
  %424 = load ptr, ptr @zynq_clkc_base, align 4
  %425 = getelementptr i8, ptr %424, i32 44
  %426 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %422, ptr noundef %423, i32 noundef 0, ptr noundef %425, i8 noundef zeroext 17, i8 noundef zeroext 0, ptr noundef nonnull @aperclk_lock) #7
  store ptr %426, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 37), align 4
  %427 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 38
  %428 = load ptr, ptr %427, align 4
  %429 = load ptr, ptr %104, align 4
  %430 = load ptr, ptr @zynq_clkc_base, align 4
  %431 = getelementptr i8, ptr %430, i32 44
  %432 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %428, ptr noundef %429, i32 noundef 0, ptr noundef %431, i8 noundef zeroext 18, i8 noundef zeroext 0, ptr noundef nonnull @aperclk_lock) #7
  store ptr %432, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 38), align 4
  %433 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 39
  %434 = load ptr, ptr %433, align 4
  %435 = load ptr, ptr %104, align 4
  %436 = load ptr, ptr @zynq_clkc_base, align 4
  %437 = getelementptr i8, ptr %436, i32 44
  %438 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %434, ptr noundef %435, i32 noundef 0, ptr noundef %437, i8 noundef zeroext 19, i8 noundef zeroext 0, ptr noundef nonnull @aperclk_lock) #7
  store ptr %438, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 39), align 4
  %439 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 40
  %440 = load ptr, ptr %439, align 4
  %441 = load ptr, ptr %104, align 4
  %442 = load ptr, ptr @zynq_clkc_base, align 4
  %443 = getelementptr i8, ptr %442, i32 44
  %444 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %440, ptr noundef %441, i32 noundef 0, ptr noundef %443, i8 noundef zeroext 20, i8 noundef zeroext 0, ptr noundef nonnull @aperclk_lock) #7
  store ptr %444, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 40), align 4
  %445 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 41
  %446 = load ptr, ptr %445, align 4
  %447 = load ptr, ptr %104, align 4
  %448 = load ptr, ptr @zynq_clkc_base, align 4
  %449 = getelementptr i8, ptr %448, i32 44
  %450 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %446, ptr noundef %447, i32 noundef 0, ptr noundef %449, i8 noundef zeroext 21, i8 noundef zeroext 0, ptr noundef nonnull @aperclk_lock) #7
  store ptr %450, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 41), align 4
  %451 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 42
  %452 = load ptr, ptr %451, align 4
  %453 = load ptr, ptr %104, align 4
  %454 = load ptr, ptr @zynq_clkc_base, align 4
  %455 = getelementptr i8, ptr %454, i32 44
  %456 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %452, ptr noundef %453, i32 noundef 0, ptr noundef %455, i8 noundef zeroext 22, i8 noundef zeroext 0, ptr noundef nonnull @aperclk_lock) #7
  store ptr %456, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 42), align 4
  %457 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 43
  %458 = load ptr, ptr %457, align 4
  %459 = load ptr, ptr %104, align 4
  %460 = load ptr, ptr @zynq_clkc_base, align 4
  %461 = getelementptr i8, ptr %460, i32 44
  %462 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %458, ptr noundef %459, i32 noundef 0, ptr noundef %461, i8 noundef zeroext 23, i8 noundef zeroext 0, ptr noundef nonnull @aperclk_lock) #7
  store ptr %462, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 43), align 4
  %463 = getelementptr inbounds [48 x ptr], ptr %4, i32 0, i32 44
  %464 = load ptr, ptr %463, align 4
  %465 = load ptr, ptr %104, align 4
  %466 = load ptr, ptr @zynq_clkc_base, align 4
  %467 = getelementptr i8, ptr %466, i32 44
  %468 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %464, ptr noundef %465, i32 noundef 0, ptr noundef %467, i8 noundef zeroext 24, i8 noundef zeroext 0, ptr noundef nonnull @aperclk_lock) #7
  store ptr %468, ptr getelementptr inbounds ([48 x ptr], ptr @clks, i32 0, i32 44), align 4
  br label %469

469:                                              ; preds = %477, %360
  %470 = phi i32 [ 0, %360 ], [ %478, %477 ]
  %471 = getelementptr [48 x ptr], ptr @clks, i32 0, i32 %470
  %472 = load ptr, ptr %471, align 4
  %473 = icmp ugt ptr %472, inttoptr (i32 -4096 to ptr)
  br i1 %473, label %474, label %477

474:                                              ; preds = %469
  %475 = ptrtoint ptr %472 to i32
  %476 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %470, i32 noundef %475) #8
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/zynq/clkc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 567, 0\0A.popsection", ""() #7, !srcloc !13
  unreachable

477:                                              ; preds = %469
  %478 = add nuw nsw i32 %470, 1
  %479 = icmp eq i32 %478, 48
  br i1 %479, label %480, label %469

480:                                              ; preds = %477
  store ptr @clks, ptr @clk_data, align 4
  store i32 48, ptr getelementptr inbounds (%struct.clk_onecell_data, ptr @clk_data, i32 0, i32 1), align 4
  %481 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull @clk_data) #7
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @zynq_clock_init() local_unnamed_addr #0 section ".init.text" {
  %1 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %1, i8 0, i32 32, i1 false), !annotation !8
  %2 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.zynq_clock_init) #8
  br label %22

6:                                                ; preds = %0
  %7 = call i32 @of_address_to_resource(ptr noundef nonnull %2, i32 noundef 0, ptr noundef nonnull %1) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %2) #8
  br label %22

11:                                               ; preds = %6
  %12 = call ptr @of_get_parent(ptr noundef nonnull %2) #7
  %13 = getelementptr inbounds %struct.device_node, ptr %12, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = load i32, ptr %1, align 4
  %18 = getelementptr i8, ptr %14, i32 %17
  store ptr %18, ptr @zynq_clkc_base, align 4
  %19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.zynq_clock_init, ptr noundef %18) #8
  call void @of_node_put(ptr noundef %12) #7
  call void @of_node_put(ptr noundef nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #7
  ret void

20:                                               ; preds = %11
  %21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull %2) #8
  call void @of_node_put(ptr noundef %12) #7
  br label %22

22:                                               ; preds = %20, %9, %4
  call void @of_node_put(ptr noundef %2) #7
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/zynq/clkc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 614, 0\0A.popsection", ""() #7, !srcloc !14
  unreachable
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_zynq_pll(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_mux_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @zynq_clk_register_fclk(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 section ".init.text" {
  %6 = getelementptr i8, ptr %2, i32 8
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 4) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %50, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 4) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %49, label %14

14:                                               ; preds = %10
  store i32 0, ptr %8, align 8
  store i32 0, ptr %12, align 8
  %15 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.50, ptr noundef %1) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %48, label %17

17:                                               ; preds = %14
  %18 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.51, ptr noundef %1) #7
  %19 = icmp eq ptr %18, null
  br i1 %19, label %47, label %20

20:                                               ; preds = %17
  %21 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.52, ptr noundef %1) #7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %46, label %23

23:                                               ; preds = %20
  %24 = tail call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull %15, ptr noundef %3, i8 noundef zeroext 4, i32 noundef 128, ptr noundef %2, i8 noundef zeroext 4, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull %8) #7
  %25 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull %18, ptr noundef nonnull %15, i32 noundef 0, ptr noundef %2, i8 noundef zeroext 8, i8 noundef zeroext 6, i8 noundef zeroext 5, ptr noundef null, ptr noundef nonnull %8) #7
  %26 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull %21, ptr noundef nonnull %18, i32 noundef 4, ptr noundef %2, i8 noundef zeroext 20, i8 noundef zeroext 6, i8 noundef zeroext 5, ptr noundef null, ptr noundef nonnull %8) #7
  %27 = tail call ptr @clk_register_gate(ptr noundef null, ptr noundef %1, ptr noundef nonnull %21, i32 noundef 4, ptr noundef %6, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %12) #7
  %28 = getelementptr [48 x ptr], ptr @clks, i32 0, i32 %0
  store ptr %27, ptr %28, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %4, 0
  %32 = icmp ne i32 %30, 0
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %45, label %34

34:                                               ; preds = %23
  %35 = load ptr, ptr %28, align 4
  %36 = tail call i32 @clk_prepare(ptr noundef %35) #7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = tail call i32 @clk_enable(ptr noundef %35) #7
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  tail call void @clk_unprepare(ptr noundef %35) #7
  br label %42

42:                                               ; preds = %41, %34
  %43 = add i32 %0, -15
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.zynq_clk_register_fclk, i32 noundef %43) #8
  br label %45

45:                                               ; preds = %42, %38, %23
  tail call void @kfree(ptr noundef nonnull %15) #7
  tail call void @kfree(ptr noundef nonnull %18) #7
  tail call void @kfree(ptr noundef nonnull %21) #7
  br label %52

46:                                               ; preds = %20
  tail call void @kfree(ptr noundef nonnull %18) #7
  br label %47

47:                                               ; preds = %46, %17
  tail call void @kfree(ptr noundef nonnull %15) #7
  br label %48

48:                                               ; preds = %47, %14
  tail call void @kfree(ptr noundef nonnull %12) #7
  br label %49

49:                                               ; preds = %48, %10
  tail call void @kfree(ptr noundef nonnull %8) #7
  br label %50

50:                                               ; preds = %49, %5
  %51 = getelementptr [48 x ptr], ptr @clks, i32 0, i32 %0
  store ptr inttoptr (i32 -12 to ptr), ptr %51, align 4
  br label %52

52:                                               ; preds = %50, %45
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @zynq_clk_register_periph_clk(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #0 section ".init.text" {
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 4) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %7
  store i32 0, ptr %9, align 8
  %12 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.50, ptr noundef %2) #7
  %13 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.54, ptr noundef %2) #7
  %14 = tail call ptr @clk_register_mux_table(ptr noundef null, ptr noundef %12, ptr noundef %5, i8 noundef zeroext 4, i32 noundef 128, ptr noundef %4, i8 noundef zeroext 4, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull %9) #7
  %15 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef %13, ptr noundef %12, i32 noundef 0, ptr noundef %4, i8 noundef zeroext 8, i8 noundef zeroext 6, i8 noundef zeroext 5, ptr noundef null, ptr noundef nonnull %9) #7
  %16 = tail call ptr @clk_register_gate(ptr noundef null, ptr noundef %2, ptr noundef %13, i32 noundef 4, ptr noundef %4, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %9) #7
  %17 = getelementptr [48 x ptr], ptr @clks, i32 0, i32 %0
  store ptr %16, ptr %17, align 4
  %18 = icmp eq i32 %6, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %11
  %20 = tail call ptr @clk_register_gate(ptr noundef null, ptr noundef %3, ptr noundef %13, i32 noundef 4, ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %9) #7
  %21 = getelementptr [48 x ptr], ptr @clks, i32 0, i32 %1
  store ptr %20, ptr %21, align 4
  br label %22

22:                                               ; preds = %19, %11
  tail call void @kfree(ptr noundef %12) #7
  tail call void @kfree(ptr noundef %13) #7
  br label %28

23:                                               ; preds = %7
  %24 = getelementptr [48 x ptr], ptr @clks, i32 0, i32 %0
  store ptr inttoptr (i32 -12 to ptr), ptr %24, align 4
  %25 = icmp eq i32 %6, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = getelementptr [48 x ptr], ptr @clks, i32 0, i32 %1
  store ptr inttoptr (i32 -12 to ptr), ptr %27, align 4
  br label %28

28:                                               ; preds = %26, %23, %22
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { cold }
attributes #10 = { nounwind allocsize(2) }

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
!9 = !{i64 2150630115, i64 2150630603, i64 2150630152, i64 2150630208, i64 2150630242, i64 2150630266, i64 2150630307, i64 2150630328, i64 2150630356, i64 2150630390}
!10 = !{i64 2917767}
!11 = !{i64 2150633408}
!12 = !{i64 2150651357}
!13 = !{i64 2150654178, i64 2150654666, i64 2150654215, i64 2150654271, i64 2150654305, i64 2150654329, i64 2150654370, i64 2150654391, i64 2150654419, i64 2150654453}
!14 = !{i64 2150658137, i64 2150658625, i64 2150658174, i64 2150658230, i64 2150658264, i64 2150658288, i64 2150658329, i64 2150658350, i64 2150658378, i64 2150658412}
!15 = !{i64 2150626183}
