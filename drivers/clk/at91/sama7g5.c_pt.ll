; ModuleID = '/llk/IR/drivers/clk/at91/sama7g5.c_pt.bc'
source_filename = "../drivers/clk/at91/sama7g5.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.anon.4 = type { ptr, ptr, i8 }
%struct.anon.5 = type { ptr, ptr, %struct.clk_range, i8, i8 }
%struct.clk_range = type { i32, i32 }
%struct.anon.6 = type { ptr, [8 x ptr], [8 x i8], %struct.clk_range, i32, i8, i8 }
%struct.anon.7 = type { ptr, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.clk_master_layout = type { i32, i32, i8 }
%struct.clk_master_characteristics = type { %struct.clk_range, [5 x i32], i8 }
%struct.anon.8 = type { ptr, [4 x ptr], i32, i8, [4 x i8], i8, i8 }
%struct.clk_programmable_layout = type { i8, i8, i8, i8, i8 }
%struct.clk_pcr_layout = type { i32, i32, i32, i32, i32 }
%struct.clk_pll_layout = type { i32, i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.clk_pll_characteristics = type { %struct.clk_range, i32, ptr, ptr, ptr, i8 }
%struct.pmc_data = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, [0 x ptr] }

@__of_table_sama7g5_pmc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sama7g5-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama7g5_pmc_setup }, section "__clk_of_table", align 4
@.str = private unnamed_addr constant [12 x i8] c"clock-names\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"td_slck\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"md_slck\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"main_xtal\00", align 1
@sama7g5_systemck = internal unnamed_addr constant [8 x %struct.anon.4] [%struct.anon.4 { ptr @.str.18, ptr @.str.19, i8 8 }, %struct.anon.4 { ptr @.str.20, ptr @.str.21, i8 9 }, %struct.anon.4 { ptr @.str.22, ptr @.str.23, i8 10 }, %struct.anon.4 { ptr @.str.24, ptr @.str.25, i8 11 }, %struct.anon.4 { ptr @.str.26, ptr @.str.27, i8 12 }, %struct.anon.4 { ptr @.str.28, ptr @.str.29, i8 13 }, %struct.anon.4 { ptr @.str.30, ptr @.str.31, i8 14 }, %struct.anon.4 { ptr @.str.32, ptr @.str.33, i8 15 }], align 4
@sama7g5_periphck = internal constant [72 x %struct.anon.5] [%struct.anon.5 { ptr @.str.34, ptr @.str.9, %struct.clk_range zeroinitializer, i8 0, i8 11 }, %struct.anon.5 { ptr @.str.35, ptr @.str.9, %struct.clk_range zeroinitializer, i8 0, i8 18 }, %struct.anon.5 { ptr @.str.36, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 19 }, %struct.anon.5 { ptr @.str.38, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 21 }, %struct.anon.5 { ptr @.str.39, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 22 }, %struct.anon.5 { ptr @.str.40, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 23 }, %struct.anon.5 { ptr @.str.41, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 24 }, %struct.anon.5 { ptr @.str.42, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 25 }, %struct.anon.5 { ptr @.str.43, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 27 }, %struct.anon.5 { ptr @.str.44, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 28 }, %struct.anon.5 { ptr @.str.45, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 30 }, %struct.anon.5 { ptr @.str.46, ptr @.str.9, %struct.clk_range zeroinitializer, i8 0, i8 32 }, %struct.anon.5 { ptr @.str.47, ptr @.str.48, %struct.clk_range { i32 0, i32 266000000 }, i8 1, i8 33 }, %struct.anon.5 { ptr @.str.49, ptr @.str.48, %struct.clk_range { i32 0, i32 266000000 }, i8 1, i8 34 }, %struct.anon.5 { ptr @.str.50, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 37 }, %struct.anon.5 { ptr @.str.51, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 38 }, %struct.anon.5 { ptr @.str.52, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 39 }, %struct.anon.5 { ptr @.str.53, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 40 }, %struct.anon.5 { ptr @.str.54, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 41 }, %struct.anon.5 { ptr @.str.55, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 42 }, %struct.anon.5 { ptr @.str.56, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 43 }, %struct.anon.5 { ptr @.str.57, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 44 }, %struct.anon.5 { ptr @.str.58, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 45 }, %struct.anon.5 { ptr @.str.59, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 46 }, %struct.anon.5 { ptr @.str.60, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 47 }, %struct.anon.5 { ptr @.str.61, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 48 }, %struct.anon.5 { ptr @.str.62, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 49 }, %struct.anon.5 { ptr @.str.63, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 51 }, %struct.anon.5 { ptr @.str.64, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 52 }, %struct.anon.5 { ptr @.str.65, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 55 }, %struct.anon.5 { ptr @.str.66, ptr @.str.48, %struct.clk_range { i32 0, i32 266000000 }, i8 1, i8 56 }, %struct.anon.5 { ptr @.str.67, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 57 }, %struct.anon.5 { ptr @.str.68, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 58 }, %struct.anon.5 { ptr @.str.69, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 60 }, %struct.anon.5 { ptr @.str.70, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 61 }, %struct.anon.5 { ptr @.str.71, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 62 }, %struct.anon.5 { ptr @.str.72, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 63 }, %struct.anon.5 { ptr @.str.73, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 64 }, %struct.anon.5 { ptr @.str.74, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 65 }, %struct.anon.5 { ptr @.str.75, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 66 }, %struct.anon.5 { ptr @.str.76, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 68 }, %struct.anon.5 { ptr @.str.77, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 69 }, %struct.anon.5 { ptr @.str.78, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 70 }, %struct.anon.5 { ptr @.str.79, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 71 }, %struct.anon.5 { ptr @.str.80, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 72 }, %struct.anon.5 { ptr @.str.81, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 73 }, %struct.anon.5 { ptr @.str.82, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 74 }, %struct.anon.5 { ptr @.str.83, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 75 }, %struct.anon.5 { ptr @.str.84, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 77 }, %struct.anon.5 { ptr @.str.85, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 78 }, %struct.anon.5 { ptr @.str.86, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 79 }, %struct.anon.5 { ptr @.str.87, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 80 }, %struct.anon.5 { ptr @.str.88, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 81 }, %struct.anon.5 { ptr @.str.89, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 82 }, %struct.anon.5 { ptr @.str.90, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 83 }, %struct.anon.5 { ptr @.str.91, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 84 }, %struct.anon.5 { ptr @.str.92, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 85 }, %struct.anon.5 { ptr @.str.93, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 86 }, %struct.anon.5 { ptr @.str.94, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 87 }, %struct.anon.5 { ptr @.str.95, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 88 }, %struct.anon.5 { ptr @.str.96, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 89 }, %struct.anon.5 { ptr @.str.97, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 90 }, %struct.anon.5 { ptr @.str.98, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 91 }, %struct.anon.5 { ptr @.str.99, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 92 }, %struct.anon.5 { ptr @.str.100, ptr @.str.37, %struct.clk_range { i32 0, i32 200000000 }, i8 0, i8 93 }, %struct.anon.5 { ptr @.str.101, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 94 }, %struct.anon.5 { ptr @.str.102, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 95 }, %struct.anon.5 { ptr @.str.103, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 96 }, %struct.anon.5 { ptr @.str.104, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 97 }, %struct.anon.5 { ptr @.str.105, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 104 }, %struct.anon.5 { ptr @.str.106, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 105 }, %struct.anon.5 { ptr @.str.107, ptr @.str.37, %struct.clk_range zeroinitializer, i8 0, i8 106 }], align 4
@sama7g5_gck = internal constant [46 x %struct.anon.6] [%struct.anon.6 { ptr @.str.108, [8 x ptr] [ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\07\09\00\00\00\00\00", %struct.clk_range { i32 0, i32 100000000 }, i32 -2147483648, i8 3, i8 26 }, %struct.anon.6 { ptr @.str.109, [8 x ptr] [ptr @.str.15, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\09\00\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 3, i8 1, i8 30 }, %struct.anon.6 { ptr @.str.110, [8 x ptr] [ptr @.str.12, ptr @.str.13, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\06\07\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 27000000 }, i32 -2147483648, i8 2, i8 33 }, %struct.anon.6 { ptr @.str.111, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 38 }, %struct.anon.6 { ptr @.str.112, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 39 }, %struct.anon.6 { ptr @.str.113, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 40 }, %struct.anon.6 { ptr @.str.114, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 41 }, %struct.anon.6 { ptr @.str.115, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 42 }, %struct.anon.6 { ptr @.str.116, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 43 }, %struct.anon.6 { ptr @.str.117, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 44 }, %struct.anon.6 { ptr @.str.118, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 45 }, %struct.anon.6 { ptr @.str.119, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 46 }, %struct.anon.6 { ptr @.str.120, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 47 }, %struct.anon.6 { ptr @.str.121, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 48 }, %struct.anon.6 { ptr @.str.122, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 49 }, %struct.anon.6 { ptr @.str.123, [8 x ptr] [ptr @.str.16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\0A\00\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 125000000 }, i32 3, i8 1, i8 51 }, %struct.anon.6 { ptr @.str.124, [8 x ptr] [ptr @.str.16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\0A\00\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 50000000 }, i32 -2147483648, i8 1, i8 52 }, %struct.anon.6 { ptr @.str.125, [8 x ptr] [ptr @.str.15, ptr @.str.16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\09\0A\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 300000000 }, i32 -2147483648, i8 2, i8 53 }, %struct.anon.6 { ptr @.str.126, [8 x ptr] [ptr @.str.15, ptr @.str.16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\09\0A\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 300000000 }, i32 -2147483648, i8 2, i8 54 }, %struct.anon.6 { ptr @.str.127, [8 x ptr] [ptr @.str.11, ptr @.str.15, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\09\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 100000000 }, i32 4, i8 2, i8 57 }, %struct.anon.6 { ptr @.str.128, [8 x ptr] [ptr @.str.11, ptr @.str.15, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\09\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 100000000 }, i32 4, i8 2, i8 58 }, %struct.anon.6 { ptr @.str.129, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 61 }, %struct.anon.6 { ptr @.str.130, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 62 }, %struct.anon.6 { ptr @.str.131, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 63 }, %struct.anon.6 { ptr @.str.132, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 64 }, %struct.anon.6 { ptr @.str.133, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 65 }, %struct.anon.6 { ptr @.str.134, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 66 }, %struct.anon.6 { ptr @.str.135, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 50000000 }, i32 -2147483648, i8 2, i8 68 }, %struct.anon.6 { ptr @.str.136, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 50000000 }, i32 -2147483648, i8 2, i8 69 }, %struct.anon.6 { ptr @.str.137, [8 x ptr] [ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr null, ptr null, ptr null], [8 x i8] c"\05\07\08\09\0A\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 5, i8 70 }, %struct.anon.6 { ptr @.str.138, [8 x ptr] [ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr null, ptr null, ptr null], [8 x i8] c"\05\07\08\09\0A\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 5, i8 71 }, %struct.anon.6 { ptr @.str.139, [8 x ptr] [ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr null, ptr null, ptr null], [8 x i8] c"\05\07\08\09\0A\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 5, i8 72 }, %struct.anon.6 { ptr @.str.140, [8 x ptr] [ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr null, ptr null, ptr null], [8 x i8] c"\05\07\08\09\0A\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 5, i8 73 }, %struct.anon.6 { ptr @.str.141, [8 x ptr] [ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr null, ptr null, ptr null], [8 x i8] c"\05\07\08\09\0A\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 5, i8 74 }, %struct.anon.6 { ptr @.str.142, [8 x ptr] [ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr null, ptr null, ptr null], [8 x i8] c"\05\07\08\09\0A\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 5, i8 75 }, %struct.anon.6 { ptr @.str.143, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 78 }, %struct.anon.6 { ptr @.str.144, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 2, i8 79 }, %struct.anon.6 { ptr @.str.145, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 208000000 }, i32 4, i8 2, i8 80 }, %struct.anon.6 { ptr @.str.146, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 208000000 }, i32 4, i8 2, i8 81 }, %struct.anon.6 { ptr @.str.147, [8 x ptr] [ptr @.str.11, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\08\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 208000000 }, i32 4, i8 2, i8 82 }, %struct.anon.6 { ptr @.str.148, [8 x ptr] [ptr @.str.11, ptr @.str.15, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\09\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 150000000 }, i32 4, i8 2, i8 84 }, %struct.anon.6 { ptr @.str.149, [8 x ptr] [ptr @.str.11, ptr @.str.15, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [8 x i8] c"\05\09\00\00\00\00\00\00", %struct.clk_range { i32 0, i32 25000000 }, i32 4, i8 2, i8 85 }, %struct.anon.6 { ptr @.str.150, [8 x ptr] [ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr null, ptr null, ptr null], [8 x i8] c"\05\07\08\09\0A\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 5, i8 88 }, %struct.anon.6 { ptr @.str.151, [8 x ptr] [ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr null, ptr null, ptr null], [8 x i8] c"\05\07\08\09\0A\00\00\00", %struct.clk_range { i32 0, i32 200000000 }, i32 -2147483648, i8 5, i8 91 }, %struct.anon.6 { ptr @.str.152, [8 x ptr] zeroinitializer, [8 x i8] zeroinitializer, %struct.clk_range { i32 0, i32 32768 }, i32 -2147483648, i8 0, i8 94 }, %struct.anon.6 { ptr @.str.153, [8 x ptr] zeroinitializer, [8 x i8] zeroinitializer, %struct.clk_range { i32 0, i32 32768 }, i32 -2147483648, i8 0, i8 95 }], align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"main_rc_osc\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"atmel,osc-bypass\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"main_osc\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"mainck\00", align 1
@sama7g5_plls = internal unnamed_addr constant [7 x [7 x %struct.anon.7]] [[7 x %struct.anon.7] [%struct.anon.7 { ptr @.str.154, ptr @.str.7, ptr @pll_layout_frac, ptr @cpu_pll_characteristics, i32 2048, i8 0, i8 0, i8 0 }, %struct.anon.7 { ptr @.str.8, ptr @.str.154, ptr @pll_layout_divpmc, ptr @cpu_pll_characteristics, i32 2052, i8 1, i8 4, i8 15 }, %struct.anon.7 zeroinitializer, %struct.anon.7 zeroinitializer, %struct.anon.7 zeroinitializer, %struct.anon.7 zeroinitializer, %struct.anon.7 zeroinitializer], [7 x %struct.anon.7] [%struct.anon.7 { ptr @.str.155, ptr @.str.7, ptr @pll_layout_frac, ptr @pll_characteristics, i32 2049, i8 0, i8 0, i8 0 }, %struct.anon.7 { ptr @.str.11, ptr @.str.155, ptr @pll_layout_divpmc, ptr @pll_characteristics, i32 2049, i8 1, i8 5, i8 0 }, %struct.anon.7 zeroinitializer, %struct.anon.7 zeroinitializer, %struct.anon.7 zeroinitializer, %struct.anon.7 zeroinitializer, %struct.anon.7 zeroinitializer], [7 x %struct.anon.7] [%struct.anon.7 { ptr @.str.156, ptr @.str.7, ptr @pll_layout_frac, ptr @pll_characteristics, i32 2049, i8 0, i8 0, i8 0 }, %struct.anon.7 { ptr @.str.12, ptr @.str.156, ptr @pll_layout_divpmc, ptr @pll_characteristics, i32 2049, i8 1, i8 0, i8 0 }, %struct.anon.7 zeroinitializer, %struct.anon.7 zeroinitializer, %struct.anon.7 zeroinitializer, %struct.anon.7 zeroinitializer, %struct.anon.7 zeroinitializer], [7 x %struct.anon.7] [%struct.anon.7 { ptr @.str.157, ptr @.str.7, ptr @pll_layout_frac, ptr @pll_characteristics, i32 1, i8 0, i8 0, i8 0 }, %struct.anon.7 { ptr @.str.13, ptr @.str.157, ptr @pll_layout_divpmc, ptr @pll_characteristics, i32 7, i8 1, i8 0, i8 0 }, %struct.anon.7 zeroinitializer, %struct.anon.7 zeroinitializer, %struct.anon.7 zeroinitializer, %struct.anon.7 zeroinitializer, %struct.anon.7 zeroinitializer], [7 x %struct.anon.7] [%struct.anon.7 { ptr @.str.158, ptr @.str.7, ptr @pll_layout_frac, ptr @pll_characteristics, i32 1, i8 0, i8 0, i8 0 }, %struct.anon.7 { ptr @.str.14, ptr @.str.158, ptr @pll_layout_divpmc, ptr @pll_characteristics, i32 7, i8 1, i8 0, i8 0 }, %struct.anon.7 zeroinitializer, %struct.anon.7 zeroinitializer, %struct.anon.7 zeroinitializer, %struct.anon.7 zeroinitializer, %struct.anon.7 zeroinitializer], [7 x %struct.anon.7] [%struct.anon.7 { ptr @.str.159, ptr @.str.3, ptr @pll_layout_frac, ptr @pll_characteristics, i32 1, i8 0, i8 0, i8 0 }, %struct.anon.7 { ptr @.str.15, ptr @.str.159, ptr @pll_layout_divpmc, ptr @pll_characteristics, i32 7, i8 1, i8 9, i8 0 }, %struct.anon.7 { ptr @.str.160, ptr @.str.159, ptr @pll_layout_divio, ptr @pll_characteristics, i32 7, i8 1, i8 10, i8 0 }, %struct.anon.7 zeroinitializer, %struct.anon.7 zeroinitializer, %struct.anon.7 zeroinitializer, %struct.anon.7 zeroinitializer], [7 x %struct.anon.7] [%struct.anon.7 { ptr @.str.161, ptr @.str.3, ptr @pll_layout_frac, ptr @pll_characteristics, i32 1, i8 0, i8 0, i8 0 }, %struct.anon.7 { ptr @.str.16, ptr @.str.161, ptr @pll_layout_divpmc, ptr @pll_characteristics, i32 7, i8 1, i8 0, i8 0 }, %struct.anon.7 zeroinitializer, %struct.anon.7 zeroinitializer, %struct.anon.7 zeroinitializer, %struct.anon.7 zeroinitializer, %struct.anon.7 zeroinitializer]], align 4
@pmc_pll_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"cpupll_divpmcck\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"mck0\00", align 1
@mck0_layout = internal constant %struct.clk_master_layout { i32 40, i32 1907, i8 4 }, align 4
@mck0_characteristics = internal constant %struct.clk_master_characteristics { %struct.clk_range { i32 32768, i32 200000000 }, [5 x i32] [i32 1, i32 2, i32 4, i32 3, i32 5], i8 1 }, align 4
@pmc_mck0_lock = internal global %struct.spinlock zeroinitializer, align 4
@sama7g5_mckx = internal unnamed_addr constant [4 x %struct.anon.8] [%struct.anon.8 { ptr @.str.37, [4 x ptr] [ptr @.str.11, ptr null, ptr null, ptr null], i32 -2147483648, i8 1, [4 x i8] c"\05\00\00\00", i8 1, i8 1 }, %struct.anon.8 { ptr @.str.162, [4 x ptr] [ptr @.str.12, ptr null, ptr null, ptr null], i32 -2147483648, i8 1, [4 x i8] c"\06\00\00\00", i8 2, i8 1 }, %struct.anon.8 { ptr @.str.48, [4 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr null], i32 5, i8 3, [4 x i8] c"\05\06\07\00", i8 3, i8 0 }, %struct.anon.8 { ptr @.str.163, [4 x ptr] [ptr @.str.11, ptr null, ptr null, ptr null], i32 -2147483648, i8 1, [4 x i8] c"\05\00\00\00", i8 4, i8 1 }], align 4
@pmc_mckX_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"utmick\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"syspll_divpmcck\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"ddrpll_divpmcck\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"imgpll_divpmcck\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"baudpll_divpmcck\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"audiopll_divpmcck\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"ethpll_divpmcck\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"prog%d\00", align 1
@programmable_layout = internal constant %struct.clk_programmable_layout { i8 -1, i8 8, i8 31, i8 0, i8 1 }, align 1
@sama7g5_prog_mux_table = internal global [9 x i32] [i32 0, i32 1, i32 2, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10], align 4
@pmc_pcr_lock = external dso_local global %struct.spinlock, align 4
@sama7g5_pcr_layout = internal constant %struct.clk_pcr_layout { i32 136, i32 -2147483648, i32 0, i32 7936, i32 127 }, align 4
@.str.18 = private unnamed_addr constant [5 x i8] c"pck0\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"prog0\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"pck1\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"prog1\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"pck2\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"prog2\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"pck3\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"prog3\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"pck4\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"prog4\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"pck5\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"prog5\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"pck6\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"prog6\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"pck7\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"prog7\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"pioA_clk\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"securam_clk\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"sfr_clk\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"mck1\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"hsmc_clk\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"xdmac0_clk\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"xdmac1_clk\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"xdmac2_clk\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"acc_clk\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"aes_clk\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"tzaesbasc_clk\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"asrc_clk\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"cpkcc_clk\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"csi_clk\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"mck3\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"csi2dc_clk\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"eic_clk\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"flex0_clk\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"flex1_clk\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"flex2_clk\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"flex3_clk\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"flex4_clk\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"flex5_clk\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"flex6_clk\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"flex7_clk\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"flex8_clk\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"flex9_clk\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"flex10_clk\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"flex11_clk\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"gmac0_clk\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"gmac1_clk\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"icm_clk\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"isc_clk\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"i2smcc0_clk\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"i2smcc1_clk\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"matrix_clk\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"mcan0_clk\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"mcan1_clk\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"mcan2_clk\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"mcan3_clk\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"mcan4_clk\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"mcan5_clk\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"pdmc0_clk\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"pdmc1_clk\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"pit64b0_clk\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"pit64b1_clk\00", align 1
@.str.80 = private unnamed_addr constant [12 x i8] c"pit64b2_clk\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"pit64b3_clk\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"pit64b4_clk\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"pit64b5_clk\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"pwm_clk\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"qspi0_clk\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"qspi1_clk\00", align 1
@.str.87 = private unnamed_addr constant [11 x i8] c"sdmmc0_clk\00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c"sdmmc1_clk\00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c"sdmmc2_clk\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"sha_clk\00", align 1
@.str.91 = private unnamed_addr constant [12 x i8] c"spdifrx_clk\00", align 1
@.str.92 = private unnamed_addr constant [12 x i8] c"spdiftx_clk\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c"ssc0_clk\00", align 1
@.str.94 = private unnamed_addr constant [9 x i8] c"ssc1_clk\00", align 1
@.str.95 = private unnamed_addr constant [13 x i8] c"tcb0_ch0_clk\00", align 1
@.str.96 = private unnamed_addr constant [13 x i8] c"tcb0_ch1_clk\00", align 1
@.str.97 = private unnamed_addr constant [13 x i8] c"tcb0_ch2_clk\00", align 1
@.str.98 = private unnamed_addr constant [13 x i8] c"tcb1_ch0_clk\00", align 1
@.str.99 = private unnamed_addr constant [13 x i8] c"tcb1_ch1_clk\00", align 1
@.str.100 = private unnamed_addr constant [13 x i8] c"tcb1_ch2_clk\00", align 1
@.str.101 = private unnamed_addr constant [10 x i8] c"tcpca_clk\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c"tcpcb_clk\00", align 1
@.str.103 = private unnamed_addr constant [9 x i8] c"tdes_clk\00", align 1
@.str.104 = private unnamed_addr constant [9 x i8] c"trng_clk\00", align 1
@.str.105 = private unnamed_addr constant [11 x i8] c"udphsa_clk\00", align 1
@.str.106 = private unnamed_addr constant [11 x i8] c"udphsb_clk\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"uhphs_clk\00", align 1
@.str.108 = private unnamed_addr constant [9 x i8] c"adc_gclk\00", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c"asrc_gclk\00", align 1
@.str.110 = private unnamed_addr constant [9 x i8] c"csi_gclk\00", align 1
@.str.111 = private unnamed_addr constant [11 x i8] c"flex0_gclk\00", align 1
@.str.112 = private unnamed_addr constant [11 x i8] c"flex1_gclk\00", align 1
@.str.113 = private unnamed_addr constant [11 x i8] c"flex2_gclk\00", align 1
@.str.114 = private unnamed_addr constant [11 x i8] c"flex3_gclk\00", align 1
@.str.115 = private unnamed_addr constant [11 x i8] c"flex4_gclk\00", align 1
@.str.116 = private unnamed_addr constant [11 x i8] c"flex5_gclk\00", align 1
@.str.117 = private unnamed_addr constant [11 x i8] c"flex6_gclk\00", align 1
@.str.118 = private unnamed_addr constant [11 x i8] c"flex7_gclk\00", align 1
@.str.119 = private unnamed_addr constant [11 x i8] c"flex8_gclk\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"flex9_gclk\00", align 1
@.str.121 = private unnamed_addr constant [12 x i8] c"flex10_gclk\00", align 1
@.str.122 = private unnamed_addr constant [12 x i8] c"flex11_gclk\00", align 1
@.str.123 = private unnamed_addr constant [11 x i8] c"gmac0_gclk\00", align 1
@.str.124 = private unnamed_addr constant [11 x i8] c"gmac1_gclk\00", align 1
@.str.125 = private unnamed_addr constant [15 x i8] c"gmac0_tsu_gclk\00", align 1
@.str.126 = private unnamed_addr constant [15 x i8] c"gmac1_tsu_gclk\00", align 1
@.str.127 = private unnamed_addr constant [13 x i8] c"i2smcc0_gclk\00", align 1
@.str.128 = private unnamed_addr constant [13 x i8] c"i2smcc1_gclk\00", align 1
@.str.129 = private unnamed_addr constant [11 x i8] c"mcan0_gclk\00", align 1
@.str.130 = private unnamed_addr constant [11 x i8] c"mcan1_gclk\00", align 1
@.str.131 = private unnamed_addr constant [11 x i8] c"mcan2_gclk\00", align 1
@.str.132 = private unnamed_addr constant [11 x i8] c"mcan3_gclk\00", align 1
@.str.133 = private unnamed_addr constant [11 x i8] c"mcan4_gclk\00", align 1
@.str.134 = private unnamed_addr constant [11 x i8] c"mcan5_gclk\00", align 1
@.str.135 = private unnamed_addr constant [11 x i8] c"pdmc0_gclk\00", align 1
@.str.136 = private unnamed_addr constant [11 x i8] c"pdmc1_gclk\00", align 1
@.str.137 = private unnamed_addr constant [13 x i8] c"pit64b0_gclk\00", align 1
@.str.138 = private unnamed_addr constant [13 x i8] c"pit64b1_gclk\00", align 1
@.str.139 = private unnamed_addr constant [13 x i8] c"pit64b2_gclk\00", align 1
@.str.140 = private unnamed_addr constant [13 x i8] c"pit64b3_gclk\00", align 1
@.str.141 = private unnamed_addr constant [13 x i8] c"pit64b4_gclk\00", align 1
@.str.142 = private unnamed_addr constant [13 x i8] c"pit64b5_gclk\00", align 1
@.str.143 = private unnamed_addr constant [11 x i8] c"qspi0_gclk\00", align 1
@.str.144 = private unnamed_addr constant [11 x i8] c"qspi1_gclk\00", align 1
@.str.145 = private unnamed_addr constant [12 x i8] c"sdmmc0_gclk\00", align 1
@.str.146 = private unnamed_addr constant [12 x i8] c"sdmmc1_gclk\00", align 1
@.str.147 = private unnamed_addr constant [12 x i8] c"sdmmc2_gclk\00", align 1
@.str.148 = private unnamed_addr constant [13 x i8] c"spdifrx_gclk\00", align 1
@.str.149 = private unnamed_addr constant [13 x i8] c"spdiftx_gclk\00", align 1
@.str.150 = private unnamed_addr constant [14 x i8] c"tcb0_ch0_gclk\00", align 1
@.str.151 = private unnamed_addr constant [14 x i8] c"tcb1_ch0_gclk\00", align 1
@.str.152 = private unnamed_addr constant [11 x i8] c"tcpca_gclk\00", align 1
@.str.153 = private unnamed_addr constant [11 x i8] c"tcpcb_gclk\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.154 = private unnamed_addr constant [14 x i8] c"cpupll_fracck\00", align 1
@pll_layout_frac = internal constant %struct.clk_pll_layout { i32 0, i32 -16777216, i32 4194303, i32 0, i32 0, i8 24, i8 0, i8 0, i8 0 }, align 4
@cpu_pll_characteristics = internal constant %struct.clk_pll_characteristics { %struct.clk_range { i32 12000000, i32 50000000 }, i32 1, ptr @cpu_pll_outputs, ptr null, ptr null, i8 0 }, align 4
@pll_layout_divpmc = internal constant %struct.clk_pll_layout { i32 0, i32 0, i32 0, i32 255, i32 536870912, i8 0, i8 0, i8 0, i8 29 }, align 4
@.str.155 = private unnamed_addr constant [14 x i8] c"syspll_fracck\00", align 1
@pll_characteristics = internal constant %struct.clk_pll_characteristics { %struct.clk_range { i32 12000000, i32 50000000 }, i32 1, ptr @pll_outputs, ptr null, ptr null, i8 0 }, align 4
@.str.156 = private unnamed_addr constant [14 x i8] c"ddrpll_fracck\00", align 1
@.str.157 = private unnamed_addr constant [14 x i8] c"imgpll_fracck\00", align 1
@.str.158 = private unnamed_addr constant [15 x i8] c"baudpll_fracck\00", align 1
@.str.159 = private unnamed_addr constant [16 x i8] c"audiopll_fracck\00", align 1
@.str.160 = private unnamed_addr constant [17 x i8] c"audiopll_diviock\00", align 1
@pll_layout_divio = internal constant %struct.clk_pll_layout { i32 0, i32 0, i32 0, i32 1044480, i32 1073741824, i8 0, i8 0, i8 12, i8 30 }, align 4
@.str.161 = private unnamed_addr constant [14 x i8] c"ethpll_fracck\00", align 1
@cpu_pll_outputs = internal constant [1 x %struct.clk_range] [%struct.clk_range { i32 2343750, i32 1000000002 }], align 4
@pll_outputs = internal constant [1 x %struct.clk_range] [%struct.clk_range { i32 2343750, i32 1200000000 }], align 4
@.str.162 = private unnamed_addr constant [5 x i8] c"mck2\00", align 1
@.str.163 = private unnamed_addr constant [5 x i8] c"mck4\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_sama7g5_pmc], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sama7g5_pmc_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca [10 x ptr], align 4
  %3 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !8
  %4 = tail call i32 @of_property_match_string(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %288, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef %4) #11
  %8 = tail call i32 @of_property_match_string(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #11
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %288, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef %8) #11
  %12 = tail call i32 @of_property_match_string(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #11
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %288, label %14

14:                                               ; preds = %10
  %15 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef %12) #11
  %16 = tail call ptr @device_node_to_regmap(ptr noundef %0) #11
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %288, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @pmc_data_allocate(i32 noundef 13, i32 noundef 16, i32 noundef 107, i32 noundef 96, i32 noundef 8) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %288, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %23 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3264, i32 noundef 200) #12
  %24 = icmp eq ptr %23, null
  br i1 %24, label %287, label %25

