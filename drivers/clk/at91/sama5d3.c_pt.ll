; ModuleID = '/llk/IR/drivers/clk/at91/sama5d3.c_pt.bc'
source_filename = "../drivers/clk/at91/sama5d3.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.anon.4 = type { ptr, ptr, i8 }
%struct.anon.5 = type { ptr, i8, %struct.clk_range }
%struct.clk_range = type { i32, i32 }
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
%struct.pmc_data = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, [0 x ptr] }

@__of_table_sama5d3_pmc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d3-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d3_pmc_setup }, section "__clk_of_table", align 4
@.str = private unnamed_addr constant [12 x i8] c"clock-names\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"slow_clk\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"main_xtal\00", align 1
@sama5d3_systemck = internal unnamed_addr constant [8 x %struct.anon.4] [%struct.anon.4 { ptr @.str.15, ptr @.str.11, i8 2 }, %struct.anon.4 { ptr @.str.16, ptr @.str.11, i8 3 }, %struct.anon.4 { ptr @.str.17, ptr @.str.13, i8 4 }, %struct.anon.4 { ptr @.str.18, ptr @.str.12, i8 6 }, %struct.anon.4 { ptr @.str.19, ptr @.str.12, i8 7 }, %struct.anon.4 { ptr @.str.20, ptr @.str.21, i8 8 }, %struct.anon.4 { ptr @.str.22, ptr @.str.23, i8 9 }, %struct.anon.4 { ptr @.str.24, ptr @.str.25, i8 10 }], align 4
@sama5d3_periphck = internal constant [43 x %struct.anon.5] [%struct.anon.5 { ptr @.str.26, i8 2, %struct.clk_range zeroinitializer }, %struct.anon.5 { ptr @.str.27, i8 5, %struct.clk_range zeroinitializer }, %struct.anon.5 { ptr @.str.28, i8 6, %struct.clk_range zeroinitializer }, %struct.anon.5 { ptr @.str.29, i8 7, %struct.clk_range zeroinitializer }, %struct.anon.5 { ptr @.str.30, i8 8, %struct.clk_range zeroinitializer }, %struct.anon.5 { ptr @.str.31, i8 9, %struct.clk_range zeroinitializer }, %struct.anon.5 { ptr @.str.32, i8 10, %struct.clk_range zeroinitializer }, %struct.anon.5 { ptr @.str.33, i8 12, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.34, i8 13, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.35, i8 14, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.36, i8 15, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.37, i8 16, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.38, i8 17, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.39, i8 18, %struct.clk_range { i32 0, i32 41500000 } }, %struct.anon.5 { ptr @.str.40, i8 19, %struct.clk_range { i32 0, i32 41500000 } }, %struct.anon.5 { ptr @.str.41, i8 20, %struct.clk_range { i32 0, i32 41500000 } }, %struct.anon.5 { ptr @.str.42, i8 21, %struct.clk_range zeroinitializer }, %struct.anon.5 { ptr @.str.43, i8 22, %struct.clk_range zeroinitializer }, %struct.anon.5 { ptr @.str.44, i8 23, %struct.clk_range zeroinitializer }, %struct.anon.5 { ptr @.str.45, i8 24, %struct.clk_range { i32 0, i32 166000000 } }, %struct.anon.5 { ptr @.str.46, i8 25, %struct.clk_range { i32 0, i32 166000000 } }, %struct.anon.5 { ptr @.str.47, i8 26, %struct.clk_range { i32 0, i32 166000000 } }, %struct.anon.5 { ptr @.str.48, i8 27, %struct.clk_range { i32 0, i32 166000000 } }, %struct.anon.5 { ptr @.str.49, i8 28, %struct.clk_range zeroinitializer }, %struct.anon.5 { ptr @.str.50, i8 29, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.51, i8 30, %struct.clk_range zeroinitializer }, %struct.anon.5 { ptr @.str.52, i8 31, %struct.clk_range zeroinitializer }, %struct.anon.5 { ptr @.str.53, i8 32, %struct.clk_range zeroinitializer }, %struct.anon.5 { ptr @.str.54, i8 33, %struct.clk_range zeroinitializer }, %struct.anon.5 { ptr @.str.55, i8 34, %struct.clk_range zeroinitializer }, %struct.anon.5 { ptr @.str.56, i8 35, %struct.clk_range zeroinitializer }, %struct.anon.5 { ptr @.str.57, i8 36, %struct.clk_range zeroinitializer }, %struct.anon.5 { ptr @.str.58, i8 37, %struct.clk_range zeroinitializer }, %struct.anon.5 { ptr @.str.59, i8 38, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.60, i8 39, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.61, i8 40, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.62, i8 41, %struct.clk_range { i32 0, i32 83000000 } }, %struct.anon.5 { ptr @.str.63, i8 42, %struct.clk_range zeroinitializer }, %struct.anon.5 { ptr @.str.64, i8 43, %struct.clk_range zeroinitializer }, %struct.anon.5 { ptr @.str.65, i8 44, %struct.clk_range zeroinitializer }, %struct.anon.5 { ptr @.str.66, i8 45, %struct.clk_range zeroinitializer }, %struct.anon.5 { ptr @.str.67, i8 48, %struct.clk_range zeroinitializer }, %struct.anon.5 { ptr @.str.68, i8 49, %struct.clk_range zeroinitializer }], align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"main_rc_osc\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"atmel,osc-bypass\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"main_osc\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"mainck\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"pllack\00", align 1
@sama5d3_pll_layout = external dso_local constant %struct.clk_pll_layout, align 4
@plla_characteristics = internal constant %struct.clk_pll_characteristics { %struct.clk_range { i32 8000000, i32 50000000 }, i32 1, ptr @plla_outputs, ptr @plla_icpll, ptr @plla_out, i8 0 }, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"plladivck\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"utmick\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"masterck_pres\00", align 1
@at91sam9x5_master_layout = external dso_local constant %struct.clk_master_layout, align 4
@mck_characteristics = internal constant %struct.clk_master_characteristics { %struct.clk_range { i32 0, i32 166000000 }, [5 x i32] [i32 1, i32 2, i32 4, i32 3, i32 0], i8 0 }, align 4
@mck_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"masterck_div\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"usbck\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"smdclk\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"prog%d\00", align 1
@at91sam9x5_programmable_layout = external dso_local constant %struct.clk_programmable_layout, align 1
@pmc_pcr_lock = external dso_local global %struct.spinlock, align 4
@sama5d3_pcr_layout = internal constant %struct.clk_pcr_layout { i32 268, i32 4096, i32 196608, i32 0, i32 127 }, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"ddrck\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"lcdck\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"smdck\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"uhpck\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"udpck\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"pck0\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"prog0\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"pck1\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"prog1\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"pck2\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"prog2\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"dbgu_clk\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"hsmc_clk\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"pioA_clk\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"pioB_clk\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"pioC_clk\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"pioD_clk\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"pioE_clk\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"usart0_clk\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"usart1_clk\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"usart2_clk\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"usart3_clk\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"uart0_clk\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"uart1_clk\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"twi0_clk\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"twi1_clk\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"twi2_clk\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"mci0_clk\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"mci1_clk\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"mci2_clk\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"spi0_clk\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"spi1_clk\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"tcb0_clk\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"tcb1_clk\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"pwm_clk\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"adc_clk\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"dma0_clk\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"dma1_clk\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"uhphs_clk\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"udphs_clk\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"macb0_clk\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"macb1_clk\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"lcdc_clk\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"isi_clk\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"ssc0_clk\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"ssc1_clk\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"can0_clk\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"can1_clk\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"sha_clk\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"aes_clk\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"tdes_clk\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"trng_clk\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"fuse_clk\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"mpddr_clk\00", align 1
@plla_outputs = internal constant [1 x %struct.clk_range] [%struct.clk_range { i32 400000000, i32 1000000000 }], align 4
@plla_icpll = internal global [1 x i16] zeroinitializer, align 2
@plla_out = internal global [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_sama5d3_pmc], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sama5d3_pmc_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca [5 x ptr], align 4
  %3 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !8
  %4 = tail call i32 @of_property_match_string(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #6
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %112, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef %4) #6
  %8 = tail call i32 @of_property_match_string(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #6
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %112, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef %8) #6
  %12 = tail call ptr @device_node_to_regmap(ptr noundef %0) #6
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %112, label %14

