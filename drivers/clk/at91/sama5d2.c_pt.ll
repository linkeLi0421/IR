; ModuleID = '/llk/IR/drivers/clk/at91/sama5d2.c_pt.bc'
source_filename = "../drivers/clk/at91/sama5d2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.anon.4 = type { ptr, ptr, i8 }
%struct.anon.5 = type { ptr, i8, %struct.clk_range }
%struct.clk_range = type { i32, i32 }
%struct.anon.6 = type { ptr, i8, %struct.clk_range, i32 }
%struct.clk_pll_layout = type { i32, i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.clk_pll_characteristics = type { %struct.clk_range, i32, ptr, ptr, ptr, i8 }
%struct.clk_master_layout = type { i32, i32, i8 }
%struct.clk_master_characteristics = type { %struct.clk_range, [5 x i32], i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.clk_programmable_layout = type { i8, i8, i8, i8, i8 }
%struct.clk_pcr_layout = type { i32, i32, i32, i32, i32 }
%struct.anon.7 = type { ptr, i8 }
%struct.pmc_data = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, [0 x ptr] }

@__of_table_sama5d2_pmc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d2_pmc_setup }, section "__clk_of_table", align 4
@.str = private unnamed_addr constant [12 x i8] c"clock-names\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"slow_clk\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"main_xtal\00", align 1
@sama5d2_systemck = internal unnamed_addr constant [8 x %struct.anon.4] [%struct.anon.4 { ptr @.str.25, ptr @.str.15, i8 2 }, %struct.anon.4 { ptr @.str.26, ptr @.str.15, i8 3 }, %struct.anon.4 { ptr @.str.27, ptr @.str.17, i8 6 }, %struct.anon.4 { ptr @.str.28, ptr @.str.17, i8 7 }, %struct.anon.4 { ptr @.str.29, ptr @.str.30, i8 8 }, %struct.anon.4 { ptr @.str.31, ptr @.str.32, i8 9 }, %struct.anon.4 { ptr @.str.33, ptr @.str.34, i8 10 }, %struct.anon.4 { ptr @.str.35, ptr @.str.15, i8 18 }], align 4
@sama5d2_periph32ck = internal constant [36 x %struct.anon.5] [%struct.anon.5 { ptr @.str.36, i8 5, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.37, i8 11, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.38, i8 14, %struct.clk_range zeroinitializer }, %struct.anon.5 { ptr @.str.39, i8 17, %struct.clk_range zeroinitializer }, %struct.anon.5 { ptr @.str.40, i8 18, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.41, i8 19, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.42, i8 20, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.43, i8 21, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.44, i8 22, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.45, i8 23, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.46, i8 24, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.47, i8 25, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.48, i8 26, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.49, i8 27, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.50, i8 28, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.51, i8 29, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.52, i8 30, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.53, i8 33, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.54, i8 34, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.55, i8 35, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.56, i8 36, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.57, i8 38, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.58, i8 40, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.59, i8 41, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.60, i8 42, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.61, i8 43, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.62, i8 44, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.63, i8 47, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.64, i8 48, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.65, i8 51, %struct.clk_range zeroinitializer }, %struct.anon.5 { ptr @.str.19, i8 54, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.22, i8 55, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.66, i8 56, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.67, i8 57, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.68, i8 58, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.69, i8 59, %struct.clk_range { i32 0, i32 83000000 } }], align 4
@sama5d2_gck = internal constant [12 x %struct.anon.6] [%struct.anon.6 { ptr @.str.70, i8 31, %struct.clk_range zeroinitializer, i32 -2147483648 }, %struct.anon.6 { ptr @.str.71, i8 32, %struct.clk_range zeroinitializer, i32 -2147483648 }, %struct.anon.6 { ptr @.str.72, i8 35, %struct.clk_range { i32 0, i32 83000000 }, i32 -2147483648 }, %struct.anon.6 { ptr @.str.73, i8 36, %struct.clk_range { i32 0, i32 83000000 }, i32 -2147483648 }, %struct.anon.6 { ptr @.str.74, i8 38, %struct.clk_range { i32 0, i32 83000000 }, i32 -2147483648 }, %struct.anon.6 { ptr @.str.75, i8 46, %struct.clk_range zeroinitializer, i32 -2147483648 }, %struct.anon.6 { ptr @.str.76, i8 48, %struct.clk_range zeroinitializer, i32 -2147483648 }, %struct.anon.6 { ptr @.str.20, i8 54, %struct.clk_range zeroinitializer, i32 5 }, %struct.anon.6 { ptr @.str.23, i8 55, %struct.clk_range zeroinitializer, i32 5 }, %struct.anon.6 { ptr @.str.77, i8 56, %struct.clk_range { i32 0, i32 80000000 }, i32 -2147483648 }, %struct.anon.6 { ptr @.str.78, i8 57, %struct.clk_range { i32 0, i32 80000000 }, i32 -2147483648 }, %struct.anon.6 { ptr @.str.79, i8 59, %struct.clk_range { i32 0, i32 100000000 }, i32 5 }], align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"main_rc_osc\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"atmel,osc-bypass\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"main_osc\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"mainck\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"pllack\00", align 1
@sama5d3_pll_layout = external dso_local constant %struct.clk_pll_layout, align 4
@plla_characteristics = internal constant %struct.clk_pll_characteristics { %struct.clk_range { i32 12000000, i32 24000000 }, i32 1, ptr @plla_outputs, ptr @plla_icpll, ptr @plla_out, i8 0 }, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"plladivck\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"audiopll_fracck\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"audiopll_padck\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"audiopll_pmcck\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"atmel,sama5d2-sfr\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"utmick\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"masterck_pres\00", align 1
@at91sam9x5_master_layout = external dso_local constant %struct.clk_master_layout, align 4
@mck_characteristics = internal constant %struct.clk_master_characteristics { %struct.clk_range { i32 124000000, i32 166000000 }, [5 x i32] [i32 1, i32 2, i32 4, i32 3, i32 0], i8 0 }, align 4
@mck_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"masterck_div\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"h32mxck\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"usbck\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"prog%d\00", align 1
@sama5d2_programmable_layout = internal constant %struct.clk_programmable_layout { i8 -1, i8 4, i8 7, i8 0, i8 1 }, align 1
@pmc_pcr_lock = external dso_local global %struct.spinlock, align 4
@sama5d2_pcr_layout = internal constant %struct.clk_pcr_layout { i32 268, i32 4096, i32 0, i32 1792, i32 127 }, align 4
@sama5d2_periphck = internal unnamed_addr constant [13 x %struct.anon.7] [%struct.anon.7 { ptr @.str.80, i8 6 }, %struct.anon.7 { ptr @.str.81, i8 7 }, %struct.anon.7 { ptr @.str.82, i8 9 }, %struct.anon.7 { ptr @.str.83, i8 10 }, %struct.anon.7 { ptr @.str.84, i8 12 }, %struct.anon.7 { ptr @.str.85, i8 13 }, %struct.anon.7 { ptr @.str.86, i8 15 }, %struct.anon.7 { ptr @.str.87, i8 31 }, %struct.anon.7 { ptr @.str.88, i8 32 }, %struct.anon.7 { ptr @.str.89, i8 45 }, %struct.anon.7 { ptr @.str.90, i8 46 }, %struct.anon.7 { ptr @.str.91, i8 52 }, %struct.anon.7 { ptr @.str.92, i8 53 }], align 4
@.str.19 = private unnamed_addr constant [9 x i8] c"i2s0_clk\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"i2s0_gclk\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"i2s0_muxclk\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"i2s1_clk\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"i2s1_gclk\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"i2s1_muxclk\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"ddrck\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"lcdck\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"uhpck\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"udpck\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"pck0\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"prog0\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"pck1\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"prog1\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"pck2\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"prog2\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"iscck\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"macb0_clk\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"tdes_clk\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"matrix1_clk\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"hsmc_clk\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"pioA_clk\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"flx0_clk\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"flx1_clk\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"flx2_clk\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"flx3_clk\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"flx4_clk\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"uart0_clk\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"uart1_clk\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"uart2_clk\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"uart3_clk\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"uart4_clk\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"twi0_clk\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"twi1_clk\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"spi0_clk\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"spi1_clk\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"tcb0_clk\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"tcb1_clk\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"pwm_clk\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"adc_clk\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"uhphs_clk\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"udphs_clk\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"ssc0_clk\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"ssc1_clk\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"trng_clk\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"pdmic_clk\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"securam_clk\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"can0_clk\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"can1_clk\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"ptc_clk\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"classd_clk\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"sdmmc0_gclk\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"sdmmc1_gclk\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"tcb0_gclk\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"tcb1_gclk\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"pwm_gclk\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"isc_gclk\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"pdmic_gclk\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"can0_gclk\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"can1_gclk\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"classd_gclk\00", align 1
@plla_outputs = internal constant [1 x %struct.clk_range] [%struct.clk_range { i32 600000000, i32 1200000000 }], align 4
@plla_icpll = internal global [1 x i16] zeroinitializer, align 2
@plla_out = internal global [1 x i8] zeroinitializer, align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"dma0_clk\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"dma1_clk\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"aes_clk\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"aesb_clk\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"sha_clk\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"mpddr_clk\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"matrix0_clk\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"sdmmc0_hclk\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"sdmmc1_hclk\00", align 1
@.str.89 = private unnamed_addr constant [9 x i8] c"lcdc_clk\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"isc_clk\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c"qspi0_clk\00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"qspi1_clk\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_sama5d2_pmc], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sama5d2_pmc_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca %struct.clk_range, align 8
  %3 = alloca [6 x ptr], align 4
  %4 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  store i64 0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !8
  %5 = tail call i32 @of_property_match_string(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #6
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %178, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef %5) #6
  %9 = tail call i32 @of_property_match_string(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #6
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %178, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef %9) #6
  %13 = tail call ptr @device_node_to_regmap(ptr noundef %0) #6
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %178, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @pmc_data_allocate(i32 noundef 10, i32 noundef 19, i32 noundef 60, i32 noundef 60, i32 noundef 3) #6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %178, label %18

