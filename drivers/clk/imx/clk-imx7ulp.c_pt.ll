; ModuleID = '/llk/IR/drivers/clk/imx/clk-imx7ulp.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-imx7ulp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_div_table = type { i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.clk_hw = type { ptr, ptr, ptr }

@__of_table_imx7ulp_clk_scg1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7ulp-scg1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx7ulp_clk_scg1_init }, section "__clk_of_table", align 4
@__of_table_imx7ulp_clk_pcc2 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7ulp-pcc2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx7ulp_clk_pcc2_init }, section "__clk_of_table", align 4
@__of_table_imx7ulp_clk_pcc3 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7ulp-pcc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx7ulp_clk_pcc3_init }, section "__clk_of_table", align 4
@__of_table_imx7ulp_clk_smc1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7ulp-smc1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx7ulp_clk_smc1_init }, section "__clk_of_table", align 4
@.str = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"rosc\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"sosc\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"sirc\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"firc\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"upll\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"drivers/clk/imx/clk-imx7ulp.c\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"apll_pre_sel\00", align 1
@pll_pre_sels = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.4], align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"spll_pre_sel\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"apll_pre_div\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"spll_pre_div\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"apll\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"spll\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"apll_pfd0\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"apll_pfd1\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"apll_pfd2\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"apll_pfd3\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"spll_pfd0\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"spll_pfd1\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"spll_pfd2\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"spll_pfd3\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"apll_pfd_sel\00", align 1
@apll_pfd_sels = internal constant [4 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], align 4
@.str.22 = private unnamed_addr constant [13 x i8] c"spll_pfd_sel\00", align 1
@spll_pfd_sels = internal constant [4 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], align 4
@.str.23 = private unnamed_addr constant [9 x i8] c"apll_sel\00", align 1
@apll_sels = internal constant [2 x ptr] [ptr @.str.11, ptr @.str.21], align 4
@.str.24 = private unnamed_addr constant [9 x i8] c"spll_sel\00", align 1
@spll_sels = internal constant [2 x ptr] [ptr @.str.12, ptr @.str.22], align 4
@.str.25 = private unnamed_addr constant [13 x i8] c"spll_bus_clk\00", align 1
@ulp_div_table = internal constant [8 x %struct.clk_div_table] [%struct.clk_div_table { i32 1, i32 1 }, %struct.clk_div_table { i32 2, i32 2 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table { i32 4, i32 8 }, %struct.clk_div_table { i32 5, i32 16 }, %struct.clk_div_table { i32 6, i32 32 }, %struct.clk_div_table { i32 7, i32 64 }, %struct.clk_div_table zeroinitializer], align 4
@imx_ccm_lock = external dso_local global %struct.spinlock, align 4
@.str.26 = private unnamed_addr constant [8 x i8] c"scs_sel\00", align 1
@scs_sels = internal constant [8 x ptr] [ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str, ptr @.str.23, ptr @.str.24, ptr @.str], align 4
@.str.27 = private unnamed_addr constant [14 x i8] c"hsrun_scs_sel\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"nic_sel\00", align 1
@nic_sels = internal constant [2 x ptr] [ptr @.str.4, ptr @.str.34], align 4
@.str.29 = private unnamed_addr constant [8 x i8] c"ddr_sel\00", align 1
@ddr_sels = internal constant [4 x ptr] [ptr @.str.21, ptr @.str, ptr @.str, ptr @.str], align 4
@.str.30 = private unnamed_addr constant [8 x i8] c"divcore\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"hsrun_divcore\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"hsrun_core\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"ddr_clk\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"nic0_clk\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"nic1_clk\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"nic1_bus_clk\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"gpu_clk\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"sosc_bus_clk\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"firc_bus_clk\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.41 = private unnamed_addr constant [5 x i8] c"dma1\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"rgpio2p1\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"dma_mux1\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"caam\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"lptpm4\00", align 1
@periph_bus_sels = internal constant [8 x ptr] [ptr @.str, ptr @.str.39, ptr @.str, ptr @.str.40, ptr @.str.1, ptr @.str.37, ptr @.str.36, ptr @.str.25], align 4
@.str.46 = private unnamed_addr constant [7 x i8] c"lptpm5\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"lpit1\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"lpspi2\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"lpspi3\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"lpi2c4\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"lpi2c5\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"lpuart4\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"lpuart5\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"flexio1\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"usb0\00", align 1
@periph_plat_sels = internal constant [8 x ptr] [ptr @.str, ptr @.str.37, ptr @.str.36, ptr @.str.34, ptr @.str.15, ptr @.str.14, ptr @.str.13, ptr @.str.5], align 4
@.str.56 = private unnamed_addr constant [5 x i8] c"usb1\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"usb_phy\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"usdhc0\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"usdhc1\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"wdg1\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"wdg2\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"lptpm6\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"lptpm7\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"mmdc\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"lpi2c6\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"lpi2c7\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"lpuart6\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"lpuart7\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"dsi\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"lcdif\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"viu\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"pctlc\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"pctld\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"pctle\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"pctlf\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"gpu3d\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"gpu2d\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@arm_sels = internal constant [4 x ptr] [ptr @.str.31, ptr @.str, ptr @.str, ptr @.str.33], align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__of_table_imx7ulp_clk_pcc2, ptr @__of_table_imx7ulp_clk_pcc3, ptr @__of_table_imx7ulp_clk_scg1, ptr @__of_table_imx7ulp_clk_smc1], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @imx7ulp_clk_scg1_init(ptr noundef %0) #0 section ".init.text" {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 196) #3
  %4 = icmp eq ptr %3, null
  br i1 %4, label %127, label %5

