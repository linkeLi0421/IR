; ModuleID = '/llk/IR/drivers/clk/hisilicon/clk-hi3620.c_pt.bc'
source_filename = "../drivers/clk/hisilicon/clk-hi3620.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.hisi_fixed_rate_clock = type { i32, ptr, ptr, i32, i32 }
%struct.hisi_fixed_factor_clock = type { i32, ptr, ptr, i32, i32, i32 }
%struct.hisi_mux_clock = type { i32, ptr, ptr, i8, i32, i32, i8, i8, i8, ptr, ptr }
%struct.hisi_divider_clock = type { i32, ptr, ptr, i32, i32, i8, i8, i8, ptr, ptr }
%struct.hisi_gate_clock = type { i32, ptr, ptr, i32, i32, i8, i8, ptr }
%struct.hisi_mmc_clock = type { i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_mmc = type { %struct.clk_hw, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32 }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@__of_table_hi3620_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3620-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3620_clk_init }, section "__clk_of_table", align 4
@__of_table_hi3620_mmc_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3620-mmc-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3620_mmc_clk_init }, section "__clk_of_table", align 4
@hi3620_fixed_rate_clks = internal global [9 x %struct.hisi_fixed_rate_clock] [%struct.hisi_fixed_rate_clock { i32 1, ptr @.str, ptr null, i32 0, i32 32768 }, %struct.hisi_fixed_rate_clock { i32 2, ptr @.str.1, ptr null, i32 0, i32 26000000 }, %struct.hisi_fixed_rate_clock { i32 3, ptr @.str.2, ptr null, i32 0, i32 26000000 }, %struct.hisi_fixed_rate_clock { i32 4, ptr @.str.3, ptr null, i32 0, i32 1600000000 }, %struct.hisi_fixed_rate_clock { i32 5, ptr @.str.4, ptr null, i32 0, i32 1600000000 }, %struct.hisi_fixed_rate_clock { i32 6, ptr @.str.5, ptr null, i32 0, i32 1440000000 }, %struct.hisi_fixed_rate_clock { i32 7, ptr @.str.6, ptr null, i32 0, i32 1440000000 }, %struct.hisi_fixed_rate_clock { i32 8, ptr @.str.7, ptr null, i32 0, i32 1188000000 }, %struct.hisi_fixed_rate_clock { i32 9, ptr @.str.8, ptr null, i32 0, i32 1300000000 }], section ".init.data", align 4
@hi3620_fixed_factor_clks = internal global [3 x %struct.hisi_fixed_factor_clock] [%struct.hisi_fixed_factor_clock { i32 10, ptr @.str.9, ptr @.str.1, i32 1, i32 4, i32 0 }, %struct.hisi_fixed_factor_clock { i32 11, ptr @.str.10, ptr @.str.5, i32 1, i32 30, i32 0 }, %struct.hisi_fixed_factor_clock { i32 12, ptr @.str.11, ptr @.str.12, i32 1, i32 40, i32 0 }], section ".init.data", align 4
@hi3620_mux_clks = internal global [35 x %struct.hisi_mux_clock] [%struct.hisi_mux_clock { i32 32, ptr @.str.13, ptr @timer0_mux_p, i8 2, i32 4, i32 0, i8 15, i8 2, i8 0, ptr null, ptr null }, %struct.hisi_mux_clock { i32 33, ptr @.str.14, ptr @timer1_mux_p, i8 2, i32 4, i32 0, i8 17, i8 2, i8 0, ptr null, ptr null }, %struct.hisi_mux_clock { i32 34, ptr @.str.15, ptr @timer2_mux_p, i8 2, i32 4, i32 0, i8 19, i8 2, i8 0, ptr null, ptr null }, %struct.hisi_mux_clock { i32 35, ptr @.str.16, ptr @timer3_mux_p, i8 2, i32 4, i32 0, i8 21, i8 2, i8 0, ptr null, ptr null }, %struct.hisi_mux_clock { i32 36, ptr @.str.17, ptr @timer4_mux_p, i8 2, i32 4, i32 24, i8 0, i8 2, i8 0, ptr null, ptr null }, %struct.hisi_mux_clock { i32 37, ptr @.str.18, ptr @timer5_mux_p, i8 2, i32 4, i32 24, i8 2, i8 2, i8 0, ptr null, ptr null }, %struct.hisi_mux_clock { i32 38, ptr @.str.19, ptr @timer6_mux_p, i8 2, i32 4, i32 24, i8 4, i8 2, i8 0, ptr null, ptr null }, %struct.hisi_mux_clock { i32 39, ptr @.str.20, ptr @timer7_mux_p, i8 2, i32 4, i32 24, i8 6, i8 2, i8 0, ptr null, ptr null }, %struct.hisi_mux_clock { i32 40, ptr @.str.21, ptr @timer8_mux_p, i8 2, i32 4, i32 24, i8 8, i8 2, i8 0, ptr null, ptr null }, %struct.hisi_mux_clock { i32 41, ptr @.str.22, ptr @timer9_mux_p, i8 2, i32 4, i32 24, i8 10, i8 2, i8 0, ptr null, ptr null }, %struct.hisi_mux_clock { i32 42, ptr @.str.23, ptr @uart0_mux_p, i8 2, i32 4, i32 256, i8 7, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 43, ptr @.str.24, ptr @uart1_mux_p, i8 2, i32 4, i32 256, i8 8, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 44, ptr @.str.25, ptr @uart2_mux_p, i8 2, i32 4, i32 256, i8 9, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 45, ptr @.str.26, ptr @uart3_mux_p, i8 2, i32 4, i32 256, i8 10, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 46, ptr @.str.27, ptr @uart4_mux_p, i8 2, i32 4, i32 256, i8 11, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 47, ptr @.str.28, ptr @spi0_mux_p, i8 2, i32 4, i32 256, i8 12, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 48, ptr @.str.29, ptr @spi1_mux_p, i8 2, i32 4, i32 256, i8 13, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 49, ptr @.str.30, ptr @spi2_mux_p, i8 2, i32 4, i32 256, i8 14, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 50, ptr @.str.31, ptr @saxi_mux_p, i8 2, i32 4, i32 256, i8 15, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 51, ptr @.str.32, ptr @pwm0_mux_p, i8 2, i32 4, i32 260, i8 10, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 52, ptr @.str.33, ptr @pwm1_mux_p, i8 2, i32 4, i32 260, i8 11, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 53, ptr @.str.34, ptr @sd_mux_p, i8 2, i32 4, i32 264, i8 4, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 54, ptr @.str.35, ptr @mmc1_mux_p, i8 2, i32 4, i32 264, i8 9, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 55, ptr @.str.36, ptr @mmc1_mux2_p, i8 2, i32 4, i32 264, i8 10, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 56, ptr @.str.37, ptr @g2d_mux_p, i8 2, i32 4, i32 268, i8 5, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 57, ptr @.str.38, ptr @venc_mux_p, i8 2, i32 4, i32 268, i8 11, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 58, ptr @.str.39, ptr @vdec_mux_p, i8 2, i32 4, i32 272, i8 5, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 59, ptr @.str.40, ptr @vpp_mux_p, i8 2, i32 4, i32 272, i8 11, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 60, ptr @.str.41, ptr @edc0_mux_p, i8 2, i32 4, i32 276, i8 6, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 61, ptr @.str.42, ptr @ldi0_mux_p, i8 4, i32 4, i32 276, i8 13, i8 2, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 62, ptr @.str.43, ptr @edc1_mux_p, i8 2, i32 4, i32 280, i8 6, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 63, ptr @.str.44, ptr @ldi1_mux_p, i8 4, i32 4, i32 280, i8 14, i8 2, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 64, ptr @.str.45, ptr @rclk_hsic_p, i8 2, i32 4, i32 304, i8 2, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 65, ptr @.str.46, ptr @mmc2_mux_p, i8 2, i32 4, i32 320, i8 4, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 66, ptr @.str.47, ptr @mmc3_mux_p, i8 2, i32 4, i32 320, i8 9, i8 1, i8 4, ptr null, ptr null }], section ".init.data", align 4
@hi3620_div_clks = internal global [7 x %struct.hisi_divider_clock] [%struct.hisi_divider_clock { i32 128, ptr @.str.54, ptr @.str.31, i32 0, i32 256, i8 0, i8 5, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 129, ptr @.str.55, ptr @.str.54, i32 0, i32 256, i8 5, i8 2, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 130, ptr @.str.56, ptr @.str.34, i32 0, i32 264, i8 0, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 131, ptr @.str.53, ptr @.str.35, i32 0, i32 264, i8 5, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 132, ptr @.str.12, ptr @.str.45, i32 0, i32 304, i8 0, i8 2, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 133, ptr @.str.57, ptr @.str.46, i32 0, i32 320, i8 0, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 134, ptr @.str.58, ptr @.str.47, i32 0, i32 320, i8 5, i8 4, i8 8, ptr null, ptr null }], section ".init.data", align 4
@hi3620_separated_gate_clks = internal global [59 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 160, ptr @.str.48, ptr @.str.59, i32 4, i32 32, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 161, ptr @.str.59, ptr @.str.9, i32 4, i32 32, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 162, ptr @.str.49, ptr @.str.60, i32 4, i32 32, i8 2, i8 0, ptr null }, %struct.hisi_gate_clock { i32 163, ptr @.str.60, ptr @.str.9, i32 4, i32 32, i8 3, i8 0, ptr null }, %struct.hisi_gate_clock { i32 167, ptr @.str.61, ptr @.str.2, i32 4, i32 32, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 168, ptr @.str.62, ptr @.str.2, i32 4, i32 32, i8 6, i8 0, ptr null }, %struct.hisi_gate_clock { i32 169, ptr @.str.63, ptr @.str.2, i32 4, i32 32, i8 8, i8 0, ptr null }, %struct.hisi_gate_clock { i32 170, ptr @.str.64, ptr @.str.2, i32 4, i32 32, i8 9, i8 0, ptr null }, %struct.hisi_gate_clock { i32 171, ptr @.str.65, ptr @.str.2, i32 4, i32 32, i8 10, i8 0, ptr null }, %struct.hisi_gate_clock { i32 172, ptr @.str.66, ptr @.str.2, i32 4, i32 32, i8 11, i8 0, ptr null }, %struct.hisi_gate_clock { i32 173, ptr @.str.67, ptr @.str.2, i32 4, i32 32, i8 12, i8 0, ptr null }, %struct.hisi_gate_clock { i32 174, ptr @.str.68, ptr @.str.2, i32 4, i32 32, i8 13, i8 0, ptr null }, %struct.hisi_gate_clock { i32 175, ptr @.str.69, ptr @.str.2, i32 4, i32 32, i8 14, i8 0, ptr null }, %struct.hisi_gate_clock { i32 176, ptr @.str.70, ptr @.str.2, i32 4, i32 32, i8 15, i8 0, ptr null }, %struct.hisi_gate_clock { i32 177, ptr @.str.71, ptr @.str.2, i32 4, i32 32, i8 16, i8 0, ptr null }, %struct.hisi_gate_clock { i32 178, ptr @.str.72, ptr @.str.2, i32 4, i32 32, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 179, ptr @.str.73, ptr @.str.2, i32 4, i32 32, i8 18, i8 0, ptr null }, %struct.hisi_gate_clock { i32 180, ptr @.str.74, ptr @.str.2, i32 4, i32 32, i8 19, i8 0, ptr null }, %struct.hisi_gate_clock { i32 181, ptr @.str.75, ptr @.str.2, i32 4, i32 32, i8 20, i8 0, ptr null }, %struct.hisi_gate_clock { i32 182, ptr @.str.76, ptr @.str.2, i32 4, i32 32, i8 21, i8 0, ptr null }, %struct.hisi_gate_clock { i32 183, ptr @.str.77, ptr @.str.2, i32 4, i32 32, i8 22, i8 0, ptr null }, %struct.hisi_gate_clock { i32 184, ptr @.str.78, ptr @.str.2, i32 4, i32 32, i8 23, i8 0, ptr null }, %struct.hisi_gate_clock { i32 185, ptr @.str.79, ptr @.str.2, i32 4, i32 32, i8 24, i8 0, ptr null }, %struct.hisi_gate_clock { i32 186, ptr @.str.80, ptr @.str.2, i32 4, i32 32, i8 25, i8 0, ptr null }, %struct.hisi_gate_clock { i32 187, ptr @.str.81, ptr @.str.2, i32 4, i32 32, i8 26, i8 0, ptr null }, %struct.hisi_gate_clock { i32 188, ptr @.str.82, ptr @.str.2, i32 4, i32 32, i8 27, i8 0, ptr null }, %struct.hisi_gate_clock { i32 189, ptr @.str.83, ptr @.str.2, i32 4, i32 32, i8 28, i8 0, ptr null }, %struct.hisi_gate_clock { i32 190, ptr @.str.84, ptr @.str.2, i32 4, i32 32, i8 29, i8 0, ptr null }, %struct.hisi_gate_clock { i32 191, ptr @.str.85, ptr @.str.1, i32 4, i32 48, i8 15, i8 0, ptr null }, %struct.hisi_gate_clock { i32 192, ptr @.str.86, ptr @.str.1, i32 4, i32 48, i8 16, i8 0, ptr null }, %struct.hisi_gate_clock { i32 193, ptr @.str.87, ptr @.str.1, i32 4, i32 48, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 194, ptr @.str.88, ptr @.str.11, i32 4, i32 48, i8 24, i8 0, ptr null }, %struct.hisi_gate_clock { i32 195, ptr @.str.89, ptr @.str.10, i32 4, i32 48, i8 28, i8 0, ptr null }, %struct.hisi_gate_clock { i32 164, ptr @.str.50, ptr @.str.9, i32 4, i32 64, i8 3, i8 0, ptr null }, %struct.hisi_gate_clock { i32 165, ptr @.str.51, ptr @.str.9, i32 4, i32 64, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 166, ptr @.str.52, ptr @.str.9, i32 4, i32 64, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 196, ptr @.str.90, ptr @.str.32, i32 4, i32 64, i8 7, i8 0, ptr null }, %struct.hisi_gate_clock { i32 197, ptr @.str.91, ptr @.str.33, i32 4, i32 64, i8 8, i8 0, ptr null }, %struct.hisi_gate_clock { i32 198, ptr @.str.92, ptr @.str.23, i32 4, i32 64, i8 16, i8 0, ptr null }, %struct.hisi_gate_clock { i32 199, ptr @.str.93, ptr @.str.24, i32 4, i32 64, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 200, ptr @.str.94, ptr @.str.25, i32 4, i32 64, i8 18, i8 0, ptr null }, %struct.hisi_gate_clock { i32 201, ptr @.str.95, ptr @.str.26, i32 4, i32 64, i8 19, i8 0, ptr null }, %struct.hisi_gate_clock { i32 202, ptr @.str.96, ptr @.str.27, i32 4, i32 64, i8 20, i8 0, ptr null }, %struct.hisi_gate_clock { i32 203, ptr @.str.97, ptr @.str.28, i32 4, i32 64, i8 21, i8 0, ptr null }, %struct.hisi_gate_clock { i32 204, ptr @.str.98, ptr @.str.29, i32 4, i32 64, i8 22, i8 0, ptr null }, %struct.hisi_gate_clock { i32 205, ptr @.str.99, ptr @.str.30, i32 4, i32 64, i8 23, i8 0, ptr null }, %struct.hisi_gate_clock { i32 206, ptr @.str.100, ptr @.str.2, i32 4, i32 64, i8 24, i8 0, ptr null }, %struct.hisi_gate_clock { i32 207, ptr @.str.101, ptr @.str.2, i32 4, i32 64, i8 25, i8 0, ptr null }, %struct.hisi_gate_clock { i32 210, ptr @.str.102, ptr @.str.1, i32 4, i32 64, i8 26, i8 0, ptr null }, %struct.hisi_gate_clock { i32 208, ptr @.str.103, ptr @.str.2, i32 4, i32 64, i8 28, i8 0, ptr null }, %struct.hisi_gate_clock { i32 209, ptr @.str.104, ptr @.str.2, i32 4, i32 64, i8 29, i8 0, ptr null }, %struct.hisi_gate_clock { i32 211, ptr @.str.105, ptr @.str.10, i32 4, i32 80, i8 9, i8 0, ptr null }, %struct.hisi_gate_clock { i32 212, ptr @.str.106, ptr @.str.10, i32 4, i32 80, i8 10, i8 0, ptr null }, %struct.hisi_gate_clock { i32 213, ptr @.str.107, ptr @.str.10, i32 4, i32 80, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 214, ptr @.str.108, ptr @.str.56, i32 4, i32 80, i8 20, i8 0, ptr null }, %struct.hisi_gate_clock { i32 215, ptr @.str.109, ptr @.str.36, i32 4, i32 80, i8 21, i8 0, ptr null }, %struct.hisi_gate_clock { i32 216, ptr @.str.110, ptr @.str.57, i32 4, i32 80, i8 22, i8 0, ptr null }, %struct.hisi_gate_clock { i32 217, ptr @.str.111, ptr @.str.58, i32 4, i32 80, i8 23, i8 0, ptr null }, %struct.hisi_gate_clock { i32 218, ptr @.str.112, ptr @.str.89, i32 4, i32 80, i8 24, i8 0, ptr null }], section ".init.data", align 4
@.str = private unnamed_addr constant [7 x i8] c"osc32k\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"osc26m\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"armpll0\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"armpll1\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"armpll2\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"armpll3\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"armpll4\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"armpll5\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"rclk_tcxo\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"rclk_cfgaxi\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"rclk_pico\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"hsic_div\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"timer0_mux\00", align 1
@timer0_mux_p = internal constant [2 x ptr] [ptr @.str, ptr @.str.48], section ".init.rodata", align 4
@.str.14 = private unnamed_addr constant [11 x i8] c"timer1_mux\00", align 1
@timer1_mux_p = internal constant [2 x ptr] [ptr @.str, ptr @.str.48], section ".init.rodata", align 4
@.str.15 = private unnamed_addr constant [11 x i8] c"timer2_mux\00", align 1
@timer2_mux_p = internal constant [2 x ptr] [ptr @.str, ptr @.str.49], section ".init.rodata", align 4
@.str.16 = private unnamed_addr constant [11 x i8] c"timer3_mux\00", align 1
@timer3_mux_p = internal constant [2 x ptr] [ptr @.str, ptr @.str.49], section ".init.rodata", align 4
@.str.17 = private unnamed_addr constant [11 x i8] c"timer4_mux\00", align 1
@timer4_mux_p = internal constant [2 x ptr] [ptr @.str, ptr @.str.50], section ".init.rodata", align 4
@.str.18 = private unnamed_addr constant [11 x i8] c"timer5_mux\00", align 1
@timer5_mux_p = internal constant [2 x ptr] [ptr @.str, ptr @.str.50], section ".init.rodata", align 4
@.str.19 = private unnamed_addr constant [11 x i8] c"timer6_mux\00", align 1
@timer6_mux_p = internal constant [2 x ptr] [ptr @.str, ptr @.str.51], section ".init.rodata", align 4
@.str.20 = private unnamed_addr constant [11 x i8] c"timer7_mux\00", align 1
@timer7_mux_p = internal constant [2 x ptr] [ptr @.str, ptr @.str.51], section ".init.rodata", align 4
@.str.21 = private unnamed_addr constant [11 x i8] c"timer8_mux\00", align 1
@timer8_mux_p = internal constant [2 x ptr] [ptr @.str, ptr @.str.52], section ".init.rodata", align 4
@.str.22 = private unnamed_addr constant [11 x i8] c"timer9_mux\00", align 1
@timer9_mux_p = internal constant [2 x ptr] [ptr @.str, ptr @.str.52], section ".init.rodata", align 4
@.str.23 = private unnamed_addr constant [10 x i8] c"uart0_mux\00", align 1
@uart0_mux_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.2], section ".init.rodata", align 4
@.str.24 = private unnamed_addr constant [10 x i8] c"uart1_mux\00", align 1
@uart1_mux_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.2], section ".init.rodata", align 4
@.str.25 = private unnamed_addr constant [10 x i8] c"uart2_mux\00", align 1
@uart2_mux_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.2], section ".init.rodata", align 4
@.str.26 = private unnamed_addr constant [10 x i8] c"uart3_mux\00", align 1
@uart3_mux_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.2], section ".init.rodata", align 4
@.str.27 = private unnamed_addr constant [10 x i8] c"uart4_mux\00", align 1
@uart4_mux_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.2], section ".init.rodata", align 4
@.str.28 = private unnamed_addr constant [9 x i8] c"spi0_mux\00", align 1
@spi0_mux_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.10], section ".init.rodata", align 4
@.str.29 = private unnamed_addr constant [9 x i8] c"spi1_mux\00", align 1
@spi1_mux_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.10], section ".init.rodata", align 4
@.str.30 = private unnamed_addr constant [9 x i8] c"spi2_mux\00", align 1
@spi2_mux_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.10], section ".init.rodata", align 4
@.str.31 = private unnamed_addr constant [9 x i8] c"saxi_mux\00", align 1
@saxi_mux_p = internal constant [2 x ptr] [ptr @.str.6, ptr @.str.5], section ".init.rodata", align 4
@.str.32 = private unnamed_addr constant [9 x i8] c"pwm0_mux\00", align 1
@pwm0_mux_p = internal constant [2 x ptr] [ptr @.str, ptr @.str.1], section ".init.rodata", align 4
@.str.33 = private unnamed_addr constant [9 x i8] c"pwm1_mux\00", align 1
@pwm1_mux_p = internal constant [2 x ptr] [ptr @.str, ptr @.str.1], section ".init.rodata", align 4
@.str.34 = private unnamed_addr constant [7 x i8] c"sd_mux\00", align 1
@sd_mux_p = internal constant [2 x ptr] [ptr @.str.5, ptr @.str.6], section ".init.rodata", align 4
@.str.35 = private unnamed_addr constant [9 x i8] c"mmc1_mux\00", align 1
@mmc1_mux_p = internal constant [2 x ptr] [ptr @.str.5, ptr @.str.6], section ".init.rodata", align 4
@.str.36 = private unnamed_addr constant [10 x i8] c"mmc1_mux2\00", align 1
@mmc1_mux2_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.53], section ".init.rodata", align 4
@.str.37 = private unnamed_addr constant [8 x i8] c"g2d_mux\00", align 1
@g2d_mux_p = internal constant [2 x ptr] [ptr @.str.5, ptr @.str.6], section ".init.rodata", align 4
@.str.38 = private unnamed_addr constant [9 x i8] c"venc_mux\00", align 1
@venc_mux_p = internal constant [2 x ptr] [ptr @.str.5, ptr @.str.6], section ".init.rodata", align 4
@.str.39 = private unnamed_addr constant [9 x i8] c"vdec_mux\00", align 1
@vdec_mux_p = internal constant [2 x ptr] [ptr @.str.5, ptr @.str.6], section ".init.rodata", align 4
@.str.40 = private unnamed_addr constant [8 x i8] c"vpp_mux\00", align 1
@vpp_mux_p = internal constant [2 x ptr] [ptr @.str.5, ptr @.str.6], section ".init.rodata", align 4
@.str.41 = private unnamed_addr constant [9 x i8] c"edc0_mux\00", align 1
@edc0_mux_p = internal constant [2 x ptr] [ptr @.str.5, ptr @.str.6], section ".init.rodata", align 4
@.str.42 = private unnamed_addr constant [9 x i8] c"ldi0_mux\00", align 1
@ldi0_mux_p = internal constant [4 x ptr] [ptr @.str.5, ptr @.str.7, ptr @.str.6, ptr @.str.8], section ".init.rodata", align 4
@.str.43 = private unnamed_addr constant [9 x i8] c"edc1_mux\00", align 1
@edc1_mux_p = internal constant [2 x ptr] [ptr @.str.5, ptr @.str.6], section ".init.rodata", align 4
@.str.44 = private unnamed_addr constant [9 x i8] c"ldi1_mux\00", align 1
@ldi1_mux_p = internal constant [4 x ptr] [ptr @.str.5, ptr @.str.7, ptr @.str.6, ptr @.str.8], section ".init.rodata", align 4
@.str.45 = private unnamed_addr constant [10 x i8] c"rclk_hsic\00", align 1
@rclk_hsic_p = internal constant [2 x ptr] [ptr @.str.6, ptr @.str.5], section ".init.rodata", align 4
@.str.46 = private unnamed_addr constant [9 x i8] c"mmc2_mux\00", align 1
@mmc2_mux_p = internal constant [2 x ptr] [ptr @.str.5, ptr @.str.6], section ".init.rodata", align 4
@.str.47 = private unnamed_addr constant [9 x i8] c"mmc3_mux\00", align 1
@mmc3_mux_p = internal constant [2 x ptr] [ptr @.str.5, ptr @.str.6], section ".init.rodata", align 4
@.str.48 = private unnamed_addr constant [11 x i8] c"timerclk01\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"timerclk23\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"timerclk45\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"timerclk67\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"timerclk89\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"mmc1_div\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"saxi_div\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"cfgaxi_div\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"sd_div\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"mmc2_div\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"mmc3_div\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"timer_rclk01\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"timer_rclk23\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"rtcclk\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"kpc_clk\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"gpioclk0\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"gpioclk1\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"gpioclk2\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"gpioclk3\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"gpioclk4\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"gpioclk5\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"gpioclk6\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"gpioclk7\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"gpioclk8\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"gpioclk9\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"gpioclk10\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"gpioclk11\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"gpioclk12\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"gpioclk13\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"gpioclk14\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"gpioclk15\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"gpioclk16\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"gpioclk17\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"gpioclk18\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"gpioclk19\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"gpioclk20\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"gpioclk21\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"dphy0_clk\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"dphy1_clk\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"dphy2_clk\00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c"usbphy_clk\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c"acp_clk\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"pwmclk0\00", align 1
@.str.91 = private unnamed_addr constant [8 x i8] c"pwmclk1\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"uartclk0\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c"uartclk1\00", align 1
@.str.94 = private unnamed_addr constant [9 x i8] c"uartclk2\00", align 1
@.str.95 = private unnamed_addr constant [9 x i8] c"uartclk3\00", align 1
@.str.96 = private unnamed_addr constant [9 x i8] c"uartclk4\00", align 1
@.str.97 = private unnamed_addr constant [8 x i8] c"spiclk0\00", align 1
@.str.98 = private unnamed_addr constant [8 x i8] c"spiclk1\00", align 1
@.str.99 = private unnamed_addr constant [8 x i8] c"spiclk2\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"i2cclk0\00", align 1
@.str.101 = private unnamed_addr constant [8 x i8] c"i2cclk1\00", align 1
@.str.102 = private unnamed_addr constant [8 x i8] c"sci_clk\00", align 1
@.str.103 = private unnamed_addr constant [8 x i8] c"i2cclk2\00", align 1
@.str.104 = private unnamed_addr constant [8 x i8] c"i2cclk3\00", align 1
@.str.105 = private unnamed_addr constant [13 x i8] c"ddrc_per_clk\00", align 1
@.str.106 = private unnamed_addr constant [9 x i8] c"dmac_clk\00", align 1
@.str.107 = private unnamed_addr constant [12 x i8] c"usb2dvc_clk\00", align 1
@.str.108 = private unnamed_addr constant [7 x i8] c"sd_clk\00", align 1
@.str.109 = private unnamed_addr constant [9 x i8] c"mmc_clk1\00", align 1
@.str.110 = private unnamed_addr constant [9 x i8] c"mmc_clk2\00", align 1
@.str.111 = private unnamed_addr constant [9 x i8] c"mmc_clk3\00", align 1
@.str.112 = private unnamed_addr constant [8 x i8] c"mcu_clk\00", align 1
@.str.113 = private unnamed_addr constant [36 x i8] c"\013failed to find pctrl node in DTS\0A\00", align 1
@.str.114 = private unnamed_addr constant [23 x i8] c"\013failed to map pctrl\0A\00", align 1
@.str.115 = private unnamed_addr constant [35 x i8] c"drivers/clk/hisilicon/clk-hi3620.c\00", align 1
@hi3620_mmc_clks = internal global [4 x %struct.hisi_mmc_clock] [%struct.hisi_mmc_clock { i32 0, ptr @.str.116, ptr @.str.108, i32 4, i32 504, i32 0, i32 504, i32 1, i32 3, i32 504, i32 4, i32 4, i32 504, i32 8, i32 4 }, %struct.hisi_mmc_clock { i32 1, ptr @.str.117, ptr @.str.109, i32 4, i32 504, i32 12, i32 504, i32 13, i32 3, i32 504, i32 16, i32 4, i32 504, i32 20, i32 4 }, %struct.hisi_mmc_clock { i32 2, ptr @.str.118, ptr @.str.110, i32 4, i32 504, i32 24, i32 504, i32 25, i32 3, i32 504, i32 28, i32 4, i32 508, i32 0, i32 4 }, %struct.hisi_mmc_clock { i32 3, ptr @.str.119, ptr @.str.111, i32 4, i32 508, i32 4, i32 508, i32 5, i32 3, i32 508, i32 8, i32 4, i32 508, i32 12, i32 4 }], section ".init.data", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.116 = private unnamed_addr constant [9 x i8] c"sd_bclk1\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"mmc_bclk1\00", align 1
@.str.118 = private unnamed_addr constant [10 x i8] c"mmc_bclk2\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"mmc_bclk3\00", align 1
@clk_mmc_ops = internal constant %struct.clk_ops { ptr @mmc_clk_prepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmc_clk_recalc_rate, ptr null, ptr @mmc_clk_determine_rate, ptr null, ptr null, ptr @mmc_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@mmc_clk_set_timing.mmc_clk_lock = internal global %struct.spinlock zeroinitializer, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__of_table_hi3620_clk, ptr @__of_table_hi3620_mmc_clk], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @hi3620_clk_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @hisi_clk_init(ptr noundef %0, i32 noundef 219) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @hisi_clk_register_fixed_rate(ptr noundef nonnull @hi3620_fixed_rate_clks, i32 noundef 9, ptr noundef nonnull %2) #9
  %6 = tail call i32 @hisi_clk_register_fixed_factor(ptr noundef nonnull @hi3620_fixed_factor_clks, i32 noundef 3, ptr noundef nonnull %2) #9
  %7 = tail call i32 @hisi_clk_register_mux(ptr noundef nonnull @hi3620_mux_clks, i32 noundef 35, ptr noundef nonnull %2) #9
  %8 = tail call i32 @hisi_clk_register_divider(ptr noundef nonnull @hi3620_div_clks, i32 noundef 7, ptr noundef nonnull %2) #9
  tail call void @hisi_clk_register_gate_sep(ptr noundef nonnull @hi3620_separated_gate_clks, i32 noundef 59, ptr noundef nonnull %2) #9
  br label %9

9:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @hi3620_mmc_clk_init(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca %struct.clk_init_data, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113) #10
  br label %96

6:                                                ; preds = %1
  %7 = tail call ptr @of_iomap(ptr noundef nonnull %0, i32 noundef 0) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114) #10
  br label %96

11:                                               ; preds = %6
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 8) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.115, i32 noundef 466, i32 noundef 9, ptr noundef null) #9
  br label %96

16:                                               ; preds = %11
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 16) #11
  store ptr %18, ptr %13, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %96, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds i8, ptr %2, i32 12
  %22 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 1
  %23 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 6
  %24 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 2
  %25 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 5
  br label %26

26:                                               ; preds = %86, %20
  %27 = phi i32 [ 0, %20 ], [ %91, %86 ]
  %28 = getelementptr [4 x %struct.hisi_mmc_clock], ptr @hi3620_mmc_clks, i32 0, i32 %27
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %21, i8 0, i32 12, i1 false) #9, !annotation !9
  %29 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %30 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 60) #11
  %31 = icmp eq ptr %30, null
  br i1 %31, label %86, label %32

32:                                               ; preds = %26
  %33 = getelementptr [4 x %struct.hisi_mmc_clock], ptr @hi3620_mmc_clks, i32 0, i32 %27, i32 1
  %34 = load ptr, ptr %33, align 4
  store ptr %34, ptr %2, align 4
  store ptr @clk_mmc_ops, ptr %22, align 4
  %35 = getelementptr [4 x %struct.hisi_mmc_clock], ptr @hi3620_mmc_clks, i32 0, i32 %27, i32 3
  %36 = load i32, ptr %35, align 4
  store i32 %36, ptr %23, align 4
  %37 = getelementptr [4 x %struct.hisi_mmc_clock], ptr @hi3620_mmc_clks, i32 0, i32 %27, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  %40 = select i1 %39, ptr null, ptr %37
  store ptr %40, ptr %24, align 4
  %41 = icmp ne ptr %38, null
  %42 = zext i1 %41 to i8
  store i8 %42, ptr %25, align 4
  %43 = getelementptr inbounds %struct.clk_hw, ptr %30, i32 0, i32 2
  store ptr %2, ptr %43, align 8
  %44 = load i32, ptr %28, align 4
  %45 = getelementptr inbounds %struct.clk_mmc, ptr %30, i32 0, i32 1
  store i32 %44, ptr %45, align 4
  %46 = getelementptr [4 x %struct.hisi_mmc_clock], ptr @hi3620_mmc_clks, i32 0, i32 %27, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr i8, ptr %7, i32 %47
  %49 = getelementptr inbounds %struct.clk_mmc, ptr %30, i32 0, i32 2
  store ptr %48, ptr %49, align 8
  %50 = getelementptr [4 x %struct.hisi_mmc_clock], ptr @hi3620_mmc_clks, i32 0, i32 %27, i32 5
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.clk_mmc, ptr %30, i32 0, i32 3
  store i32 %51, ptr %52, align 4
  %53 = getelementptr [4 x %struct.hisi_mmc_clock], ptr @hi3620_mmc_clks, i32 0, i32 %27, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr i8, ptr %7, i32 %54
  %56 = getelementptr inbounds %struct.clk_mmc, ptr %30, i32 0, i32 4
  store ptr %55, ptr %56, align 8
  %57 = getelementptr [4 x %struct.hisi_mmc_clock], ptr @hi3620_mmc_clks, i32 0, i32 %27, i32 7
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.clk_mmc, ptr %30, i32 0, i32 5
  store i32 %58, ptr %59, align 4
  %60 = getelementptr [4 x %struct.hisi_mmc_clock], ptr @hi3620_mmc_clks, i32 0, i32 %27, i32 8
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.clk_mmc, ptr %30, i32 0, i32 6
  store i32 %61, ptr %62, align 8
  %63 = getelementptr [4 x %struct.hisi_mmc_clock], ptr @hi3620_mmc_clks, i32 0, i32 %27, i32 9
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr i8, ptr %7, i32 %64
  %66 = getelementptr inbounds %struct.clk_mmc, ptr %30, i32 0, i32 7
  store ptr %65, ptr %66, align 4
  %67 = getelementptr [4 x %struct.hisi_mmc_clock], ptr @hi3620_mmc_clks, i32 0, i32 %27, i32 10
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.clk_mmc, ptr %30, i32 0, i32 8
  store i32 %68, ptr %69, align 8
  %70 = getelementptr [4 x %struct.hisi_mmc_clock], ptr @hi3620_mmc_clks, i32 0, i32 %27, i32 11
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.clk_mmc, ptr %30, i32 0, i32 9
  store i32 %71, ptr %72, align 4
  %73 = getelementptr [4 x %struct.hisi_mmc_clock], ptr @hi3620_mmc_clks, i32 0, i32 %27, i32 12
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr i8, ptr %7, i32 %74
  %76 = getelementptr inbounds %struct.clk_mmc, ptr %30, i32 0, i32 10
  store ptr %75, ptr %76, align 8
  %77 = getelementptr [4 x %struct.hisi_mmc_clock], ptr @hi3620_mmc_clks, i32 0, i32 %27, i32 13
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.clk_mmc, ptr %30, i32 0, i32 11
  store i32 %78, ptr %79, align 4
  %80 = getelementptr [4 x %struct.hisi_mmc_clock], ptr @hi3620_mmc_clks, i32 0, i32 %27, i32 14
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.clk_mmc, ptr %30, i32 0, i32 12
  store i32 %81, ptr %82, align 8
  %83 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %30) #9
  %84 = icmp ugt ptr %83, inttoptr (i32 -4096 to ptr)
  br i1 %84, label %85, label %86, !prof !8