14:                                               ; preds = %10
  %15 = tail call ptr @pmc_data_allocate(i32 noundef 8, i32 noundef 11, i32 noundef 50, i32 noundef 0, i32 noundef 3) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %112, label %17

17:                                               ; preds = %14
  %18 = tail call ptr @at91_clk_register_main_rc_osc(ptr noundef %12, ptr noundef nonnull @.str.3, i32 noundef 12000000, i32 noundef 50000000) #7
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %111, label %20

20:                                               ; preds = %17
  %21 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef null) #6
  %22 = icmp ne ptr %21, null
  %23 = tail call ptr @at91_clk_register_main_osc(ptr noundef %12, ptr noundef nonnull @.str.5, ptr noundef %11, i1 noundef zeroext %22) #7
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %111, label %25

25:                                               ; preds = %20
  store ptr @.str.3, ptr %2, align 4
  %26 = getelementptr inbounds [5 x ptr], ptr %2, i32 0, i32 1
  store ptr @.str.5, ptr %26, align 4
  %27 = call ptr @at91_clk_register_sam9x5_main(ptr noundef %12, ptr noundef nonnull @.str.6, ptr noundef nonnull %2, i32 noundef 2) #7
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %111, label %29

29:                                               ; preds = %25
  %30 = call ptr @at91_clk_register_pll(ptr noundef %12, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i8 noundef zeroext 0, ptr noundef nonnull @sama5d3_pll_layout, ptr noundef nonnull @plla_characteristics) #7
  %31 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %111, label %32

