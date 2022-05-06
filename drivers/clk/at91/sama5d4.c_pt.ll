; ModuleID = '/llk/IR/drivers/clk/at91/sama5d4.c_pt.bc'
source_filename = "../drivers/clk/at91/sama5d4.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.anon.4 = type { ptr, ptr, i8 }
%struct.anon.5 = type { ptr, i8 }
%struct.clk_pll_layout = type { i32, i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.clk_pll_characteristics = type { %struct.clk_range, i32, ptr, ptr, ptr, i8 }
%struct.clk_range = type { i32, i32 }
%struct.clk_master_layout = type { i32, i32, i8 }
%struct.clk_master_characteristics = type { %struct.clk_range, [5 x i32], i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.clk_programmable_layout = type { i8, i8, i8, i8, i8 }
%struct.clk_pcr_layout = type { i32, i32, i32, i32, i32 }
%struct.anon.6 = type { ptr, i8 }
%struct.pmc_data = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, [0 x ptr] }

@__of_table_sama5d4_pmc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d4-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d4_pmc_setup }, section "__clk_of_table", align 4
@.str = private unnamed_addr constant [12 x i8] c"clock-names\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"slow_clk\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"main_xtal\00", align 1
@sama5d4_systemck = internal unnamed_addr constant [8 x %struct.anon.4] [%struct.anon.4 { ptr @.str.16, ptr @.str.11, i8 2 }, %struct.anon.4 { ptr @.str.17, ptr @.str.11, i8 3 }, %struct.anon.4 { ptr @.str.18, ptr @.str.14, i8 4 }, %struct.anon.4 { ptr @.str.19, ptr @.str.13, i8 6 }, %struct.anon.4 { ptr @.str.20, ptr @.str.13, i8 7 }, %struct.anon.4 { ptr @.str.21, ptr @.str.22, i8 8 }, %struct.anon.4 { ptr @.str.23, ptr @.str.24, i8 9 }, %struct.anon.4 { ptr @.str.25, ptr @.str.26, i8 10 }], align 4
@sama5d4_periph32ck = internal unnamed_addr constant [44 x %struct.anon.5] [%struct.anon.5 { ptr @.str.27, i8 5 }, %struct.anon.5 { ptr @.str.28, i8 6 }, %struct.anon.5 { ptr @.str.29, i8 7 }, %struct.anon.5 { ptr @.str.30, i8 9 }, %struct.anon.5 { ptr @.str.31, i8 12 }, %struct.anon.5 { ptr @.str.32, i8 14 }, %struct.anon.5 { ptr @.str.33, i8 15 }, %struct.anon.5 { ptr @.str.34, i8 17 }, %struct.anon.5 { ptr @.str.35, i8 22 }, %struct.anon.5 { ptr @.str.36, i8 23 }, %struct.anon.5 { ptr @.str.37, i8 24 }, %struct.anon.5 { ptr @.str.38, i8 25 }, %struct.anon.5 { ptr @.str.39, i8 26 }, %struct.anon.5 { ptr @.str.40, i8 27 }, %struct.anon.5 { ptr @.str.41, i8 28 }, %struct.anon.5 { ptr @.str.42, i8 29 }, %struct.anon.5 { ptr @.str.43, i8 30 }, %struct.anon.5 { ptr @.str.44, i8 31 }, %struct.anon.5 { ptr @.str.45, i8 32 }, %struct.anon.5 { ptr @.str.46, i8 33 }, %struct.anon.5 { ptr @.str.47, i8 34 }, %struct.anon.5 { ptr @.str.48, i8 35 }, %struct.anon.5 { ptr @.str.49, i8 36 }, %struct.anon.5 { ptr @.str.50, i8 37 }, %struct.anon.5 { ptr @.str.51, i8 38 }, %struct.anon.5 { ptr @.str.52, i8 39 }, %struct.anon.5 { ptr @.str.53, i8 40 }, %struct.anon.5 { ptr @.str.54, i8 41 }, %struct.anon.5 { ptr @.str.55, i8 42 }, %struct.anon.5 { ptr @.str.56, i8 43 }, %struct.anon.5 { ptr @.str.57, i8 44 }, %struct.anon.5 { ptr @.str.58, i8 45 }, %struct.anon.5 { ptr @.str.59, i8 46 }, %struct.anon.5 { ptr @.str.60, i8 47 }, %struct.anon.5 { ptr @.str.61, i8 48 }, %struct.anon.5 { ptr @.str.62, i8 49 }, %struct.anon.5 { ptr @.str.63, i8 53 }, %struct.anon.5 { ptr @.str.64, i8 54 }, %struct.anon.5 { ptr @.str.65, i8 55 }, %struct.anon.5 { ptr @.str.66, i8 57 }, %struct.anon.5 { ptr @.str.67, i8 59 }, %struct.anon.5 { ptr @.str.68, i8 61 }, %struct.anon.5 { ptr @.str.69, i8 62 }, %struct.anon.5 { ptr @.str.70, i8 63 }], align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"main_rc_osc\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"atmel,osc-bypass\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"main_osc\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"mainck\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"pllack\00", align 1
@sama5d3_pll_layout = external dso_local constant %struct.clk_pll_layout, align 4
@plla_characteristics = internal constant %struct.clk_pll_characteristics { %struct.clk_range { i32 12000000, i32 12000000 }, i32 1, ptr @plla_outputs, ptr @plla_icpll, ptr @plla_out, i8 0 }, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"plladivck\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"utmick\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"masterck_pres\00", align 1
@at91sam9x5_master_layout = external dso_local constant %struct.clk_master_layout, align 4
@mck_characteristics = internal constant %struct.clk_master_characteristics { %struct.clk_range { i32 125000000, i32 200000000 }, [5 x i32] [i32 1, i32 2, i32 4, i32 3, i32 0], i8 0 }, align 4
@mck_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"masterck_div\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"h32mxck\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"usbck\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"smdclk\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"prog%d\00", align 1
@at91sam9x5_programmable_layout = external dso_local constant %struct.clk_programmable_layout, align 1
@pmc_pcr_lock = external dso_local global %struct.spinlock, align 4
@sama5d4_pcr_layout = internal constant %struct.clk_pcr_layout { i32 268, i32 4096, i32 0, i32 0, i32 127 }, align 4
@sama5d4_periphck = internal unnamed_addr constant [9 x %struct.anon.6] [%struct.anon.6 { ptr @.str.71, i8 8 }, %struct.anon.6 { ptr @.str.72, i8 10 }, %struct.anon.6 { ptr @.str.73, i8 13 }, %struct.anon.6 { ptr @.str.74, i8 16 }, %struct.anon.6 { ptr @.str.75, i8 18 }, %struct.anon.6 { ptr @.str.76, i8 19 }, %struct.anon.6 { ptr @.str.77, i8 50 }, %struct.anon.6 { ptr @.str.78, i8 51 }, %struct.anon.6 { ptr @.str.79, i8 52 }], align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"ddrck\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"lcdck\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"smdck\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"uhpck\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"udpck\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"pck0\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"prog0\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"pck1\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"prog1\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"pck2\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"prog2\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"pioD_clk\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"usart0_clk\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"usart1_clk\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"icm_clk\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"aes_clk\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"tdes_clk\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"sha_clk\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"matrix1_clk\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"hsmc_clk\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"pioA_clk\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"pioB_clk\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"pioC_clk\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"pioE_clk\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"uart0_clk\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"uart1_clk\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"usart2_clk\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"usart3_clk\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"usart4_clk\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"twi0_clk\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"twi1_clk\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"twi2_clk\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"mci0_clk\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"mci1_clk\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"spi0_clk\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"spi1_clk\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"spi2_clk\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"tcb0_clk\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"tcb1_clk\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"tcb2_clk\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"pwm_clk\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"adc_clk\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"dbgu_clk\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"uhphs_clk\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"udphs_clk\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"ssc0_clk\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"ssc1_clk\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"trng_clk\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"macb0_clk\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"macb1_clk\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"fuse_clk\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"securam_clk\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"smd_clk\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"twi3_clk\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"catb_clk\00", align 1
@plla_outputs = internal constant [1 x %struct.clk_range] [%struct.clk_range { i32 600000000, i32 1200000000 }], align 4
@plla_icpll = internal global [1 x i16] zeroinitializer, align 2
@plla_out = internal global [1 x i8] zeroinitializer, align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"dma0_clk\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"cpkcc_clk\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"aesb_clk\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"mpddr_clk\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"matrix0_clk\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"vdec_clk\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"dma1_clk\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"lcdc_clk\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"isi_clk\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_sama5d4_pmc], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sama5d4_pmc_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca %struct.clk_range, align 8
  %3 = alloca [5 x ptr], align 4
  %4 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  store i64 0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !8
  %5 = tail call i32 @of_property_match_string(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #6
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %131, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef %5) #6
  %9 = tail call i32 @of_property_match_string(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #6
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %131, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef %9) #6
  %13 = tail call ptr @device_node_to_regmap(ptr noundef %0) #6
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %131, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @pmc_data_allocate(i32 noundef 8, i32 noundef 11, i32 noundef 64, i32 noundef 0, i32 noundef 3) #6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %131, label %18

