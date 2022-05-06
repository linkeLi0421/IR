; ModuleID = '/llk/IR/arch/arm/mach-omap2/omap_hwmod_81xx_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/omap_hwmod_81xx_data.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_hwmod_ocp_if = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.2, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%union.anon.2 = type { %struct.omap_hwmod_omap2_firewall }
%struct.omap_hwmod_omap2_firewall = type { i8, i8, i8, i8 }
%struct.omap_hwmod = type { ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr }
%union.anon = type { %struct.omap_hwmod_omap4_prcm }
%struct.omap_hwmod_omap4_prcm = type { i16, i16, i16, i16, i32, i8, i8, i8, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lock_class_key = type {}
%struct.omap_hwmod_class = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.omap_hwmod_class_sysconfig = type { i32, i32, i32, i16, ptr, i8, i8 }
%struct.sysc_regbits = type opaque
%struct.omap_hwmod_opt_clk = type { ptr, ptr, ptr }
%struct.omap_hsmmc_dev_attr = type { i8 }

@dm814x_hwmod_ocp_ifs = internal global [26 x ptr] [ptr @dm814x_mpu__alwon_l3_slow, ptr @dm814x_mpu__alwon_l3_med, ptr @dm81xx_alwon_l3_slow__l4_ls, ptr @dm81xx_alwon_l3_slow__l4_hs, ptr @dm81xx_l4_ls__uart1, ptr @dm81xx_l4_ls__uart2, ptr @dm81xx_l4_ls__uart3, ptr @dm81xx_l4_ls__wd_timer1, ptr @dm81xx_l4_ls__i2c1, ptr @dm81xx_l4_ls__i2c2, ptr @dm81xx_l4_ls__gpio1, ptr @dm81xx_l4_ls__gpio2, ptr @dm81xx_l4_ls__gpio3, ptr @dm81xx_l4_ls__gpio4, ptr @dm81xx_l4_ls__elm, ptr @dm81xx_l4_ls__mcspi1, ptr @dm81xx_l4_ls__mcspi2, ptr @dm81xx_l4_ls__mcspi3, ptr @dm81xx_l4_ls__mcspi4, ptr @dm814x_l4_ls__mmc1, ptr @dm814x_l4_ls__mmc2, ptr @ti81xx_l4_ls__rtc, ptr @dm81xx_alwon_l3_slow__gpmc, ptr @dm814x_default_l3_slow__usbss, ptr @dm814x_alwon_l3_med__mmc3, ptr null], section ".init.data", align 4
@dm816x_hwmod_ocp_ifs = internal global [30 x ptr] [ptr @dm816x_mpu__alwon_l3_slow, ptr @dm816x_mpu__alwon_l3_med, ptr @dm81xx_alwon_l3_slow__l4_ls, ptr @dm81xx_alwon_l3_slow__l4_hs, ptr @dm81xx_l4_ls__uart1, ptr @dm81xx_l4_ls__uart2, ptr @dm81xx_l4_ls__uart3, ptr @dm81xx_l4_ls__wd_timer1, ptr @dm81xx_l4_ls__i2c1, ptr @dm81xx_l4_ls__i2c2, ptr @dm81xx_l4_ls__gpio1, ptr @dm81xx_l4_ls__gpio2, ptr @dm81xx_l4_ls__elm, ptr @ti81xx_l4_ls__rtc, ptr @dm816x_l4_ls__mmc1, ptr @dm816x_l4_ls__timer3, ptr @dm816x_l4_ls__timer4, ptr @dm816x_l4_ls__timer5, ptr @dm816x_l4_ls__timer6, ptr @dm816x_l4_ls__timer7, ptr @dm81xx_l4_ls__mcspi1, ptr @dm81xx_l4_ls__mailbox, ptr @dm81xx_l4_ls__spinbox, ptr @dm81xx_l4_hs__emac0, ptr @dm81xx_emac0__mdio, ptr @dm816x_l4_hs__emac1, ptr @dm81xx_l4_hs__sata, ptr @dm81xx_alwon_l3_slow__gpmc, ptr @dm816x_default_l3_slow__usbss, ptr null], section ".init.data", align 4
@dm814x_mpu__alwon_l3_slow = internal global %struct.omap_hwmod_ocp_if { ptr @dm814x_mpu_hwmod, ptr @dm81xx_alwon_l3_slow_hwmod, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@dm814x_mpu__alwon_l3_med = internal global %struct.omap_hwmod_ocp_if { ptr @dm814x_mpu_hwmod, ptr @dm81xx_alwon_l3_med_hwmod, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@dm81xx_alwon_l3_slow__l4_ls = internal global %struct.omap_hwmod_ocp_if { ptr @dm81xx_alwon_l3_slow_hwmod, ptr @dm81xx_l4_ls_hwmod, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@dm81xx_alwon_l3_slow__l4_hs = internal global %struct.omap_hwmod_ocp_if { ptr @dm81xx_alwon_l3_med_hwmod, ptr @dm81xx_l4_hs_hwmod, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@dm81xx_l4_ls__uart1 = internal global %struct.omap_hwmod_ocp_if { ptr @dm81xx_l4_ls_hwmod, ptr @dm81xx_uart1_hwmod, ptr null, ptr @.str.8, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@dm81xx_l4_ls__uart2 = internal global %struct.omap_hwmod_ocp_if { ptr @dm81xx_l4_ls_hwmod, ptr @dm81xx_uart2_hwmod, ptr null, ptr @.str.8, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@dm81xx_l4_ls__uart3 = internal global %struct.omap_hwmod_ocp_if { ptr @dm81xx_l4_ls_hwmod, ptr @dm81xx_uart3_hwmod, ptr null, ptr @.str.8, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@dm81xx_l4_ls__wd_timer1 = internal global %struct.omap_hwmod_ocp_if { ptr @dm81xx_l4_ls_hwmod, ptr @dm81xx_wd_timer_hwmod, ptr null, ptr @.str.8, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@dm81xx_l4_ls__i2c1 = internal global %struct.omap_hwmod_ocp_if { ptr @dm81xx_l4_ls_hwmod, ptr @dm81xx_i2c1_hwmod, ptr null, ptr @.str.8, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@dm81xx_l4_ls__i2c2 = internal global %struct.omap_hwmod_ocp_if { ptr @dm81xx_l4_ls_hwmod, ptr @dm81xx_i2c2_hwmod, ptr null, ptr @.str.8, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@dm81xx_l4_ls__gpio1 = internal global %struct.omap_hwmod_ocp_if { ptr @dm81xx_l4_ls_hwmod, ptr @dm81xx_gpio1_hwmod, ptr null, ptr @.str.8, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@dm81xx_l4_ls__gpio2 = internal global %struct.omap_hwmod_ocp_if { ptr @dm81xx_l4_ls_hwmod, ptr @dm81xx_gpio2_hwmod, ptr null, ptr @.str.8, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@dm81xx_l4_ls__gpio3 = internal global %struct.omap_hwmod_ocp_if { ptr @dm81xx_l4_ls_hwmod, ptr @dm81xx_gpio3_hwmod, ptr null, ptr @.str.8, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@dm81xx_l4_ls__gpio4 = internal global %struct.omap_hwmod_ocp_if { ptr @dm81xx_l4_ls_hwmod, ptr @dm81xx_gpio4_hwmod, ptr null, ptr @.str.8, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@dm81xx_l4_ls__elm = internal global %struct.omap_hwmod_ocp_if { ptr @dm81xx_l4_ls_hwmod, ptr @dm81xx_elm_hwmod, ptr null, ptr @.str.8, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@dm81xx_l4_ls__mcspi1 = internal global %struct.omap_hwmod_ocp_if { ptr @dm81xx_l4_ls_hwmod, ptr @dm81xx_mcspi1_hwmod, ptr null, ptr @.str.8, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@dm81xx_l4_ls__mcspi2 = internal global %struct.omap_hwmod_ocp_if { ptr @dm81xx_l4_ls_hwmod, ptr @dm81xx_mcspi2_hwmod, ptr null, ptr @.str.8, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@dm81xx_l4_ls__mcspi3 = internal global %struct.omap_hwmod_ocp_if { ptr @dm81xx_l4_ls_hwmod, ptr @dm81xx_mcspi3_hwmod, ptr null, ptr @.str.8, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@dm81xx_l4_ls__mcspi4 = internal global %struct.omap_hwmod_ocp_if { ptr @dm81xx_l4_ls_hwmod, ptr @dm81xx_mcspi4_hwmod, ptr null, ptr @.str.8, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@dm814x_l4_ls__mmc1 = internal global %struct.omap_hwmod_ocp_if { ptr @dm81xx_l4_ls_hwmod, ptr @dm814x_mmc1_hwmod, ptr null, ptr @.str.8, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 2, i8 0 }, align 4
@dm814x_l4_ls__mmc2 = internal global %struct.omap_hwmod_ocp_if { ptr @dm81xx_l4_ls_hwmod, ptr @dm814x_mmc2_hwmod, ptr null, ptr @.str.8, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 2, i8 0 }, align 4
@ti81xx_l4_ls__rtc = internal global %struct.omap_hwmod_ocp_if { ptr @dm81xx_l4_ls_hwmod, ptr @ti81xx_rtc_hwmod, ptr null, ptr @.str.8, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@dm81xx_alwon_l3_slow__gpmc = internal global %struct.omap_hwmod_ocp_if { ptr @dm81xx_alwon_l3_slow_hwmod, ptr @dm81xx_gpmc_hwmod, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@dm814x_default_l3_slow__usbss = internal global %struct.omap_hwmod_ocp_if { ptr @dm81xx_default_l3_slow_hwmod, ptr @dm814x_usbss_hwmod, ptr null, ptr @.str.8, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@dm814x_alwon_l3_med__mmc3 = internal global %struct.omap_hwmod_ocp_if { ptr @dm81xx_alwon_l3_med_hwmod, ptr @dm814x_mmc3_hwmod, ptr null, ptr @.str.43, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@dm814x_mpu_hwmod = internal global %struct.omap_hwmod { ptr @.str, ptr @mpu_hwmod_class, ptr null, ptr null, %union.anon { %struct.omap_hwmod_omap4_prcm { i16 476, i16 0, i16 0, i16 0, i32 0, i8 0, i8 2, i8 0, i32 0 } }, ptr @.str.1, ptr null, ptr null, ptr @.str.2, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 8, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@dm81xx_alwon_l3_slow_hwmod = internal global %struct.omap_hwmod { ptr @.str.3, ptr @l3_hwmod_class, ptr null, ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr @.str.2, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 64, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str = private unnamed_addr constant [4 x i8] c"mpu\00", align 1
@mpu_hwmod_class = external dso_local global %struct.omap_hwmod_class, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"mpu_ck\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"alwon_l3s_clkdm\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"alwon_l3_slow\00", align 1
@l3_hwmod_class = external dso_local global %struct.omap_hwmod_class, align 4
@dm81xx_alwon_l3_med_hwmod = internal global %struct.omap_hwmod { ptr @.str.4, ptr @l3_hwmod_class, ptr null, ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr @.str.5, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 64, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"l3_med\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"alwon_l3_med_clkdm\00", align 1
@dm81xx_l4_ls_hwmod = internal global %struct.omap_hwmod { ptr @.str.6, ptr @l4_hwmod_class, ptr null, ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr @.str.2, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 64, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"l4_ls\00", align 1
@l4_hwmod_class = external dso_local global %struct.omap_hwmod_class, align 4
@dm81xx_l4_hs_hwmod = internal global %struct.omap_hwmod { ptr @.str.7, ptr @l4_hwmod_class, ptr null, ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr @.str.5, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 64, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"l4_hs\00", align 1
@dm81xx_uart1_hwmod = internal global %struct.omap_hwmod { ptr @.str.9, ptr @uart_class, ptr null, ptr null, %union.anon { %struct.omap_hwmod_omap4_prcm { i16 336, i16 0, i16 0, i16 0, i32 0, i8 0, i8 2, i8 0, i32 0 } }, ptr @.str.10, ptr null, ptr null, ptr @.str.2, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"sysclk6_ck\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"uart1\00", align 1
@uart_class = internal global %struct.omap_hwmod_class { ptr @.str.11, ptr @uart_sysc, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"sysclk10_ck\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"uart\00", align 1
@uart_sysc = internal global %struct.omap_hwmod_class_sysconfig { i32 80, i32 84, i32 88, i16 167, ptr @omap_hwmod_sysc_type1, i8 0, i8 -121 }, align 4
@omap_hwmod_sysc_type1 = external dso_local global %struct.sysc_regbits, align 1
@dm81xx_uart2_hwmod = internal global %struct.omap_hwmod { ptr @.str.12, ptr @uart_class, ptr null, ptr null, %union.anon { %struct.omap_hwmod_omap4_prcm { i16 340, i16 0, i16 0, i16 0, i32 0, i8 0, i8 2, i8 0, i32 0 } }, ptr @.str.10, ptr null, ptr null, ptr @.str.2, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"uart2\00", align 1
@dm81xx_uart3_hwmod = internal global %struct.omap_hwmod { ptr @.str.13, ptr @uart_class, ptr null, ptr null, %union.anon { %struct.omap_hwmod_omap4_prcm { i16 344, i16 0, i16 0, i16 0, i32 0, i8 0, i8 2, i8 0, i32 0 } }, ptr @.str.10, ptr null, ptr null, ptr @.str.2, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"uart3\00", align 1
@dm81xx_wd_timer_hwmod = internal global %struct.omap_hwmod { ptr @.str.14, ptr @wd_timer_class, ptr null, ptr null, %union.anon { %struct.omap_hwmod_omap4_prcm { i16 396, i16 0, i16 0, i16 0, i32 0, i8 0, i8 2, i8 0, i32 0 } }, ptr @.str.15, ptr null, ptr null, ptr @.str.2, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 64, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"wd_timer\00", align 1
@wd_timer_class = internal global %struct.omap_hwmod_class { ptr @.str.14, ptr @wd_timer_sysc, ptr @omap2_wd_timer_disable, ptr @omap2_wd_timer_reset, ptr null, ptr null }, align 4
@.str.15 = private unnamed_addr constant [12 x i8] c"sysclk18_ck\00", align 1
@wd_timer_sysc = internal global %struct.omap_hwmod_class_sysconfig { i32 0, i32 16, i32 20, i16 138, ptr @omap_hwmod_sysc_type1, i8 0, i8 0 }, align 4
@dm81xx_i2c1_hwmod = internal global %struct.omap_hwmod { ptr @.str.16, ptr @i2c_class, ptr null, ptr null, %union.anon { %struct.omap_hwmod_omap4_prcm { i16 356, i16 0, i16 0, i16 0, i32 0, i8 0, i8 2, i8 0, i32 0 } }, ptr @.str.10, ptr null, ptr null, ptr @.str.2, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"i2c1\00", align 1
@i2c_class = internal global %struct.omap_hwmod_class { ptr @.str.17, ptr @i2c_sysc, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.17 = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@i2c_sysc = internal global %struct.omap_hwmod_class_sysconfig { i32 0, i32 16, i32 144, i16 39, ptr @omap_hwmod_sysc_type1, i8 0, i8 7 }, align 4
@dm81xx_i2c2_hwmod = internal global %struct.omap_hwmod { ptr @.str.18, ptr @i2c_class, ptr null, ptr null, %union.anon { %struct.omap_hwmod_omap4_prcm { i16 360, i16 0, i16 0, i16 0, i32 0, i8 0, i8 2, i8 0, i32 0 } }, ptr @.str.10, ptr null, ptr null, ptr @.str.2, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.18 = private unnamed_addr constant [5 x i8] c"i2c2\00", align 1
@dm81xx_gpio1_hwmod = internal global %struct.omap_hwmod { ptr @.str.19, ptr @dm81xx_gpio_hwmod_class, ptr null, ptr null, %union.anon { %struct.omap_hwmod_omap4_prcm { i16 348, i16 0, i16 0, i16 0, i32 0, i8 0, i8 2, i8 0, i32 0 } }, ptr @.str.8, ptr null, ptr @gpio1_opt_clks, ptr @.str.2, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"gpio1\00", align 1
@dm81xx_gpio_hwmod_class = internal global %struct.omap_hwmod_class { ptr @.str.20, ptr @dm81xx_gpio_sysc, ptr null, ptr null, ptr null, ptr null }, align 4
@gpio1_opt_clks = internal global [1 x %struct.omap_hwmod_opt_clk] [%struct.omap_hwmod_opt_clk { ptr @.str.21, ptr @.str.15, ptr null }], align 4
@.str.20 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@dm81xx_gpio_sysc = internal global %struct.omap_hwmod_class_sysconfig { i32 0, i32 16, i32 276, i16 167, ptr @omap_hwmod_sysc_type1, i8 0, i8 15 }, align 4
@.str.21 = private unnamed_addr constant [6 x i8] c"dbclk\00", align 1
@dm81xx_gpio2_hwmod = internal global %struct.omap_hwmod { ptr @.str.22, ptr @dm81xx_gpio_hwmod_class, ptr null, ptr null, %union.anon { %struct.omap_hwmod_omap4_prcm { i16 352, i16 0, i16 0, i16 0, i32 0, i8 0, i8 2, i8 0, i32 0 } }, ptr @.str.8, ptr null, ptr @gpio2_opt_clks, ptr @.str.2, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.22 = private unnamed_addr constant [6 x i8] c"gpio2\00", align 1
@gpio2_opt_clks = internal global [1 x %struct.omap_hwmod_opt_clk] [%struct.omap_hwmod_opt_clk { ptr @.str.21, ptr @.str.15, ptr null }], align 4
@dm81xx_gpio3_hwmod = internal global %struct.omap_hwmod { ptr @.str.23, ptr @dm81xx_gpio_hwmod_class, ptr null, ptr null, %union.anon { %struct.omap_hwmod_omap4_prcm { i16 352, i16 0, i16 0, i16 0, i32 0, i8 0, i8 2, i8 0, i32 0 } }, ptr @.str.8, ptr null, ptr @gpio3_opt_clks, ptr @.str.2, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.23 = private unnamed_addr constant [6 x i8] c"gpio3\00", align 1
@gpio3_opt_clks = internal global [1 x %struct.omap_hwmod_opt_clk] [%struct.omap_hwmod_opt_clk { ptr @.str.21, ptr @.str.15, ptr null }], align 4
@dm81xx_gpio4_hwmod = internal global %struct.omap_hwmod { ptr @.str.24, ptr @dm81xx_gpio_hwmod_class, ptr null, ptr null, %union.anon { %struct.omap_hwmod_omap4_prcm { i16 352, i16 0, i16 0, i16 0, i32 0, i8 0, i8 2, i8 0, i32 0 } }, ptr @.str.8, ptr null, ptr @gpio4_opt_clks, ptr @.str.2, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.24 = private unnamed_addr constant [6 x i8] c"gpio4\00", align 1
@gpio4_opt_clks = internal global [1 x %struct.omap_hwmod_opt_clk] [%struct.omap_hwmod_opt_clk { ptr @.str.21, ptr @.str.15, ptr null }], align 4
@dm81xx_elm_hwmod = internal global %struct.omap_hwmod { ptr @.str.25, ptr @dm81xx_elm_hwmod_class, ptr null, ptr null, %union.anon zeroinitializer, ptr @.str.8, ptr null, ptr null, ptr @.str.2, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.25 = private unnamed_addr constant [4 x i8] c"elm\00", align 1
@dm81xx_elm_hwmod_class = internal global %struct.omap_hwmod_class { ptr @.str.25, ptr @dm81xx_elm_sysc, ptr null, ptr null, ptr null, ptr null }, align 4
@dm81xx_elm_sysc = internal global %struct.omap_hwmod_class_sysconfig { i32 0, i32 16, i32 20, i16 178, ptr @omap_hwmod_sysc_type1, i8 0, i8 7 }, align 4
@dm81xx_mcspi1_hwmod = internal global %struct.omap_hwmod { ptr @.str.26, ptr @dm816x_mcspi_class, ptr null, ptr null, %union.anon { %struct.omap_hwmod_omap4_prcm { i16 400, i16 0, i16 0, i16 0, i32 0, i8 0, i8 2, i8 0, i32 0 } }, ptr @.str.10, ptr null, ptr null, ptr @.str.2, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.26 = private unnamed_addr constant [7 x i8] c"mcspi1\00", align 1
@dm816x_mcspi_class = internal global %struct.omap_hwmod_class { ptr @.str.27, ptr @dm816x_mcspi_sysc, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.27 = private unnamed_addr constant [6 x i8] c"mcspi\00", align 1
@dm816x_mcspi_sysc = internal global %struct.omap_hwmod_class_sysconfig { i32 0, i32 272, i32 276, i16 183, ptr @omap_hwmod_sysc_type1, i8 0, i8 7 }, align 4
@dm81xx_mcspi2_hwmod = internal global %struct.omap_hwmod { ptr @.str.28, ptr @dm816x_mcspi_class, ptr null, ptr null, %union.anon { %struct.omap_hwmod_omap4_prcm { i16 400, i16 0, i16 0, i16 0, i32 0, i8 0, i8 2, i8 0, i32 0 } }, ptr @.str.10, ptr null, ptr null, ptr @.str.2, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.28 = private unnamed_addr constant [7 x i8] c"mcspi2\00", align 1
@dm81xx_mcspi3_hwmod = internal global %struct.omap_hwmod { ptr @.str.29, ptr @dm816x_mcspi_class, ptr null, ptr null, %union.anon { %struct.omap_hwmod_omap4_prcm { i16 400, i16 0, i16 0, i16 0, i32 0, i8 0, i8 2, i8 0, i32 0 } }, ptr @.str.10, ptr null, ptr null, ptr @.str.2, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.29 = private unnamed_addr constant [7 x i8] c"mcspi3\00", align 1
@dm81xx_mcspi4_hwmod = internal global %struct.omap_hwmod { ptr @.str.30, ptr @dm816x_mcspi_class, ptr null, ptr null, %union.anon { %struct.omap_hwmod_omap4_prcm { i16 400, i16 0, i16 0, i16 0, i32 0, i8 0, i8 2, i8 0, i32 0 } }, ptr @.str.10, ptr null, ptr null, ptr @.str.2, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.30 = private unnamed_addr constant [7 x i8] c"mcspi4\00", align 1
@dm814x_mmc1_hwmod = internal global %struct.omap_hwmod { ptr @.str.31, ptr @dm81xx_mmc_class, ptr null, ptr null, %union.anon { %struct.omap_hwmod_omap4_prcm { i16 540, i16 0, i16 0, i16 0, i32 0, i8 0, i8 2, i8 0, i32 0 } }, ptr @.str.32, ptr null, ptr @dm81xx_mmc_opt_clks, ptr @.str.2, ptr null, %struct.list_head zeroinitializer, ptr @mmc_dev_attr, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.31 = private unnamed_addr constant [5 x i8] c"mmc1\00", align 1
@dm81xx_mmc_class = internal global %struct.omap_hwmod_class { ptr @.str.33, ptr @dm81xx_mmc_sysc, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.32 = private unnamed_addr constant [11 x i8] c"sysclk8_ck\00", align 1
@dm81xx_mmc_opt_clks = internal global [1 x %struct.omap_hwmod_opt_clk] [%struct.omap_hwmod_opt_clk { ptr @.str.34, ptr @.str.15, ptr null }], align 4
@mmc_dev_attr = internal global %struct.omap_hsmmc_dev_attr zeroinitializer, align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"mmc\00", align 1
@dm81xx_mmc_sysc = internal global %struct.omap_hwmod_class_sysconfig { i32 0, i32 272, i32 276, i16 183, ptr @omap_hwmod_sysc_type1, i8 0, i8 7 }, align 4
@.str.34 = private unnamed_addr constant [5 x i8] c"dbck\00", align 1
@dm814x_mmc2_hwmod = internal global %struct.omap_hwmod { ptr @.str.35, ptr @dm81xx_mmc_class, ptr null, ptr null, %union.anon { %struct.omap_hwmod_omap4_prcm { i16 544, i16 0, i16 0, i16 0, i32 0, i8 0, i8 2, i8 0, i32 0 } }, ptr @.str.32, ptr null, ptr @dm81xx_mmc_opt_clks, ptr @.str.2, ptr null, %struct.list_head zeroinitializer, ptr @mmc_dev_attr, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.35 = private unnamed_addr constant [5 x i8] c"mmc2\00", align 1
@ti81xx_rtc_hwmod = internal global %struct.omap_hwmod { ptr @.str.36, ptr @ti81xx_rtc_hwmod_class, ptr null, ptr null, %union.anon { %struct.omap_hwmod_omap4_prcm { i16 496, i16 0, i16 0, i16 0, i32 0, i8 0, i8 2, i8 0, i32 0 } }, ptr @.str.15, ptr null, ptr null, ptr @.str.2, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 64, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.36 = private unnamed_addr constant [4 x i8] c"rtc\00", align 1
@ti81xx_rtc_hwmod_class = internal global %struct.omap_hwmod_class { ptr @.str.36, ptr @ti81xx_rtc_sysc, ptr null, ptr null, ptr null, ptr null }, align 4
@ti81xx_rtc_sysc = internal global %struct.omap_hwmod_class_sysconfig { i32 116, i32 120, i32 0, i16 32, ptr @omap_hwmod_sysc_type3, i8 0, i8 15 }, align 4
@omap_hwmod_sysc_type3 = external dso_local global %struct.sysc_regbits, align 1
@dm81xx_gpmc_hwmod = internal global %struct.omap_hwmod { ptr @.str.37, ptr @dm81xx_gpmc_hwmod_class, ptr null, ptr null, %union.anon { %struct.omap_hwmod_omap4_prcm { i16 464, i16 0, i16 0, i16 0, i32 0, i8 0, i8 2, i8 0, i32 0 } }, ptr @.str.8, ptr null, ptr null, ptr @.str.2, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.37 = private unnamed_addr constant [5 x i8] c"gpmc\00", align 1
@dm81xx_gpmc_hwmod_class = internal global %struct.omap_hwmod_class { ptr @.str.37, ptr @dm81xx_gpmc_sysc, ptr null, ptr null, ptr null, ptr null }, align 4
@dm81xx_gpmc_sysc = internal global %struct.omap_hwmod_class_sysconfig { i32 0, i32 16, i32 20, i16 163, ptr @omap_hwmod_sysc_type1, i8 0, i8 7 }, align 4
@dm81xx_default_l3_slow_hwmod = internal global %struct.omap_hwmod { ptr @.str.38, ptr @l3_hwmod_class, ptr null, ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr @.str.39, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 64, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@dm814x_usbss_hwmod = internal global %struct.omap_hwmod { ptr @.str.40, ptr @dm81xx_usbotg_class, ptr null, ptr null, %union.anon { %struct.omap_hwmod_omap4_prcm { i16 88, i16 0, i16 0, i16 0, i32 0, i8 0, i8 2, i8 0, i32 0 } }, ptr @.str.41, ptr null, ptr null, ptr @.str.39, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.38 = private unnamed_addr constant [16 x i8] c"default_l3_slow\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"default_l3_slow_clkdm\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"usb_otg_hs\00", align 1
@dm81xx_usbotg_class = internal global %struct.omap_hwmod_class { ptr @.str.42, ptr @dm81xx_usbhsotg_sysc, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.41 = private unnamed_addr constant [16 x i8] c"pll260dcoclkldo\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"usbotg\00", align 1
@dm81xx_usbhsotg_sysc = internal global %struct.omap_hwmod_class_sysconfig { i32 0, i32 16, i32 0, i16 98, ptr @omap_hwmod_sysc_type2, i8 2, i8 84 }, align 4
@omap_hwmod_sysc_type2 = external dso_local global %struct.sysc_regbits, align 1
@dm814x_mmc3_hwmod = internal global %struct.omap_hwmod { ptr @.str.44, ptr @dm81xx_mmc_class, ptr null, ptr null, %union.anon { %struct.omap_hwmod_omap4_prcm { i16 548, i16 0, i16 0, i16 0, i32 0, i8 0, i8 2, i8 0, i32 0 } }, ptr @.str.32, ptr null, ptr @dm81xx_mmc_opt_clks, ptr @.str.5, ptr null, %struct.list_head zeroinitializer, ptr @mmc_dev_attr, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.43 = private unnamed_addr constant [11 x i8] c"sysclk4_ck\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"mmc3\00", align 1
@dm816x_mpu__alwon_l3_slow = internal global %struct.omap_hwmod_ocp_if { ptr @dm816x_mpu_hwmod, ptr @dm81xx_alwon_l3_slow_hwmod, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@dm816x_mpu__alwon_l3_med = internal global %struct.omap_hwmod_ocp_if { ptr @dm816x_mpu_hwmod, ptr @dm81xx_alwon_l3_med_hwmod, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@dm816x_l4_ls__mmc1 = internal global %struct.omap_hwmod_ocp_if { ptr @dm81xx_l4_ls_hwmod, ptr @dm816x_mmc1_hwmod, ptr null, ptr @.str.8, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 2, i8 0 }, align 4
@dm816x_l4_ls__timer3 = internal global %struct.omap_hwmod_ocp_if { ptr @dm81xx_l4_ls_hwmod, ptr @dm816x_timer3_hwmod, ptr null, ptr @.str.8, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@dm816x_l4_ls__timer4 = internal global %struct.omap_hwmod_ocp_if { ptr @dm81xx_l4_ls_hwmod, ptr @dm816x_timer4_hwmod, ptr null, ptr @.str.8, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@dm816x_l4_ls__timer5 = internal global %struct.omap_hwmod_ocp_if { ptr @dm81xx_l4_ls_hwmod, ptr @dm816x_timer5_hwmod, ptr null, ptr @.str.8, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@dm816x_l4_ls__timer6 = internal global %struct.omap_hwmod_ocp_if { ptr @dm81xx_l4_ls_hwmod, ptr @dm816x_timer6_hwmod, ptr null, ptr @.str.8, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@dm816x_l4_ls__timer7 = internal global %struct.omap_hwmod_ocp_if { ptr @dm81xx_l4_ls_hwmod, ptr @dm816x_timer7_hwmod, ptr null, ptr @.str.8, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@dm81xx_l4_ls__mailbox = internal global %struct.omap_hwmod_ocp_if { ptr @dm81xx_l4_ls_hwmod, ptr @dm81xx_mailbox_hwmod, ptr null, ptr @.str.8, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@dm81xx_l4_ls__spinbox = internal global %struct.omap_hwmod_ocp_if { ptr @dm81xx_l4_ls_hwmod, ptr @dm81xx_spinbox_hwmod, ptr null, ptr @.str.8, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@dm81xx_l4_hs__emac0 = internal global %struct.omap_hwmod_ocp_if { ptr @dm81xx_l4_hs_hwmod, ptr @dm816x_emac0_hwmod, ptr null, ptr @.str.59, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@dm81xx_emac0__mdio = internal global %struct.omap_hwmod_ocp_if { ptr @dm81xx_l4_hs_hwmod, ptr @dm81xx_emac0_mdio_hwmod, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@dm816x_l4_hs__emac1 = internal global %struct.omap_hwmod_ocp_if { ptr @dm81xx_l4_hs_hwmod, ptr @dm816x_emac1_hwmod, ptr null, ptr @.str.59, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@dm81xx_l4_hs__sata = internal global %struct.omap_hwmod_ocp_if { ptr @dm81xx_l4_hs_hwmod, ptr @dm81xx_sata_hwmod, ptr null, ptr @.str.59, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@dm816x_default_l3_slow__usbss = internal global %struct.omap_hwmod_ocp_if { ptr @dm81xx_default_l3_slow_hwmod, ptr @dm816x_usbss_hwmod, ptr null, ptr @.str.8, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@dm816x_mpu_hwmod = internal global %struct.omap_hwmod { ptr @.str, ptr @mpu_hwmod_class, ptr null, ptr null, %union.anon { %struct.omap_hwmod_omap4_prcm { i16 476, i16 0, i16 0, i16 0, i32 0, i8 0, i8 2, i8 0, i32 0 } }, ptr @.str.1, ptr null, ptr null, ptr @.str.45, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 8, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.45 = private unnamed_addr constant [16 x i8] c"alwon_mpu_clkdm\00", align 1
@dm816x_mmc1_hwmod = internal global %struct.omap_hwmod { ptr @.str.31, ptr @dm81xx_mmc_class, ptr null, ptr null, %union.anon { %struct.omap_hwmod_omap4_prcm { i16 432, i16 0, i16 0, i16 0, i32 0, i8 0, i8 2, i8 0, i32 0 } }, ptr @.str.10, ptr null, ptr @dm81xx_mmc_opt_clks, ptr @.str.2, ptr null, %struct.list_head zeroinitializer, ptr @mmc_dev_attr, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@dm816x_timer3_hwmod = internal global %struct.omap_hwmod { ptr @.str.46, ptr @dm816x_timer_hwmod_class, ptr null, ptr null, %union.anon { %struct.omap_hwmod_omap4_prcm { i16 376, i16 0, i16 0, i16 0, i32 0, i8 0, i8 2, i8 0, i32 0 } }, ptr @.str.47, ptr null, ptr null, ptr @.str.2, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.46 = private unnamed_addr constant [7 x i8] c"timer3\00", align 1
@dm816x_timer_hwmod_class = internal global %struct.omap_hwmod_class { ptr @.str.48, ptr @dm816x_timer_sysc, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.47 = private unnamed_addr constant [11 x i8] c"timer3_fck\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"timer\00", align 1
@dm816x_timer_sysc = internal global %struct.omap_hwmod_class_sysconfig { i32 0, i32 16, i32 20, i16 34, ptr @omap_hwmod_sysc_type2, i8 0, i8 15 }, align 4
@dm816x_timer4_hwmod = internal global %struct.omap_hwmod { ptr @.str.49, ptr @dm816x_timer_hwmod_class, ptr null, ptr null, %union.anon { %struct.omap_hwmod_omap4_prcm { i16 380, i16 0, i16 0, i16 0, i32 0, i8 0, i8 2, i8 0, i32 0 } }, ptr @.str.50, ptr null, ptr null, ptr @.str.2, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.49 = private unnamed_addr constant [7 x i8] c"timer4\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"timer4_fck\00", align 1
@dm816x_timer5_hwmod = internal global %struct.omap_hwmod { ptr @.str.51, ptr @dm816x_timer_hwmod_class, ptr null, ptr null, %union.anon { %struct.omap_hwmod_omap4_prcm { i16 384, i16 0, i16 0, i16 0, i32 0, i8 0, i8 2, i8 0, i32 0 } }, ptr @.str.52, ptr null, ptr null, ptr @.str.2, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.51 = private unnamed_addr constant [7 x i8] c"timer5\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"timer5_fck\00", align 1
@dm816x_timer6_hwmod = internal global %struct.omap_hwmod { ptr @.str.53, ptr @dm816x_timer_hwmod_class, ptr null, ptr null, %union.anon { %struct.omap_hwmod_omap4_prcm { i16 388, i16 0, i16 0, i16 0, i32 0, i8 0, i8 2, i8 0, i32 0 } }, ptr @.str.54, ptr null, ptr null, ptr @.str.2, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.53 = private unnamed_addr constant [7 x i8] c"timer6\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"timer6_fck\00", align 1
@dm816x_timer7_hwmod = internal global %struct.omap_hwmod { ptr @.str.55, ptr @dm816x_timer_hwmod_class, ptr null, ptr null, %union.anon { %struct.omap_hwmod_omap4_prcm { i16 392, i16 0, i16 0, i16 0, i32 0, i8 0, i8 2, i8 0, i32 0 } }, ptr @.str.56, ptr null, ptr null, ptr @.str.2, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.55 = private unnamed_addr constant [7 x i8] c"timer7\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"timer7_fck\00", align 1
@dm81xx_mailbox_hwmod = internal global %struct.omap_hwmod { ptr @.str.57, ptr @dm81xx_mailbox_hwmod_class, ptr null, ptr null, %union.anon { %struct.omap_hwmod_omap4_prcm { i16 404, i16 0, i16 0, i16 0, i32 0, i8 0, i8 2, i8 0, i32 0 } }, ptr @.str.8, ptr null, ptr null, ptr @.str.2, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.57 = private unnamed_addr constant [8 x i8] c"mailbox\00", align 1
@dm81xx_mailbox_hwmod_class = internal global %struct.omap_hwmod_class { ptr @.str.57, ptr @dm81xx_mailbox_sysc, ptr null, ptr null, ptr null, ptr null }, align 4
@dm81xx_mailbox_sysc = internal global %struct.omap_hwmod_class_sysconfig { i32 0, i32 16, i32 20, i16 51, ptr @omap_hwmod_sysc_type1, i8 0, i8 7 }, align 4
@dm81xx_spinbox_hwmod = internal global %struct.omap_hwmod { ptr @.str.58, ptr @dm81xx_spinbox_hwmod_class, ptr null, ptr null, %union.anon { %struct.omap_hwmod_omap4_prcm { i16 408, i16 0, i16 0, i16 0, i32 0, i8 0, i8 2, i8 0, i32 0 } }, ptr @.str.8, ptr null, ptr null, ptr @.str.2, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.58 = private unnamed_addr constant [8 x i8] c"spinbox\00", align 1
@dm81xx_spinbox_hwmod_class = internal global %struct.omap_hwmod_class { ptr @.str.58, ptr @dm81xx_spinbox_sysc, ptr null, ptr null, ptr null, ptr null }, align 4
@dm81xx_spinbox_sysc = internal global %struct.omap_hwmod_class_sysconfig { i32 0, i32 16, i32 20, i16 51, ptr @omap_hwmod_sysc_type1, i8 0, i8 7 }, align 4
@dm816x_emac0_hwmod = internal global %struct.omap_hwmod { ptr @.str.60, ptr @dm816x_emac_hwmod_class, ptr null, ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr @.str.61, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 64, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.59 = private unnamed_addr constant [11 x i8] c"sysclk5_ck\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"emac0\00", align 1
@dm816x_emac_hwmod_class = internal global %struct.omap_hwmod_class { ptr @.str.62, ptr @dm816x_emac_sysc, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.61 = private unnamed_addr constant [21 x i8] c"alwon_ethernet_clkdm\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"emac\00", align 1
@dm816x_emac_sysc = internal global %struct.omap_hwmod_class_sysconfig { i32 0, i32 4, i32 0, i16 2, ptr @omap_hwmod_sysc_type2, i8 0, i8 0 }, align 4
@dm81xx_emac0_mdio_hwmod = internal global %struct.omap_hwmod { ptr @.str.63, ptr @dm81xx_mdio_hwmod_class, ptr null, ptr null, %union.anon { %struct.omap_hwmod_omap4_prcm { i16 468, i16 0, i16 0, i16 0, i32 0, i8 0, i8 2, i8 0, i32 0 } }, ptr @.str.64, ptr null, ptr null, ptr @.str.61, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 64, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.63 = private unnamed_addr constant [13 x i8] c"davinci_mdio\00", align 1
@dm81xx_mdio_hwmod_class = internal global %struct.omap_hwmod_class { ptr @.str.63, ptr @dm816x_emac_sysc, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.64 = private unnamed_addr constant [12 x i8] c"sysclk24_ck\00", align 1
@dm816x_emac1_hwmod = internal global %struct.omap_hwmod { ptr @.str.65, ptr @dm816x_emac_hwmod_class, ptr null, ptr null, %union.anon { %struct.omap_hwmod_omap4_prcm { i16 472, i16 0, i16 0, i16 0, i32 0, i8 0, i8 2, i8 0, i32 0 } }, ptr @.str.64, ptr null, ptr null, ptr @.str.61, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 64, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.65 = private unnamed_addr constant [6 x i8] c"emac1\00", align 1
@dm81xx_sata_hwmod = internal global %struct.omap_hwmod { ptr @.str.66, ptr @dm81xx_sata_hwmod_class, ptr null, ptr null, %union.anon { %struct.omap_hwmod_omap4_prcm { i16 96, i16 0, i16 0, i16 0, i32 0, i8 0, i8 2, i8 0, i32 0 } }, ptr null, ptr null, ptr null, ptr @.str.67, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 64, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.66 = private unnamed_addr constant [5 x i8] c"sata\00", align 1
@dm81xx_sata_hwmod_class = internal global %struct.omap_hwmod_class { ptr @.str.66, ptr @dm81xx_sata_sysc, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.67 = private unnamed_addr constant [14 x i8] c"default_clkdm\00", align 1
@dm81xx_sata_sysc = internal global %struct.omap_hwmod_class_sysconfig { i32 252, i32 4352, i32 0, i16 32, ptr @omap_hwmod_sysc_type3, i8 0, i8 1 }, align 4
@dm816x_usbss_hwmod = internal global %struct.omap_hwmod { ptr @.str.40, ptr @dm81xx_usbotg_class, ptr null, ptr null, %union.anon { %struct.omap_hwmod_omap4_prcm { i16 88, i16 0, i16 0, i16 0, i32 0, i8 0, i8 2, i8 0, i32 0 } }, ptr @.str.8, ptr null, ptr null, ptr @.str.39, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @dm814x_hwmod_init() local_unnamed_addr #0 section ".init.text" {
  tail call void @omap_hwmod_init() #3
  %1 = tail call i32 @omap_hwmod_register_links(ptr noundef nonnull @dm814x_hwmod_ocp_ifs) #3
  ret i32 %1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @omap_hwmod_init() local_unnamed_addr #1 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @omap_hwmod_register_links(ptr noundef) local_unnamed_addr #1 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @dm816x_hwmod_init() local_unnamed_addr #0 section ".init.text" {
  tail call void @omap_hwmod_init() #3
  %1 = tail call i32 @omap_hwmod_register_links(ptr noundef nonnull @dm816x_hwmod_ocp_ifs) #3
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_wd_timer_disable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_wd_timer_reset(ptr noundef) #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind }

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
