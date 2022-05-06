; ModuleID = '/llk/IR/drivers/clk/ux500/u8500_of_clk.c_pt.bc'
source_filename = "../drivers/clk/ux500/u8500_of_clk.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.u8500_prcc_reset = type { %struct.reset_controller_dev, [5 x i32], [5 x ptr] }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__of_table_u8500_clks = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"stericsson,u8500-clks\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @u8500_clk_init }, section "__clk_of_table", align 4
@.str = private unnamed_addr constant [40 x i8] c"\013failed to get CLKRST %d base address\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"soc0_pll\00", align 1
@prcmu_clk = internal global [58 x ptr] zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"soc1_pll\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"ddr_pll\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"rtc32k\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"sgclk\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"uartclk\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"msp02clk\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"msp1clk\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"i2cclk\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"slimclk\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"per1clk\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"per2clk\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"per3clk\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"per5clk\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"per6clk\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"per7clk\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"lcdclk\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"bmlclk\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"hsitxclk\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"hsirxclk\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"hdmiclk\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"apeatclk\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"apetraceclk\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"mcdeclk\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"ipi2cclk\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"dsialtclk\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"dmaclk\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"b2r2clk\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"tvclk\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"sspclk\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"rngclk\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"uiccclk\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"timclk\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"ab8500_sysclk\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"sdmmcclk\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"dsi_pll\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"dsi0clk\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"dsi1clk\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"dsi0escclk\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"dsi1escclk\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"dsi2escclk\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"armss\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"smp_twd\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"p1_pclk0\00", align 1
@prcc_pclk = internal global [224 x ptr] zeroinitializer, align 4
@.str.46 = private unnamed_addr constant [9 x i8] c"p1_pclk1\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"p1_pclk2\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"p1_pclk3\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"p1_pclk4\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"p1_pclk5\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"p1_pclk6\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"p1_pclk7\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"p1_pclk8\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"p1_pclk9\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"p1_pclk10\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"p1_pclk11\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"p2_pclk0\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"p2_pclk1\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"p2_pclk2\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"p2_pclk3\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"p2_pclk4\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"p2_pclk5\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"p2_pclk6\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"p2_pclk7\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"p2_pclk8\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"p2_pclk9\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"p2_pclk10\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"p2_pclk11\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"p2_pclk12\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"p3_pclk0\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"p3_pclk1\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"p3_pclk2\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"p3_pclk3\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"p3_pclk4\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"p3_pclk5\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"p3_pclk6\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"p3_pclk7\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"p3_pclk8\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"p5_pclk0\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"p5_pclk1\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"p6_pclk0\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"p6_pclk1\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"p6_pclk2\00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c"p6_pclk3\00", align 1
@.str.85 = private unnamed_addr constant [9 x i8] c"p6_pclk4\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"p6_pclk5\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"p6_pclk6\00", align 1
@.str.88 = private unnamed_addr constant [9 x i8] c"p6_pclk7\00", align 1
@.str.89 = private unnamed_addr constant [14 x i8] c"p1_uart0_kclk\00", align 1
@prcc_kclk = internal global [224 x ptr] zeroinitializer, align 4
@.str.90 = private unnamed_addr constant [14 x i8] c"p1_uart1_kclk\00", align 1
@.str.91 = private unnamed_addr constant [13 x i8] c"p1_i2c1_kclk\00", align 1
@.str.92 = private unnamed_addr constant [13 x i8] c"p1_msp0_kclk\00", align 1
@.str.93 = private unnamed_addr constant [13 x i8] c"p1_msp1_kclk\00", align 1
@.str.94 = private unnamed_addr constant [13 x i8] c"p1_sdi0_kclk\00", align 1
@.str.95 = private unnamed_addr constant [13 x i8] c"p1_i2c2_kclk\00", align 1
@.str.96 = private unnamed_addr constant [17 x i8] c"p1_slimbus0_kclk\00", align 1
@.str.97 = private unnamed_addr constant [13 x i8] c"p1_i2c4_kclk\00", align 1
@.str.98 = private unnamed_addr constant [13 x i8] c"p1_msp3_kclk\00", align 1
@.str.99 = private unnamed_addr constant [13 x i8] c"p2_i2c3_kclk\00", align 1
@.str.100 = private unnamed_addr constant [13 x i8] c"p2_sdi4_kclk\00", align 1
@.str.101 = private unnamed_addr constant [13 x i8] c"p2_msp2_kclk\00", align 1
@.str.102 = private unnamed_addr constant [13 x i8] c"p2_sdi1_kclk\00", align 1
@.str.103 = private unnamed_addr constant [13 x i8] c"p2_sdi3_kclk\00", align 1
@.str.104 = private unnamed_addr constant [14 x i8] c"p2_ssirx_kclk\00", align 1
@.str.105 = private unnamed_addr constant [14 x i8] c"p2_ssitx_kclk\00", align 1
@.str.106 = private unnamed_addr constant [13 x i8] c"p3_ssp0_kclk\00", align 1
@.str.107 = private unnamed_addr constant [13 x i8] c"p3_ssp1_kclk\00", align 1
@.str.108 = private unnamed_addr constant [13 x i8] c"p3_i2c0_kclk\00", align 1
@.str.109 = private unnamed_addr constant [13 x i8] c"p3_sdi2_kclk\00", align 1
@.str.110 = private unnamed_addr constant [12 x i8] c"p3_ske_kclk\00", align 1
@.str.111 = private unnamed_addr constant [14 x i8] c"p3_uart2_kclk\00", align 1
@.str.112 = private unnamed_addr constant [13 x i8] c"p3_sdi5_kclk\00", align 1
@.str.113 = private unnamed_addr constant [12 x i8] c"p3_rng_kclk\00", align 1
@u8500_clk_init.clk_data = internal global %struct.clk_onecell_data zeroinitializer, align 4
@.str.114 = private unnamed_addr constant [12 x i8] c"prcmu-clock\00", align 1
@.str.115 = private unnamed_addr constant [18 x i8] c"prcc-periph-clock\00", align 1
@.str.116 = private unnamed_addr constant [18 x i8] c"prcc-kernel-clock\00", align 1
@.str.117 = private unnamed_addr constant [13 x i8] c"rtc32k-clock\00", align 1
@.str.118 = private unnamed_addr constant [14 x i8] c"smp-twd-clock\00", align 1
@.str.119 = private unnamed_addr constant [22 x i8] c"prcc-reset-controller\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.120 = private unnamed_addr constant [28 x i8] c"\013%s: invalid PRCC base %d\0A\00", align 1
@__func__.ux500_twocell_get = private unnamed_addr constant [18 x i8] c"ux500_twocell_get\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_u8500_clks], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @u8500_clk_init(ptr noundef %0) #0 {
  %2 = alloca %struct.resource, align 4
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 84) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %192, label %6

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !8
  %7 = call i32 @of_address_to_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 1) #8
  br label %11

