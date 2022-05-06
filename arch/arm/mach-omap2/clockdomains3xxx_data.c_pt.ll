; ModuleID = '/llk/IR/arch/arm/mach-omap2/clockdomains3xxx_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/clockdomains3xxx_data.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clkdm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clkdm_autodep = type { %union.anon.3 }
%union.anon.3 = type { ptr }
%struct.clockdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, i16, i16, ptr, ptr, i32, i32, %struct.list_head, i32 }
%union.anon = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.clkdm_dep = type { ptr, ptr, i16, i16 }

@omap3_clkdm_operations = external dso_local global %struct.clkdm_ops, align 4
@clockdomains_common = internal global [9 x ptr] [ptr @wkup_common_clkdm, ptr @neon_clkdm, ptr @core_l3_3xxx_clkdm, ptr @core_l4_3xxx_clkdm, ptr @emu_clkdm, ptr @dpll1_clkdm, ptr @dpll3_clkdm, ptr @dpll4_clkdm, ptr null], section ".init.data", align 4
@clockdomains_am35x = internal global [7 x ptr] [ptr @mpu_am35x_clkdm, ptr @sgx_am35x_clkdm, ptr @dss_am35x_clkdm, ptr @per_am35x_clkdm, ptr @usbhost_am35x_clkdm, ptr @dpll5_clkdm, ptr null], section ".init.data", align 4
@clkdm_am35x_autodeps = internal global [2 x %struct.clkdm_autodep] [%struct.clkdm_autodep { %union.anon.3 { ptr @.str.2 } }, %struct.clkdm_autodep zeroinitializer], align 4
@clockdomains_omap3430 = internal global [8 x ptr] [ptr @mpu_3xxx_clkdm, ptr @iva2_clkdm, ptr @d2d_clkdm, ptr @dss_3xxx_clkdm, ptr @cam_clkdm, ptr @per_clkdm, ptr @dpll2_clkdm, ptr null], section ".init.data", align 4
@clockdomains_omap3430es1 = internal global [2 x ptr] [ptr @gfx_3430es1_clkdm, ptr null], section ".init.data", align 4
@clockdomains_omap3430es2plus = internal global [4 x ptr] [ptr @sgx_clkdm, ptr @dpll5_clkdm, ptr @usbhost_clkdm, ptr null], section ".init.data", align 4
@clkdm_autodeps = internal global [3 x %struct.clkdm_autodep] [%struct.clkdm_autodep { %union.anon.3 { ptr @.str.2 } }, %struct.clkdm_autodep { %union.anon.3 { ptr @.str.25 } }, %struct.clkdm_autodep zeroinitializer], align 4
@wkup_common_clkdm = external dso_local global %struct.clockdomain, align 4
@neon_clkdm = internal global %struct.clockdomain { ptr @.str, %union.anon { ptr @.str.1 }, i16 3, i8 15, i8 0, i8 0, i8 0, i16 0, i16 0, ptr @neon_wkdeps, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@core_l3_3xxx_clkdm = internal global %struct.clockdomain { ptr @.str.3, %union.anon { ptr @.str.4 }, i16 3, i8 12, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@core_l4_3xxx_clkdm = internal global %struct.clockdomain { ptr @.str.5, %union.anon { ptr @.str.4 }, i16 12, i8 12, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@emu_clkdm = internal global %struct.clockdomain { ptr @.str.6, %union.anon { ptr @.str.7 }, i16 3, i8 71, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@dpll1_clkdm = internal global %struct.clockdomain { ptr @.str.8, %union.anon { ptr @.str.9 }, i16 0, i8 0, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@dpll3_clkdm = internal global %struct.clockdomain { ptr @.str.10, %union.anon { ptr @.str.11 }, i16 0, i8 0, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@dpll4_clkdm = internal global %struct.clockdomain { ptr @.str.12, %union.anon { ptr @.str.13 }, i16 0, i8 0, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [11 x i8] c"neon_clkdm\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"neon_pwrdm\00", align 1
@neon_wkdeps = internal global [2 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"mpu_clkdm\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"core_l3_clkdm\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"core_pwrdm\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"core_l4_clkdm\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"emu_clkdm\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"emu_pwrdm\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"dpll1_clkdm\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"dpll1_pwrdm\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"dpll3_clkdm\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"dpll3_pwrdm\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"dpll4_clkdm\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"dpll4_pwrdm\00", align 1
@mpu_am35x_clkdm = internal global %struct.clockdomain { ptr @.str.2, %union.anon { ptr @.str.14 }, i16 3, i8 14, i8 0, i8 1, i8 0, i16 0, i16 0, ptr @mpu_am35x_wkdeps, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@sgx_am35x_clkdm = internal global %struct.clockdomain { ptr @.str.17, %union.anon { ptr @.str.18 }, i16 3, i8 15, i8 0, i8 0, i8 0, i16 0, i16 0, ptr @gfx_sgx_am35x_wkdeps, ptr @gfx_sgx_sleepdeps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@dss_am35x_clkdm = internal global %struct.clockdomain { ptr @.str.15, %union.anon { ptr @.str.20 }, i16 3, i8 15, i8 0, i8 5, i8 0, i16 0, i16 0, ptr @dss_am35x_wkdeps, ptr @dss_am35x_sleepdeps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@per_am35x_clkdm = internal global %struct.clockdomain { ptr @.str.16, %union.anon { ptr @.str.21 }, i16 3, i8 15, i8 0, i8 7, i8 0, i16 0, i16 0, ptr @per_am35x_wkdeps, ptr @per_am35x_sleepdeps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@usbhost_am35x_clkdm = internal global %struct.clockdomain { ptr @.str.22, %union.anon { ptr @.str.4 }, i16 3, i8 15, i8 0, i8 0, i8 0, i16 0, i16 0, ptr @usbhost_am35x_wkdeps, ptr @usbhost_am35x_sleepdeps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@dpll5_clkdm = internal global %struct.clockdomain { ptr @.str.23, %union.anon { ptr @.str.24 }, i16 0, i8 0, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"mpu_pwrdm\00", align 1
@mpu_am35x_wkdeps = internal global [5 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.15, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.16, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.15 = private unnamed_addr constant [10 x i8] c"dss_clkdm\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"per_clkdm\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"sgx_clkdm\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"sgx_pwrdm\00", align 1
@gfx_sgx_am35x_wkdeps = internal global [3 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.19, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@gfx_sgx_sleepdeps = internal global [2 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.19 = private unnamed_addr constant [11 x i8] c"wkup_clkdm\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"dss_pwrdm\00", align 1
@dss_am35x_wkdeps = internal global [3 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.19, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@dss_am35x_sleepdeps = internal global [2 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.21 = private unnamed_addr constant [10 x i8] c"per_pwrdm\00", align 1
@per_am35x_wkdeps = internal global [5 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.19, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@per_am35x_sleepdeps = internal global [2 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.22 = private unnamed_addr constant [14 x i8] c"usbhost_clkdm\00", align 1
@usbhost_am35x_wkdeps = internal global [5 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.19, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@usbhost_am35x_sleepdeps = internal global [2 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.23 = private unnamed_addr constant [12 x i8] c"dpll5_clkdm\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"dpll5_pwrdm\00", align 1
@mpu_3xxx_clkdm = internal global %struct.clockdomain { ptr @.str.2, %union.anon { ptr @.str.14 }, i16 3, i8 14, i8 0, i8 1, i8 0, i16 0, i16 0, ptr @mpu_3xxx_wkdeps, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@iva2_clkdm = internal global %struct.clockdomain { ptr @.str.25, %union.anon { ptr @.str.26 }, i16 3, i8 3, i8 0, i8 2, i8 0, i16 0, i16 0, ptr @iva2_wkdeps, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@d2d_clkdm = internal global %struct.clockdomain { ptr @.str.27, %union.anon { ptr @.str.4 }, i16 48, i8 15, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@dss_3xxx_clkdm = internal global %struct.clockdomain { ptr @.str.15, %union.anon { ptr @.str.20 }, i16 3, i8 15, i8 0, i8 5, i8 0, i16 0, i16 0, ptr @dss_wkdeps, ptr @dss_sleepdeps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@cam_clkdm = internal global %struct.clockdomain { ptr @.str.28, %union.anon { ptr @.str.29 }, i16 3, i8 15, i8 0, i8 0, i8 0, i16 0, i16 0, ptr @cam_wkdeps, ptr @cam_sleepdeps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@per_clkdm = internal global %struct.clockdomain { ptr @.str.16, %union.anon { ptr @.str.21 }, i16 3, i8 15, i8 0, i8 7, i8 0, i16 0, i16 0, ptr @per_wkdeps, ptr @per_sleepdeps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@dpll2_clkdm = internal global %struct.clockdomain { ptr @.str.30, %union.anon { ptr @.str.31 }, i16 0, i8 0, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@mpu_3xxx_wkdeps = internal global [6 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.25, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.15, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.16, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.25 = private unnamed_addr constant [11 x i8] c"iva2_clkdm\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"iva2_pwrdm\00", align 1
@iva2_wkdeps = internal global [7 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.19, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.15, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.16, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.27 = private unnamed_addr constant [10 x i8] c"d2d_clkdm\00", align 1
@dss_wkdeps = internal global [4 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.25, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.19, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@dss_sleepdeps = internal global [3 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.25, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.28 = private unnamed_addr constant [10 x i8] c"cam_clkdm\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"cam_pwrdm\00", align 1
@cam_wkdeps = internal global [4 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.25, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.19, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@cam_sleepdeps = internal global [2 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@per_wkdeps = internal global [6 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.25, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.19, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@per_sleepdeps = internal global [3 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.25, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@.str.30 = private unnamed_addr constant [12 x i8] c"dpll2_clkdm\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"dpll2_pwrdm\00", align 1
@gfx_3430es1_clkdm = internal global %struct.clockdomain { ptr @.str.32, %union.anon { ptr @.str.33 }, i16 3, i8 15, i8 0, i8 0, i8 0, i16 0, i16 0, ptr @gfx_sgx_3xxx_wkdeps, ptr @gfx_sgx_sleepdeps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str.32 = private unnamed_addr constant [10 x i8] c"gfx_clkdm\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"gfx_pwrdm\00", align 1
@gfx_sgx_3xxx_wkdeps = internal global [4 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.25, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.19, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@sgx_clkdm = internal global %struct.clockdomain { ptr @.str.17, %union.anon { ptr @.str.18 }, i16 3, i8 15, i8 0, i8 0, i8 0, i16 0, i16 0, ptr @gfx_sgx_3xxx_wkdeps, ptr @gfx_sgx_sleepdeps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@usbhost_clkdm = internal global %struct.clockdomain { ptr @.str.22, %union.anon { ptr @.str.34 }, i16 3, i8 15, i8 0, i8 0, i8 0, i16 0, i16 0, ptr @usbhost_wkdeps, ptr @usbhost_sleepdeps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str.34 = private unnamed_addr constant [14 x i8] c"usbhost_pwrdm\00", align 1
@usbhost_wkdeps = internal global [6 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.25, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.19, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4
@usbhost_sleepdeps = internal global [3 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.25, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap3xxx_clockdomains_init() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @omap_rev() #2
  %2 = and i32 %1, 255
  %3 = icmp eq i32 %2, 52
  br i1 %3, label %4, label %20

4:                                                ; preds = %0
  %5 = tail call i32 @clkdm_register_platform_funcs(ptr noundef nonnull @omap3_clkdm_operations) #2
  %6 = tail call i32 @clkdm_register_clkdms(ptr noundef nonnull @clockdomains_common) #2
  %7 = tail call i32 @omap_rev() #2
  %8 = and i32 %7, -257
  %9 = icmp eq i32 %8, 890699828
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = tail call i32 @clkdm_register_clkdms(ptr noundef nonnull @clockdomains_omap3430) #2
  %12 = icmp eq i32 %7, 875561012
  %13 = select i1 %12, ptr @clockdomains_omap3430es1, ptr @clockdomains_omap3430es2plus
  br label %14

14:                                               ; preds = %10, %4
  %15 = phi ptr [ %13, %10 ], [ @clockdomains_am35x, %4 ]
  %16 = phi ptr [ @clkdm_autodeps, %10 ], [ @clkdm_am35x_autodeps, %4 ]
  %17 = tail call i32 @clkdm_register_clkdms(ptr noundef nonnull %15) #2
  %18 = tail call i32 @clkdm_register_autodeps(ptr noundef nonnull %16) #2
  %19 = tail call i32 @clkdm_complete_init() #2
  br label %20

20:                                               ; preds = %14, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_register_platform_funcs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_register_clkdms(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_register_autodeps(ptr noundef) local_unnamed_addr #1

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