32:                                               ; preds = %29
  %33 = call ptr @at91_clk_register_plldiv(ptr noundef %12, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7) #7
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %111, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.pmc_data, ptr %15, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr ptr, ptr %37, i32 7
  store ptr %33, ptr %38, align 4
  %39 = call ptr @at91_clk_register_utmi(ptr noundef %12, ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.6) #7
  %40 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %111, label %41

41:                                               ; preds = %35
  %42 = load ptr, ptr %36, align 4
  %43 = getelementptr ptr, ptr %42, i32 2
  store ptr %39, ptr %43, align 4
  store ptr %7, ptr %2, align 4
  store ptr @.str.6, ptr %26, align 4
  %44 = getelementptr inbounds [5 x ptr], ptr %2, i32 0, i32 2
  store ptr @.str.8, ptr %44, align 4
  %45 = getelementptr inbounds [5 x ptr], ptr %2, i32 0, i32 3
  store ptr @.str.9, ptr %45, align 4
  %46 = call ptr @at91_clk_register_master_pres(ptr noundef %12, ptr noundef nonnull @.str.10, i32 noundef 4, ptr noundef nonnull %2, ptr noundef nonnull @at91sam9x5_master_layout, ptr noundef nonnull @mck_characteristics, ptr noundef nonnull @mck_lock, i32 noundef 1, i32 noundef -2147483648) #7
  %47 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %111, label %48

48:                                               ; preds = %41
  %49 = call ptr @at91_clk_register_master_div(ptr noundef %12, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, ptr noundef nonnull @at91sam9x5_master_layout, ptr noundef nonnull @mck_characteristics, ptr noundef nonnull @mck_lock, i32 noundef 1, i32 noundef 0) #7
  %50 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %111, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr %36, align 4
  %53 = getelementptr ptr, ptr %52, i32 1
  store ptr %49, ptr %53, align 4
  store ptr @.str.8, ptr %2, align 4
  store ptr @.str.9, ptr %26, align 4
  %54 = call ptr @at91sam9x5_clk_register_usb(ptr noundef %12, ptr noundef nonnull @.str.12, ptr noundef nonnull %2, i8 noundef zeroext 2) #7
  %55 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %111, label %56

56:                                               ; preds = %51
  %57 = call ptr @at91sam9x5_clk_register_smd(ptr noundef %12, ptr noundef nonnull @.str.13, ptr noundef nonnull %2, i8 noundef zeroext 2) #7
  %58 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %111, label %59

59:                                               ; preds = %56
  store ptr %7, ptr %2, align 4
  store ptr @.str.6, ptr %26, align 4
  store ptr @.str.8, ptr %44, align 4
  store ptr @.str.9, ptr %45, align 4
  %60 = getelementptr inbounds [5 x ptr], ptr %2, i32 0, i32 4
  store ptr @.str.11, ptr %60, align 4
  %61 = getelementptr inbounds %struct.pmc_data, ptr %15, i32 0, i32 9
  br label %64