11:                                               ; preds = %9, %6
  %12 = load i32, ptr %2, align 4
  %13 = getelementptr %struct.u8500_prcc_reset, ptr %4, i32 0, i32 1, i32 0
  store i32 %12, ptr %13, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !8
  %14 = call i32 @of_address_to_resource(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %2) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 2) #8
  br label %18

18:                                               ; preds = %16, %11
  %19 = load i32, ptr %2, align 4
  %20 = getelementptr %struct.u8500_prcc_reset, ptr %4, i32 0, i32 1, i32 1
  store i32 %19, ptr %20, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !8
  %21 = call i32 @of_address_to_resource(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %2) #7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 3) #8
  br label %25

25:                                               ; preds = %23, %18
  %26 = load i32, ptr %2, align 4
  %27 = getelementptr %struct.u8500_prcc_reset, ptr %4, i32 0, i32 1, i32 2
  store i32 %26, ptr %27, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !8
  %28 = call i32 @of_address_to_resource(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %2) #7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 4) #8
  br label %32

32:                                               ; preds = %30, %25
  %33 = load i32, ptr %2, align 4
  %34 = getelementptr %struct.u8500_prcc_reset, ptr %4, i32 0, i32 1, i32 3
  store i32 %33, ptr %34, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !8
  %35 = call i32 @of_address_to_resource(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %2) #7
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 5) #8
  br label %39