25:                                               ; preds = %21
  %26 = tail call ptr @at91_clk_register_main_rc_osc(ptr noundef %16, ptr noundef nonnull @.str.4, i32 noundef 12000000, i32 noundef 50000000) #13
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %286, label %28

28:                                               ; preds = %25
  %29 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef null) #11
  %30 = icmp ne ptr %29, null
  %31 = tail call ptr @at91_clk_register_main_osc(ptr noundef %16, ptr noundef nonnull @.str.6, ptr noundef %15, i1 noundef zeroext %30) #13
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %286, label %33

33:                                               ; preds = %28
  store ptr @.str.4, ptr %2, align 4
  %34 = getelementptr inbounds [10 x ptr], ptr %2, i32 0, i32 1
  store ptr @.str.6, ptr %34, align 4
  %35 = call ptr @at91_clk_register_sam9x5_main(ptr noundef %16, ptr noundef nonnull @.str.7, ptr noundef nonnull %2, i32 noundef 2) #13
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %286, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.pmc_data, ptr %19, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr ptr, ptr %39, i32 3
  store ptr %35, ptr %40, align 4
  br label %41

41:                                               ; preds = %100, %37
  %42 = phi i32 [ 0, %37 ], [ %101, %100 ]
  %43 = trunc i32 %42 to i8
  br label %44