18:                                               ; preds = %15
  %19 = tail call ptr @at91_clk_register_main_rc_osc(ptr noundef %13, ptr noundef nonnull @.str.3, i32 noundef 12000000, i32 noundef 100000000) #7
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %130, label %21

21:                                               ; preds = %18
  %22 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef null) #6
  %23 = icmp ne ptr %22, null
  %24 = tail call ptr @at91_clk_register_main_osc(ptr noundef %13, ptr noundef nonnull @.str.5, ptr noundef %12, i1 noundef zeroext %23) #7
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %130, label %26

26:                                               ; preds = %21
  store ptr @.str.3, ptr %3, align 4
  %27 = getelementptr inbounds [5 x ptr], ptr %3, i32 0, i32 1
  store ptr @.str.5, ptr %27, align 4
  %28 = call ptr @at91_clk_register_sam9x5_main(ptr noundef %13, ptr noundef nonnull @.str.6, ptr noundef nonnull %3, i32 noundef 2) #7
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %130, label %30

30:                                               ; preds = %26
  %31 = call ptr @at91_clk_register_pll(ptr noundef %13, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i8 noundef zeroext 0, ptr noundef nonnull @sama5d3_pll_layout, ptr noundef nonnull @plla_characteristics) #7
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %130, label %33