39:                                               ; preds = %37, %32
  %40 = load i32, ptr %2, align 4
  %41 = getelementptr %struct.u8500_prcc_reset, ptr %4, i32 0, i32 1, i32 4
  store i32 %40, ptr %41, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #7
  %42 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.1, ptr noundef null, i8 noundef zeroext 42, i32 noundef 8) #7
  store ptr %42, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 42), align 4
  %43 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.2, ptr noundef null, i8 noundef zeroext 43, i32 noundef 8) #7
  store ptr %43, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 43), align 4
  %44 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.3, ptr noundef null, i8 noundef zeroext 45, i32 noundef 8) #7
  store ptr %44, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 45), align 4
  %45 = call ptr @clk_register_fixed_rate(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 8, i32 noundef 32768) #7
  %46 = call ptr @prcmu_get_fw_version() #7
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %39
  %49 = load i32, ptr %46, align 4
  switch i32 %49, label %52 [
    i32 7, label %50
    i32 11, label %50
    i32 13, label %50
    i32 14, label %50
    i32 17, label %50
    i32 15, label %50
  ]

50:                                               ; preds = %48, %48, %48, %48, %48, %48
  %51 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i8 noundef zeroext 4, i32 noundef 0) #7
  br label %54

52:                                               ; preds = %48, %39
  %53 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.6, ptr noundef null, i8 noundef zeroext 4, i32 noundef 0) #7
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi ptr [ %51, %50 ], [ %53, %52 ]
  store ptr %55, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 4), align 4
  %56 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.7, ptr noundef null, i8 noundef zeroext 5, i32 noundef 0) #7
  store ptr %56, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 5), align 4
  %57 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.8, ptr noundef null, i8 noundef zeroext 6, i32 noundef 0) #7
  store ptr %57, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 6), align 4
  %58 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.9, ptr noundef null, i8 noundef zeroext 7, i32 noundef 0) #7
  store ptr %58, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 7), align 4
  %59 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.10, ptr noundef null, i8 noundef zeroext 8, i32 noundef 0) #7
  store ptr %59, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 8), align 4
  %60 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.11, ptr noundef null, i8 noundef zeroext 10, i32 noundef 0) #7
  store ptr %60, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 10), align 4
  %61 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.12, ptr noundef null, i8 noundef zeroext 11, i32 noundef 0) #7
  store ptr %61, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 11), align 4
  %62 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.13, ptr noundef null, i8 noundef zeroext 12, i32 noundef 0) #7
  store ptr %62, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 12), align 4
  %63 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.14, ptr noundef null, i8 noundef zeroext 13, i32 noundef 0) #7
  store ptr %63, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 13), align 4
  %64 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.15, ptr noundef null, i8 noundef zeroext 14, i32 noundef 0) #7
  store ptr %64, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 14), align 4
  %65 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.16, ptr noundef null, i8 noundef zeroext 15, i32 noundef 0) #7
  store ptr %65, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 15), align 4
  %66 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.17, ptr noundef null, i8 noundef zeroext 16, i32 noundef 0) #7
  store ptr %66, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 16), align 4
  %67 = call ptr @clk_reg_prcmu_scalable(ptr noundef nonnull @.str.18, ptr noundef null, i8 noundef zeroext 17, i32 noundef 0, i32 noundef 1) #7
  store ptr %67, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 17), align 4
  %68 = call ptr @clk_reg_prcmu_opp_gate(ptr noundef nonnull @.str.19, ptr noundef null, i8 noundef zeroext 18, i32 noundef 0) #7
  store ptr %68, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 18), align 4
  %69 = call ptr @clk_reg_prcmu_scalable(ptr noundef nonnull @.str.20, ptr noundef null, i8 noundef zeroext 19, i32 noundef 0, i32 noundef 1) #7
  store ptr %69, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 19), align 4
  %70 = call ptr @clk_reg_prcmu_scalable(ptr noundef nonnull @.str.21, ptr noundef null, i8 noundef zeroext 20, i32 noundef 0, i32 noundef 1) #7
  store ptr %70, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 20), align 4
  %71 = call ptr @clk_reg_prcmu_scalable(ptr noundef nonnull @.str.22, ptr noundef null, i8 noundef zeroext 21, i32 noundef 0, i32 noundef 1) #7
  store ptr %71, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 21), align 4
  %72 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.23, ptr noundef null, i8 noundef zeroext 22, i32 noundef 0) #7
  store ptr %72, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 22), align 4
  %73 = call ptr @clk_reg_prcmu_scalable(ptr noundef nonnull @.str.24, ptr noundef null, i8 noundef zeroext 23, i32 noundef 0, i32 noundef 1) #7
  store ptr %73, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 23), align 4
  %74 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.25, ptr noundef null, i8 noundef zeroext 24, i32 noundef 0) #7
  store ptr %74, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 24), align 4
  %75 = call ptr @clk_reg_prcmu_opp_gate(ptr noundef nonnull @.str.26, ptr noundef null, i8 noundef zeroext 25, i32 noundef 0) #7
  store ptr %75, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 25), align 4
  %76 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.27, ptr noundef null, i8 noundef zeroext 26, i32 noundef 0) #7
  store ptr %76, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 26), align 4
  %77 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.28, ptr noundef null, i8 noundef zeroext 27, i32 noundef 0) #7
  store ptr %77, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 27), align 4
  %78 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.29, ptr noundef null, i8 noundef zeroext 28, i32 noundef 0) #7
  store ptr %78, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 28), align 4
  %79 = call ptr @clk_reg_prcmu_scalable(ptr noundef nonnull @.str.30, ptr noundef null, i8 noundef zeroext 29, i32 noundef 0, i32 noundef 1) #7
  store ptr %79, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 29), align 4
  %80 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.31, ptr noundef null, i8 noundef zeroext 31, i32 noundef 0) #7
  store ptr %80, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 31), align 4
  %81 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.32, ptr noundef null, i8 noundef zeroext 32, i32 noundef 0) #7
  store ptr %81, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 32), align 4
  %82 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.33, ptr noundef null, i8 noundef zeroext 33, i32 noundef 0) #7
  store ptr %82, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 33), align 4
  %83 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.34, ptr noundef null, i8 noundef zeroext 41, i32 noundef 0) #7
  store ptr %83, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 41), align 4
  %84 = call ptr @clk_reg_prcmu_gate(ptr noundef nonnull @.str.35, ptr noundef null, i8 noundef zeroext 39, i32 noundef 0) #7
  store ptr %84, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 39), align 4
  %85 = call ptr @clk_reg_prcmu_opp_volt_scalable(ptr noundef nonnull @.str.36, ptr noundef null, i8 noundef zeroext 9, i32 noundef 100000000, i32 noundef 1) #7
  store ptr %85, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 9), align 4
  %86 = call ptr @clk_reg_prcmu_scalable(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.22, i8 noundef zeroext 46, i32 noundef 0, i32 noundef 1) #7
  store ptr %86, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 46), align 4
  %87 = call ptr @clk_reg_prcmu_scalable(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, i8 noundef zeroext 47, i32 noundef 0, i32 noundef 1) #7
  store ptr %87, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 47), align 4
  %88 = call ptr @clk_reg_prcmu_scalable(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i8 noundef zeroext 48, i32 noundef 0, i32 noundef 1) #7
  store ptr %88, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 48), align 4
  %89 = call ptr @clk_reg_prcmu_scalable(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.30, i8 noundef zeroext 49, i32 noundef 0, i32 noundef 1) #7
  store ptr %89, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 49), align 4
  %90 = call ptr @clk_reg_prcmu_scalable(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.30, i8 noundef zeroext 50, i32 noundef 0, i32 noundef 1) #7
  store ptr %90, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 50), align 4
  %91 = call ptr @clk_reg_prcmu_scalable(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.30, i8 noundef zeroext 51, i32 noundef 0, i32 noundef 1) #7
  store ptr %91, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 51), align 4
  %92 = call ptr @clk_reg_prcmu_scalable_rate(ptr noundef nonnull @.str.43, ptr noundef null, i8 noundef zeroext 44, i32 noundef 0, i32 noundef 8) #7
  store ptr %92, ptr getelementptr inbounds ([58 x ptr], ptr @prcmu_clk, i32 0, i32 44), align 4
  %93 = call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.43, i32 noundef 8, i32 noundef 1, i32 noundef 2) #7
  %94 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.12, i32 noundef %12, i32 noundef 1, i32 noundef 0) #7
  store ptr %94, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 32), align 4
  %95 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.12, i32 noundef %12, i32 noundef 2, i32 noundef 0) #7
  store ptr %95, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 33), align 4
  %96 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.12, i32 noundef %12, i32 noundef 4, i32 noundef 0) #7
  store ptr %96, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 34), align 4
  %97 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.12, i32 noundef %12, i32 noundef 8, i32 noundef 0) #7
  store ptr %97, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 35), align 4
  %98 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.12, i32 noundef %12, i32 noundef 16, i32 noundef 0) #7
  store ptr %98, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 36), align 4
  %99 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.12, i32 noundef %12, i32 noundef 32, i32 noundef 0) #7
  store ptr %99, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 37), align 4
  %100 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.12, i32 noundef %12, i32 noundef 64, i32 noundef 0) #7
  store ptr %100, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 38), align 4
  %101 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.12, i32 noundef %12, i32 noundef 128, i32 noundef 0) #7
  store ptr %101, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 39), align 4
  %102 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.12, i32 noundef %12, i32 noundef 256, i32 noundef 0) #7
  store ptr %102, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 40), align 4
  %103 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.12, i32 noundef %12, i32 noundef 512, i32 noundef 0) #7
  store ptr %103, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 41), align 4
  %104 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.12, i32 noundef %12, i32 noundef 1024, i32 noundef 0) #7
  store ptr %104, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 42), align 4
  %105 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.12, i32 noundef %12, i32 noundef 2048, i32 noundef 0) #7
  store ptr %105, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 43), align 4
  %106 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.13, i32 noundef %19, i32 noundef 1, i32 noundef 0) #7
  store ptr %106, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 64), align 4
  %107 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.13, i32 noundef %19, i32 noundef 2, i32 noundef 0) #7
  store ptr %107, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 65), align 4
  %108 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.13, i32 noundef %19, i32 noundef 4, i32 noundef 0) #7
  store ptr %108, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 66), align 4
  %109 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.13, i32 noundef %19, i32 noundef 8, i32 noundef 0) #7
  store ptr %109, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 67), align 4
  %110 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.13, i32 noundef %19, i32 noundef 16, i32 noundef 0) #7
  store ptr %110, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 68), align 4
  %111 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.13, i32 noundef %19, i32 noundef 32, i32 noundef 0) #7
  store ptr %111, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 69), align 4
  %112 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.13, i32 noundef %19, i32 noundef 64, i32 noundef 0) #7
  store ptr %112, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 70), align 4
  %113 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.13, i32 noundef %19, i32 noundef 128, i32 noundef 0) #7
  store ptr %113, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 71), align 4
  %114 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.13, i32 noundef %19, i32 noundef 256, i32 noundef 0) #7
  store ptr %114, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 72), align 4
  %115 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.13, i32 noundef %19, i32 noundef 512, i32 noundef 0) #7
  store ptr %115, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 73), align 4
  %116 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.13, i32 noundef %19, i32 noundef 1024, i32 noundef 0) #7
  store ptr %116, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 74), align 4
  %117 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.13, i32 noundef %19, i32 noundef 2048, i32 noundef 0) #7
  store ptr %117, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 75), align 4
  %118 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.13, i32 noundef %19, i32 noundef 4096, i32 noundef 0) #7
  store ptr %118, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 76), align 4
  %119 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.14, i32 noundef %26, i32 noundef 1, i32 noundef 0) #7
  store ptr %119, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 96), align 4
  %120 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.14, i32 noundef %26, i32 noundef 2, i32 noundef 0) #7
  store ptr %120, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 97), align 4
  %121 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.14, i32 noundef %26, i32 noundef 4, i32 noundef 0) #7
  store ptr %121, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 98), align 4
  %122 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.14, i32 noundef %26, i32 noundef 8, i32 noundef 0) #7
  store ptr %122, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 99), align 4
  %123 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.14, i32 noundef %26, i32 noundef 16, i32 noundef 0) #7
  store ptr %123, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 100), align 4
  %124 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.14, i32 noundef %26, i32 noundef 32, i32 noundef 0) #7
  store ptr %124, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 101), align 4
  %125 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.14, i32 noundef %26, i32 noundef 64, i32 noundef 0) #7
  store ptr %125, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 102), align 4
  %126 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.14, i32 noundef %26, i32 noundef 128, i32 noundef 0) #7
  store ptr %126, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 103), align 4
  %127 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.14, i32 noundef %26, i32 noundef 256, i32 noundef 0) #7
  store ptr %127, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 104), align 4
  %128 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.15, i32 noundef %33, i32 noundef 1, i32 noundef 0) #7
  store ptr %128, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 160), align 4
  %129 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.15, i32 noundef %33, i32 noundef 2, i32 noundef 0) #7
  store ptr %129, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 161), align 4
  %130 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.16, i32 noundef %40, i32 noundef 1, i32 noundef 0) #7
  store ptr %130, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 192), align 4
  %131 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.16, i32 noundef %40, i32 noundef 2, i32 noundef 0) #7
  store ptr %131, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 193), align 4
  %132 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.16, i32 noundef %40, i32 noundef 4, i32 noundef 0) #7
  store ptr %132, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 194), align 4
  %133 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.16, i32 noundef %40, i32 noundef 8, i32 noundef 0) #7
  store ptr %133, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 195), align 4
  %134 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.16, i32 noundef %40, i32 noundef 16, i32 noundef 0) #7
  store ptr %134, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 196), align 4
  %135 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.16, i32 noundef %40, i32 noundef 32, i32 noundef 0) #7
  store ptr %135, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 197), align 4
  %136 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.16, i32 noundef %40, i32 noundef 64, i32 noundef 0) #7
  store ptr %136, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 198), align 4
  %137 = call ptr @clk_reg_prcc_pclk(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.16, i32 noundef %40, i32 noundef 128, i32 noundef 0) #7
  store ptr %137, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_pclk, i32 0, i32 199), align 4
  %138 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.7, i32 noundef %12, i32 noundef 1, i32 noundef 1) #7
  store ptr %138, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 32), align 4
  %139 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.7, i32 noundef %12, i32 noundef 2, i32 noundef 1) #7
  store ptr %139, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 33), align 4
  %140 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.10, i32 noundef %12, i32 noundef 4, i32 noundef 1) #7
  store ptr %140, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 34), align 4
  %141 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.8, i32 noundef %12, i32 noundef 8, i32 noundef 1) #7
  store ptr %141, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 35), align 4
  %142 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.9, i32 noundef %12, i32 noundef 16, i32 noundef 1) #7
  store ptr %142, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 36), align 4
  %143 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.36, i32 noundef %12, i32 noundef 32, i32 noundef 1) #7
  store ptr %143, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 37), align 4
  %144 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.10, i32 noundef %12, i32 noundef 64, i32 noundef 1) #7
  store ptr %144, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 38), align 4
  %145 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.11, i32 noundef %12, i32 noundef 256, i32 noundef 1) #7
  store ptr %145, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 40), align 4
  %146 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.10, i32 noundef %12, i32 noundef 512, i32 noundef 1) #7
  store ptr %146, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 41), align 4
  %147 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.9, i32 noundef %12, i32 noundef 1024, i32 noundef 1) #7
  store ptr %147, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 42), align 4
  %148 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.10, i32 noundef %19, i32 noundef 1, i32 noundef 1) #7
  store ptr %148, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 64), align 4
  %149 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.36, i32 noundef %19, i32 noundef 4, i32 noundef 1) #7
  store ptr %149, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 66), align 4
  %150 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.8, i32 noundef %19, i32 noundef 8, i32 noundef 1) #7
  store ptr %150, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 67), align 4
  %151 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.36, i32 noundef %19, i32 noundef 16, i32 noundef 1) #7
  store ptr %151, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 68), align 4
  %152 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.36, i32 noundef %19, i32 noundef 32, i32 noundef 1) #7
  store ptr %152, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 69), align 4
  %153 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.21, i32 noundef %19, i32 noundef 64, i32 noundef 5) #7
  store ptr %153, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 70), align 4
  %154 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.20, i32 noundef %19, i32 noundef 128, i32 noundef 5) #7
  store ptr %154, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 71), align 4
  %155 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.31, i32 noundef %26, i32 noundef 2, i32 noundef 1) #7
  store ptr %155, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 97), align 4
  %156 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.31, i32 noundef %26, i32 noundef 4, i32 noundef 1) #7
  store ptr %156, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 98), align 4
  %157 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.10, i32 noundef %26, i32 noundef 8, i32 noundef 1) #7
  store ptr %157, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 99), align 4
  %158 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.36, i32 noundef %26, i32 noundef 16, i32 noundef 1) #7
  store ptr %158, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 100), align 4
  %159 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.4, i32 noundef %26, i32 noundef 32, i32 noundef 1) #7
  store ptr %159, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 101), align 4
  %160 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.7, i32 noundef %26, i32 noundef 64, i32 noundef 1) #7
  store ptr %160, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 102), align 4
  %161 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.36, i32 noundef %26, i32 noundef 128, i32 noundef 1) #7
  store ptr %161, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 103), align 4
  %162 = call ptr @clk_reg_prcc_kclk(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.32, i32 noundef %40, i32 noundef 1, i32 noundef 1) #7
  store ptr %162, ptr getelementptr inbounds ([224 x ptr], ptr @prcc_kclk, i32 0, i32 192), align 4
  %163 = call ptr @of_get_next_child(ptr noundef %0, ptr noundef null) #7
  %164 = icmp eq ptr %163, null
  br i1 %164, label %192, label %165