5:                                                ; preds = %1
  store i32 48, ptr %3, align 8
  %6 = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %3, i32 0, i32 1
  %7 = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  store ptr %7, ptr %6, align 4
  %8 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %0, ptr noundef nonnull @.str.1) #4
  %9 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 2
  store ptr %8, ptr %9, align 8
  %10 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %0, ptr noundef nonnull @.str.2) #4
  %11 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 3
  store ptr %10, ptr %11, align 4
  %12 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %0, ptr noundef nonnull @.str.3) #4
  %13 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 41
  store ptr %12, ptr %13, align 4
  %14 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %0, ptr noundef nonnull @.str.4) #4
  %15 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 4
  store ptr %14, ptr %15, align 8
  %16 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %0, ptr noundef nonnull @.str.5) #4
  %17 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 27
  store ptr %16, ptr %17, align 4
  %18 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21, !prof !8

20:                                               ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 70, i32 noundef 9, ptr noundef null) #4
  br label %21

21:                                               ; preds = %20, %5
  %22 = getelementptr i8, ptr %18, i32 1288
  %23 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.7, i8 noundef zeroext 2, ptr noundef nonnull @pll_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 130, ptr noundef %22, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %24 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 16
  store ptr %23, ptr %24, align 8
  %25 = getelementptr i8, ptr %18, i32 1544
  %26 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.8, i8 noundef zeroext 2, ptr noundef nonnull @pll_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 130, ptr noundef %25, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %27 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 5
  store ptr %26, ptr %27, align 4
  %28 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, ptr noundef null, ptr noundef null, i32 noundef 1, ptr noundef %22, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %29 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 17
  store ptr %28, ptr %29, align 4
  %30 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, ptr noundef null, ptr noundef null, i32 noundef 1, ptr noundef %25, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %31 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 6
  store ptr %30, ptr %31, align 8
  %32 = getelementptr i8, ptr %18, i32 1280
  %33 = tail call ptr @imx_clk_hw_pllv4(i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, ptr noundef %32) #4
  %34 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 18
  store ptr %33, ptr %34, align 8
  %35 = getelementptr i8, ptr %18, i32 1536
  %36 = tail call ptr @imx_clk_hw_pllv4(i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, ptr noundef %35) #4
  %37 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 7
  store ptr %36, ptr %37, align 4
  %38 = getelementptr i8, ptr %18, i32 1292
  %39 = tail call ptr @imx_clk_hw_pfdv2(i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, ptr noundef %38, i8 noundef zeroext 0) #4
  %40 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 21
  store ptr %39, ptr %40, align 4
  %41 = tail call ptr @imx_clk_hw_pfdv2(i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.11, ptr noundef %38, i8 noundef zeroext 1) #4
  %42 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 22
  store ptr %41, ptr %42, align 8
  %43 = tail call ptr @imx_clk_hw_pfdv2(i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.11, ptr noundef %38, i8 noundef zeroext 2) #4
  %44 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 23
  store ptr %43, ptr %44, align 4
  %45 = tail call ptr @imx_clk_hw_pfdv2(i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.11, ptr noundef %38, i8 noundef zeroext 3) #4
  %46 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 24
  store ptr %45, ptr %46, align 8
  %47 = getelementptr i8, ptr %18, i32 1548
  %48 = tail call ptr @imx_clk_hw_pfdv2(i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.12, ptr noundef %47, i8 noundef zeroext 0) #4
  %49 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 10
  store ptr %48, ptr %49, align 8
  %50 = tail call ptr @imx_clk_hw_pfdv2(i32 noundef 0, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.12, ptr noundef %47, i8 noundef zeroext 1) #4
  %51 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 11
  store ptr %50, ptr %51, align 4
  %52 = tail call ptr @imx_clk_hw_pfdv2(i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.12, ptr noundef %47, i8 noundef zeroext 2) #4
  %53 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 12
  store ptr %52, ptr %53, align 8
  %54 = tail call ptr @imx_clk_hw_pfdv2(i32 noundef 0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.12, ptr noundef %47, i8 noundef zeroext 3) #4
  %55 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 13
  store ptr %54, ptr %55, align 4
  %56 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.21, i8 noundef zeroext 4, ptr noundef nonnull @apll_pfd_sels, ptr noundef null, ptr noundef null, i32 noundef 134, ptr noundef %22, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %57 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 25
  store ptr %56, ptr %57, align 4
  %58 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.22, i8 noundef zeroext 4, ptr noundef nonnull @spll_pfd_sels, ptr noundef null, ptr noundef null, i32 noundef 134, ptr noundef %25, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %59 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 14
  store ptr %58, ptr %59, align 8
  %60 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.23, i8 noundef zeroext 2, ptr noundef nonnull @apll_sels, ptr noundef null, ptr noundef null, i32 noundef 134, ptr noundef %22, i8 noundef zeroext 1, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %61 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 26
  store ptr %60, ptr %61, align 8
  %62 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.24, i8 noundef zeroext 2, ptr noundef nonnull @spll_sels, ptr noundef null, ptr noundef null, i32 noundef 134, ptr noundef %25, i8 noundef zeroext 1, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %63 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 15
  store ptr %62, ptr %63, align 4
  %64 = getelementptr i8, ptr %18, i32 1540
  %65 = tail call ptr @imx_clk_hw_divider_gate(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef 1, ptr noundef %64, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @ulp_div_table, ptr noundef nonnull @imx_ccm_lock) #4
  %66 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 44
  store ptr %65, ptr %66, align 8
  %67 = getelementptr i8, ptr %18, i32 20
  %68 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.26, i8 noundef zeroext 8, ptr noundef nonnull @scs_sels, ptr noundef null, ptr noundef null, i32 noundef 4224, ptr noundef %67, i8 noundef zeroext 24, i32 noundef 15, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %69 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 28
  store ptr %68, ptr %69, align 8
  %70 = getelementptr i8, ptr %18, i32 28
  %71 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.27, i8 noundef zeroext 8, ptr noundef nonnull @scs_sels, ptr noundef null, ptr noundef null, i32 noundef 4224, ptr noundef %70, i8 noundef zeroext 24, i32 noundef 15, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %72 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 45
  store ptr %71, ptr %72, align 4
  %73 = getelementptr i8, ptr %18, i32 64
  %74 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.28, i8 noundef zeroext 2, ptr noundef nonnull @nic_sels, ptr noundef null, ptr noundef null, i32 noundef 4224, ptr noundef %73, i8 noundef zeroext 28, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %75 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 34
  store ptr %74, ptr %75, align 8
  %76 = getelementptr i8, ptr %18, i32 48
  %77 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.29, i8 noundef zeroext 4, ptr noundef nonnull @ddr_sels, ptr noundef null, ptr noundef null, i32 noundef 4228, ptr noundef %76, i8 noundef zeroext 24, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %78 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 32
  store ptr %77, ptr %78, align 8
  %79 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.26, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %67, i8 noundef zeroext 16, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %80 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 29
  store ptr %79, ptr %80, align 4
  %81 = getelementptr inbounds %struct.clk_hw, ptr %79, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = load ptr, ptr %69, align 8
  %84 = getelementptr inbounds %struct.clk_hw, ptr %83, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = load ptr, ptr %63, align 4
  %87 = getelementptr inbounds %struct.clk_hw, ptr %86, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = load ptr, ptr %15, align 8
  %90 = getelementptr inbounds %struct.clk_hw, ptr %89, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = tail call ptr @imx_clk_hw_cpu(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, ptr noundef %82, ptr noundef %85, ptr noundef %88, ptr noundef %91) #4
  %93 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 47
  store ptr %92, ptr %93, align 4
  %94 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.27, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %70, i8 noundef zeroext 16, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %95 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 46
  store ptr %94, ptr %95, align 8
  %96 = getelementptr inbounds %struct.clk_hw, ptr %94, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = load ptr, ptr %72, align 4
  %99 = getelementptr inbounds %struct.clk_hw, ptr %98, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = load ptr, ptr %63, align 4
  %102 = getelementptr inbounds %struct.clk_hw, ptr %101, i32 0, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = load ptr, ptr %15, align 8
  %105 = getelementptr inbounds %struct.clk_hw, ptr %104, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = tail call ptr @imx_clk_hw_cpu(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, ptr noundef %97, ptr noundef %100, ptr noundef %103, ptr noundef %106) #4
  %108 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 48
  store ptr %107, ptr %108, align 8
  %109 = tail call ptr @imx_clk_hw_divider_gate(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.29, i32 noundef 2052, ptr noundef %76, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @ulp_div_table, ptr noundef nonnull @imx_ccm_lock) #4
  %110 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 33
  store ptr %109, ptr %110, align 4
  %111 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.28, ptr noundef null, ptr noundef null, i32 noundef 2052, ptr noundef %73, i8 noundef zeroext 24, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %112 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 35
  store ptr %111, ptr %112, align 4
  %113 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.35, ptr noundef null, ptr noundef null, i32 noundef 2052, ptr noundef %73, i8 noundef zeroext 16, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %114 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 37
  store ptr %113, ptr %114, align 4
  %115 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.35, ptr noundef null, ptr noundef null, i32 noundef 2052, ptr noundef %73, i8 noundef zeroext 4, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %116 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 38
  store ptr %115, ptr %116, align 8
  %117 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.35, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %73, i8 noundef zeroext 20, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %118 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 36
  store ptr %117, ptr %118, align 8
  %119 = getelementptr i8, ptr %18, i32 260
  %120 = tail call ptr @imx_clk_hw_divider_gate(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.2, i32 noundef 0, ptr noundef %119, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 32, ptr noundef nonnull @ulp_div_table, ptr noundef nonnull @imx_ccm_lock) #4
  %121 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 42
  store ptr %120, ptr %121, align 8
  %122 = getelementptr i8, ptr %18, i32 772
  %123 = tail call ptr @imx_clk_hw_divider_gate(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef %122, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 32, ptr noundef nonnull @ulp_div_table, ptr noundef nonnull @imx_ccm_lock) #4
  %124 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 43
  store ptr %123, ptr %124, align 4
  %125 = load i32, ptr %3, align 8
  tail call void @imx_check_clk_hws(ptr noundef %6, i32 noundef %125) #4
  %126 = tail call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %3) #4
  br label %127