18:                                               ; preds = %15
  %19 = tail call ptr @at91_clk_register_main_rc_osc(ptr noundef %13, ptr noundef nonnull @.str.3, i32 noundef 12000000, i32 noundef 100000000) #7
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %177, label %21

21:                                               ; preds = %18
  %22 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef null) #6
  %23 = icmp ne ptr %22, null
  %24 = tail call ptr @at91_clk_register_main_osc(ptr noundef %13, ptr noundef nonnull @.str.5, ptr noundef %12, i1 noundef zeroext %23) #7
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %177, label %26

26:                                               ; preds = %21
  store ptr @.str.3, ptr %3, align 4
  %27 = getelementptr inbounds [6 x ptr], ptr %3, i32 0, i32 1
  store ptr @.str.5, ptr %27, align 4
  %28 = call ptr @at91_clk_register_sam9x5_main(ptr noundef %13, ptr noundef nonnull @.str.6, ptr noundef nonnull %3, i32 noundef 2) #7
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %177, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.pmc_data, ptr %16, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr ptr, ptr %32, i32 3
  store ptr %28, ptr %33, align 4
  %34 = call ptr @at91_clk_register_pll(ptr noundef %13, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i8 noundef zeroext 0, ptr noundef nonnull @sama5d3_pll_layout, ptr noundef nonnull @plla_characteristics) #7
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %177, label %36

