; ModuleID = '/llk/IR/arch/arm/mach-omap2/clockdomains44xx_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/clockdomains44xx_data.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clkdm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clockdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, i16, i16, ptr, ptr, i32, i32, %struct.list_head, i32 }
%union.anon = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.clkdm_dep = type { ptr, ptr, i16, i16 }

@omap4_clkdm_operations = external dso_local global %struct.clkdm_ops, align 4
@clockdomains_omap44xx = internal global [25 x ptr] [ptr @l4_cefuse_44xx_clkdm, ptr @l4_cfg_44xx_clkdm, ptr @tesla_44xx_clkdm, ptr @l3_gfx_44xx_clkdm, ptr @ivahd_44xx_clkdm, ptr @l4_secure_44xx_clkdm, ptr @l4_per_44xx_clkdm, ptr @abe_44xx_clkdm, ptr @l3_instr_44xx_clkdm, ptr @l3_init_44xx_clkdm, ptr @d2d_44xx_clkdm, ptr @mpu0_44xx_clkdm, ptr @mpu1_44xx_clkdm, ptr @l3_emif_44xx_clkdm, ptr @l4_ao_44xx_clkdm, ptr @ducati_44xx_clkdm, ptr @mpu_44xx_clkdm, ptr @l3_2_44xx_clkdm, ptr @l3_1_44xx_clkdm, ptr @iss_44xx_clkdm, ptr @l3_dss_44xx_clkdm, ptr @l4_wkup_44xx_clkdm, ptr @emu_sys_44xx_clkdm, ptr @l3_dma_44xx_clkdm, ptr null], section ".init.data", align 4
@l4_cefuse_44xx_clkdm = internal global %struct.clockdomain { ptr @.str, %union.anon { ptr @.str.1 }, i16 0, i8 14, i8 0, i8 0, i8 3, i16 5632, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@l4_cfg_44xx_clkdm = internal global %struct.clockdomain { ptr @.str.2, %union.anon { ptr @.str.3 }, i16 0, i8 12, i8 0, i8 12, i8 3, i16 1792, i16 1536, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@tesla_44xx_clkdm = internal global %struct.clockdomain { ptr @.str.4, %union.anon { ptr @.str.5 }, i16 0, i8 15, i8 0, i8 1, i8 2, i16 1024, i16 0, ptr @tesla_wkup_sleep_deps, ptr @tesla_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@l3_gfx_44xx_clkdm = internal global %struct.clockdomain { ptr @.str.14, %union.anon { ptr @.str.15 }, i16 0, i8 15, i8 0, i8 10, i8 3, i16 4608, i16 0, ptr @l3_gfx_wkup_sleep_deps, ptr @l3_gfx_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@ivahd_44xx_clkdm = internal global %struct.clockdomain { ptr @.str.7, %union.anon { ptr @.str.16 }, i16 0, i8 15, i8 0, i8 2, i8 3, i16 3840, i16 0, ptr @ivahd_wkup_sleep_deps, ptr @ivahd_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@l4_secure_44xx_clkdm = internal global %struct.clockdomain { ptr @.str.17, %union.anon { ptr @.str.18 }, i16 0, i8 3, i8 0, i8 14, i8 3, i16 5120, i16 384, ptr @l4_secure_wkup_sleep_deps, ptr @l4_secure_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@l4_per_44xx_clkdm = internal global %struct.clockdomain { ptr @.str.12, %union.anon { ptr @.str.18 }, i16 0, i8 15, i8 0, i8 13, i8 3, i16 5120, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@abe_44xx_clkdm = internal global %struct.clockdomain { ptr @.str.6, %union.anon { ptr @.str.19 }, i16 0, i8 15, i8 0, i8 3, i8 2, i16 1280, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@l3_instr_44xx_clkdm = internal global %struct.clockdomain { ptr @.str.20, %union.anon { ptr @.str.3 }, i16 0, i8 0, i8 0, i8 0, i8 3, i16 1792, i16 1792, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@l3_init_44xx_clkdm = internal global %struct.clockdomain { ptr @.str.11, %union.anon { ptr @.str.21 }, i16 0, i8 15, i8 0, i8 7, i8 3, i16 4864, i16 0, ptr @l3_init_wkup_sleep_deps, ptr @l3_init_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@d2d_44xx_clkdm = internal global %struct.clockdomain { ptr @.str.22, %union.anon { ptr @.str.3 }, i16 0, i8 14, i8 0, i8 0, i8 3, i16 1792, i16 1280, ptr @d2d_wkup_sleep_deps, ptr @d2d_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@mpu0_44xx_clkdm = internal global %struct.clockdomain { ptr @.str.23, %union.anon { ptr @.str.24 }, i16 0, i8 14, i8 0, i8 0, i8 5, i16 1024, i16 24, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@mpu1_44xx_clkdm = internal global %struct.clockdomain { ptr @.str.25, %union.anon { ptr @.str.26 }, i16 0, i8 14, i8 0, i8 0, i8 5, i16 2048, i16 24, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@l3_emif_44xx_clkdm = internal global %struct.clockdomain { ptr @.str.10, %union.anon { ptr @.str.3 }, i16 0, i8 14, i8 0, i8 4, i8 3, i16 1792, i16 1024, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@l4_ao_44xx_clkdm = internal global %struct.clockdomain { ptr @.str.27, %union.anon { ptr @.str.28 }, i16 0, i8 14, i8 0, i8 0, i8 3, i16 1536, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@ducati_44xx_clkdm = internal global %struct.clockdomain { ptr @.str.29, %union.anon { ptr @.str.3 }, i16 0, i8 15, i8 0, i8 0, i8 3, i16 1792, i16 512, ptr @ducati_wkup_sleep_deps, ptr @ducati_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@mpu_44xx_clkdm = internal global %struct.clockdomain { ptr @.str.31, %union.anon { ptr @.str.32 }, i16 0, i8 14, i8 0, i8 0, i8 2, i16 768, i16 0, ptr @mpu_wkup_sleep_deps, ptr @mpu_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@l3_2_44xx_clkdm = internal global %struct.clockdomain { ptr @.str.9, %union.anon { ptr @.str.3 }, i16 0, i8 12, i8 0, i8 6, i8 3, i16 1792, i16 256, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@l3_1_44xx_clkdm = internal global %struct.clockdomain { ptr @.str.8, %union.anon { ptr @.str.3 }, i16 0, i8 12, i8 0, i8 5, i8 3, i16 1792, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@iss_44xx_clkdm = internal global %struct.clockdomain { ptr @.str.33, %union.anon { ptr @.str.34 }, i16 0, i8 3, i8 0, i8 0, i8 3, i16 4096, i16 0, ptr @iss_wkup_sleep_deps, ptr @iss_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@l3_dss_44xx_clkdm = internal global %struct.clockdomain { ptr @.str.30, %union.anon { ptr @.str.35 }, i16 0, i8 15, i8 0, i8 8, i8 3, i16 4352, i16 0, ptr @l3_dss_wkup_sleep_deps, ptr @l3_dss_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@l4_wkup_44xx_clkdm = internal global %struct.clockdomain { ptr @.str.13, %union.anon { ptr @.str.36 }, i16 0, i8 44, i8 0, i8 15, i8 1, i16 6144, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@emu_sys_44xx_clkdm = internal global %struct.clockdomain { ptr @.str.37, %union.anon { ptr @.str.38 }, i16 0, i8 70, i8 0, i8 0, i8 1, i16 6656, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@l3_dma_44xx_clkdm = internal global %struct.clockdomain { ptr @.str.39, %union.anon { ptr @.str.3 }, i16 0, i8 14, i8 0, i8 0, i8 3, i16 1792, i16 768, ptr @l3_dma_wkup_sleep_deps, ptr @l3_dma_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [16 x i8] c"l4_cefuse_clkdm\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"cefuse_pwrdm\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"l4_cfg_clkdm\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"core_pwrdm\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"tesla_clkdm\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"tesla_pwrdm\00", align 1
@tesla_wkup_sleep_deps = internal global [10 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.6, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.7, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.8, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.9, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.10, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.12, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.13, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"abe_clkdm\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"ivahd_clkdm\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"l3_1_clkdm\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"l3_2_clkdm\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"l3_emif_clkdm\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"l3_init_clkdm\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"l4_per_clkdm\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"l4_wkup_clkdm\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"l3_gfx_clkdm\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"gfx_pwrdm\00", align 1
@l3_gfx_wkup_sleep_deps = internal global [4 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.7, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.8, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.10, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.16 = private unnamed_addr constant [12 x i8] c"ivahd_pwrdm\00", align 1
@ivahd_wkup_sleep_deps = internal global [3 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.8, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.10, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.17 = private unnamed_addr constant [16 x i8] c"l4_secure_clkdm\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"l4per_pwrdm\00", align 1
@l4_secure_wkup_sleep_deps = internal global [4 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.8, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.10, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.12, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.19 = private unnamed_addr constant [10 x i8] c"abe_pwrdm\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"l3_instr_clkdm\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"l3init_pwrdm\00", align 1
@l3_init_wkup_sleep_deps = internal global [8 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.6, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.7, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.10, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.12, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.17, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.13, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.22 = private unnamed_addr constant [10 x i8] c"d2d_clkdm\00", align 1
@d2d_wkup_sleep_deps = internal global [9 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.6, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.7, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.8, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.9, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.10, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.12, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.23 = private unnamed_addr constant [11 x i8] c"mpu0_clkdm\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"cpu0_pwrdm\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"mpu1_clkdm\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"cpu1_pwrdm\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"l4_ao_clkdm\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"always_on_core_pwrdm\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"ducati_clkdm\00", align 1
@ducati_wkup_sleep_deps = internal global [14 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.6, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.7, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.8, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.9, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.30, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.10, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.14, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.12, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.17, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.13, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.4, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.30 = private unnamed_addr constant [13 x i8] c"l3_dss_clkdm\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"mpuss_clkdm\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"mpu_pwrdm\00", align 1
@mpu_wkup_sleep_deps = internal global [15 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.6, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.29, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.7, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.8, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.9, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.30, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.10, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.14, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.12, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.17, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.13, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.4, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.33 = private unnamed_addr constant [10 x i8] c"iss_clkdm\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"cam_pwrdm\00", align 1
@iss_wkup_sleep_deps = internal global [4 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.7, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.8, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.10, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.35 = private unnamed_addr constant [10 x i8] c"dss_pwrdm\00", align 1
@l3_dss_wkup_sleep_deps = internal global [4 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.7, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.9, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.10, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.36 = private unnamed_addr constant [11 x i8] c"wkup_pwrdm\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"emu_sys_clkdm\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"emu_pwrdm\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"l3_dma_clkdm\00", align 1
@l3_dma_wkup_sleep_deps = internal global [12 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.6, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.29, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.7, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.8, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.30, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.10, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.12, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.17, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.13, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap44xx_clockdomains_init() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @clkdm_register_platform_funcs(ptr noundef nonnull @omap4_clkdm_operations) #2
  %2 = tail call i32 @clkdm_register_clkdms(ptr noundef nonnull @clockdomains_omap44xx) #2
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
