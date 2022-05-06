; ModuleID = '/llk/IR/arch/arm/mach-omap2/clockdomains54xx_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/clockdomains54xx_data.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clkdm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clockdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, i16, i16, ptr, ptr, i32, i32, %struct.list_head, i32 }
%union.anon = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.clkdm_dep = type { ptr, ptr, i16, i16 }

@omap4_clkdm_operations = external dso_local global %struct.clkdm_ops, align 4
@clockdomains_omap54xx = internal global [26 x ptr] [ptr @l4sec_54xx_clkdm, ptr @iva_54xx_clkdm, ptr @mipiext_54xx_clkdm, ptr @l3main2_54xx_clkdm, ptr @l3main1_54xx_clkdm, ptr @custefuse_54xx_clkdm, ptr @ipu_54xx_clkdm, ptr @l4cfg_54xx_clkdm, ptr @abe_54xx_clkdm, ptr @dss_54xx_clkdm, ptr @dsp_54xx_clkdm, ptr @c2c_54xx_clkdm, ptr @l4per_54xx_clkdm, ptr @gpu_54xx_clkdm, ptr @wkupaon_54xx_clkdm, ptr @mpu0_54xx_clkdm, ptr @mpu1_54xx_clkdm, ptr @coreaon_54xx_clkdm, ptr @mpu_54xx_clkdm, ptr @l3init_54xx_clkdm, ptr @dma_54xx_clkdm, ptr @l3instr_54xx_clkdm, ptr @emif_54xx_clkdm, ptr @emu_54xx_clkdm, ptr @cam_54xx_clkdm, ptr null], section ".init.data", align 4
@l4sec_54xx_clkdm = internal global %struct.clockdomain { ptr @.str, %union.anon { ptr @.str.1 }, i16 0, i8 3, i8 0, i8 14, i8 3, i16 1792, i16 2688, ptr @l4sec_wkup_sleep_deps, ptr @l4sec_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@iva_54xx_clkdm = internal global %struct.clockdomain { ptr @.str.5, %union.anon { ptr @.str.6 }, i16 0, i8 15, i8 0, i8 2, i8 3, i16 4608, i16 0, ptr @iva_wkup_sleep_deps, ptr @iva_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@mipiext_54xx_clkdm = internal global %struct.clockdomain { ptr @.str.7, %union.anon { ptr @.str.1 }, i16 0, i8 14, i8 0, i8 0, i8 3, i16 1792, i16 2048, ptr @mipiext_wkup_sleep_deps, ptr @mipiext_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@l3main2_54xx_clkdm = internal global %struct.clockdomain { ptr @.str.10, %union.anon { ptr @.str.1 }, i16 0, i8 12, i8 0, i8 6, i8 3, i16 1792, i16 256, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@l3main1_54xx_clkdm = internal global %struct.clockdomain { ptr @.str.3, %union.anon { ptr @.str.1 }, i16 0, i8 12, i8 0, i8 5, i8 3, i16 1792, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@custefuse_54xx_clkdm = internal global %struct.clockdomain { ptr @.str.12, %union.anon { ptr @.str.13 }, i16 0, i8 14, i8 0, i8 0, i8 3, i16 5888, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@ipu_54xx_clkdm = internal global %struct.clockdomain { ptr @.str.14, %union.anon { ptr @.str.1 }, i16 0, i8 15, i8 0, i8 0, i8 3, i16 1792, i16 512, ptr @ipu_wkup_sleep_deps, ptr @ipu_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@l4cfg_54xx_clkdm = internal global %struct.clockdomain { ptr @.str.11, %union.anon { ptr @.str.1 }, i16 0, i8 12, i8 0, i8 12, i8 3, i16 1792, i16 1536, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@abe_54xx_clkdm = internal global %struct.clockdomain { ptr @.str.8, %union.anon { ptr @.str.19 }, i16 0, i8 15, i8 0, i8 3, i8 2, i16 1280, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@dss_54xx_clkdm = internal global %struct.clockdomain { ptr @.str.16, %union.anon { ptr @.str.20 }, i16 0, i8 15, i8 0, i8 8, i8 3, i16 5120, i16 0, ptr @dss_wkup_sleep_deps, ptr @dss_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@dsp_54xx_clkdm = internal global %struct.clockdomain { ptr @.str.15, %union.anon { ptr @.str.21 }, i16 0, i8 15, i8 0, i8 1, i8 2, i16 1024, i16 0, ptr @dsp_wkup_sleep_deps, ptr @dsp_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@c2c_54xx_clkdm = internal global %struct.clockdomain { ptr @.str.22, %union.anon { ptr @.str.1 }, i16 0, i8 14, i8 0, i8 0, i8 3, i16 1792, i16 1280, ptr @c2c_wkup_sleep_deps, ptr @c2c_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@l4per_54xx_clkdm = internal global %struct.clockdomain { ptr @.str.4, %union.anon { ptr @.str.1 }, i16 0, i8 15, i8 0, i8 13, i8 3, i16 1792, i16 2304, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@gpu_54xx_clkdm = internal global %struct.clockdomain { ptr @.str.17, %union.anon { ptr @.str.23 }, i16 0, i8 15, i8 0, i8 10, i8 3, i16 5376, i16 0, ptr @gpu_wkup_sleep_deps, ptr @gpu_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@wkupaon_54xx_clkdm = internal global %struct.clockdomain { ptr @.str.18, %union.anon { ptr @.str.24 }, i16 0, i8 14, i8 0, i8 15, i8 1, i16 6400, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@mpu0_54xx_clkdm = internal global %struct.clockdomain { ptr @.str.25, %union.anon { ptr @.str.26 }, i16 0, i8 14, i8 0, i8 0, i8 5, i16 1536, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@mpu1_54xx_clkdm = internal global %struct.clockdomain { ptr @.str.27, %union.anon { ptr @.str.28 }, i16 0, i8 14, i8 0, i8 0, i8 5, i16 2560, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@coreaon_54xx_clkdm = internal global %struct.clockdomain { ptr @.str.29, %union.anon { ptr @.str.30 }, i16 0, i8 14, i8 0, i8 0, i8 3, i16 1536, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@mpu_54xx_clkdm = internal global %struct.clockdomain { ptr @.str.31, %union.anon { ptr @.str.32 }, i16 0, i8 14, i8 0, i8 0, i8 2, i16 768, i16 0, ptr @mpu_wkup_sleep_deps, ptr @mpu_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@l3init_54xx_clkdm = internal global %struct.clockdomain { ptr @.str.9, %union.anon { ptr @.str.33 }, i16 0, i8 15, i8 0, i8 7, i8 3, i16 5632, i16 0, ptr @l3init_wkup_sleep_deps, ptr @l3init_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@dma_54xx_clkdm = internal global %struct.clockdomain { ptr @.str.34, %union.anon { ptr @.str.1 }, i16 0, i8 14, i8 0, i8 0, i8 3, i16 1792, i16 768, ptr @dma_wkup_sleep_deps, ptr @dma_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@l3instr_54xx_clkdm = internal global %struct.clockdomain { ptr @.str.35, %union.anon { ptr @.str.1 }, i16 0, i8 0, i8 0, i8 0, i8 3, i16 1792, i16 1792, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@emif_54xx_clkdm = internal global %struct.clockdomain { ptr @.str.2, %union.anon { ptr @.str.1 }, i16 0, i8 14, i8 0, i8 4, i8 3, i16 1792, i16 1024, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@emu_54xx_clkdm = internal global %struct.clockdomain { ptr @.str.36, %union.anon { ptr @.str.37 }, i16 0, i8 14, i8 0, i8 0, i8 1, i16 6912, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@cam_54xx_clkdm = internal global %struct.clockdomain { ptr @.str.38, %union.anon { ptr @.str.39 }, i16 0, i8 15, i8 0, i8 0, i8 3, i16 4864, i16 0, ptr @cam_wkup_sleep_deps, ptr @cam_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [12 x i8] c"l4sec_clkdm\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"core_pwrdm\00", align 1
@l4sec_wkup_sleep_deps = internal global [4 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.4, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"emif_clkdm\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"l3main1_clkdm\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"l4per_clkdm\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"iva_clkdm\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"iva_pwrdm\00", align 1
@iva_wkup_sleep_deps = internal global [3 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"mipiext_clkdm\00", align 1
@mipiext_wkup_sleep_deps = internal global [9 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.8, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.9, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.10, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.4, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"abe_clkdm\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"l3init_clkdm\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"l3main2_clkdm\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"l4cfg_clkdm\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"custefuse_clkdm\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"custefuse_pwrdm\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"ipu_clkdm\00", align 1
@ipu_wkup_sleep_deps = internal global [14 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.8, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.15, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.16, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.17, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.9, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.10, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.4, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.18, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.15 = private unnamed_addr constant [10 x i8] c"dsp_clkdm\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"dss_clkdm\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"gpu_clkdm\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"wkupaon_clkdm\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"abe_pwrdm\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"dss_pwrdm\00", align 1
@dss_wkup_sleep_deps = internal global [4 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.10, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.21 = private unnamed_addr constant [10 x i8] c"dsp_pwrdm\00", align 1
@dsp_wkup_sleep_deps = internal global [10 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.8, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.9, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.10, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.4, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.18, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.22 = private unnamed_addr constant [10 x i8] c"c2c_clkdm\00", align 1
@c2c_wkup_sleep_deps = internal global [9 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.8, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.9, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.10, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.4, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.23 = private unnamed_addr constant [10 x i8] c"gpu_pwrdm\00", align 1
@gpu_wkup_sleep_deps = internal global [4 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.24 = private unnamed_addr constant [14 x i8] c"wkupaon_pwrdm\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"mpu0_clkdm\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"cpu0_pwrdm\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"mpu1_clkdm\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"cpu1_pwrdm\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"coreaon_clkdm\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"coreaon_pwrdm\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"mpu_clkdm\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"mpu_pwrdm\00", align 1
@mpu_wkup_sleep_deps = internal global [15 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.8, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.15, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.16, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.17, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.14, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.9, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.10, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.4, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.18, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.33 = private unnamed_addr constant [13 x i8] c"l3init_pwrdm\00", align 1
@l3init_wkup_sleep_deps = internal global [8 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.8, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.4, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.18, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.34 = private unnamed_addr constant [10 x i8] c"dma_clkdm\00", align 1
@dma_wkup_sleep_deps = internal global [12 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.8, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.16, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.14, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.9, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.4, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.18, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.35 = private unnamed_addr constant [14 x i8] c"l3instr_clkdm\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"emu_clkdm\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"emu_pwrdm\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"cam_clkdm\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"cam_pwrdm\00", align 1
@cam_wkup_sleep_deps = internal global [4 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap54xx_clockdomains_init() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @clkdm_register_platform_funcs(ptr noundef nonnull @omap4_clkdm_operations) #2
  %2 = tail call i32 @clkdm_register_clkdms(ptr noundef nonnull @clockdomains_omap54xx) #2
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