36:                                               ; preds = %30
  %37 = call ptr @at91_clk_register_plldiv(ptr noundef %13, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7) #7
  %38 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %177, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %31, align 4
  %41 = getelementptr ptr, ptr %40, i32 7
  store ptr %37, ptr %41, align 4
  %42 = call ptr @at91_clk_register_audio_pll_frac(ptr noundef %13, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.6) #7
  %43 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %177, label %44

44:                                               ; preds = %39
  %45 = call ptr @at91_clk_register_audio_pll_pad(ptr noundef %13, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9) #7
  %46 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %177, label %47

47:                                               ; preds = %44
  %48 = call ptr @at91_clk_register_audio_pll_pmc(ptr noundef %13, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9) #7
  %49 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %177, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %31, align 4
  %52 = getelementptr ptr, ptr %51, i32 9
  store ptr %48, ptr %52, align 4
  %53 = call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.12) #6
  %54 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  %55 = select i1 %54, ptr null, ptr %53
  %56 = call ptr @at91_clk_register_utmi(ptr noundef %13, ptr noundef %55, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.6) #7
  %57 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %57, label %177, label %58

58:                                               ; preds = %50
  %59 = load ptr, ptr %31, align 4
  %60 = getelementptr ptr, ptr %59, i32 2
  store ptr %56, ptr %60, align 4
  store ptr %8, ptr %3, align 4
  store ptr @.str.6, ptr %27, align 4
  %61 = getelementptr inbounds [6 x ptr], ptr %3, i32 0, i32 2
  store ptr @.str.8, ptr %61, align 4
  %62 = getelementptr inbounds [6 x ptr], ptr %3, i32 0, i32 3
  store ptr @.str.13, ptr %62, align 4
  %63 = call ptr @at91_clk_register_master_pres(ptr noundef %13, ptr noundef nonnull @.str.14, i32 noundef 4, ptr noundef nonnull %3, ptr noundef nonnull @at91sam9x5_master_layout, ptr noundef nonnull @mck_characteristics, ptr noundef nonnull @mck_lock, i32 noundef 1, i32 noundef -2147483648) #7
  %64 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %177, label %65