44:                                               ; preds = %97, %41
  %45 = phi i32 [ 0, %41 ], [ %98, %97 ]
  %46 = getelementptr [7 x [7 x %struct.anon.7]], ptr @sama7g5_plls, i32 0, i32 %42, i32 %45
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %97, label %49

49:                                               ; preds = %44
  %50 = getelementptr [7 x [7 x %struct.anon.7]], ptr @sama7g5_plls, i32 0, i32 %42, i32 %45, i32 5
  %51 = load i8, ptr %50, align 4
  switch i8 %51, label %97 [
    i8 0, label %52
    i8 1, label %73
  ]

52:                                               ; preds = %49
  %53 = getelementptr [7 x [7 x %struct.anon.7]], ptr @sama7g5_plls, i32 0, i32 %42, i32 %45, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = call i32 @strcmp(ptr noundef %54, ptr noundef nonnull dereferenceable(7) @.str.7)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load ptr, ptr %38, align 4
  %59 = getelementptr ptr, ptr %58, i32 3
  %60 = load ptr, ptr %59, align 4
  br label %64

61:                                               ; preds = %52
  %62 = call ptr @of_clk_get_by_name(ptr noundef %0, ptr noundef %54) #11
  %63 = call ptr @__clk_get_hw(ptr noundef %62) #11
  br label %64