62:                                               ; preds = %71
  %63 = getelementptr inbounds %struct.pmc_data, ptr %15, i32 0, i32 3
  br label %78

64:                                               ; preds = %71, %59
  %65 = phi i32 [ 0, %59 ], [ %74, %71 ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false), !annotation !8
  %66 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 6, ptr noundef nonnull @.str.14, i32 noundef %65)
  %67 = trunc i32 %65 to i8
  %68 = call ptr @at91_clk_register_programmable(ptr noundef %12, ptr noundef nonnull %3, ptr noundef nonnull %2, i8 noundef zeroext 5, i8 noundef zeroext %67, ptr noundef nonnull @at91sam9x5_programmable_layout, ptr noundef null) #7
  %69 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #6
  br label %111

71:                                               ; preds = %64
  %72 = load ptr, ptr %61, align 4
  %73 = getelementptr ptr, ptr %72, i32 %65
  store ptr %68, ptr %73, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #6
  %74 = add nuw nsw i32 %65, 1
  %75 = icmp eq i32 %74, 3
  br i1 %75, label %62, label %64

76:                                               ; preds = %88
  %77 = getelementptr inbounds %struct.pmc_data, ptr %15, i32 0, i32 5
  br label %94

78:                                               ; preds = %88, %62
  %79 = phi i32 [ 0, %62 ], [ %92, %88 ]
  %80 = getelementptr [8 x %struct.anon.4], ptr @sama5d3_systemck, i32 0, i32 %79
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr [8 x %struct.anon.4], ptr @sama5d3_systemck, i32 0, i32 %79, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr [8 x %struct.anon.4], ptr @sama5d3_systemck, i32 0, i32 %79, i32 2
  %85 = load i8, ptr %84, align 4
  %86 = call ptr @at91_clk_register_system(ptr noundef %12, ptr noundef %81, ptr noundef %83, i8 noundef zeroext %85) #7
  %87 = icmp ugt ptr %86, inttoptr (i32 -4096 to ptr)
  br i1 %87, label %111, label %88

88:                                               ; preds = %78
  %89 = load ptr, ptr %63, align 4
  %90 = zext i8 %85 to i32
  %91 = getelementptr ptr, ptr %89, i32 %90
  store ptr %86, ptr %91, align 4
  %92 = add nuw nsw i32 %79, 1
  %93 = icmp eq i32 %92, 8
  br i1 %93, label %76, label %78

94:                                               ; preds = %104, %76
  %95 = phi i32 [ 0, %76 ], [ %107, %104 ]
  %96 = getelementptr [43 x %struct.anon.5], ptr @sama5d3_periphck, i32 0, i32 %95
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr [43 x %struct.anon.5], ptr @sama5d3_periphck, i32 0, i32 %95, i32 1
  %99 = load i8, ptr %98, align 4
  %100 = zext i8 %99 to i32
  %101 = getelementptr [43 x %struct.anon.5], ptr @sama5d3_periphck, i32 0, i32 %95, i32 2
  %102 = call ptr @at91_clk_register_sam9x5_peripheral(ptr noundef %12, ptr noundef nonnull @pmc_pcr_lock, ptr noundef nonnull @sama5d3_pcr_layout, ptr noundef %97, ptr noundef nonnull @.str.11, i32 noundef %100, ptr noundef %101, i32 noundef -2147483648) #7
  %103 = icmp ugt ptr %102, inttoptr (i32 -4096 to ptr)
  br i1 %103, label %111, label %104

104:                                              ; preds = %94
  %105 = load ptr, ptr %77, align 4
  %106 = getelementptr ptr, ptr %105, i32 %100
  store ptr %102, ptr %106, align 4
  %107 = add nuw nsw i32 %95, 1
  %108 = icmp eq i32 %107, 43
  br i1 %108, label %109, label %94

109:                                              ; preds = %104
  %110 = call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_pmc_get, ptr noundef nonnull %15) #6
  br label %112

111:                                              ; preds = %94, %78, %70, %56, %51, %48, %41, %35, %32, %29, %25, %20, %17
  call void @kfree(ptr noundef nonnull %15) #6
  br label %112

112:                                              ; preds = %111, %109, %14, %10, %6, %1
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #6
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