65:                                               ; preds = %58
  %66 = call ptr @at91_clk_register_master_div(ptr noundef %13, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14, ptr noundef nonnull @at91sam9x5_master_layout, ptr noundef nonnull @mck_characteristics, ptr noundef nonnull @mck_lock, i32 noundef 1, i32 noundef 0) #7
  %67 = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  br i1 %67, label %177, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr %31, align 4
  %70 = getelementptr ptr, ptr %69, i32 1
  store ptr %66, ptr %70, align 4
  %71 = call ptr @at91_clk_register_h32mx(ptr noundef %13, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15) #7
  %72 = icmp ugt ptr %71, inttoptr (i32 -4096 to ptr)
  br i1 %72, label %177, label %73

73:                                               ; preds = %68
  %74 = load ptr, ptr %31, align 4
  %75 = getelementptr ptr, ptr %74, i32 4
  store ptr %71, ptr %75, align 4
  store ptr @.str.8, ptr %3, align 4
  store ptr @.str.13, ptr %27, align 4
  %76 = call ptr @at91sam9x5_clk_register_usb(ptr noundef %13, ptr noundef nonnull @.str.17, ptr noundef nonnull %3, i8 noundef zeroext 2) #7
  %77 = icmp ugt ptr %76, inttoptr (i32 -4096 to ptr)
  br i1 %77, label %177, label %78

78:                                               ; preds = %73
  store ptr %8, ptr %3, align 4
  store ptr @.str.6, ptr %27, align 4
  store ptr @.str.8, ptr %61, align 4
  store ptr @.str.13, ptr %62, align 4
  %79 = getelementptr inbounds [6 x ptr], ptr %3, i32 0, i32 4
  store ptr @.str.15, ptr %79, align 4
  %80 = getelementptr inbounds [6 x ptr], ptr %3, i32 0, i32 5
  store ptr @.str.11, ptr %80, align 4
  %81 = getelementptr inbounds %struct.pmc_data, ptr %16, i32 0, i32 9
  br label %84

82:                                               ; preds = %91
  %83 = getelementptr inbounds %struct.pmc_data, ptr %16, i32 0, i32 3
  br label %98

84:                                               ; preds = %91, %78
  %85 = phi i32 [ 0, %78 ], [ %94, %91 ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i32 6, i1 false), !annotation !8
  %86 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 6, ptr noundef nonnull @.str.18, i32 noundef %85)
  %87 = trunc i32 %85 to i8
  %88 = call ptr @at91_clk_register_programmable(ptr noundef %13, ptr noundef nonnull %4, ptr noundef nonnull %3, i8 noundef zeroext 6, i8 noundef zeroext %87, ptr noundef nonnull @sama5d2_programmable_layout, ptr noundef null) #7
  %89 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #6
  br label %177

91:                                               ; preds = %84
  %92 = load ptr, ptr %81, align 4
  %93 = getelementptr ptr, ptr %92, i32 %85
  store ptr %88, ptr %93, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #6
  %94 = add nuw nsw i32 %85, 1
  %95 = icmp eq i32 %94, 3
  br i1 %95, label %82, label %84