64:                                               ; preds = %61, %57
  %65 = phi ptr [ %63, %61 ], [ %60, %57 ]
  %66 = getelementptr [7 x [7 x %struct.anon.7]], ptr @sama7g5_plls, i32 0, i32 %42, i32 %45, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr [7 x [7 x %struct.anon.7]], ptr @sama7g5_plls, i32 0, i32 %42, i32 %45, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr [7 x [7 x %struct.anon.7]], ptr @sama7g5_plls, i32 0, i32 %42, i32 %45, i32 4
  %71 = load i32, ptr %70, align 4
  %72 = call ptr @sam9x60_clk_register_frac_pll(ptr noundef %16, ptr noundef nonnull @pmc_pll_lock, ptr noundef nonnull %47, ptr noundef %54, ptr noundef %65, i8 noundef zeroext %43, ptr noundef %67, ptr noundef %69, i32 noundef %71) #13
  br label %86

73:                                               ; preds = %49
  %74 = getelementptr [7 x [7 x %struct.anon.7]], ptr @sama7g5_plls, i32 0, i32 %42, i32 %45, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr [7 x [7 x %struct.anon.7]], ptr @sama7g5_plls, i32 0, i32 %42, i32 %45, i32 3
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr [7 x [7 x %struct.anon.7]], ptr @sama7g5_plls, i32 0, i32 %42, i32 %45, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr [7 x [7 x %struct.anon.7]], ptr @sama7g5_plls, i32 0, i32 %42, i32 %45, i32 4
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr [7 x [7 x %struct.anon.7]], ptr @sama7g5_plls, i32 0, i32 %42, i32 %45, i32 7
  %83 = load i8, ptr %82, align 2
  %84 = zext i8 %83 to i32
  %85 = call ptr @sam9x60_clk_register_div_pll(ptr noundef %16, ptr noundef nonnull @pmc_pll_lock, ptr noundef nonnull %47, ptr noundef %75, i8 noundef zeroext %43, ptr noundef %77, ptr noundef %79, i32 noundef %81, i32 noundef %84) #13
  br label %86

