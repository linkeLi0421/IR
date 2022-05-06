; ModuleID = '/llk/IR/arch/arm/mach-omap2/clockdomains7xx_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/clockdomains7xx_data.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clkdm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clockdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, i16, i16, ptr, ptr, i32, i32, %struct.list_head, i32 }
%union.anon = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.clkdm_dep = type { ptr, ptr, i16, i16 }

@omap4_clkdm_operations = external dso_local global %struct.clkdm_ops, align 4
@clockdomains_dra7xx = internal global [36 x ptr] [ptr @l4per3_7xx_clkdm, ptr @l4per2_7xx_clkdm, ptr @mpu0_7xx_clkdm, ptr @iva_7xx_clkdm, ptr @coreaon_7xx_clkdm, ptr @ipu1_7xx_clkdm, ptr @ipu2_7xx_clkdm, ptr @l3init_7xx_clkdm, ptr @l4sec_7xx_clkdm, ptr @l3main1_7xx_clkdm, ptr @vpe_7xx_clkdm, ptr @mpu_7xx_clkdm, ptr @custefuse_7xx_clkdm, ptr @ipu_7xx_clkdm, ptr @mpu1_7xx_clkdm, ptr @gmac_7xx_clkdm, ptr @l4cfg_7xx_clkdm, ptr @dma_7xx_clkdm, ptr @rtc_7xx_clkdm, ptr @pcie_7xx_clkdm, ptr @atl_7xx_clkdm, ptr @l3instr_7xx_clkdm, ptr @dss_7xx_clkdm, ptr @emif_7xx_clkdm, ptr @emu_7xx_clkdm, ptr @dsp2_7xx_clkdm, ptr @dsp1_7xx_clkdm, ptr @cam_7xx_clkdm, ptr @l4per_7xx_clkdm, ptr @gpu_7xx_clkdm, ptr @eve4_7xx_clkdm, ptr @eve2_7xx_clkdm, ptr @eve3_7xx_clkdm, ptr @wkupaon_7xx_clkdm, ptr @eve1_7xx_clkdm, ptr null], section ".init.data", align 4
@l4per3_7xx_clkdm = internal global %struct.clockdomain { ptr @.str, %union.anon { ptr @.str.1 }, i16 0, i8 15, i8 0, i8 27, i8 3, i16 5888, i16 528, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@l4per2_7xx_clkdm = internal global %struct.clockdomain { ptr @.str.2, %union.anon { ptr @.str.1 }, i16 0, i8 3, i8 0, i8 26, i8 3, i16 5888, i16 508, ptr @l4per2_wkup_sleep_deps, ptr @l4per2_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@mpu0_7xx_clkdm = internal global %struct.clockdomain { ptr @.str.7, %union.anon { ptr @.str.8 }, i16 0, i8 14, i8 0, i8 0, i8 5, i16 1536, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@iva_7xx_clkdm = internal global %struct.clockdomain { ptr @.str.9, %union.anon { ptr @.str.10 }, i16 0, i8 15, i8 0, i8 2, i8 3, i16 3840, i16 0, ptr @iva_wkup_sleep_deps, ptr @iva_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@coreaon_7xx_clkdm = internal global %struct.clockdomain { ptr @.str.12, %union.anon { ptr @.str.13 }, i16 0, i8 14, i8 0, i8 0, i8 3, i16 1536, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@ipu1_7xx_clkdm = internal global %struct.clockdomain { ptr @.str.5, %union.anon { ptr @.str.14 }, i16 0, i8 15, i8 0, i8 23, i8 2, i16 1280, i16 0, ptr @ipu1_wkup_sleep_deps, ptr @ipu1_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@ipu2_7xx_clkdm = internal global %struct.clockdomain { ptr @.str.6, %union.anon { ptr @.str.32 }, i16 0, i8 15, i8 0, i8 0, i8 3, i16 1792, i16 512, ptr @ipu2_wkup_sleep_deps, ptr @ipu2_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@l3init_7xx_clkdm = internal global %struct.clockdomain { ptr @.str.24, %union.anon { ptr @.str.33 }, i16 0, i8 15, i8 0, i8 7, i8 3, i16 4864, i16 0, ptr @l3init_wkup_sleep_deps, ptr @l3init_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@l4sec_7xx_clkdm = internal global %struct.clockdomain { ptr @.str.28, %union.anon { ptr @.str.1 }, i16 0, i8 3, i8 0, i8 14, i8 3, i16 5888, i16 384, ptr @l4sec_wkup_sleep_deps, ptr @l4sec_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@l3main1_7xx_clkdm = internal global %struct.clockdomain { ptr @.str.25, %union.anon { ptr @.str.32 }, i16 0, i8 12, i8 0, i8 5, i8 3, i16 1792, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@vpe_7xx_clkdm = internal global %struct.clockdomain { ptr @.str.30, %union.anon { ptr @.str.34 }, i16 0, i8 15, i8 0, i8 28, i8 2, i16 1888, i16 0, ptr @vpe_wkup_sleep_deps, ptr @vpe_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@mpu_7xx_clkdm = internal global %struct.clockdomain { ptr @.str.35, %union.anon { ptr @.str.36 }, i16 0, i8 14, i8 0, i8 0, i8 2, i16 768, i16 0, ptr @mpu_wkup_sleep_deps, ptr @mpu_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@custefuse_7xx_clkdm = internal global %struct.clockdomain { ptr @.str.38, %union.anon { ptr @.str.39 }, i16 0, i8 14, i8 0, i8 0, i8 3, i16 5632, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@ipu_7xx_clkdm = internal global %struct.clockdomain { ptr @.str.23, %union.anon { ptr @.str.14 }, i16 0, i8 3, i8 0, i8 24, i8 2, i16 1280, i16 64, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@mpu1_7xx_clkdm = internal global %struct.clockdomain { ptr @.str.40, %union.anon { ptr @.str.41 }, i16 0, i8 14, i8 0, i8 0, i8 5, i16 2560, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@gmac_7xx_clkdm = internal global %struct.clockdomain { ptr @.str.21, %union.anon { ptr @.str.33 }, i16 0, i8 15, i8 0, i8 25, i8 3, i16 4864, i16 192, ptr @gmac_wkup_sleep_deps, ptr @gmac_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@l4cfg_7xx_clkdm = internal global %struct.clockdomain { ptr @.str.26, %union.anon { ptr @.str.32 }, i16 0, i8 12, i8 0, i8 12, i8 3, i16 1792, i16 1536, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@dma_7xx_clkdm = internal global %struct.clockdomain { ptr @.str.42, %union.anon { ptr @.str.32 }, i16 0, i8 14, i8 0, i8 0, i8 3, i16 1792, i16 768, ptr @dma_wkup_sleep_deps, ptr @dma_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@rtc_7xx_clkdm = internal global %struct.clockdomain { ptr @.str.43, %union.anon { ptr @.str.44 }, i16 0, i8 14, i8 0, i8 0, i8 2, i16 1856, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@pcie_7xx_clkdm = internal global %struct.clockdomain { ptr @.str.29, %union.anon { ptr @.str.33 }, i16 0, i8 3, i8 0, i8 29, i8 3, i16 4864, i16 160, ptr @pcie_wkup_sleep_deps, ptr @pcie_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@atl_7xx_clkdm = internal global %struct.clockdomain { ptr @.str.15, %union.anon { ptr @.str.32 }, i16 0, i8 14, i8 0, i8 30, i8 3, i16 1792, i16 1312, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@l3instr_7xx_clkdm = internal global %struct.clockdomain { ptr @.str.45, %union.anon { ptr @.str.32 }, i16 0, i8 0, i8 0, i8 0, i8 3, i16 1792, i16 1792, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@dss_7xx_clkdm = internal global %struct.clockdomain { ptr @.str.16, %union.anon { ptr @.str.46 }, i16 0, i8 15, i8 0, i8 8, i8 3, i16 4352, i16 0, ptr @dss_wkup_sleep_deps, ptr @dss_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@emif_7xx_clkdm = internal global %struct.clockdomain { ptr @.str.11, %union.anon { ptr @.str.32 }, i16 0, i8 14, i8 0, i8 4, i8 3, i16 1792, i16 1024, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@emu_7xx_clkdm = internal global %struct.clockdomain { ptr @.str.47, %union.anon { ptr @.str.48 }, i16 0, i8 14, i8 0, i8 0, i8 1, i16 6656, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@dsp2_7xx_clkdm = internal global %struct.clockdomain { ptr @.str.4, %union.anon { ptr @.str.49 }, i16 0, i8 15, i8 0, i8 18, i8 2, i16 1536, i16 0, ptr @dsp2_wkup_sleep_deps, ptr @dsp2_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@dsp1_7xx_clkdm = internal global %struct.clockdomain { ptr @.str.3, %union.anon { ptr @.str.50 }, i16 0, i8 15, i8 0, i8 1, i8 2, i16 1024, i16 0, ptr @dsp1_wkup_sleep_deps, ptr @dsp1_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@cam_7xx_clkdm = internal global %struct.clockdomain { ptr @.str.37, %union.anon { ptr @.str.51 }, i16 0, i8 3, i8 0, i8 9, i8 3, i16 4096, i16 0, ptr @cam_wkup_sleep_deps, ptr @cam_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@l4per_7xx_clkdm = internal global %struct.clockdomain { ptr @.str.27, %union.anon { ptr @.str.1 }, i16 0, i8 15, i8 0, i8 13, i8 3, i16 5888, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@gpu_7xx_clkdm = internal global %struct.clockdomain { ptr @.str.22, %union.anon { ptr @.str.52 }, i16 0, i8 15, i8 0, i8 10, i8 3, i16 4608, i16 0, ptr @gpu_wkup_sleep_deps, ptr @gpu_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@eve4_7xx_clkdm = internal global %struct.clockdomain { ptr @.str.20, %union.anon { ptr @.str.53 }, i16 0, i8 15, i8 0, i8 22, i8 2, i16 1792, i16 0, ptr @eve4_wkup_sleep_deps, ptr @eve4_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@eve2_7xx_clkdm = internal global %struct.clockdomain { ptr @.str.18, %union.anon { ptr @.str.54 }, i16 0, i8 15, i8 0, i8 20, i8 2, i16 1664, i16 0, ptr @eve2_wkup_sleep_deps, ptr @eve2_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@eve3_7xx_clkdm = internal global %struct.clockdomain { ptr @.str.19, %union.anon { ptr @.str.55 }, i16 0, i8 15, i8 0, i8 21, i8 2, i16 1728, i16 0, ptr @eve3_wkup_sleep_deps, ptr @eve3_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@wkupaon_7xx_clkdm = internal global %struct.clockdomain { ptr @.str.31, %union.anon { ptr @.str.56 }, i16 0, i8 14, i8 0, i8 15, i8 1, i16 6144, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@eve1_7xx_clkdm = internal global %struct.clockdomain { ptr @.str.17, %union.anon { ptr @.str.57 }, i16 0, i8 15, i8 0, i8 19, i8 2, i16 1600, i16 0, ptr @eve1_wkup_sleep_deps, ptr @eve1_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [13 x i8] c"l4per3_clkdm\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"l4per_pwrdm\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"l4per2_clkdm\00", align 1
@l4per2_wkup_sleep_deps = internal global [5 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.4, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.6, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"dsp1_clkdm\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"dsp2_clkdm\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"ipu1_clkdm\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"ipu2_clkdm\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"mpu0_clkdm\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"cpu0_pwrdm\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"iva_clkdm\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"iva_pwrdm\00", align 1
@iva_wkup_sleep_deps = internal global [2 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"emif_clkdm\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"coreaon_clkdm\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"coreaon_pwrdm\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"ipu_pwrdm\00", align 1
@ipu1_wkup_sleep_deps = internal global [25 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.15, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.4, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.16, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.17, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.18, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.19, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.20, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.21, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.22, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.23, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.6, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.9, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.24, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.25, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.26, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.27, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.28, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.29, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.30, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.31, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.15 = private unnamed_addr constant [10 x i8] c"atl_clkdm\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"dss_clkdm\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"eve1_clkdm\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"eve2_clkdm\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"eve3_clkdm\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"eve4_clkdm\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"gmac_clkdm\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"gpu_clkdm\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"ipu_clkdm\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"l3init_clkdm\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"l3main1_clkdm\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"l4cfg_clkdm\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"l4per_clkdm\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"l4sec_clkdm\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"pcie_clkdm\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"vpe_clkdm\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"wkupaon_clkdm\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"core_pwrdm\00", align 1
@ipu2_wkup_sleep_deps = internal global [25 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.15, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.4, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.16, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.17, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.18, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.19, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.20, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.21, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.22, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.23, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.9, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.24, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.25, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.26, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.27, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.28, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.29, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.30, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.31, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.33 = private unnamed_addr constant [13 x i8] c"l3init_pwrdm\00", align 1
@l3init_wkup_sleep_deps = internal global [8 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.9, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.26, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.27, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.28, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.31, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@l4sec_wkup_sleep_deps = internal global [3 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.27, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.34 = private unnamed_addr constant [10 x i8] c"vpe_pwrdm\00", align 1
@vpe_wkup_sleep_deps = internal global [3 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.35 = private unnamed_addr constant [10 x i8] c"mpu_clkdm\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"mpu_pwrdm\00", align 1
@mpu_wkup_sleep_deps = internal global [26 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.37, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.4, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.16, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.17, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.18, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.19, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.20, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.21, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.22, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.23, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.6, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.9, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.24, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.25, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.26, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.27, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.28, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.29, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.30, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.31, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.37 = private unnamed_addr constant [10 x i8] c"cam_clkdm\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"custefuse_clkdm\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"custefuse_pwrdm\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"mpu1_clkdm\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"cpu1_pwrdm\00", align 1
@gmac_wkup_sleep_deps = internal global [3 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.42 = private unnamed_addr constant [10 x i8] c"dma_clkdm\00", align 1
@dma_wkup_sleep_deps = internal global [15 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.16, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.23, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.6, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.9, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.24, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.26, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.27, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.28, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.29, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.31, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.43 = private unnamed_addr constant [10 x i8] c"rtc_clkdm\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"rtc_pwrdm\00", align 1
@pcie_wkup_sleep_deps = internal global [23 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.15, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.37, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.4, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.16, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.17, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.18, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.19, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.20, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.21, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.22, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.23, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.9, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.24, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.26, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.27, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.28, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.30, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.45 = private unnamed_addr constant [14 x i8] c"l3instr_clkdm\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"dss_pwrdm\00", align 1
@dss_wkup_sleep_deps = internal global [3 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.9, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.47 = private unnamed_addr constant [10 x i8] c"emu_clkdm\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"emu_pwrdm\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"dsp2_pwrdm\00", align 1
@dsp2_wkup_sleep_deps = internal global [24 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.15, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.37, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.16, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.17, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.18, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.19, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.20, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.21, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.22, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.23, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.6, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.9, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.24, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.27, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.28, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.29, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.30, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.31, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.50 = private unnamed_addr constant [11 x i8] c"dsp1_pwrdm\00", align 1
@dsp1_wkup_sleep_deps = internal global [24 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.15, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.37, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.4, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.16, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.17, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.18, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.19, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.20, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.21, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.22, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.23, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.6, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.9, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.24, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.27, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.28, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.29, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.30, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.31, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.51 = private unnamed_addr constant [10 x i8] c"cam_pwrdm\00", align 1
@cam_wkup_sleep_deps = internal global [2 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.52 = private unnamed_addr constant [10 x i8] c"gpu_pwrdm\00", align 1
@gpu_wkup_sleep_deps = internal global [3 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.9, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.53 = private unnamed_addr constant [11 x i8] c"eve4_pwrdm\00", align 1
@eve4_wkup_sleep_deps = internal global [6 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.17, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.18, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.19, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.9, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.54 = private unnamed_addr constant [11 x i8] c"eve2_pwrdm\00", align 1
@eve2_wkup_sleep_deps = internal global [6 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.17, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.19, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.20, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.9, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.55 = private unnamed_addr constant [11 x i8] c"eve3_pwrdm\00", align 1
@eve3_wkup_sleep_deps = internal global [6 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.17, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.18, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.20, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.9, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.56 = private unnamed_addr constant [14 x i8] c"wkupaon_pwrdm\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"eve1_pwrdm\00", align 1
@eve1_wkup_sleep_deps = internal global [6 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.18, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.19, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.20, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.9, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @dra7xx_clockdomains_init() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @clkdm_register_platform_funcs(ptr noundef nonnull @omap4_clkdm_operations) #2
  %2 = tail call i32 @clkdm_register_clkdms(ptr noundef nonnull @clockdomains_dra7xx) #2
  %3 = tail call i32 @clkdm_complete_init() #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_register_platform_funcs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_register_clkdms(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_complete_init() local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
