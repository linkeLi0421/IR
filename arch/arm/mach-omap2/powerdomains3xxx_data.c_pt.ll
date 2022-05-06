; ModuleID = '/llk/IR/arch/arm/mach-omap2/powerdomains3xxx_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/powerdomains3xxx_data.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pwrdm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.powerdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, [5 x i8], [5 x i8], i8, [11 x ptr], %struct.list_head, %struct.list_head, i32, [4 x i32], i32, [5 x i32], %struct.spinlock, i32, i8, i8, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32 }
%union.anon = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.omap_domain_base = type { i32, ptr, i16 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }

@omap3_pwrdm_operations = external dso_local global %struct.pwrdm_ops, align 4
@powerdomains_am35x = internal global [13 x ptr] [ptr @wkup_omap2_pwrdm, ptr @mpu_am35x_pwrdm, ptr @neon_am35x_pwrdm, ptr @core_am35x_pwrdm, ptr @sgx_am35x_pwrdm, ptr @dss_am35x_pwrdm, ptr @per_am35x_pwrdm, ptr @emu_pwrdm, ptr @dpll1_pwrdm, ptr @dpll3_pwrdm, ptr @dpll4_pwrdm, ptr @dpll5_pwrdm, ptr null], section ".init.data", align 4
@ti81xx_pwrdm_operations = internal global %struct.pwrdm_ops { ptr @ti81xx_pwrdm_set_next_pwrst, ptr @ti81xx_pwrdm_read_next_pwrst, ptr @ti81xx_pwrdm_read_pwrst, ptr null, ptr null, ptr null, ptr null, ptr @ti81xx_pwrdm_read_logic_pwrst, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ti81xx_pwrdm_wait_transition, ptr null, ptr null, ptr null }, align 4
@powerdomains_ti814x = internal global [10 x ptr] [ptr @alwon_81xx_pwrdm, ptr @device_81xx_pwrdm, ptr @active_81xx_pwrdm, ptr @default_81xx_pwrdm, ptr @gem_814x_pwrdm, ptr @ivahd_814x_pwrdm, ptr @hdvpss_814x_pwrdm, ptr @sgx_814x_pwrdm, ptr @isp_814x_pwrdm, ptr null], section ".init.data", align 4
@powerdomains_ti816x = internal global [9 x ptr] [ptr @alwon_81xx_pwrdm, ptr @device_81xx_pwrdm, ptr @active_81xx_pwrdm, ptr @default_81xx_pwrdm, ptr @ivahd0_816x_pwrdm, ptr @ivahd1_816x_pwrdm, ptr @ivahd2_816x_pwrdm, ptr @sgx_816x_pwrdm, ptr null], section ".init.data", align 4
@powerdomains_omap3430_common = internal global [13 x ptr] [ptr @wkup_omap2_pwrdm, ptr @iva2_pwrdm, ptr @mpu_3xxx_pwrdm, ptr @neon_pwrdm, ptr @cam_pwrdm, ptr @dss_pwrdm, ptr @per_pwrdm, ptr @emu_pwrdm, ptr @dpll1_pwrdm, ptr @dpll2_pwrdm, ptr @dpll3_pwrdm, ptr @dpll4_pwrdm, ptr null], section ".init.data", align 4
@powerdomains_omap3430es1 = internal global [3 x ptr] [ptr @gfx_omap2_pwrdm, ptr @core_3xxx_pre_es3_1_pwrdm, ptr null], section ".init.data", align 4
@powerdomains_omap3430es2_es3_0 = internal global [5 x ptr] [ptr @core_3xxx_pre_es3_1_pwrdm, ptr @sgx_pwrdm, ptr @usbhost_pwrdm, ptr @dpll5_pwrdm, ptr null], section ".init.data", align 4
@powerdomains_omap3430es3_1plus = internal global [5 x ptr] [ptr @core_3xxx_es3_1_pwrdm, ptr @sgx_pwrdm, ptr @usbhost_pwrdm, ptr @dpll5_pwrdm, ptr null], section ".init.data", align 4
@.str = private unnamed_addr constant [44 x i8] c"arch/arm/mach-omap2/powerdomains3xxx_data.c\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"OMAP3 powerdomain init: unknown chip type\0A\00", align 1
@wkup_omap2_pwrdm = external dso_local global %struct.powerdomain, align 4
@mpu_am35x_pwrdm = internal global %struct.powerdomain { ptr @.str.2, %union.anon { ptr @.str.3 }, i16 256, i8 8, i8 8, i8 2, i8 1, [5 x i8] c"\08\00\00\00\00", [5 x i8] c"\08\00\00\00\00", i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@neon_am35x_pwrdm = internal global %struct.powerdomain { ptr @.str.4, %union.anon { ptr @.str.3 }, i16 2816, i8 8, i8 8, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@core_am35x_pwrdm = internal global %struct.powerdomain { ptr @.str.5, %union.anon { ptr @.str.6 }, i16 512, i8 8, i8 8, i8 0, i8 2, [5 x i8] c"\08\08\00\00\00", [5 x i8] c"\08\08\00\00\00", i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@sgx_am35x_pwrdm = internal global %struct.powerdomain { ptr @.str.7, %union.anon { ptr @.str.6 }, i16 768, i8 8, i8 8, i8 0, i8 1, [5 x i8] c"\08\00\00\00\00", [5 x i8] c"\08\00\00\00\00", i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@dss_am35x_pwrdm = internal global %struct.powerdomain { ptr @.str.8, %union.anon { ptr @.str.6 }, i16 1536, i8 8, i8 8, i8 0, i8 1, [5 x i8] c"\08\00\00\00\00", [5 x i8] c"\08\00\00\00\00", i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@per_am35x_pwrdm = internal global %struct.powerdomain { ptr @.str.9, %union.anon { ptr @.str.6 }, i16 2048, i8 8, i8 8, i8 0, i8 1, [5 x i8] c"\08\00\00\00\00", [5 x i8] c"\08\00\00\00\00", i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@emu_pwrdm = internal global %struct.powerdomain { ptr @.str.10, %union.anon { ptr @.str.6 }, i16 2304, i8 0, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@dpll1_pwrdm = internal global %struct.powerdomain { ptr @.str.11, %union.anon { ptr @.str.3 }, i16 256, i8 0, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@dpll3_pwrdm = internal global %struct.powerdomain { ptr @.str.12, %union.anon { ptr @.str.6 }, i16 1280, i8 0, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@dpll4_pwrdm = internal global %struct.powerdomain { ptr @.str.13, %union.anon { ptr @.str.6 }, i16 1280, i8 0, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@dpll5_pwrdm = internal global %struct.powerdomain { ptr @.str.14, %union.anon { ptr @.str.6 }, i16 1280, i8 0, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"mpu_pwrdm\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"mpu_iva\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"neon_pwrdm\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"core_pwrdm\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"sgx_pwrdm\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"dss_pwrdm\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"per_pwrdm\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"emu_pwrdm\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"dpll1_pwrdm\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"dpll3_pwrdm\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"dpll4_pwrdm\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"dpll5_pwrdm\00", align 1
@prm_base = external dso_local local_unnamed_addr global %struct.omap_domain_base, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.15 = private unnamed_addr constant [50 x i8] c"\013powerdomain: %s timeout waiting for transition\0A\00", align 1
@alwon_81xx_pwrdm = internal global %struct.powerdomain { ptr @.str.16, %union.anon { ptr @.str.6 }, i16 6144, i8 9, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@device_81xx_pwrdm = internal global %struct.powerdomain { ptr @.str.17, %union.anon { ptr @.str.6 }, i16 0, i8 0, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@active_81xx_pwrdm = internal global %struct.powerdomain { ptr @.str.18, %union.anon { ptr @.str.6 }, i16 2560, i8 9, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@default_81xx_pwrdm = internal global %struct.powerdomain { ptr @.str.19, %union.anon { ptr @.str.6 }, i16 2816, i8 9, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@gem_814x_pwrdm = internal global %struct.powerdomain { ptr @.str.20, %union.anon { ptr @.str.21 }, i16 2560, i8 9, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@ivahd_814x_pwrdm = internal global %struct.powerdomain { ptr @.str.22, %union.anon { ptr @.str.23 }, i16 3072, i8 9, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@hdvpss_814x_pwrdm = internal global %struct.powerdomain { ptr @.str.24, %union.anon { ptr @.str.21 }, i16 3584, i8 9, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@sgx_814x_pwrdm = internal global %struct.powerdomain { ptr @.str.7, %union.anon { ptr @.str.6 }, i16 3840, i8 9, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@isp_814x_pwrdm = internal global %struct.powerdomain { ptr @.str.25, %union.anon { ptr @.str.6 }, i16 3328, i8 9, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@.str.16 = private unnamed_addr constant [12 x i8] c"alwon_pwrdm\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"device_pwrdm\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"active_pwrdm\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"default_pwrdm\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"gem_pwrdm\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"dsp\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"ivahd_pwrdm\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"iva\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"hdvpss_pwrdm\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"isp_pwrdm\00", align 1
@ivahd0_816x_pwrdm = internal global %struct.powerdomain { ptr @.str.26, %union.anon { ptr @.str.3 }, i16 3072, i8 9, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@ivahd1_816x_pwrdm = internal global %struct.powerdomain { ptr @.str.27, %union.anon { ptr @.str.3 }, i16 3328, i8 9, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@ivahd2_816x_pwrdm = internal global %struct.powerdomain { ptr @.str.28, %union.anon { ptr @.str.3 }, i16 3584, i8 9, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@sgx_816x_pwrdm = internal global %struct.powerdomain { ptr @.str.7, %union.anon { ptr @.str.6 }, i16 3840, i8 9, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@.str.26 = private unnamed_addr constant [13 x i8] c"ivahd0_pwrdm\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"ivahd1_pwrdm\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"ivahd2_pwrdm\00", align 1
@iva2_pwrdm = internal global %struct.powerdomain { ptr @.str.29, %union.anon { ptr @.str.3 }, i16 -2048, i8 11, i8 3, i8 0, i8 4, [5 x i8] c"\03\03\03\03\00", [5 x i8] c"\08\08\09\08\00", i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@mpu_3xxx_pwrdm = internal global %struct.powerdomain { ptr @.str.2, %union.anon { ptr @.str.3 }, i16 256, i8 11, i8 3, i8 2, i8 1, [5 x i8] c"\03\00\00\00\00", [5 x i8] c"\09\00\00\00\00", i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@neon_pwrdm = internal global %struct.powerdomain { ptr @.str.4, %union.anon { ptr @.str.3 }, i16 2816, i8 11, i8 2, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@cam_pwrdm = internal global %struct.powerdomain { ptr @.str.30, %union.anon { ptr @.str.6 }, i16 1792, i8 11, i8 2, i8 0, i8 1, [5 x i8] c"\02\00\00\00\00", [5 x i8] c"\08\00\00\00\00", i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@dss_pwrdm = internal global %struct.powerdomain { ptr @.str.8, %union.anon { ptr @.str.6 }, i16 1536, i8 11, i8 2, i8 0, i8 1, [5 x i8] c"\02\00\00\00\00", [5 x i8] c"\08\00\00\00\00", i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@per_pwrdm = internal global %struct.powerdomain { ptr @.str.9, %union.anon { ptr @.str.6 }, i16 2048, i8 11, i8 3, i8 0, i8 1, [5 x i8] c"\02\00\00\00\00", [5 x i8] c"\08\00\00\00\00", i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@dpll2_pwrdm = internal global %struct.powerdomain { ptr @.str.31, %union.anon { ptr @.str.3 }, i16 -2048, i8 0, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@.str.29 = private unnamed_addr constant [11 x i8] c"iva2_pwrdm\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"cam_pwrdm\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"dpll2_pwrdm\00", align 1
@gfx_omap2_pwrdm = external dso_local global %struct.powerdomain, align 4
@core_3xxx_pre_es3_1_pwrdm = internal global %struct.powerdomain { ptr @.str.5, %union.anon { ptr @.str.6 }, i16 512, i8 11, i8 3, i8 0, i8 2, [5 x i8] c"\03\03\00\00\00", [5 x i8] c"\0B\0B\00\00\00", i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@sgx_pwrdm = internal global %struct.powerdomain { ptr @.str.7, %union.anon { ptr @.str.6 }, i16 768, i8 9, i8 2, i8 0, i8 1, [5 x i8] c"\02\00\00\00\00", [5 x i8] c"\08\00\00\00\00", i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@usbhost_pwrdm = internal global %struct.powerdomain { ptr @.str.32, %union.anon { ptr @.str.6 }, i16 3072, i8 11, i8 2, i8 0, i8 1, [5 x i8] c"\02\00\00\00\00", [5 x i8] c"\08\00\00\00\00", i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4
@.str.32 = private unnamed_addr constant [14 x i8] c"usbhost_pwrdm\00", align 1
@core_3xxx_es3_1_pwrdm = internal global %struct.powerdomain { ptr @.str.5, %union.anon { ptr @.str.6 }, i16 512, i8 11, i8 3, i8 1, i8 2, [5 x i8] c"\03\03\00\00\00", [5 x i8] c"\0B\0B\00\00\00", i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i32 0 }, align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap3xxx_powerdomains_init() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @omap_rev() #4
  %2 = and i32 %1, 255
  %3 = icmp eq i32 %2, 52
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = tail call i32 @omap_rev() #4
  %6 = and i32 %5, -16777216
  %7 = icmp eq i32 %6, -2130706432
  br i1 %7, label %8, label %38

8:                                                ; preds = %4, %0
  %9 = tail call i32 @omap_rev() #4
  %10 = and i32 %9, -16777216
  %11 = icmp eq i32 %10, -2130706432
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @pwrdm_register_platform_funcs(ptr noundef nonnull @omap3_pwrdm_operations) #4
  br label %14

14:                                               ; preds = %12, %8
  %15 = tail call i32 @omap_rev() #4
  %16 = and i32 %15, -257
  %17 = icmp eq i32 %16, 890699828
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = tail call i32 @pwrdm_register_pwrdms(ptr noundef nonnull @powerdomains_am35x) #4
  br label %36

20:                                               ; preds = %14
  switch i32 %15, label %27 [
    i32 -2126511487, label %21
    i32 -2126511743, label %21
    i32 -2126511999, label %21
    i32 -2124414079, label %24
    i32 -2124414335, label %24
    i32 -2124414591, label %24
    i32 -2124414847, label %24
  ]

21:                                               ; preds = %20, %20, %20
  %22 = tail call i32 @pwrdm_register_platform_funcs(ptr noundef nonnull @ti81xx_pwrdm_operations) #4
  %23 = tail call i32 @pwrdm_register_pwrdms(ptr noundef nonnull @powerdomains_ti814x) #4
  br label %36

24:                                               ; preds = %20, %20, %20, %20
  %25 = tail call i32 @pwrdm_register_platform_funcs(ptr noundef nonnull @ti81xx_pwrdm_operations) #4
  %26 = tail call i32 @pwrdm_register_pwrdms(ptr noundef nonnull @powerdomains_ti816x) #4
  br label %36

27:                                               ; preds = %20
  %28 = tail call i32 @pwrdm_register_pwrdms(ptr noundef nonnull @powerdomains_omap3430_common) #4
  switch i32 %15, label %35 [
    i32 875561012, label %29
    i32 875561268, label %31
    i32 875561524, label %31
    i32 875561780, label %31
    i32 909115444, label %31
    i32 875562036, label %33
    i32 875562292, label %33
    i32 909115700, label %33
    i32 909115956, label %33
  ]

29:                                               ; preds = %27
  %30 = tail call i32 @pwrdm_register_pwrdms(ptr noundef nonnull @powerdomains_omap3430es1) #4
  br label %36

31:                                               ; preds = %27, %27, %27, %27
  %32 = tail call i32 @pwrdm_register_pwrdms(ptr noundef nonnull @powerdomains_omap3430es2_es3_0) #4
  br label %36

33:                                               ; preds = %27, %27, %27, %27
  %34 = tail call i32 @pwrdm_register_pwrdms(ptr noundef nonnull @powerdomains_omap3430es3_1plus) #4
  br label %36

35:                                               ; preds = %27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 618, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %36

36:                                               ; preds = %35, %33, %31, %29, %24, %21, %18
  %37 = tail call i32 @pwrdm_complete_init() #4
  br label %38

38:                                               ; preds = %36, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_register_platform_funcs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_register_pwrdms(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_complete_init() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti81xx_pwrdm_set_next_pwrst(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #2 {
  %3 = zext i8 %1 to i32
  %4 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %5 = load i16, ptr %4, align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %7 = sext i16 %5 to i32
  %8 = getelementptr i8, ptr %6, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #4, !srcloc !8
  %10 = and i32 %9, -4
  %11 = or i32 %10, %3
  %12 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %13 = getelementptr i8, ptr %12, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #4, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti81xx_pwrdm_read_next_pwrst(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %3 = load i16, ptr %2, align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %5 = sext i16 %3 to i32
  %6 = getelementptr i8, ptr %4, i32 %5
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #4, !srcloc !8
  %8 = and i32 %7, 3
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti81xx_pwrdm_read_pwrst(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %3 = load i16, ptr %2, align 4
  %4 = icmp eq i16 %3, 3840
  %5 = select i1 %4, i32 16, i32 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %7 = sext i16 %3 to i32
  %8 = getelementptr i8, ptr %6, i32 %7
  %9 = getelementptr i8, ptr %8, i32 %5
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #4, !srcloc !8
  %11 = and i32 %10, 3
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti81xx_pwrdm_read_logic_pwrst(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %3 = load i16, ptr %2, align 4
  %4 = icmp eq i16 %3, 3840
  %5 = select i1 %4, i32 16, i32 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %7 = sext i16 %3 to i32
  %8 = getelementptr i8, ptr %6, i32 %7
  %9 = getelementptr i8, ptr %8, i32 %5
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #4, !srcloc !8
  %11 = lshr i32 %10, 2
  %12 = and i32 %11, 1
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti81xx_pwrdm_wait_transition(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %3 = load i16, ptr %2, align 4
  %4 = icmp eq i16 %3, 3840
  %5 = select i1 %4, i32 16, i32 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %7 = sext i16 %3 to i32
  %8 = getelementptr i8, ptr %6, i32 %7
  %9 = getelementptr i8, ptr %8, i32 %5
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #4, !srcloc !8
  %11 = and i32 %10, 1048576
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %16, %1
  %14 = phi i32 [ %17, %16 ], [ 0, %1 ]
  %15 = icmp eq i32 %14, 100000
  br i1 %15, label %29, label %16

16:                                               ; preds = %13
  %17 = add nuw nsw i32 %14, 1
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #4
  %19 = load i16, ptr %2, align 4
  %20 = icmp eq i16 %19, 3840
  %21 = select i1 %20, i32 16, i32 4
  %22 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %23 = sext i16 %19 to i32
  %24 = getelementptr i8, ptr %22, i32 %23
  %25 = getelementptr i8, ptr %24, i32 %21
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #4, !srcloc !8
  %27 = and i32 %26, 1048576
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %13

29:                                               ; preds = %13
  %30 = load ptr, ptr %0, align 4
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %30) #5
  br label %32

32:                                               ; preds = %29, %16, %1
  %33 = phi i32 [ -11, %29 ], [ 0, %1 ], [ 0, %16 ]
  ret i32 %33
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i64 3405197}
!9 = !{i64 3404779}