96:                                               ; preds = %108
  %97 = getelementptr inbounds %struct.pmc_data, ptr %16, i32 0, i32 5
  br label %114

98:                                               ; preds = %108, %82
  %99 = phi i32 [ 0, %82 ], [ %112, %108 ]
  %100 = getelementptr [8 x %struct.anon.4], ptr @sama5d2_systemck, i32 0, i32 %99
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr [8 x %struct.anon.4], ptr @sama5d2_systemck, i32 0, i32 %99, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr [8 x %struct.anon.4], ptr @sama5d2_systemck, i32 0, i32 %99, i32 2
  %105 = load i8, ptr %104, align 4
  %106 = call ptr @at91_clk_register_system(ptr noundef %13, ptr noundef %101, ptr noundef %103, i8 noundef zeroext %105) #7
  %107 = icmp ugt ptr %106, inttoptr (i32 -4096 to ptr)
  br i1 %107, label %177, label %108

108:                                              ; preds = %98
  %109 = load ptr, ptr %83, align 4
  %110 = zext i8 %105 to i32
  %111 = getelementptr ptr, ptr %109, i32 %110
  store ptr %106, ptr %111, align 4
  %112 = add nuw nsw i32 %99, 1
  %113 = icmp eq i32 %112, 8
  br i1 %113, label %96, label %98

114:                                              ; preds = %123, %96
  %115 = phi i32 [ 0, %96 ], [ %126, %123 ]
  %116 = getelementptr [13 x %struct.anon.7], ptr @sama5d2_periphck, i32 0, i32 %115
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr [13 x %struct.anon.7], ptr @sama5d2_periphck, i32 0, i32 %115, i32 1
  %119 = load i8, ptr %118, align 4
  %120 = zext i8 %119 to i32
  %121 = call ptr @at91_clk_register_sam9x5_peripheral(ptr noundef %13, ptr noundef nonnull @pmc_pcr_lock, ptr noundef nonnull @sama5d2_pcr_layout, ptr noundef %117, ptr noundef nonnull @.str.15, i32 noundef %120, ptr noundef nonnull %2, i32 noundef -2147483648) #7
  %122 = icmp ugt ptr %121, inttoptr (i32 -4096 to ptr)
  br i1 %122, label %177, label %123

123:                                              ; preds = %114
  %124 = load ptr, ptr %97, align 4
  %125 = getelementptr ptr, ptr %124, i32 %120
  store ptr %121, ptr %125, align 4
  %126 = add nuw nsw i32 %115, 1
  %127 = icmp eq i32 %126, 13
  br i1 %127, label %128, label %114

128:                                              ; preds = %138, %123
  %129 = phi i32 [ %141, %138 ], [ 0, %123 ]
  %130 = getelementptr [36 x %struct.anon.5], ptr @sama5d2_periph32ck, i32 0, i32 %129
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr [36 x %struct.anon.5], ptr @sama5d2_periph32ck, i32 0, i32 %129, i32 1
  %133 = load i8, ptr %132, align 4
  %134 = zext i8 %133 to i32
  %135 = getelementptr [36 x %struct.anon.5], ptr @sama5d2_periph32ck, i32 0, i32 %129, i32 2
  %136 = call ptr @at91_clk_register_sam9x5_peripheral(ptr noundef %13, ptr noundef nonnull @pmc_pcr_lock, ptr noundef nonnull @sama5d2_pcr_layout, ptr noundef %131, ptr noundef nonnull @.str.16, i32 noundef %134, ptr noundef %135, i32 noundef -2147483648) #7
  %137 = icmp ugt ptr %136, inttoptr (i32 -4096 to ptr)
  br i1 %137, label %177, label %138

138:                                              ; preds = %128
  %139 = load ptr, ptr %97, align 4
  %140 = getelementptr ptr, ptr %139, i32 %134
  store ptr %136, ptr %140, align 4
  %141 = add nuw nsw i32 %129, 1
  %142 = icmp eq i32 %141, 36
  br i1 %142, label %143, label %128