86:                                               ; preds = %73, %64
  %87 = phi ptr [ %85, %73 ], [ %72, %64 ]
  %88 = icmp ugt ptr %87, inttoptr (i32 -4096 to ptr)
  br i1 %88, label %286, label %89

89:                                               ; preds = %86
  %90 = getelementptr [7 x [7 x %struct.anon.7]], ptr @sama7g5_plls, i32 0, i32 %42, i32 %45, i32 6
  %91 = load i8, ptr %90, align 1
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load ptr, ptr %38, align 4
  %95 = zext i8 %91 to i32
  %96 = getelementptr ptr, ptr %94, i32 %95
  store ptr %87, ptr %96, align 4
  br label %97

97:                                               ; preds = %93, %89, %49, %44
  %98 = add nuw nsw i32 %45, 1
  %99 = icmp eq i32 %98, 3
  br i1 %99, label %100, label %44

100:                                              ; preds = %97
  %101 = add nuw nsw i32 %42, 1
  %102 = icmp eq i32 %101, 7
  br i1 %102, label %103, label %41

103:                                              ; preds = %100
  store ptr @.str.8, ptr %2, align 4
  %104 = call ptr @at91_clk_register_master_div(ptr noundef %16, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, ptr noundef nonnull @mck0_layout, ptr noundef nonnull @mck0_characteristics, ptr noundef nonnull @pmc_mck0_lock, i32 noundef 64, i32 noundef 5) #13
  %105 = icmp ugt ptr %104, inttoptr (i32 -4096 to ptr)
  br i1 %105, label %286, label %106