33:                                               ; preds = %30
  %34 = call ptr @at91_clk_register_plldiv(ptr noundef %13, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7) #7
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %130, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.pmc_data, ptr %16, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr ptr, ptr %38, i32 7
  store ptr %34, ptr %39, align 4
  %40 = call ptr @at91_clk_register_utmi(ptr noundef %13, ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.6) #7
  %41 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %130, label %42

42:                                               ; preds = %36
  %43 = load ptr, ptr %37, align 4
  %44 = getelementptr ptr, ptr %43, i32 2
  store ptr %40, ptr %44, align 4
  store ptr %8, ptr %3, align 4
  store ptr @.str.6, ptr %27, align 4
  %45 = getelementptr inbounds [5 x ptr], ptr %3, i32 0, i32 2
  store ptr @.str.8, ptr %45, align 4
  %46 = getelementptr inbounds [5 x ptr], ptr %3, i32 0, i32 3
  store ptr @.str.9, ptr %46, align 4
  %47 = call ptr @at91_clk_register_master_pres(ptr noundef %13, ptr noundef nonnull @.str.10, i32 noundef 4, ptr noundef nonnull %3, ptr noundef nonnull @at91sam9x5_master_layout, ptr noundef nonnull @mck_characteristics, ptr noundef nonnull @mck_lock, i32 noundef 1, i32 noundef -2147483648) #7
  %48 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %130, label %49