165:                                              ; preds = %189, %54
  %166 = phi ptr [ %190, %189 ], [ %163, %54 ]
  %167 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %166, ptr noundef nonnull @.str.114) #7
  br i1 %167, label %168, label %170

168:                                              ; preds = %165
  store ptr @prcmu_clk, ptr @u8500_clk_init.clk_data, align 4
  store i32 58, ptr getelementptr inbounds (%struct.clk_onecell_data, ptr @u8500_clk_init.clk_data, i32 0, i32 1), align 4
  %169 = call i32 @of_clk_add_provider(ptr noundef nonnull %166, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull @u8500_clk_init.clk_data) #7
  br label %170

170:                                              ; preds = %168, %165
  %171 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %166, ptr noundef nonnull @.str.115) #7
  br i1 %171, label %172, label %174

172:                                              ; preds = %170
  %173 = call i32 @of_clk_add_provider(ptr noundef nonnull %166, ptr noundef nonnull @ux500_twocell_get, ptr noundef nonnull @prcc_pclk) #7
  br label %174

174:                                              ; preds = %172, %170
  %175 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %166, ptr noundef nonnull @.str.116) #7
  br i1 %175, label %176, label %178

176:                                              ; preds = %174
  %177 = call i32 @of_clk_add_provider(ptr noundef nonnull %166, ptr noundef nonnull @ux500_twocell_get, ptr noundef nonnull @prcc_kclk) #7
  br label %178