106:                                              ; preds = %103
  %107 = load ptr, ptr %38, align 4
  %108 = getelementptr ptr, ptr %107, i32 1
  store ptr %104, ptr %108, align 4
  store ptr %11, ptr %2, align 4
  store ptr %7, ptr %34, align 4
  %109 = getelementptr inbounds [10 x ptr], ptr %2, i32 0, i32 2
  store ptr @.str.7, ptr %109, align 4
  %110 = getelementptr inbounds [10 x ptr], ptr %2, i32 0, i32 3
  br label %111

111:                                              ; preds = %150, %106
  %112 = phi i32 [ 0, %106 ], [ %151, %150 ]
  %113 = shl nuw nsw i32 %112, 5
  %114 = or i32 %113, 4
  %115 = getelementptr i8, ptr @sama7g5_mckx, i32 %114
  %116 = getelementptr [4 x %struct.anon.8], ptr @sama7g5_mckx, i32 0, i32 %112
  %117 = getelementptr [4 x %struct.anon.8], ptr @sama7g5_mckx, i32 0, i32 %112, i32 3
  %118 = load i8, ptr %117, align 4
  %119 = add i8 %118, 3
  %120 = zext i8 %119 to i32
  %121 = shl nuw nsw i32 %120, 2
  %122 = call noalias align 64 ptr @__kmalloc(i32 noundef %121, i32 noundef 3264) #14
  %123 = icmp eq ptr %122, null
  br i1 %123, label %276, label %124

124:                                              ; preds = %111
  store i32 0, ptr %122, align 64
  %125 = getelementptr i32, ptr %122, i32 1
  store i32 1, ptr %125, align 4
  %126 = getelementptr i32, ptr %122, i32 2
  store i32 2, ptr %126, align 8
  %127 = getelementptr i32, ptr %122, i32 3
  %128 = call i8 @llvm.umax.i8(i8 %118, i8 1)
  %129 = zext i8 %128 to i32
  br label %130

130:                                              ; preds = %130, %124
  %131 = phi i32 [ 0, %124 ], [ %136, %130 ]
  %132 = getelementptr [4 x %struct.anon.8], ptr @sama7g5_mckx, i32 0, i32 %112, i32 4, i32 %131
  %133 = load i8, ptr %132, align 1
  %134 = zext i8 %133 to i32
  %135 = getelementptr i32, ptr %127, i32 %131
  store i32 %134, ptr %135, align 4
  %136 = add nuw nsw i32 %131, 1
  %137 = icmp eq i32 %136, %129
  br i1 %137, label %138, label %130