49:                                               ; preds = %42
  %50 = call ptr @at91_clk_register_master_div(ptr noundef %13, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, ptr noundef nonnull @at91sam9x5_master_layout, ptr noundef nonnull @mck_characteristics, ptr noundef nonnull @mck_lock, i32 noundef 1, i32 noundef 0) #7
  %51 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %130, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %37, align 4
  %54 = getelementptr ptr, ptr %53, i32 1
  store ptr %50, ptr %54, align 4
  %55 = call ptr @at91_clk_register_h32mx(ptr noundef %13, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11) #7
  %56 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %130, label %57

57:                                               ; preds = %52
  %58 = load ptr, ptr %37, align 4
  %59 = getelementptr ptr, ptr %58, i32 4
  store ptr %55, ptr %59, align 4
  store ptr @.str.8, ptr %3, align 4
  store ptr @.str.9, ptr %27, align 4
  %60 = call ptr @at91sam9x5_clk_register_usb(ptr noundef %13, ptr noundef nonnull @.str.13, ptr noundef nonnull %3, i8 noundef zeroext 2) #7
  %61 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %130, label %62

62:                                               ; preds = %57
  store ptr @.str.8, ptr %3, align 4
  store ptr @.str.9, ptr %27, align 4
  %63 = call ptr @at91sam9x5_clk_register_smd(ptr noundef %13, ptr noundef nonnull @.str.14, ptr noundef nonnull %3, i8 noundef zeroext 2) #7
  %64 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %130, label %65

65:                                               ; preds = %62
  store ptr %8, ptr %3, align 4
  store ptr @.str.6, ptr %27, align 4
  store ptr @.str.8, ptr %45, align 4
  store ptr @.str.9, ptr %46, align 4
  %66 = getelementptr inbounds [5 x ptr], ptr %3, i32 0, i32 4
  store ptr @.str.11, ptr %66, align 4
  %67 = getelementptr inbounds %struct.pmc_data, ptr %16, i32 0, i32 9
  br label %70

68:                                               ; preds = %77
  %69 = getelementptr inbounds %struct.pmc_data, ptr %16, i32 0, i32 3
  br label %84

70:                                               ; preds = %77, %65
  %71 = phi i32 [ 0, %65 ], [ %80, %77 ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i32 6, i1 false), !annotation !8
  %72 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 6, ptr noundef nonnull @.str.15, i32 noundef %71)
  %73 = trunc i32 %71 to i8
  %74 = call ptr @at91_clk_register_programmable(ptr noundef %13, ptr noundef nonnull %4, ptr noundef nonnull %3, i8 noundef zeroext 5, i8 noundef zeroext %73, ptr noundef nonnull @at91sam9x5_programmable_layout, ptr noundef null) #7
  %75 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #6
  br label %130

77:                                               ; preds = %70
  %78 = load ptr, ptr %67, align 4
  %79 = getelementptr ptr, ptr %78, i32 %71
  store ptr %74, ptr %79, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #6
  %80 = add nuw nsw i32 %71, 1
  %81 = icmp eq i32 %80, 3
  br i1 %81, label %68, label %70

82:                                               ; preds = %94
  %83 = getelementptr inbounds %struct.pmc_data, ptr %16, i32 0, i32 5
  br label %100

84:                                               ; preds = %94, %68
  %85 = phi i32 [ 0, %68 ], [ %98, %94 ]
  %86 = getelementptr [8 x %struct.anon.4], ptr @sama5d4_systemck, i32 0, i32 %85
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr [8 x %struct.anon.4], ptr @sama5d4_systemck, i32 0, i32 %85, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr [8 x %struct.anon.4], ptr @sama5d4_systemck, i32 0, i32 %85, i32 2
  %91 = load i8, ptr %90, align 4
  %92 = call ptr @at91_clk_register_system(ptr noundef %13, ptr noundef %87, ptr noundef %89, i8 noundef zeroext %91) #7
  %93 = icmp ugt ptr %92, inttoptr (i32 -4096 to ptr)
  br i1 %93, label %130, label %94