85:                                               ; preds = %32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.115, i32 noundef 443, i32 noundef 9, ptr noundef null) #9
  call void @kfree(ptr noundef nonnull %30) #9
  br label %86

86:                                               ; preds = %85, %32, %26
  %87 = phi ptr [ %83, %32 ], [ %83, %85 ], [ inttoptr (i32 -12 to ptr), %26 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #9
  %88 = load ptr, ptr %13, align 8
  %89 = load i32, ptr %28, align 4
  %90 = getelementptr ptr, ptr %88, i32 %89
  store ptr %87, ptr %90, align 4
  %91 = add nuw nsw i32 %27, 1
  %92 = icmp eq i32 %91, 4
  br i1 %92, label %93, label %26

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.clk_onecell_data, ptr %13, i32 0, i32 1
  store i32 4, ptr %94, align 4
  %95 = call i32 @of_clk_add_provider(ptr noundef nonnull %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %13) #9
  br label %96

96:                                               ; preds = %93, %16, %15, %9, %4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hisi_clk_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_fixed_rate(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_fixed_factor(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_mux(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_divider(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hisi_clk_register_gate_sep(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_clk_prepare(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.clk_mmc, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 1
  %5 = select i1 %4, i32 13000000, i32 25000000
  %6 = tail call fastcc i32 @mmc_clk_set_timing(ptr noundef %0, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @mmc_clk_recalc_rate(ptr nocapture noundef readnone %0, i32 noundef %1) #7 {
  switch i32 %1, label %7 [
    i32 26000000, label %8
    i32 180000000, label %3
    i32 360000000, label %4
    i32 720000000, label %5
    i32 1440000000, label %6
  ]

3:                                                ; preds = %2
  br label %8

4:                                                ; preds = %2
  br label %8

5:                                                ; preds = %2
  br label %8

6:                                                ; preds = %2
  br label %8

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %7, %6, %5, %4, %3, %2
  %9 = phi i32 [ %1, %7 ], [ 180000000, %6 ], [ 100000000, %5 ], [ 50000000, %4 ], [ 25000000, %3 ], [ 13000000, %2 ]
  ret i32 %9
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mmc_clk_determine_rate(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #8 {
  %3 = load i32, ptr %1, align 4
  %4 = icmp ult i32 %3, 13000001
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.clk_mmc, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %18, label %11

9:                                                ; preds = %2
  %10 = icmp ult i32 %3, 26000001
  br i1 %10, label %11, label %12

11:                                               ; preds = %9, %5
  br label %18

12:                                               ; preds = %9
  %13 = icmp ult i32 %3, 52000001
  br i1 %13, label %18, label %14

14:                                               ; preds = %12
  %15 = icmp ult i32 %3, 100000001
  %16 = select i1 %15, i32 100000000, i32 180000000
  %17 = select i1 %15, i32 720000000, i32 1440000000
  br label %18

18:                                               ; preds = %14, %12, %11, %5
  %19 = phi i32 [ 25000000, %11 ], [ 13000000, %5 ], [ 50000000, %12 ], [ %16, %14 ]
  %20 = phi i32 [ 180000000, %11 ], [ 26000000, %5 ], [ 360000000, %12 ], [ %17, %14 ]
  store i32 %19, ptr %1, align 4
  %21 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  store i32 %20, ptr %21, align 4
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_clk_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #6 {
  %4 = tail call fastcc i32 @mmc_clk_set_timing(ptr noundef %0, i32 noundef %1)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_clk_set_timing(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  switch i32 %1, label %105 [
    i32 13000000, label %7
    i32 25000000, label %3
    i32 50000000, label %4
    i32 100000000, label %5
    i32 180000000, label %6
  ]

3:                                                ; preds = %2
  br label %7

4:                                                ; preds = %2
  br label %7

5:                                                ; preds = %2
  br label %7

6:                                                ; preds = %2
  br label %7

7:                                                ; preds = %6, %5, %4, %3, %2
  %8 = phi i32 [ 7, %6 ], [ 6, %5 ], [ 6, %4 ], [ 6, %3 ], [ 1, %2 ]
  %9 = phi i32 [ 4, %6 ], [ 4, %5 ], [ 6, %4 ], [ 6, %3 ], [ 1, %2 ]
  %10 = phi i32 [ 6, %6 ], [ 6, %5 ], [ 3, %4 ], [ 13, %3 ], [ 3, %2 ]
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @mmc_clk_set_timing.mmc_clk_lock) #9
  %12 = getelementptr inbounds %struct.clk_mmc, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !10
  %15 = getelementptr inbounds %struct.clk_mmc, ptr %0, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = shl nuw i32 1, %16
  %18 = xor i32 %17, -1
  %19 = and i32 %14, %18
  %20 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %19) #9, !srcloc !11
  %21 = getelementptr inbounds %struct.clk_mmc, ptr %0, i32 0, i32 10
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #9, !srcloc !10
  %24 = getelementptr inbounds %struct.clk_mmc, ptr %0, i32 0, i32 11
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.clk_mmc, ptr %0, i32 0, i32 12
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %29, %7
  %30 = phi i32 [ %42, %29 ], [ 0, %7 ]
  %31 = phi i32 [ %40, %29 ], [ %23, %7 ]
  %32 = phi i32 [ %41, %29 ], [ %10, %7 ]
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  %35 = add i32 %30, %25
  %36 = shl nuw i32 1, %35
  %37 = or i32 %36, %31
  %38 = xor i32 %36, -1
  %39 = and i32 %31, %38
  %40 = select i1 %34, i32 %39, i32 %37
  %41 = lshr i32 %32, 1
  %42 = add nuw i32 %30, 1
  %43 = icmp eq i32 %42, %27
  br i1 %43, label %44, label %29

44:                                               ; preds = %29, %7
  %45 = phi i32 [ %23, %7 ], [ %40, %29 ]
  %46 = load ptr, ptr %21, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %45) #9, !srcloc !11
  %47 = getelementptr inbounds %struct.clk_mmc, ptr %0, i32 0, i32 7
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #9, !srcloc !10
  %50 = getelementptr inbounds %struct.clk_mmc, ptr %0, i32 0, i32 8
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.clk_mmc, ptr %0, i32 0, i32 9
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %70, label %55

55:                                               ; preds = %55, %44
  %56 = phi i32 [ %68, %55 ], [ 0, %44 ]
  %57 = phi i32 [ %66, %55 ], [ %49, %44 ]
  %58 = phi i32 [ %67, %55 ], [ %9, %44 ]
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  %61 = add i32 %56, %51
  %62 = shl nuw i32 1, %61
  %63 = or i32 %62, %57
  %64 = xor i32 %62, -1
  %65 = and i32 %57, %64
  %66 = select i1 %60, i32 %65, i32 %63
  %67 = lshr i32 %58, 1
  %68 = add nuw i32 %56, 1
  %69 = icmp eq i32 %68, %53
  br i1 %69, label %70, label %55

70:                                               ; preds = %55, %44
  %71 = phi i32 [ %49, %44 ], [ %66, %55 ]
  %72 = load ptr, ptr %47, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %71) #9, !srcloc !11
  %73 = getelementptr inbounds %struct.clk_mmc, ptr %0, i32 0, i32 4
  %74 = load ptr, ptr %73, align 4
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #9, !srcloc !10
  %76 = getelementptr inbounds %struct.clk_mmc, ptr %0, i32 0, i32 5
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.clk_mmc, ptr %0, i32 0, i32 6
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %96, label %81

81:                                               ; preds = %81, %70
  %82 = phi i32 [ %94, %81 ], [ 0, %70 ]
  %83 = phi i32 [ %92, %81 ], [ %75, %70 ]
  %84 = phi i32 [ %93, %81 ], [ %8, %70 ]
  %85 = and i32 %84, 1
  %86 = icmp eq i32 %85, 0
  %87 = add i32 %82, %77
  %88 = shl nuw i32 1, %87
  %89 = or i32 %88, %83
  %90 = xor i32 %88, -1
  %91 = and i32 %83, %90
  %92 = select i1 %86, i32 %91, i32 %89
  %93 = lshr i32 %84, 1
  %94 = add nuw i32 %82, 1
  %95 = icmp eq i32 %94, %79
  br i1 %95, label %96, label %81

96:                                               ; preds = %81, %70
  %97 = phi i32 [ %75, %70 ], [ %92, %81 ]
  %98 = load ptr, ptr %73, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %97) #9, !srcloc !11
  %99 = load ptr, ptr %12, align 4
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #9, !srcloc !10
  %101 = load i32, ptr %15, align 4
  %102 = shl nuw i32 1, %101
  %103 = or i32 %102, %100
  %104 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %103) #9, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @mmc_clk_set_timing.mmc_clk_lock, i32 noundef %11) #9
  br label %105

105:                                              ; preds = %96, %2
  %106 = phi i32 [ 0, %96 ], [ -22, %2 ]
  ret i32 %106
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

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
!9 = !{!"auto-init"}
!10 = !{i64 2862985}
!11 = !{i64 2862567}