138:                                              ; preds = %130
  %139 = call i8 @llvm.umax.i8(i8 %118, i8 1)
  %140 = zext i8 %139 to i32
  %141 = shl nuw nsw i32 %140, 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %110, ptr align 4 %115, i32 %141, i1 false)
  %142 = load ptr, ptr %116, align 4
  %143 = getelementptr [4 x %struct.anon.8], ptr @sama7g5_mckx, i32 0, i32 %112, i32 5
  %144 = load i8, ptr %143, align 1
  %145 = icmp ne i32 %112, 2
  %146 = getelementptr [4 x %struct.anon.8], ptr @sama7g5_mckx, i32 0, i32 %112, i32 2
  %147 = load i32, ptr %146, align 4
  %148 = call ptr @at91_clk_sama7g5_register_master(ptr noundef %16, ptr noundef %142, i32 noundef %120, ptr noundef nonnull %2, ptr noundef nonnull %122, ptr noundef nonnull @pmc_mckX_lock, i8 noundef zeroext %144, i1 noundef zeroext %145, i32 noundef %147) #13
  %149 = icmp ugt ptr %148, inttoptr (i32 -4096 to ptr)
  br i1 %149, label %276, label %150

150:                                              ; preds = %138
  %151 = add nuw nsw i32 %112, 1
  %152 = getelementptr ptr, ptr %23, i32 %112
  store ptr %122, ptr %152, align 4
  %153 = icmp eq i32 %151, 4
  br i1 %153, label %154, label %111

154:                                              ; preds = %150
  %155 = call ptr @at91_clk_sama7g5_register_utmi(ptr noundef %16, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3) #13
  %156 = icmp ugt ptr %155, inttoptr (i32 -4096 to ptr)
  br i1 %156, label %278, label %157

157:                                              ; preds = %154
  %158 = load ptr, ptr %38, align 4
  %159 = getelementptr ptr, ptr %158, i32 2
  store ptr %155, ptr %159, align 4
  store ptr %11, ptr %2, align 4
  store ptr %7, ptr %34, align 4
  store ptr @.str.7, ptr %109, align 4
  store ptr @.str.11, ptr %110, align 4
  %160 = getelementptr inbounds [10 x ptr], ptr %2, i32 0, i32 4
  store ptr @.str.12, ptr %160, align 4
  %161 = getelementptr inbounds [10 x ptr], ptr %2, i32 0, i32 5
  store ptr @.str.13, ptr %161, align 4
  %162 = getelementptr inbounds [10 x ptr], ptr %2, i32 0, i32 6
  store ptr @.str.14, ptr %162, align 4
  %163 = getelementptr inbounds [10 x ptr], ptr %2, i32 0, i32 7
  store ptr @.str.15, ptr %163, align 4
  %164 = getelementptr inbounds [10 x ptr], ptr %2, i32 0, i32 8
  store ptr @.str.16, ptr %164, align 4
  %165 = getelementptr inbounds %struct.pmc_data, ptr %19, i32 0, i32 9
  br label %168

166:                                              ; preds = %175
  %167 = getelementptr inbounds %struct.pmc_data, ptr %19, i32 0, i32 3
  br label %182

168:                                              ; preds = %175, %157
  %169 = phi i32 [ 0, %157 ], [ %178, %175 ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false), !annotation !8
  %170 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 6, ptr noundef nonnull @.str.17, i32 noundef %169)
  %171 = trunc i32 %169 to i8
  %172 = call ptr @at91_clk_register_programmable(ptr noundef %16, ptr noundef nonnull %3, ptr noundef nonnull %2, i8 noundef zeroext 9, i8 noundef zeroext %171, ptr noundef nonnull @programmable_layout, ptr noundef nonnull @sama7g5_prog_mux_table) #13
  %173 = icmp ugt ptr %172, inttoptr (i32 -4096 to ptr)
  br i1 %173, label %174, label %175

174:                                              ; preds = %168
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #11
  br label %278

175:                                              ; preds = %168
  %176 = load ptr, ptr %165, align 4
  %177 = getelementptr ptr, ptr %176, i32 %169
  store ptr %172, ptr %177, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #11
  %178 = add nuw nsw i32 %169, 1
  %179 = icmp eq i32 %178, 8
  br i1 %179, label %166, label %168

180:                                              ; preds = %192
  %181 = getelementptr inbounds %struct.pmc_data, ptr %19, i32 0, i32 5
  br label %198

182:                                              ; preds = %192, %166
  %183 = phi i32 [ 0, %166 ], [ %196, %192 ]
  %184 = getelementptr [8 x %struct.anon.4], ptr @sama7g5_systemck, i32 0, i32 %183
  %185 = load ptr, ptr %184, align 4
  %186 = getelementptr [8 x %struct.anon.4], ptr @sama7g5_systemck, i32 0, i32 %183, i32 1
  %187 = load ptr, ptr %186, align 4
  %188 = getelementptr [8 x %struct.anon.4], ptr @sama7g5_systemck, i32 0, i32 %183, i32 2
  %189 = load i8, ptr %188, align 4
  %190 = call ptr @at91_clk_register_system(ptr noundef %16, ptr noundef %185, ptr noundef %187, i8 noundef zeroext %189) #13
  %191 = icmp ugt ptr %190, inttoptr (i32 -4096 to ptr)
  br i1 %191, label %278, label %192

192:                                              ; preds = %182
  %193 = load ptr, ptr %167, align 4
  %194 = zext i8 %189 to i32
  %195 = getelementptr ptr, ptr %193, i32 %194
  store ptr %190, ptr %195, align 4
  %196 = add nuw nsw i32 %183, 1
  %197 = icmp eq i32 %196, 8
  br i1 %197, label %180, label %182

198:                                              ; preds = %214, %180
  %199 = phi i32 [ 0, %180 ], [ %217, %214 ]
  %200 = getelementptr [72 x %struct.anon.5], ptr @sama7g5_periphck, i32 0, i32 %199
  %201 = load ptr, ptr %200, align 4
  %202 = getelementptr [72 x %struct.anon.5], ptr @sama7g5_periphck, i32 0, i32 %199, i32 1
  %203 = load ptr, ptr %202, align 4
  %204 = getelementptr [72 x %struct.anon.5], ptr @sama7g5_periphck, i32 0, i32 %199, i32 4
  %205 = load i8, ptr %204, align 1
  %206 = zext i8 %205 to i32
  %207 = getelementptr [72 x %struct.anon.5], ptr @sama7g5_periphck, i32 0, i32 %199, i32 2
  %208 = getelementptr [72 x %struct.anon.5], ptr @sama7g5_periphck, i32 0, i32 %199, i32 3
  %209 = load i8, ptr %208, align 4
  %210 = icmp eq i8 %209, 0
  %211 = select i1 %210, i32 -2147483648, i32 0
  %212 = call ptr @at91_clk_register_sam9x5_peripheral(ptr noundef %16, ptr noundef nonnull @pmc_pcr_lock, ptr noundef nonnull @sama7g5_pcr_layout, ptr noundef %201, ptr noundef %203, i32 noundef %206, ptr noundef %207, i32 noundef %211) #13
  %213 = icmp ugt ptr %212, inttoptr (i32 -4096 to ptr)
  br i1 %213, label %278, label %214