178:                                              ; preds = %176, %174
  %179 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %166, ptr noundef nonnull @.str.117) #7
  br i1 %179, label %180, label %182

180:                                              ; preds = %178
  %181 = call i32 @of_clk_add_provider(ptr noundef nonnull %166, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %45) #7
  br label %182

182:                                              ; preds = %180, %178
  %183 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %166, ptr noundef nonnull @.str.118) #7
  br i1 %183, label %184, label %186

184:                                              ; preds = %182
  %185 = call i32 @of_clk_add_provider(ptr noundef nonnull %166, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %93) #7
  br label %186

186:                                              ; preds = %184, %182
  %187 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %166, ptr noundef nonnull @.str.119) #7
  br i1 %187, label %188, label %189

188:                                              ; preds = %186
  call void @u8500_prcc_reset_init(ptr noundef nonnull %166, ptr noundef nonnull %4) #7
  br label %189

189:                                              ; preds = %188, %186
  %190 = call ptr @of_get_next_child(ptr noundef %0, ptr noundef nonnull %166) #7
  %191 = icmp eq ptr %190, null
  br i1 %191, label %192, label %165

192:                                              ; preds = %189, %54, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_reg_prcmu_gate(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prcmu_get_fw_version() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_reg_prcmu_scalable(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_reg_prcmu_opp_gate(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_reg_prcmu_opp_volt_scalable(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_reg_prcmu_scalable_rate(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_reg_prcc_pclk(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_reg_prcc_kclk(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ux500_twocell_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %9 [
    i32 6, label %11
    i32 5, label %11
    i32 3, label %11
    i32 2, label %11
    i32 1, label %11
  ]

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @__func__.ux500_twocell_get, i32 noundef %8) #8
  br label %18

11:                                               ; preds = %6, %6, %6, %6, %6
  %12 = getelementptr %struct.of_phandle_args, ptr %0, i32 0, i32 2, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = shl nuw nsw i32 %8, 5
  %15 = add i32 %13, %14
  %16 = getelementptr ptr, ptr %1, i32 %15
  %17 = load ptr, ptr %16, align 4
  br label %18

18:                                               ; preds = %11, %9, %2
  %19 = phi ptr [ inttoptr (i32 -22 to ptr), %9 ], [ %17, %11 ], [ inttoptr (i32 -22 to ptr), %2 ]
  ret ptr %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @u8500_prcc_reset_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind allocsize(2) }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
