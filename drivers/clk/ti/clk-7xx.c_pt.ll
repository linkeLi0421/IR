; ModuleID = '/llk/IR/drivers/clk/ti/clk-7xx.c_pt.bc'
source_filename = "../drivers/clk/ti/clk-7xx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_clkctrl_reg_data = type { i16, ptr, i16, ptr, ptr }
%struct.omap_clkctrl_data = type { i32, ptr }
%struct.ti_dt_clk = type { %struct.clk_lookup, ptr }
%struct.clk_lookup = type { %struct.list_head, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.omap_clkctrl_bit_data = type { i8, i8, ptr, ptr }
%struct.omap_clkctrl_div_data = type { ptr, i32, i32 }

@dra7_mpu_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 0, ptr @.str.8, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@dra7_dsp1_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 192, ptr @.str.9, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@dra7_ipu1_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr @dra7_mmu_ipu1_bit_data, i16 192, ptr @.str.10, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@dra7_ipu_clkctrl_regs = internal constant [8 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr @dra7_mcasp1_bit_data, i16 32, ptr @.str.13, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr @dra7_timer5_bit_data, i16 32, ptr @.str.14, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr @dra7_timer6_bit_data, i16 32, ptr @.str.15, ptr null }, %struct.omap_clkctrl_reg_data { i16 24, ptr @dra7_timer7_bit_data, i16 32, ptr @.str.16, ptr null }, %struct.omap_clkctrl_reg_data { i16 32, ptr @dra7_timer8_bit_data, i16 32, ptr @.str.17, ptr null }, %struct.omap_clkctrl_reg_data { i16 40, ptr null, i16 32, ptr @.str.18, ptr null }, %struct.omap_clkctrl_reg_data { i16 48, ptr @dra7_uart6_bit_data, i16 32, ptr @.str.19, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@dra7_dsp2_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 192, ptr @.str.9, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@dra7_rtc_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 36, ptr null, i16 32, ptr @.str.39, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@dra7_vpe_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 4, ptr null, i16 64, ptr @.str.47, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@dra7_coreaon_clkctrl_regs = internal constant [3 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 8, ptr null, i16 32, ptr @.str.48, ptr null }, %struct.omap_clkctrl_reg_data { i16 24, ptr null, i16 32, ptr @.str.48, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@dra7_l3main1_clkctrl_regs = internal constant [8 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 0, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr null, i16 64, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 80, ptr null, i16 0, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 88, ptr null, i16 64, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 96, ptr null, i16 64, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 104, ptr null, i16 0, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 112, ptr null, i16 0, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@dra7_ipu2_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 192, ptr @.str.12, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@dra7_dma_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 0, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@dra7_emif_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 0, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@dra7_atl_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr @dra7_atl_bit_data, i16 32, ptr @.str.50, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@dra7_l4cfg_clkctrl_regs = internal constant [16 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 0, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr null, i16 0, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr null, i16 0, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 40, ptr null, i16 0, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 48, ptr null, i16 0, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 56, ptr null, i16 0, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 64, ptr null, i16 0, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 72, ptr null, i16 0, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 80, ptr null, i16 0, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 88, ptr null, i16 0, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 96, ptr null, i16 0, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 104, ptr null, i16 0, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 112, ptr null, i16 0, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 120, ptr null, i16 0, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 128, ptr null, i16 0, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@dra7_l3instr_clkctrl_regs = internal constant [3 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 64, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr null, i16 64, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@dra7_iva_clkctrl_regs = internal constant [3 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 192, ptr @.str.56, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr null, i16 64, ptr @.str.56, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@dra7_cam_clkctrl_regs = internal constant [4 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr @dra7_cam_bit_data, i16 64, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr @dra7_cam_bit_data, i16 64, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr @dra7_cam_bit_data, i16 64, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@dra7_dss_clkctrl_regs = internal constant [3 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr @dra7_dss_core_bit_data, i16 32, ptr @.str.58, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr null, i16 32, ptr @.str.59, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@dra7_gpu_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr @dra7_gpu_core_bit_data, i16 32, ptr @.str.64, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@dra7_l3init_clkctrl_regs = internal constant [10 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 8, ptr @dra7_mmc1_bit_data, i16 32, ptr @.str.68, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr @dra7_mmc2_bit_data, i16 32, ptr @.str.69, ptr null }, %struct.omap_clkctrl_reg_data { i16 32, ptr @dra7_usb_otg_ss2_bit_data, i16 64, ptr @.str.70, ptr null }, %struct.omap_clkctrl_reg_data { i16 40, ptr null, i16 64, ptr @.str.70, ptr null }, %struct.omap_clkctrl_reg_data { i16 48, ptr null, i16 3136, ptr @.str.70, ptr null }, %struct.omap_clkctrl_reg_data { i16 104, ptr @dra7_sata_bit_data, i16 32, ptr @.str.45, ptr null }, %struct.omap_clkctrl_reg_data { i16 192, ptr null, i16 64, ptr @.str.71, ptr null }, %struct.omap_clkctrl_reg_data { i16 200, ptr null, i16 64, ptr @.str.71, ptr null }, %struct.omap_clkctrl_reg_data { i16 208, ptr @dra7_usb_otg_ss1_bit_data, i16 64, ptr @.str.70, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@dra7_pcie_clkctrl_regs = internal constant [3 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr @dra7_pcie1_bit_data, i16 32, ptr @.str.71, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr @dra7_pcie2_bit_data, i16 32, ptr @.str.71, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@dra7_gmac_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr @dra7_gmac_bit_data, i16 32, ptr @.str.79, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@dra7_l4per_clkctrl_regs = internal constant [32 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr @dra7_timer10_bit_data, i16 32, ptr @.str.82, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr @dra7_timer11_bit_data, i16 32, ptr @.str.83, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr @dra7_timer2_bit_data, i16 32, ptr @.str.84, ptr null }, %struct.omap_clkctrl_reg_data { i16 24, ptr @dra7_timer3_bit_data, i16 32, ptr @.str.85, ptr null }, %struct.omap_clkctrl_reg_data { i16 32, ptr @dra7_timer4_bit_data, i16 32, ptr @.str.86, ptr null }, %struct.omap_clkctrl_reg_data { i16 40, ptr @dra7_timer9_bit_data, i16 32, ptr @.str.87, ptr null }, %struct.omap_clkctrl_reg_data { i16 48, ptr null, i16 0, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 56, ptr @dra7_gpio2_bit_data, i16 64, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 64, ptr @dra7_gpio3_bit_data, i16 64, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 72, ptr @dra7_gpio4_bit_data, i16 64, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 80, ptr @dra7_gpio5_bit_data, i16 64, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 88, ptr @dra7_gpio6_bit_data, i16 64, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 96, ptr null, i16 32, ptr @.str.88, ptr null }, %struct.omap_clkctrl_reg_data { i16 120, ptr null, i16 32, ptr @.str.18, ptr null }, %struct.omap_clkctrl_reg_data { i16 128, ptr null, i16 32, ptr @.str.18, ptr null }, %struct.omap_clkctrl_reg_data { i16 136, ptr null, i16 32, ptr @.str.18, ptr null }, %struct.omap_clkctrl_reg_data { i16 144, ptr null, i16 32, ptr @.str.18, ptr null }, %struct.omap_clkctrl_reg_data { i16 152, ptr null, i16 0, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 200, ptr null, i16 32, ptr @.str.45, ptr null }, %struct.omap_clkctrl_reg_data { i16 208, ptr null, i16 32, ptr @.str.45, ptr null }, %struct.omap_clkctrl_reg_data { i16 216, ptr null, i16 32, ptr @.str.45, ptr null }, %struct.omap_clkctrl_reg_data { i16 224, ptr null, i16 32, ptr @.str.45, ptr null }, %struct.omap_clkctrl_reg_data { i16 232, ptr @dra7_gpio7_bit_data, i16 64, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 240, ptr @dra7_gpio8_bit_data, i16 64, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 248, ptr @dra7_mmc3_bit_data, i16 32, ptr @.str.89, ptr null }, %struct.omap_clkctrl_reg_data { i16 256, ptr @dra7_mmc4_bit_data, i16 32, ptr @.str.90, ptr null }, %struct.omap_clkctrl_reg_data { i16 280, ptr @dra7_uart1_bit_data, i16 32, ptr @.str.91, ptr null }, %struct.omap_clkctrl_reg_data { i16 288, ptr @dra7_uart2_bit_data, i16 32, ptr @.str.92, ptr null }, %struct.omap_clkctrl_reg_data { i16 296, ptr @dra7_uart3_bit_data, i16 32, ptr @.str.93, ptr null }, %struct.omap_clkctrl_reg_data { i16 304, ptr @dra7_uart4_bit_data, i16 32, ptr @.str.94, ptr null }, %struct.omap_clkctrl_reg_data { i16 328, ptr @dra7_uart5_bit_data, i16 32, ptr @.str.95, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@dra7_l4sec_clkctrl_regs = internal constant [7 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 64, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr null, i16 64, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr null, i16 64, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 32, ptr null, i16 320, ptr @.str.71, ptr null }, %struct.omap_clkctrl_reg_data { i16 40, ptr null, i16 64, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 88, ptr null, i16 64, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@dra7_l4per2_clkctrl_regs = internal constant [19 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 0, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 12, ptr null, i16 32, ptr @.str.98, ptr null }, %struct.omap_clkctrl_reg_data { i16 20, ptr null, i16 32, ptr @.str.98, ptr null }, %struct.omap_clkctrl_reg_data { i16 132, ptr null, i16 32, ptr @.str.71, ptr null }, %struct.omap_clkctrl_reg_data { i16 140, ptr null, i16 32, ptr @.str.71, ptr null }, %struct.omap_clkctrl_reg_data { i16 184, ptr null, i16 32, ptr @.str.71, ptr null }, %struct.omap_clkctrl_reg_data { i16 300, ptr @dra7_qspi_bit_data, i16 32, ptr @.str.99, ptr null }, %struct.omap_clkctrl_reg_data { i16 340, ptr @dra7_mcasp2_bit_data, i16 32, ptr @.str.100, ptr null }, %struct.omap_clkctrl_reg_data { i16 348, ptr @dra7_mcasp3_bit_data, i16 32, ptr @.str.101, ptr null }, %struct.omap_clkctrl_reg_data { i16 364, ptr @dra7_mcasp5_bit_data, i16 32, ptr @.str.102, ptr null }, %struct.omap_clkctrl_reg_data { i16 388, ptr @dra7_mcasp8_bit_data, i16 32, ptr @.str.103, ptr null }, %struct.omap_clkctrl_reg_data { i16 396, ptr @dra7_mcasp4_bit_data, i16 32, ptr @.str.104, ptr null }, %struct.omap_clkctrl_reg_data { i16 452, ptr @dra7_uart7_bit_data, i16 32, ptr @.str.105, ptr null }, %struct.omap_clkctrl_reg_data { i16 468, ptr @dra7_uart8_bit_data, i16 32, ptr @.str.106, ptr null }, %struct.omap_clkctrl_reg_data { i16 476, ptr @dra7_uart9_bit_data, i16 32, ptr @.str.107, ptr null }, %struct.omap_clkctrl_reg_data { i16 484, ptr null, i16 32, ptr @.str.76, ptr null }, %struct.omap_clkctrl_reg_data { i16 504, ptr @dra7_mcasp6_bit_data, i16 32, ptr @.str.108, ptr null }, %struct.omap_clkctrl_reg_data { i16 508, ptr @dra7_mcasp7_bit_data, i16 32, ptr @.str.109, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@dra7_l4per3_clkctrl_regs = internal constant [6 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 0, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 180, ptr @dra7_timer13_bit_data, i16 32, ptr @.str.112, ptr null }, %struct.omap_clkctrl_reg_data { i16 188, ptr @dra7_timer14_bit_data, i16 32, ptr @.str.113, ptr null }, %struct.omap_clkctrl_reg_data { i16 196, ptr @dra7_timer15_bit_data, i16 32, ptr @.str.114, ptr null }, %struct.omap_clkctrl_reg_data { i16 284, ptr @dra7_timer16_bit_data, i16 32, ptr @.str.115, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@dra7_wkupaon_clkctrl_regs = internal constant [10 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 0, ptr @.str.48, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr null, i16 32, ptr @.str.39, ptr null }, %struct.omap_clkctrl_reg_data { i16 24, ptr @dra7_gpio1_bit_data, i16 64, ptr @.str.48, ptr null }, %struct.omap_clkctrl_reg_data { i16 32, ptr @dra7_timer1_bit_data, i16 32, ptr @.str.116, ptr null }, %struct.omap_clkctrl_reg_data { i16 40, ptr null, i16 256, ptr @.str.117, ptr null }, %struct.omap_clkctrl_reg_data { i16 48, ptr null, i16 0, ptr @.str.48, ptr null }, %struct.omap_clkctrl_reg_data { i16 96, ptr @dra7_uart10_bit_data, i16 32, ptr @.str.118, ptr null }, %struct.omap_clkctrl_reg_data { i16 104, ptr @dra7_dcan1_bit_data, i16 32, ptr @.str.119, ptr null }, %struct.omap_clkctrl_reg_data { i16 128, ptr null, i16 2080, ptr @.str.120, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@dra7_clkctrl_data = dso_local local_unnamed_addr constant [28 x %struct.omap_clkctrl_data] [%struct.omap_clkctrl_data { i32 1241535264, ptr @dra7_mpu_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241535520, ptr @dra7_dsp1_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241535776, ptr @dra7_ipu1_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241535824, ptr @dra7_ipu_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241536032, ptr @dra7_dsp2_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241536288, ptr @dra7_rtc_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241536352, ptr @dra7_vpe_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241548320, ptr @dra7_coreaon_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241548576, ptr @dra7_l3main1_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241549088, ptr @dra7_ipu2_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241549344, ptr @dra7_dma_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241549600, ptr @dra7_emif_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241549824, ptr @dra7_atl_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241550112, ptr @dra7_l4cfg_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241550368, ptr @dra7_l3instr_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241550624, ptr @dra7_iva_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241550880, ptr @dra7_cam_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241551136, ptr @dra7_dss_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241551392, ptr @dra7_gpu_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241551648, ptr @dra7_l3init_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241551792, ptr @dra7_pcie_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241551824, ptr @dra7_gmac_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241552680, ptr @dra7_l4per_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241553056, ptr @dra7_l4sec_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241552652, ptr @dra7_l4per2_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241552660, ptr @dra7_l4per3_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1256224800, ptr @dra7_wkupaon_clkctrl_regs }, %struct.omap_clkctrl_data zeroinitializer], section ".init.rodata", align 4
@dra7xx_compat_clks = external dso_local global [0 x %struct.ti_dt_clk], align 4
@dra7xx_clks = internal global [90 x %struct.ti_dt_clk] [%struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.121, ptr null, ptr null }, ptr @.str.39 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.122, ptr null, ptr null }, ptr @.str.38 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.123, ptr null, ptr null }, ptr @.str.76 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.124, ptr null, ptr null }, ptr @.str.55 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.125, ptr null, ptr null }, ptr @.str.50 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.126, ptr null, ptr null }, ptr @.str.119 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.127, ptr null, ptr null }, ptr @.str.128 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.129, ptr null, ptr null }, ptr @.str.130 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.131, ptr null, ptr null }, ptr @.str.58 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.132, ptr null, ptr null }, ptr @.str.133 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.134, ptr null, ptr null }, ptr @.str.135 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.136, ptr null, ptr null }, ptr @.str.137 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.138, ptr null, ptr null }, ptr @.str.139 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.140, ptr null, ptr null }, ptr @.str.141 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.142, ptr null, ptr null }, ptr @.str.143 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.144, ptr null, ptr null }, ptr @.str.145 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.146, ptr null, ptr null }, ptr @.str.147 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.148, ptr null, ptr null }, ptr @.str.149 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.150, ptr null, ptr null }, ptr @.str.151 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.152, ptr null, ptr null }, ptr @.str.153 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.154, ptr null, ptr null }, ptr @.str.155 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.156, ptr null, ptr null }, ptr @.str.10 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.157, ptr null, ptr null }, ptr @.str.158 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.159, ptr null, ptr null }, ptr @.str.160 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.161, ptr null, ptr null }, ptr @.str.13 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.162, ptr null, ptr null }, ptr @.str.163 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.164, ptr null, ptr null }, ptr @.str.165 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.166, ptr null, ptr null }, ptr @.str.100 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.167, ptr null, ptr null }, ptr @.str.168 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.169, ptr null, ptr null }, ptr @.str.101 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.170, ptr null, ptr null }, ptr @.str.171 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.172, ptr null, ptr null }, ptr @.str.104 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.173, ptr null, ptr null }, ptr @.str.174 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.175, ptr null, ptr null }, ptr @.str.102 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.176, ptr null, ptr null }, ptr @.str.177 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.178, ptr null, ptr null }, ptr @.str.108 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.179, ptr null, ptr null }, ptr @.str.180 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.181, ptr null, ptr null }, ptr @.str.109 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.182, ptr null, ptr null }, ptr @.str.183 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.184, ptr null, ptr null }, ptr @.str.103 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.185, ptr null, ptr null }, ptr @.str.186 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.187, ptr null, ptr null }, ptr @.str.68 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.188, ptr null, ptr null }, ptr @.str.73 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.189, ptr null, ptr null }, ptr @.str.190 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.191, ptr null, ptr null }, ptr @.str.69 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.192, ptr null, ptr null }, ptr @.str.74 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.193, ptr null, ptr null }, ptr @.str.194 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.195, ptr null, ptr null }, ptr @.str.89 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.196, ptr null, ptr null }, ptr @.str.96 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.197, ptr null, ptr null }, ptr @.str.198 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.199, ptr null, ptr null }, ptr @.str.90 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.200, ptr null, ptr null }, ptr @.str.97 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.201, ptr null, ptr null }, ptr @.str.202 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.203, ptr null, ptr null }, ptr @.str.204 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.205, ptr null, ptr null }, ptr @.str.206 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.207, ptr null, ptr null }, ptr @.str.208 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.209, ptr null, ptr null }, ptr @.str.210 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.211, ptr null, ptr null }, ptr @.str.212 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.213, ptr null, ptr null }, ptr @.str.99 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.214, ptr null, ptr null }, ptr @.str.111 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.215, ptr null, ptr null }, ptr @.str.216 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.217, ptr null, ptr null }, ptr @.str.218 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.219, ptr null, ptr null }, ptr @.str.82 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.220, ptr null, ptr null }, ptr @.str.83 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.221, ptr null, ptr null }, ptr @.str.112 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.222, ptr null, ptr null }, ptr @.str.113 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.223, ptr null, ptr null }, ptr @.str.114 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.224, ptr null, ptr null }, ptr @.str.115 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.225, ptr null, ptr null }, ptr @.str.116 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.226, ptr null, ptr null }, ptr @.str.84 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.227, ptr null, ptr null }, ptr @.str.85 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.228, ptr null, ptr null }, ptr @.str.86 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.229, ptr null, ptr null }, ptr @.str.14 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.230, ptr null, ptr null }, ptr @.str.15 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.231, ptr null, ptr null }, ptr @.str.16 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.232, ptr null, ptr null }, ptr @.str.17 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.233, ptr null, ptr null }, ptr @.str.87 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.234, ptr null, ptr null }, ptr @.str.118 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.235, ptr null, ptr null }, ptr @.str.91 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.236, ptr null, ptr null }, ptr @.str.92 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.237, ptr null, ptr null }, ptr @.str.93 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.238, ptr null, ptr null }, ptr @.str.94 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.239, ptr null, ptr null }, ptr @.str.95 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.240, ptr null, ptr null }, ptr @.str.19 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.241, ptr null, ptr null }, ptr @.str.105 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.242, ptr null, ptr null }, ptr @.str.106 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.243, ptr null, ptr null }, ptr @.str.107 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.244, ptr null, ptr null }, ptr @.str.245 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.246, ptr null, ptr null }, ptr @.str.247 }, %struct.ti_dt_clk zeroinitializer], align 4
@.str = private unnamed_addr constant [13 x i8] c"dpll_gmac_ck\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"\013%s: failed to configure GMAC DPLL!\0A\00", align 1
@__func__.dra7xx_dt_clk_init = private unnamed_addr constant [19 x i8] c"dra7xx_dt_clk_init\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"dpll_usb_ck\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"\013%s: failed to configure USB DPLL!\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"dpll_usb_m2_ck\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"\013%s: failed to set USB_DPLL M2 OUT\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"dss_deshdcp_clk\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"\013%s: failed to set dss_deshdcp_clk\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"dpll_mpu_m2_ck\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"dpll_dsp_m2_ck\00", align 1
@dra7_mmu_ipu1_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_ipu1_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"ipu1-clkctrl:0000:24\00", align 1
@dra7_ipu1_gfclk_mux_parents = internal constant [3 x ptr] [ptr @.str.11, ptr @.str.12, ptr null], section ".init.rodata", align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"dpll_abe_m2x2_ck\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"dpll_core_h22x2_ck\00", align 1
@dra7_mcasp1_bit_data = internal constant [4 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 22, i8 1, ptr @dra7_mcasp1_aux_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_mcasp1_ahclkx_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 28, i8 1, ptr @dra7_mcasp1_ahclkx_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.13 = private unnamed_addr constant [20 x i8] c"ipu-clkctrl:0000:22\00", align 1
@dra7_timer5_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_timer5_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.14 = private unnamed_addr constant [20 x i8] c"ipu-clkctrl:0008:24\00", align 1
@dra7_timer6_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_timer5_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.15 = private unnamed_addr constant [20 x i8] c"ipu-clkctrl:0010:24\00", align 1
@dra7_timer7_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_timer5_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.16 = private unnamed_addr constant [20 x i8] c"ipu-clkctrl:0018:24\00", align 1
@dra7_timer8_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_timer5_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.17 = private unnamed_addr constant [20 x i8] c"ipu-clkctrl:0020:24\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"func_96m_fclk\00", align 1
@dra7_uart6_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_uart6_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.19 = private unnamed_addr constant [20 x i8] c"ipu-clkctrl:0030:24\00", align 1
@dra7_mcasp1_aux_gfclk_mux_parents = internal constant [5 x ptr] [ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr null], section ".init.rodata", align 4
@dra7_mcasp1_ahclkx_mux_parents = internal constant [15 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr null], section ".init.rodata", align 4
@.str.20 = private unnamed_addr constant [22 x i8] c"per_abe_x1_gfclk2_div\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"video1_clk2_div\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"video2_clk2_div\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"hdmi_clk2_div\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"abe_24m_fclk\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"abe_sys_clk_div\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"func_24m_clk\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"atl_clkin3_ck\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"atl_clkin2_ck\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"atl_clkin1_ck\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"atl_clkin0_ck\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"sys_clkin2\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"ref_clkin0_ck\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"ref_clkin1_ck\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"ref_clkin2_ck\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"ref_clkin3_ck\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"mlb_clk\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"mlbp_clk\00", align 1
@dra7_timer5_gfclk_mux_parents = internal constant [13 x ptr] [ptr @.str.38, ptr @.str.39, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr null], section ".init.rodata", align 4
@.str.38 = private unnamed_addr constant [18 x i8] c"timer_sys_clk_div\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"sys_32k_ck\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"abe_giclk_div\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"video1_div_clk\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"video2_div_clk\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"hdmi_div_clk\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"clkoutmux0_clk_mux\00", align 1
@dra7_uart6_gfclk_mux_parents = internal constant [3 x ptr] [ptr @.str.45, ptr @.str.46, ptr null], section ".init.rodata", align 4
@.str.45 = private unnamed_addr constant [14 x i8] c"func_48m_fclk\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"dpll_per_m2x2_ck\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"dpll_core_h23x2_ck\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"wkupaon_iclk_mux\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"l3_iclk_div\00", align 1
@dra7_atl_bit_data = internal constant [3 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_atl_dpll_clk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 26, i8 1, ptr @dra7_atl_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.50 = private unnamed_addr constant [20 x i8] c"atl-clkctrl:0000:26\00", align 1
@dra7_atl_dpll_clk_mux_parents = internal constant [5 x ptr] [ptr @.str.39, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr null], section ".init.rodata", align 4
@dra7_atl_gfclk_mux_parents = internal constant [4 x ptr] [ptr @.str.49, ptr @.str.54, ptr @.str.55, ptr null], section ".init.rodata", align 4
@.str.51 = private unnamed_addr constant [16 x i8] c"video1_clkin_ck\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"video2_clkin_ck\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"hdmi_clkin_ck\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"dpll_abe_m2_ck\00", align 1
@.str.55 = private unnamed_addr constant [20 x i8] c"atl-clkctrl:0000:24\00", align 1
@.str.56 = private unnamed_addr constant [18 x i8] c"dpll_iva_h12x2_ck\00", align 1
@dra7_cam_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_cam_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@dra7_cam_gfclk_mux_parents = internal constant [3 x ptr] [ptr @.str.49, ptr @.str.57, ptr null], section ".init.rodata", align 4
@.str.57 = private unnamed_addr constant [18 x i8] c"core_iss_main_clk\00", align 1
@dra7_dss_core_bit_data = internal constant [7 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @dra7_dss_dss_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 9, i8 5, ptr @dra7_dss_48mhz_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 10, i8 5, ptr @dra7_dss_hdmi_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 11, i8 5, ptr @dra7_dss_32khz_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 12, i8 5, ptr @dra7_dss_video1_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 13, i8 5, ptr @dra7_dss_video2_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.58 = private unnamed_addr constant [19 x i8] c"dss-clkctrl:0000:8\00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c"dpll_core_h24x2_ck\00", align 1
@dra7_dss_dss_clk_parents = internal constant [2 x ptr] [ptr @.str.60, ptr null], section ".init.rodata", align 4
@dra7_dss_48mhz_clk_parents = internal constant [2 x ptr] [ptr @.str.45, ptr null], section ".init.rodata", align 4
@dra7_dss_hdmi_clk_parents = internal constant [2 x ptr] [ptr @.str.61, ptr null], section ".init.rodata", align 4
@dra7_dss_32khz_clk_parents = internal constant [2 x ptr] [ptr @.str.39, ptr null], section ".init.rodata", align 4
@dra7_dss_video1_clk_parents = internal constant [2 x ptr] [ptr @.str.62, ptr null], section ".init.rodata", align 4
@dra7_dss_video2_clk_parents = internal constant [2 x ptr] [ptr @.str.63, ptr null], section ".init.rodata", align 4
@.str.60 = private unnamed_addr constant [18 x i8] c"dpll_per_h12x2_ck\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"hdmi_dpll_clk_mux\00", align 1
@.str.62 = private unnamed_addr constant [20 x i8] c"video1_dpll_clk_mux\00", align 1
@.str.63 = private unnamed_addr constant [20 x i8] c"video2_dpll_clk_mux\00", align 1
@dra7_gpu_core_bit_data = internal constant [3 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_gpu_core_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 26, i8 1, ptr @dra7_gpu_hyd_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.64 = private unnamed_addr constant [20 x i8] c"gpu-clkctrl:0000:24\00", align 1
@dra7_gpu_core_mux_parents = internal constant [4 x ptr] [ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr null], section ".init.rodata", align 4
@dra7_gpu_hyd_mux_parents = internal constant [4 x ptr] [ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr null], section ".init.rodata", align 4
@.str.65 = private unnamed_addr constant [19 x i8] c"dpll_core_h14x2_ck\00", align 1
@.str.66 = private unnamed_addr constant [18 x i8] c"dpll_per_h14x2_ck\00", align 1
@.str.67 = private unnamed_addr constant [15 x i8] c"dpll_gpu_m2_ck\00", align 1
@dra7_mmc1_bit_data = internal constant [4 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @dra7_dss_32khz_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_mmc1_fclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 25, i8 2, ptr @dra7_mmc1_fclk_div_parents, ptr @dra7_mmc1_fclk_div_data }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.68 = private unnamed_addr constant [23 x i8] c"l3init-clkctrl:0008:25\00", align 1
@dra7_mmc2_bit_data = internal constant [4 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @dra7_dss_32khz_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_mmc1_fclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 25, i8 2, ptr @dra7_mmc2_fclk_div_parents, ptr @dra7_mmc2_fclk_div_data }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.69 = private unnamed_addr constant [23 x i8] c"l3init-clkctrl:0010:25\00", align 1
@dra7_usb_otg_ss2_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @dra7_usb_otg_ss2_refclk960m_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.70 = private unnamed_addr constant [19 x i8] c"dpll_core_h13x2_ck\00", align 1
@dra7_sata_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @dra7_sata_ref_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.71 = private unnamed_addr constant [16 x i8] c"l4_root_clk_div\00", align 1
@dra7_usb_otg_ss1_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @dra7_usb_otg_ss2_refclk960m_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@dra7_mmc1_fclk_mux_parents = internal constant [3 x ptr] [ptr @.str.72, ptr @.str.46, ptr null], section ".init.rodata", align 4
@dra7_mmc1_fclk_div_parents = internal constant [2 x ptr] [ptr @.str.73, ptr null], section ".init.rodata", align 4
@dra7_mmc1_fclk_div_data = internal constant %struct.omap_clkctrl_div_data { ptr null, i32 4, i32 2 }, section ".init.rodata", align 4
@.str.72 = private unnamed_addr constant [14 x i8] c"func_128m_clk\00", align 1
@.str.73 = private unnamed_addr constant [23 x i8] c"l3init-clkctrl:0008:24\00", align 1
@dra7_mmc2_fclk_div_parents = internal constant [2 x ptr] [ptr @.str.74, ptr null], section ".init.rodata", align 4
@dra7_mmc2_fclk_div_data = internal constant %struct.omap_clkctrl_div_data { ptr null, i32 4, i32 2 }, section ".init.rodata", align 4
@.str.74 = private unnamed_addr constant [23 x i8] c"l3init-clkctrl:0010:24\00", align 1
@dra7_usb_otg_ss2_refclk960m_parents = internal constant [2 x ptr] [ptr @.str.75, ptr null], section ".init.rodata", align 4
@.str.75 = private unnamed_addr constant [18 x i8] c"l3init_960m_gfclk\00", align 1
@dra7_sata_ref_clk_parents = internal constant [2 x ptr] [ptr @.str.76, ptr null], section ".init.rodata", align 4
@.str.76 = private unnamed_addr constant [11 x i8] c"sys_clkin1\00", align 1
@dra7_pcie1_bit_data = internal constant [4 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @dra7_dss_32khz_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 9, i8 5, ptr @dra7_optfclk_pciephy1_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 10, i8 5, ptr @dra7_optfclk_pciephy1_div_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@dra7_pcie2_bit_data = internal constant [4 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @dra7_dss_32khz_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 9, i8 5, ptr @dra7_optfclk_pciephy1_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 10, i8 5, ptr @dra7_optfclk_pciephy1_div_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@dra7_optfclk_pciephy1_clk_parents = internal constant [2 x ptr] [ptr @.str.77, ptr null], section ".init.rodata", align 4
@dra7_optfclk_pciephy1_div_clk_parents = internal constant [2 x ptr] [ptr @.str.78, ptr null], section ".init.rodata", align 4
@.str.77 = private unnamed_addr constant [13 x i8] c"apll_pcie_ck\00", align 1
@.str.78 = private unnamed_addr constant [20 x i8] c"optfclk_pciephy_div\00", align 1
@dra7_gmac_bit_data = internal constant [3 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_rmii_50mhz_clk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 25, i8 1, ptr @dra7_gmac_rft_clk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.79 = private unnamed_addr constant [14 x i8] c"gmac_main_clk\00", align 1
@dra7_rmii_50mhz_clk_mux_parents = internal constant [3 x ptr] [ptr @.str.80, ptr @.str.81, ptr null], section ".init.rodata", align 4
@dra7_gmac_rft_clk_mux_parents = internal constant [6 x ptr] [ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.53, ptr @.str.49, ptr null], section ".init.rodata", align 4
@.str.80 = private unnamed_addr constant [19 x i8] c"dpll_gmac_h11x2_ck\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"rmii_clk_ck\00", align 1
@dra7_timer10_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_timer10_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.82 = private unnamed_addr constant [22 x i8] c"l4per-clkctrl:0000:24\00", align 1
@dra7_timer11_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_timer10_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.83 = private unnamed_addr constant [22 x i8] c"l4per-clkctrl:0008:24\00", align 1
@dra7_timer2_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_timer10_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.84 = private unnamed_addr constant [22 x i8] c"l4per-clkctrl:0010:24\00", align 1
@dra7_timer3_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_timer10_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.85 = private unnamed_addr constant [22 x i8] c"l4per-clkctrl:0018:24\00", align 1
@dra7_timer4_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_timer10_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.86 = private unnamed_addr constant [22 x i8] c"l4per-clkctrl:0020:24\00", align 1
@dra7_timer9_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_timer10_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.87 = private unnamed_addr constant [22 x i8] c"l4per-clkctrl:0028:24\00", align 1
@dra7_gpio2_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @dra7_dss_32khz_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@dra7_gpio3_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @dra7_dss_32khz_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@dra7_gpio4_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @dra7_dss_32khz_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@dra7_gpio5_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @dra7_dss_32khz_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@dra7_gpio6_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @dra7_dss_32khz_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.88 = private unnamed_addr constant [14 x i8] c"func_12m_fclk\00", align 1
@dra7_gpio7_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @dra7_dss_32khz_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@dra7_gpio8_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @dra7_dss_32khz_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@dra7_mmc3_bit_data = internal constant [4 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @dra7_dss_32khz_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_uart6_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 25, i8 2, ptr @dra7_mmc3_gfclk_div_parents, ptr @dra7_mmc3_gfclk_div_data }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.89 = private unnamed_addr constant [22 x i8] c"l4per-clkctrl:00f8:25\00", align 1
@dra7_mmc4_bit_data = internal constant [4 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @dra7_dss_32khz_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_uart6_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 25, i8 2, ptr @dra7_mmc4_gfclk_div_parents, ptr @dra7_mmc4_gfclk_div_data }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.90 = private unnamed_addr constant [22 x i8] c"l4per-clkctrl:0100:25\00", align 1
@dra7_uart1_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_uart6_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.91 = private unnamed_addr constant [22 x i8] c"l4per-clkctrl:0118:24\00", align 1
@dra7_uart2_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_uart6_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.92 = private unnamed_addr constant [22 x i8] c"l4per-clkctrl:0120:24\00", align 1
@dra7_uart3_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_uart6_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.93 = private unnamed_addr constant [22 x i8] c"l4per-clkctrl:0128:24\00", align 1
@dra7_uart4_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_uart6_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.94 = private unnamed_addr constant [22 x i8] c"l4per-clkctrl:0130:24\00", align 1
@dra7_uart5_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_uart6_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.95 = private unnamed_addr constant [22 x i8] c"l4per-clkctrl:0148:24\00", align 1
@dra7_timer10_gfclk_mux_parents = internal constant [12 x ptr] [ptr @.str.38, ptr @.str.39, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr null], section ".init.rodata", align 4
@dra7_mmc3_gfclk_div_parents = internal constant [2 x ptr] [ptr @.str.96, ptr null], section ".init.rodata", align 4
@dra7_mmc3_gfclk_div_data = internal constant %struct.omap_clkctrl_div_data { ptr null, i32 4, i32 2 }, section ".init.rodata", align 4
@.str.96 = private unnamed_addr constant [22 x i8] c"l4per-clkctrl:00f8:24\00", align 1
@dra7_mmc4_gfclk_div_parents = internal constant [2 x ptr] [ptr @.str.97, ptr null], section ".init.rodata", align 4
@dra7_mmc4_gfclk_div_data = internal constant %struct.omap_clkctrl_div_data { ptr null, i32 4, i32 2 }, section ".init.rodata", align 4
@.str.97 = private unnamed_addr constant [22 x i8] c"l4per-clkctrl:0100:24\00", align 1
@.str.98 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@dra7_qspi_bit_data = internal constant [3 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_qspi_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 25, i8 2, ptr @dra7_qspi_gfclk_div_parents, ptr @dra7_qspi_gfclk_div_data }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.99 = private unnamed_addr constant [23 x i8] c"l4per2-clkctrl:012c:25\00", align 1
@dra7_mcasp2_bit_data = internal constant [4 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 22, i8 1, ptr @dra7_mcasp1_aux_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_mcasp1_ahclkx_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 28, i8 1, ptr @dra7_mcasp1_ahclkx_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.100 = private unnamed_addr constant [23 x i8] c"l4per2-clkctrl:0154:22\00", align 1
@dra7_mcasp3_bit_data = internal constant [3 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 22, i8 1, ptr @dra7_mcasp1_aux_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_mcasp1_ahclkx_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.101 = private unnamed_addr constant [23 x i8] c"l4per2-clkctrl:015c:22\00", align 1
@dra7_mcasp5_bit_data = internal constant [3 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 22, i8 1, ptr @dra7_mcasp1_aux_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_mcasp1_ahclkx_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.102 = private unnamed_addr constant [23 x i8] c"l4per2-clkctrl:016c:22\00", align 1
@dra7_mcasp8_bit_data = internal constant [3 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 22, i8 1, ptr @dra7_mcasp1_aux_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_mcasp1_ahclkx_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.103 = private unnamed_addr constant [23 x i8] c"l4per2-clkctrl:0184:22\00", align 1
@dra7_mcasp4_bit_data = internal constant [3 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 22, i8 1, ptr @dra7_mcasp1_aux_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_mcasp1_ahclkx_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.104 = private unnamed_addr constant [23 x i8] c"l4per2-clkctrl:018c:22\00", align 1
@dra7_uart7_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_uart6_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.105 = private unnamed_addr constant [23 x i8] c"l4per2-clkctrl:01c4:24\00", align 1
@dra7_uart8_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_uart6_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.106 = private unnamed_addr constant [23 x i8] c"l4per2-clkctrl:01d4:24\00", align 1
@dra7_uart9_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_uart6_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.107 = private unnamed_addr constant [23 x i8] c"l4per2-clkctrl:01dc:24\00", align 1
@dra7_mcasp6_bit_data = internal constant [3 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 22, i8 1, ptr @dra7_mcasp1_aux_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_mcasp1_ahclkx_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.108 = private unnamed_addr constant [23 x i8] c"l4per2-clkctrl:01f8:22\00", align 1
@dra7_mcasp7_bit_data = internal constant [3 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 22, i8 1, ptr @dra7_mcasp1_aux_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_mcasp1_ahclkx_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.109 = private unnamed_addr constant [23 x i8] c"l4per2-clkctrl:01fc:22\00", align 1
@dra7_qspi_gfclk_mux_parents = internal constant [3 x ptr] [ptr @.str.72, ptr @.str.110, ptr null], section ".init.rodata", align 4
@dra7_qspi_gfclk_div_parents = internal constant [2 x ptr] [ptr @.str.111, ptr null], section ".init.rodata", align 4
@dra7_qspi_gfclk_div_data = internal constant %struct.omap_clkctrl_div_data { ptr null, i32 4, i32 2 }, section ".init.rodata", align 4
@.str.110 = private unnamed_addr constant [18 x i8] c"dpll_per_h13x2_ck\00", align 1
@.str.111 = private unnamed_addr constant [23 x i8] c"l4per2-clkctrl:012c:24\00", align 1
@dra7_timer13_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_timer10_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.112 = private unnamed_addr constant [23 x i8] c"l4per3-clkctrl:00b4:24\00", align 1
@dra7_timer14_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_timer10_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.113 = private unnamed_addr constant [23 x i8] c"l4per3-clkctrl:00bc:24\00", align 1
@dra7_timer15_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_timer10_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.114 = private unnamed_addr constant [23 x i8] c"l4per3-clkctrl:00c4:24\00", align 1
@dra7_timer16_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_timer10_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.115 = private unnamed_addr constant [23 x i8] c"l4per3-clkctrl:011c:24\00", align 1
@dra7_gpio1_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @dra7_dss_32khz_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@dra7_timer1_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_timer10_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.116 = private unnamed_addr constant [24 x i8] c"wkupaon-clkctrl:0020:24\00", align 1
@.str.117 = private unnamed_addr constant [22 x i8] c"secure_32k_clk_src_ck\00", align 1
@dra7_uart10_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_uart6_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.118 = private unnamed_addr constant [24 x i8] c"wkupaon-clkctrl:0060:24\00", align 1
@dra7_dcan1_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @dra7_dcan1_sys_clk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.119 = private unnamed_addr constant [24 x i8] c"wkupaon-clkctrl:0068:24\00", align 1
@.str.120 = private unnamed_addr constant [9 x i8] c"mcan_clk\00", align 1
@dra7_dcan1_sys_clk_mux_parents = internal constant [3 x ptr] [ptr @.str.76, ptr @.str.31, ptr null], section ".init.rodata", align 4
@.str.121 = private unnamed_addr constant [13 x i8] c"timer_32k_ck\00", align 1
@.str.122 = private unnamed_addr constant [13 x i8] c"sys_clkin_ck\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"sys_clkin\00", align 1
@.str.124 = private unnamed_addr constant [17 x i8] c"atl_dpll_clk_mux\00", align 1
@.str.125 = private unnamed_addr constant [14 x i8] c"atl_gfclk_mux\00", align 1
@.str.126 = private unnamed_addr constant [18 x i8] c"dcan1_sys_clk_mux\00", align 1
@.str.127 = private unnamed_addr constant [14 x i8] c"dss_32khz_clk\00", align 1
@.str.128 = private unnamed_addr constant [20 x i8] c"dss-clkctrl:0000:11\00", align 1
@.str.129 = private unnamed_addr constant [14 x i8] c"dss_48mhz_clk\00", align 1
@.str.130 = private unnamed_addr constant [19 x i8] c"dss-clkctrl:0000:9\00", align 1
@.str.131 = private unnamed_addr constant [12 x i8] c"dss_dss_clk\00", align 1
@.str.132 = private unnamed_addr constant [13 x i8] c"dss_hdmi_clk\00", align 1
@.str.133 = private unnamed_addr constant [20 x i8] c"dss-clkctrl:0000:10\00", align 1
@.str.134 = private unnamed_addr constant [15 x i8] c"dss_video1_clk\00", align 1
@.str.135 = private unnamed_addr constant [20 x i8] c"dss-clkctrl:0000:12\00", align 1
@.str.136 = private unnamed_addr constant [15 x i8] c"dss_video2_clk\00", align 1
@.str.137 = private unnamed_addr constant [20 x i8] c"dss-clkctrl:0000:13\00", align 1
@.str.138 = private unnamed_addr constant [17 x i8] c"gmac_rft_clk_mux\00", align 1
@.str.139 = private unnamed_addr constant [21 x i8] c"gmac-clkctrl:0000:25\00", align 1
@.str.140 = private unnamed_addr constant [12 x i8] c"gpio1_dbclk\00", align 1
@.str.141 = private unnamed_addr constant [23 x i8] c"wkupaon-clkctrl:0018:8\00", align 1
@.str.142 = private unnamed_addr constant [12 x i8] c"gpio2_dbclk\00", align 1
@.str.143 = private unnamed_addr constant [21 x i8] c"l4per-clkctrl:0038:8\00", align 1
@.str.144 = private unnamed_addr constant [12 x i8] c"gpio3_dbclk\00", align 1
@.str.145 = private unnamed_addr constant [21 x i8] c"l4per-clkctrl:0040:8\00", align 1
@.str.146 = private unnamed_addr constant [12 x i8] c"gpio4_dbclk\00", align 1
@.str.147 = private unnamed_addr constant [21 x i8] c"l4per-clkctrl:0048:8\00", align 1
@.str.148 = private unnamed_addr constant [12 x i8] c"gpio5_dbclk\00", align 1
@.str.149 = private unnamed_addr constant [21 x i8] c"l4per-clkctrl:0050:8\00", align 1
@.str.150 = private unnamed_addr constant [12 x i8] c"gpio6_dbclk\00", align 1
@.str.151 = private unnamed_addr constant [21 x i8] c"l4per-clkctrl:0058:8\00", align 1
@.str.152 = private unnamed_addr constant [12 x i8] c"gpio7_dbclk\00", align 1
@.str.153 = private unnamed_addr constant [21 x i8] c"l4per-clkctrl:00e8:8\00", align 1
@.str.154 = private unnamed_addr constant [12 x i8] c"gpio8_dbclk\00", align 1
@.str.155 = private unnamed_addr constant [21 x i8] c"l4per-clkctrl:00f0:8\00", align 1
@.str.156 = private unnamed_addr constant [15 x i8] c"ipu1_gfclk_mux\00", align 1
@.str.157 = private unnamed_addr constant [18 x i8] c"mcasp1_ahclkr_mux\00", align 1
@.str.158 = private unnamed_addr constant [20 x i8] c"ipu-clkctrl:0000:28\00", align 1
@.str.159 = private unnamed_addr constant [18 x i8] c"mcasp1_ahclkx_mux\00", align 1
@.str.160 = private unnamed_addr constant [20 x i8] c"ipu-clkctrl:0000:24\00", align 1
@.str.161 = private unnamed_addr constant [21 x i8] c"mcasp1_aux_gfclk_mux\00", align 1
@.str.162 = private unnamed_addr constant [18 x i8] c"mcasp2_ahclkr_mux\00", align 1
@.str.163 = private unnamed_addr constant [23 x i8] c"l4per2-clkctrl:0154:28\00", align 1
@.str.164 = private unnamed_addr constant [18 x i8] c"mcasp2_ahclkx_mux\00", align 1
@.str.165 = private unnamed_addr constant [23 x i8] c"l4per2-clkctrl:0154:24\00", align 1
@.str.166 = private unnamed_addr constant [21 x i8] c"mcasp2_aux_gfclk_mux\00", align 1
@.str.167 = private unnamed_addr constant [18 x i8] c"mcasp3_ahclkx_mux\00", align 1
@.str.168 = private unnamed_addr constant [23 x i8] c"l4per2-clkctrl:015c:24\00", align 1
@.str.169 = private unnamed_addr constant [21 x i8] c"mcasp3_aux_gfclk_mux\00", align 1
@.str.170 = private unnamed_addr constant [18 x i8] c"mcasp4_ahclkx_mux\00", align 1
@.str.171 = private unnamed_addr constant [23 x i8] c"l4per2-clkctrl:018c:24\00", align 1
@.str.172 = private unnamed_addr constant [21 x i8] c"mcasp4_aux_gfclk_mux\00", align 1
@.str.173 = private unnamed_addr constant [18 x i8] c"mcasp5_ahclkx_mux\00", align 1
@.str.174 = private unnamed_addr constant [23 x i8] c"l4per2-clkctrl:016c:24\00", align 1
@.str.175 = private unnamed_addr constant [21 x i8] c"mcasp5_aux_gfclk_mux\00", align 1
@.str.176 = private unnamed_addr constant [18 x i8] c"mcasp6_ahclkx_mux\00", align 1
@.str.177 = private unnamed_addr constant [23 x i8] c"l4per2-clkctrl:01f8:24\00", align 1
@.str.178 = private unnamed_addr constant [21 x i8] c"mcasp6_aux_gfclk_mux\00", align 1
@.str.179 = private unnamed_addr constant [18 x i8] c"mcasp7_ahclkx_mux\00", align 1
@.str.180 = private unnamed_addr constant [23 x i8] c"l4per2-clkctrl:01fc:24\00", align 1
@.str.181 = private unnamed_addr constant [21 x i8] c"mcasp7_aux_gfclk_mux\00", align 1
@.str.182 = private unnamed_addr constant [18 x i8] c"mcasp8_ahclkx_mux\00", align 1
@.str.183 = private unnamed_addr constant [23 x i8] c"l4per2-clkctrl:0184:24\00", align 1
@.str.184 = private unnamed_addr constant [21 x i8] c"mcasp8_aux_gfclk_mux\00", align 1
@.str.185 = private unnamed_addr constant [12 x i8] c"mmc1_clk32k\00", align 1
@.str.186 = private unnamed_addr constant [22 x i8] c"l3init-clkctrl:0008:8\00", align 1
@.str.187 = private unnamed_addr constant [14 x i8] c"mmc1_fclk_div\00", align 1
@.str.188 = private unnamed_addr constant [14 x i8] c"mmc1_fclk_mux\00", align 1
@.str.189 = private unnamed_addr constant [12 x i8] c"mmc2_clk32k\00", align 1
@.str.190 = private unnamed_addr constant [22 x i8] c"l3init-clkctrl:0010:8\00", align 1
@.str.191 = private unnamed_addr constant [14 x i8] c"mmc2_fclk_div\00", align 1
@.str.192 = private unnamed_addr constant [14 x i8] c"mmc2_fclk_mux\00", align 1
@.str.193 = private unnamed_addr constant [12 x i8] c"mmc3_clk32k\00", align 1
@.str.194 = private unnamed_addr constant [21 x i8] c"l4per-clkctrl:00f8:8\00", align 1
@.str.195 = private unnamed_addr constant [15 x i8] c"mmc3_gfclk_div\00", align 1
@.str.196 = private unnamed_addr constant [15 x i8] c"mmc3_gfclk_mux\00", align 1
@.str.197 = private unnamed_addr constant [12 x i8] c"mmc4_clk32k\00", align 1
@.str.198 = private unnamed_addr constant [21 x i8] c"l4per-clkctrl:0100:8\00", align 1
@.str.199 = private unnamed_addr constant [15 x i8] c"mmc4_gfclk_div\00", align 1
@.str.200 = private unnamed_addr constant [15 x i8] c"mmc4_gfclk_mux\00", align 1
@.str.201 = private unnamed_addr constant [23 x i8] c"optfclk_pciephy1_32khz\00", align 1
@.str.202 = private unnamed_addr constant [20 x i8] c"pcie-clkctrl:0000:8\00", align 1
@.str.203 = private unnamed_addr constant [21 x i8] c"optfclk_pciephy1_clk\00", align 1
@.str.204 = private unnamed_addr constant [20 x i8] c"pcie-clkctrl:0000:9\00", align 1
@.str.205 = private unnamed_addr constant [25 x i8] c"optfclk_pciephy1_div_clk\00", align 1
@.str.206 = private unnamed_addr constant [21 x i8] c"pcie-clkctrl:0000:10\00", align 1
@.str.207 = private unnamed_addr constant [23 x i8] c"optfclk_pciephy2_32khz\00", align 1
@.str.208 = private unnamed_addr constant [20 x i8] c"pcie-clkctrl:0008:8\00", align 1
@.str.209 = private unnamed_addr constant [21 x i8] c"optfclk_pciephy2_clk\00", align 1
@.str.210 = private unnamed_addr constant [20 x i8] c"pcie-clkctrl:0008:9\00", align 1
@.str.211 = private unnamed_addr constant [25 x i8] c"optfclk_pciephy2_div_clk\00", align 1
@.str.212 = private unnamed_addr constant [21 x i8] c"pcie-clkctrl:0008:10\00", align 1
@.str.213 = private unnamed_addr constant [15 x i8] c"qspi_gfclk_div\00", align 1
@.str.214 = private unnamed_addr constant [15 x i8] c"qspi_gfclk_mux\00", align 1
@.str.215 = private unnamed_addr constant [19 x i8] c"rmii_50mhz_clk_mux\00", align 1
@.str.216 = private unnamed_addr constant [21 x i8] c"gmac-clkctrl:0000:24\00", align 1
@.str.217 = private unnamed_addr constant [13 x i8] c"sata_ref_clk\00", align 1
@.str.218 = private unnamed_addr constant [22 x i8] c"l3init-clkctrl:0068:8\00", align 1
@.str.219 = private unnamed_addr constant [18 x i8] c"timer10_gfclk_mux\00", align 1
@.str.220 = private unnamed_addr constant [18 x i8] c"timer11_gfclk_mux\00", align 1
@.str.221 = private unnamed_addr constant [18 x i8] c"timer13_gfclk_mux\00", align 1
@.str.222 = private unnamed_addr constant [18 x i8] c"timer14_gfclk_mux\00", align 1
@.str.223 = private unnamed_addr constant [18 x i8] c"timer15_gfclk_mux\00", align 1
@.str.224 = private unnamed_addr constant [18 x i8] c"timer16_gfclk_mux\00", align 1
@.str.225 = private unnamed_addr constant [17 x i8] c"timer1_gfclk_mux\00", align 1
@.str.226 = private unnamed_addr constant [17 x i8] c"timer2_gfclk_mux\00", align 1
@.str.227 = private unnamed_addr constant [17 x i8] c"timer3_gfclk_mux\00", align 1
@.str.228 = private unnamed_addr constant [17 x i8] c"timer4_gfclk_mux\00", align 1
@.str.229 = private unnamed_addr constant [17 x i8] c"timer5_gfclk_mux\00", align 1
@.str.230 = private unnamed_addr constant [17 x i8] c"timer6_gfclk_mux\00", align 1
@.str.231 = private unnamed_addr constant [17 x i8] c"timer7_gfclk_mux\00", align 1
@.str.232 = private unnamed_addr constant [17 x i8] c"timer8_gfclk_mux\00", align 1
@.str.233 = private unnamed_addr constant [17 x i8] c"timer9_gfclk_mux\00", align 1
@.str.234 = private unnamed_addr constant [17 x i8] c"uart10_gfclk_mux\00", align 1
@.str.235 = private unnamed_addr constant [16 x i8] c"uart1_gfclk_mux\00", align 1
@.str.236 = private unnamed_addr constant [16 x i8] c"uart2_gfclk_mux\00", align 1
@.str.237 = private unnamed_addr constant [16 x i8] c"uart3_gfclk_mux\00", align 1
@.str.238 = private unnamed_addr constant [16 x i8] c"uart4_gfclk_mux\00", align 1
@.str.239 = private unnamed_addr constant [16 x i8] c"uart5_gfclk_mux\00", align 1
@.str.240 = private unnamed_addr constant [16 x i8] c"uart6_gfclk_mux\00", align 1
@.str.241 = private unnamed_addr constant [16 x i8] c"uart7_gfclk_mux\00", align 1
@.str.242 = private unnamed_addr constant [16 x i8] c"uart8_gfclk_mux\00", align 1
@.str.243 = private unnamed_addr constant [16 x i8] c"uart9_gfclk_mux\00", align 1
@.str.244 = private unnamed_addr constant [23 x i8] c"usb_otg_ss1_refclk960m\00", align 1
@.str.245 = private unnamed_addr constant [22 x i8] c"l3init-clkctrl:00d0:8\00", align 1
@.str.246 = private unnamed_addr constant [23 x i8] c"usb_otg_ss2_refclk960m\00", align 1
@.str.247 = private unnamed_addr constant [22 x i8] c"l3init-clkctrl:0020:8\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @dra7xx_dt_clk_init() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr @ti_clk_get_features() #3
  %2 = load i32, ptr %1, align 4
  %3 = and i32 %2, 16
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, ptr @dra7xx_clks, ptr @dra7xx_compat_clks
  tail call void @ti_dt_clocks_register(ptr noundef nonnull %5) #3
  %6 = tail call i32 @omap2_clk_disable_autoidle_all() #3
  tail call void @ti_clk_add_aliases() #3
  %7 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str) #3
  %8 = tail call i32 @clk_set_rate(ptr noundef %7, i32 noundef 1000000000) #3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %0
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dra7xx_dt_clk_init) #4
  br label %12

12:                                               ; preds = %10, %0
  %13 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.2) #3
  %14 = tail call i32 @clk_set_rate(ptr noundef %13, i32 noundef 960000000) #3
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dra7xx_dt_clk_init) #4
  br label %18

18:                                               ; preds = %16, %12
  %19 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.4) #3
  %20 = tail call i32 @clk_set_rate(ptr noundef %19, i32 noundef 480000000) #3
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dra7xx_dt_clk_init) #4
  br label %24

24:                                               ; preds = %22, %18
  %25 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.6) #3
  %26 = tail call i32 @clk_prepare(ptr noundef %25) #3
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = tail call i32 @clk_enable(ptr noundef %25) #3
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  tail call void @clk_unprepare(ptr noundef %25) #3
  br label %32

32:                                               ; preds = %31, %24
  %33 = phi i32 [ %29, %31 ], [ %26, %24 ]
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.dra7xx_dt_clk_init) #4
  br label %35

35:                                               ; preds = %32, %28
  %36 = phi i32 [ %33, %32 ], [ 0, %28 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ti_clk_get_features() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti_dt_clocks_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_clk_disable_autoidle_all() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti_clk_add_aliases() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_sys(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