94:                                               ; preds = %84
  %95 = load ptr, ptr %69, align 4
  %96 = zext i8 %91 to i32
  %97 = getelementptr ptr, ptr %95, i32 %96
  store ptr %92, ptr %97, align 4
  %98 = add nuw nsw i32 %85, 1
  %99 = icmp eq i32 %98, 8
  br i1 %99, label %82, label %84

100:                                              ; preds = %109, %82
  %101 = phi i32 [ 0, %82 ], [ %112, %109 ]
  %102 = getelementptr [9 x %struct.anon.6], ptr @sama5d4_periphck, i32 0, i32 %101
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr [9 x %struct.anon.6], ptr @sama5d4_periphck, i32 0, i32 %101, i32 1
  %105 = load i8, ptr %104, align 4
  %106 = zext i8 %105 to i32
  %107 = call ptr @at91_clk_register_sam9x5_peripheral(ptr noundef %13, ptr noundef nonnull @pmc_pcr_lock, ptr noundef nonnull @sama5d4_pcr_layout, ptr noundef %103, ptr noundef nonnull @.str.11, i32 noundef %106, ptr noundef nonnull %2, i32 noundef -2147483648) #7
  %108 = icmp ugt ptr %107, inttoptr (i32 -4096 to ptr)
  br i1 %108, label %130, label %109

109:                                              ; preds = %100
  %110 = load ptr, ptr %83, align 4
  %111 = getelementptr ptr, ptr %110, i32 %106
  store ptr %107, ptr %111, align 4
  %112 = add nuw nsw i32 %101, 1
  %113 = icmp eq i32 %112, 9
  br i1 %113, label %114, label %100

114:                                              ; preds = %123, %109
  %115 = phi i32 [ %126, %123 ], [ 0, %109 ]
  %116 = getelementptr [44 x %struct.anon.5], ptr @sama5d4_periph32ck, i32 0, i32 %115
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr [44 x %struct.anon.5], ptr @sama5d4_periph32ck, i32 0, i32 %115, i32 1
  %119 = load i8, ptr %118, align 4
  %120 = zext i8 %119 to i32
  %121 = call ptr @at91_clk_register_sam9x5_peripheral(ptr noundef %13, ptr noundef nonnull @pmc_pcr_lock, ptr noundef nonnull @sama5d4_pcr_layout, ptr noundef %117, ptr noundef nonnull @.str.12, i32 noundef %120, ptr noundef nonnull %2, i32 noundef -2147483648) #7
  %122 = icmp ugt ptr %121, inttoptr (i32 -4096 to ptr)
  br i1 %122, label %130, label %123

123:                                              ; preds = %114
  %124 = load ptr, ptr %83, align 4
  %125 = getelementptr ptr, ptr %124, i32 %120
  store ptr %121, ptr %125, align 4
  %126 = add nuw nsw i32 %115, 1
  %127 = icmp eq i32 %126, 44
  br i1 %127, label %128, label %114

128:                                              ; preds = %123
  %129 = call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_pmc_get, ptr noundef nonnull %16) #6
  br label %131

130:                                              ; preds = %114, %100, %84, %76, %62, %57, %52, %49, %42, %36, %33, %30, %26, %21, %18
  call void @kfree(ptr noundef nonnull %16) #6
  br label %131

131:                                              ; preds = %130, %128, %15, %11, %7, %1
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #6
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
declare dso_local ptr @at91_clk_register_utmi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_master_pres(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_master_div(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_h32mx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91sam9x5_clk_register_usb(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91sam9x5_clk_register_smd(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4 section ".init.text"

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