143:                                              ; preds = %138
  store ptr %8, ptr %3, align 4
  store ptr @.str.6, ptr %27, align 4
  store ptr @.str.8, ptr %61, align 4
  store ptr @.str.13, ptr %62, align 4
  store ptr @.str.15, ptr %79, align 4
  store ptr @.str.11, ptr %80, align 4
  %144 = getelementptr inbounds %struct.pmc_data, ptr %16, i32 0, i32 7
  br label %145

145:                                              ; preds = %156, %143
  %146 = phi i32 [ 0, %143 ], [ %160, %156 ]
  %147 = getelementptr [12 x %struct.anon.6], ptr @sama5d2_gck, i32 0, i32 %146
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr [12 x %struct.anon.6], ptr @sama5d2_gck, i32 0, i32 %146, i32 1
  %150 = load i8, ptr %149, align 4
  %151 = getelementptr [12 x %struct.anon.6], ptr @sama5d2_gck, i32 0, i32 %146, i32 2
  %152 = getelementptr [12 x %struct.anon.6], ptr @sama5d2_gck, i32 0, i32 %146, i32 3
  %153 = load i32, ptr %152, align 4
  %154 = call ptr @at91_clk_register_generated(ptr noundef %13, ptr noundef nonnull @pmc_pcr_lock, ptr noundef nonnull @sama5d2_pcr_layout, ptr noundef %148, ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 6, i8 noundef zeroext %150, ptr noundef %151, i32 noundef %153) #7
  %155 = icmp ugt ptr %154, inttoptr (i32 -4096 to ptr)
  br i1 %155, label %177, label %156

156:                                              ; preds = %145
  %157 = load ptr, ptr %144, align 4
  %158 = zext i8 %150 to i32
  %159 = getelementptr ptr, ptr %157, i32 %158
  store ptr %154, ptr %159, align 4
  %160 = add nuw nsw i32 %146, 1
  %161 = icmp eq i32 %160, 12
  br i1 %161, label %162, label %145

162:                                              ; preds = %156
  %163 = icmp eq ptr %55, null
  br i1 %163, label %175, label %164

164:                                              ; preds = %162
  store ptr @.str.19, ptr %3, align 4
  store ptr @.str.20, ptr %27, align 4
  %165 = call ptr @at91_clk_i2s_mux_register(ptr noundef nonnull %55, ptr noundef nonnull @.str.21, ptr noundef nonnull %3, i32 noundef 2, i8 noundef zeroext 0) #7
  %166 = icmp ugt ptr %165, inttoptr (i32 -4096 to ptr)
  br i1 %166, label %177, label %167

167:                                              ; preds = %164
  %168 = load ptr, ptr %31, align 4
  %169 = getelementptr ptr, ptr %168, i32 5
  store ptr %165, ptr %169, align 4
  store ptr @.str.22, ptr %3, align 4
  store ptr @.str.23, ptr %27, align 4
  %170 = call ptr @at91_clk_i2s_mux_register(ptr noundef nonnull %55, ptr noundef nonnull @.str.24, ptr noundef nonnull %3, i32 noundef 2, i8 noundef zeroext 1) #7
  %171 = icmp ugt ptr %170, inttoptr (i32 -4096 to ptr)
  br i1 %171, label %177, label %172

172:                                              ; preds = %167
  %173 = load ptr, ptr %31, align 4
  %174 = getelementptr ptr, ptr %173, i32 6
  store ptr %170, ptr %174, align 4
  br label %175

175:                                              ; preds = %172, %162
  %176 = call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_pmc_get, ptr noundef nonnull %16) #6
  br label %178

177:                                              ; preds = %167, %164, %145, %128, %114, %98, %90, %73, %68, %65, %58, %50, %47, %44, %39, %36, %30, %26, %21, %18
  call void @kfree(ptr noundef nonnull %16) #6
  br label %178

178:                                              ; preds = %177, %175, %15, %11, %7, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_node_to_regmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pmc_data_allocate(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_main_rc_osc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_main_osc(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_sam9x5_main(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_pll(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_plldiv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_audio_pll_frac(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_audio_pll_pad(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_audio_pll_pmc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_utmi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_master_pres(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_master_div(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_h32mx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91sam9x5_clk_register_usb(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4 section ".init.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_programmable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_system(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_sam9x5_peripheral(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_generated(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_i2s_mux_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_pmc_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