127:                                              ; preds = %21, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @imx7ulp_clk_pcc2_init(ptr noundef %0) #0 section ".init.text" {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 104) #3
  %4 = icmp eq ptr %3, null
  br i1 %4, label %75, label %5

5:                                                ; preds = %1
  store i32 25, ptr %3, align 8
  %6 = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %3, i32 0, i32 1
  %7 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 151, i32 noundef 9, ptr noundef null) #4
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr i8, ptr %7, i32 32
  %12 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.36, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %11, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  store ptr %12, ptr %6, align 4
  %13 = getelementptr i8, ptr %7, i32 60
  %14 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.37, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %13, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %15 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 2
  store ptr %14, ptr %15, align 8
  %16 = getelementptr i8, ptr %7, i32 132
  %17 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.37, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %16, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %18 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 5
  store ptr %17, ptr %18, align 4
  %19 = getelementptr i8, ptr %7, i32 144
  %20 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.36, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %19, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %21 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 7
  store ptr %20, ptr %21, align 4
  %22 = getelementptr i8, ptr %7, i32 148
  %23 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.45, ptr noundef nonnull @periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %22) #4
  %24 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 8
  store ptr %23, ptr %24, align 8
  %25 = getelementptr i8, ptr %7, i32 152
  %26 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.46, ptr noundef nonnull @periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %25) #4
  %27 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 9
  store ptr %26, ptr %27, align 4
  %28 = getelementptr i8, ptr %7, i32 156
  %29 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.47, ptr noundef nonnull @periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %28) #4
  %30 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 10
  store ptr %29, ptr %30, align 8
  %31 = getelementptr i8, ptr %7, i32 164
  %32 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.48, ptr noundef nonnull @periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %31) #4
  %33 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 11
  store ptr %32, ptr %33, align 4
  %34 = getelementptr i8, ptr %7, i32 168
  %35 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.49, ptr noundef nonnull @periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %34) #4
  %36 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 12
  store ptr %35, ptr %36, align 8
  %37 = getelementptr i8, ptr %7, i32 172
  %38 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.50, ptr noundef nonnull @periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %37) #4
  %39 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 13
  store ptr %38, ptr %39, align 4
  %40 = getelementptr i8, ptr %7, i32 176
  %41 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.51, ptr noundef nonnull @periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %40) #4
  %42 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 14
  store ptr %41, ptr %42, align 8
  %43 = getelementptr i8, ptr %7, i32 180
  %44 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.52, ptr noundef nonnull @periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %43) #4
  %45 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 15
  store ptr %44, ptr %45, align 4
  %46 = getelementptr i8, ptr %7, i32 184
  %47 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.53, ptr noundef nonnull @periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %46) #4
  %48 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 16
  store ptr %47, ptr %48, align 8
  %49 = getelementptr i8, ptr %7, i32 196
  %50 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.54, ptr noundef nonnull @periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %49) #4
  %51 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 17
  store ptr %50, ptr %51, align 4
  %52 = getelementptr i8, ptr %7, i32 204
  %53 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.55, ptr noundef nonnull @periph_plat_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %52) #4
  %54 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 18
  store ptr %53, ptr %54, align 8
  %55 = getelementptr i8, ptr %7, i32 208
  %56 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.56, ptr noundef nonnull @periph_plat_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %55) #4
  %57 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 19
  store ptr %56, ptr %57, align 4
  %58 = getelementptr i8, ptr %7, i32 212
  %59 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.37, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %58, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %60 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 20
  store ptr %59, ptr %60, align 8
  %61 = getelementptr i8, ptr %7, i32 220
  %62 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.58, ptr noundef nonnull @periph_plat_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %61) #4
  %63 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 22
  store ptr %62, ptr %63, align 8
  %64 = getelementptr i8, ptr %7, i32 224
  %65 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.59, ptr noundef nonnull @periph_plat_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %64) #4
  %66 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 23
  store ptr %65, ptr %66, align 4
  %67 = getelementptr i8, ptr %7, i32 244
  %68 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.60, ptr noundef nonnull @periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %67) #4
  %69 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 24
  store ptr %68, ptr %69, align 8
  %70 = getelementptr i8, ptr %7, i32 268
  %71 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.61, ptr noundef nonnull @periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %70) #4
  %72 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 25
  store ptr %71, ptr %72, align 4
  %73 = load i32, ptr %3, align 8
  tail call void @imx_check_clk_hws(ptr noundef %6, i32 noundef %73) #4
  %74 = tail call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %3) #4
  tail call void @imx_register_uart_clocks(i32 noundef 2) #4
  br label %75

75:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @imx7ulp_clk_pcc3_init(ptr noundef %0) #0 section ".init.text" {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 68) #3
  %4 = icmp eq ptr %3, null
  br i1 %4, label %59, label %5

5:                                                ; preds = %1
  store i32 16, ptr %3, align 8
  %6 = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %3, i32 0, i32 1
  %7 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 199, i32 noundef 9, ptr noundef null) #4
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr i8, ptr %7, i32 132
  %12 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.62, ptr noundef nonnull @periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %11) #4
  store ptr %12, ptr %6, align 4
  %13 = getelementptr i8, ptr %7, i32 136
  %14 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.63, ptr noundef nonnull @periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %13) #4
  %15 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 2
  store ptr %14, ptr %15, align 8
  %16 = getelementptr i8, ptr %7, i32 172
  %17 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.36, ptr noundef null, ptr noundef null, i32 noundef 2052, ptr noundef %16, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %18 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 10
  store ptr %17, ptr %18, align 8
  %19 = getelementptr i8, ptr %7, i32 144
  %20 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.65, ptr noundef nonnull @periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %19) #4
  %21 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 3
  store ptr %20, ptr %21, align 4
  %22 = getelementptr i8, ptr %7, i32 148
  %23 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.66, ptr noundef nonnull @periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %22) #4
  %24 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 4
  store ptr %23, ptr %24, align 8
  %25 = getelementptr i8, ptr %7, i32 152
  %26 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.67, ptr noundef nonnull @periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %25) #4
  %27 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 5
  store ptr %26, ptr %27, align 4
  %28 = getelementptr i8, ptr %7, i32 156
  %29 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.68, ptr noundef nonnull @periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %28) #4
  %30 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 6
  store ptr %29, ptr %30, align 8
  %31 = getelementptr i8, ptr %7, i32 164
  %32 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.69, ptr noundef nonnull @periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %31) #4
  %33 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 8
  store ptr %32, ptr %33, align 8
  %34 = getelementptr i8, ptr %7, i32 168
  %35 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.70, ptr noundef nonnull @periph_plat_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %34) #4
  %36 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 9
  store ptr %35, ptr %36, align 4
  %37 = getelementptr i8, ptr %7, i32 160
  %38 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.36, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %37, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %39 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 7
  store ptr %38, ptr %39, align 4
  %40 = getelementptr i8, ptr %7, i32 184
  %41 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.37, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %40, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %42 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 11
  store ptr %41, ptr %42, align 4
  %43 = getelementptr i8, ptr %7, i32 188
  %44 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.37, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %43, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %45 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 12
  store ptr %44, ptr %45, align 8
  %46 = getelementptr i8, ptr %7, i32 192
  %47 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.37, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %46, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %48 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 13
  store ptr %47, ptr %48, align 4
  %49 = getelementptr i8, ptr %7, i32 196
  %50 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.37, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %49, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %51 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 14
  store ptr %50, ptr %51, align 8
  %52 = getelementptr i8, ptr %7, i32 320
  %53 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.76, ptr noundef nonnull @periph_plat_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %52) #4
  %54 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 15
  store ptr %53, ptr %54, align 4
  %55 = getelementptr i8, ptr %7, i32 324
  %56 = tail call ptr @imx7ulp_clk_hw_composite(ptr noundef nonnull @.str.77, ptr noundef nonnull @periph_plat_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %55) #4
  %57 = getelementptr %struct.clk_hw_onecell_data, ptr %3, i32 16
  store ptr %56, ptr %57, align 8
  tail call void @imx_check_clk_hws(ptr noundef %6, i32 noundef 16) #4
  %58 = tail call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %3) #4
  tail call void @imx_register_uart_clocks(i32 noundef 7) #4
  br label %59

59:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @imx7ulp_clk_smc1_init(ptr noundef %0) #0 section ".init.text" {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 8) #3
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  store i32 1, ptr %3, align 8
  %6 = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %3, i32 0, i32 1
  %7 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 246, i32 noundef 9, ptr noundef null) #4
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr i8, ptr %7, i32 16
  %12 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.78, i8 noundef zeroext 4, ptr noundef nonnull @arm_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %11, i8 noundef zeroext 8, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  store ptr %12, ptr %6, align 4
  tail call void @imx_check_clk_hws(ptr noundef %6, i32 noundef 1) #4
  %13 = tail call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %3) #4
  br label %14

14:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_obtain_fixed_clk_hw(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_pllv4(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_pfdv2(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_divider_gate(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_cpu(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_check_clk_hws(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_divider(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx7ulp_clk_hw_composite(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_register_uart_clocks(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_gate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind allocsize(2) }
attributes #4 = { nounwind }

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