214:                                              ; preds = %198
  %215 = load ptr, ptr %181, align 4
  %216 = getelementptr ptr, ptr %215, i32 %206
  store ptr %212, ptr %216, align 4
  %217 = add nuw nsw i32 %199, 1
  %218 = icmp eq i32 %217, 72
  br i1 %218, label %219, label %198

219:                                              ; preds = %214
  store ptr %11, ptr %2, align 4
  store ptr %7, ptr %34, align 4
  store ptr @.str.7, ptr %109, align 4
  %220 = getelementptr inbounds %struct.pmc_data, ptr %19, i32 0, i32 7
  br label %221

221:                                              ; preds = %266, %219
  %222 = phi i32 [ 0, %219 ], [ %272, %266 ]
  %223 = phi i32 [ 4, %219 ], [ %270, %266 ]
  %224 = mul nuw nsw i32 %222, 60
  %225 = add nuw nsw i32 %224, 4
  %226 = getelementptr i8, ptr @sama7g5_gck, i32 %225
  %227 = getelementptr [46 x %struct.anon.6], ptr @sama7g5_gck, i32 0, i32 %222
  %228 = getelementptr [46 x %struct.anon.6], ptr @sama7g5_gck, i32 0, i32 %222, i32 5
  %229 = load i8, ptr %228, align 4
  %230 = add i8 %229, 3
  %231 = zext i8 %230 to i32
  %232 = shl nuw nsw i32 %231, 2
  %233 = call noalias align 64 ptr @__kmalloc(i32 noundef %232, i32 noundef 3264) #14
  %234 = icmp eq ptr %233, null
  br i1 %234, label %278, label %235

235:                                              ; preds = %221
  store i32 0, ptr %233, align 64
  %236 = getelementptr i32, ptr %233, i32 1
  store i32 1, ptr %236, align 4
  %237 = getelementptr i32, ptr %233, i32 2
  store i32 2, ptr %237, align 8
  %238 = and i32 %222, 1073741822
  %239 = icmp eq i32 %238, 44
  br i1 %239, label %257, label %240

240:                                              ; preds = %235
  %241 = getelementptr i32, ptr %233, i32 3
  %242 = call i8 @llvm.umax.i8(i8 %229, i8 1)
  %243 = zext i8 %242 to i32
  br label %249

244:                                              ; preds = %249
  br i1 %239, label %257, label %245

245:                                              ; preds = %244
  %246 = call i8 @llvm.umax.i8(i8 %229, i8 1)
  %247 = zext i8 %246 to i32
  %248 = shl nuw nsw i32 %247, 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %110, ptr align 4 %226, i32 %248, i1 false)
  br label %257

249:                                              ; preds = %249, %240
  %250 = phi i32 [ 0, %240 ], [ %255, %249 ]
  %251 = getelementptr [46 x %struct.anon.6], ptr @sama7g5_gck, i32 0, i32 %222, i32 2, i32 %250
  %252 = load i8, ptr %251, align 1
  %253 = zext i8 %252 to i32
  %254 = getelementptr i32, ptr %241, i32 %250
  store i32 %253, ptr %254, align 4
  %255 = add nuw nsw i32 %250, 1
  %256 = icmp eq i32 %255, %243
  br i1 %256, label %244, label %249

257:                                              ; preds = %245, %244, %235
  %258 = load ptr, ptr %227, align 4
  %259 = getelementptr [46 x %struct.anon.6], ptr @sama7g5_gck, i32 0, i32 %222, i32 6
  %260 = load i8, ptr %259, align 1
  %261 = getelementptr [46 x %struct.anon.6], ptr @sama7g5_gck, i32 0, i32 %222, i32 3
  %262 = getelementptr [46 x %struct.anon.6], ptr @sama7g5_gck, i32 0, i32 %222, i32 4
  %263 = load i32, ptr %262, align 4
  %264 = call ptr @at91_clk_register_generated(ptr noundef %16, ptr noundef nonnull @pmc_pcr_lock, ptr noundef nonnull @sama7g5_pcr_layout, ptr noundef %258, ptr noundef nonnull %2, ptr noundef nonnull %233, i8 noundef zeroext %230, i8 noundef zeroext %260, ptr noundef %261, i32 noundef %263) #13
  %265 = icmp ugt ptr %264, inttoptr (i32 -4096 to ptr)
  br i1 %265, label %278, label %266

266:                                              ; preds = %257
  %267 = load ptr, ptr %220, align 4
  %268 = zext i8 %260 to i32
  %269 = getelementptr ptr, ptr %267, i32 %268
  store ptr %264, ptr %269, align 4
  %270 = add nuw nsw i32 %223, 1
  %271 = getelementptr ptr, ptr %23, i32 %223
  store ptr %233, ptr %271, align 4
  %272 = add nuw nsw i32 %222, 1
  %273 = icmp eq i32 %272, 46
  br i1 %273, label %274, label %221

274:                                              ; preds = %266
  %275 = call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_pmc_get, ptr noundef nonnull %19) #11
  br label %288

276:                                              ; preds = %138, %111
  %277 = icmp eq i32 %112, 0
  br i1 %277, label %286, label %278

278:                                              ; preds = %276, %257, %221, %198, %182, %174, %154
  %279 = phi i32 [ %112, %276 ], [ 4, %174 ], [ 4, %154 ], [ %223, %221 ], [ %223, %257 ], [ 4, %198 ], [ 4, %182 ]
  br label %280

280:                                              ; preds = %280, %278
  %281 = phi i32 [ %284, %280 ], [ 0, %278 ]
  %282 = getelementptr ptr, ptr %23, i32 %281
  %283 = load ptr, ptr %282, align 4
  call void @kfree(ptr noundef %283) #11
  %284 = add nuw nsw i32 %281, 1
  %285 = icmp eq i32 %284, %279
  br i1 %285, label %286, label %280

286:                                              ; preds = %280, %276, %103, %86, %33, %28, %25
  call void @kfree(ptr noundef nonnull %23) #11
  br label %287

287:                                              ; preds = %286, %21
  call void @kfree(ptr noundef nonnull %19) #11
  br label %288

288:                                              ; preds = %287, %274, %18, %14, %10, %6, %1
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #11
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

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @sam9x60_clk_register_frac_pll(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @sam9x60_clk_register_div_pll(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_master_div(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_sama7g5_register_master(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_sama7g5_register_utmi(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_programmable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_system(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_sam9x5_peripheral(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_generated(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_pmc_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #9

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

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
