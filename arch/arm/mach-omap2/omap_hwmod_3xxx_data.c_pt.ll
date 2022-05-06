; ModuleID = '/llk/IR/arch/arm/mach-omap2/omap_hwmod_3xxx_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/omap_hwmod_3xxx_data.c"
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
%struct.omap_hwmod_opt_clk = type { ptr, ptr, ptr }
%struct.omap_hwmod_omap2_prcm = type { i16, i8, i8 }
%struct.omap_hwmod_class_sysconfig = type { i32, i32, i32, i16, ptr, i8, i8 }
%struct.sysc_regbits = type opaque
%struct.omap_hwmod_rst_info = type { ptr, i8, i8 }
%struct.omap_smartreflex_dev_attr = type { ptr }
%struct.omap_hsmmc_dev_attr = type { i8 }
%struct.omap_dss_dispc_dev_attr = type { i8, i8 }

@omap3xxx_hwmod_ocp_ifs = internal global [42 x ptr] [ptr @omap3xxx_l3_main__l4_core, ptr @omap3xxx_l3_main__l4_per, ptr @omap3xxx_mpu__l3_main, ptr @omap3xxx_l3_main__l4_debugss, ptr @omap3xxx_l4_core__l4_wkup, ptr @omap3xxx_l4_core__mmc3, ptr @omap3_l4_core__uart1, ptr @omap3_l4_core__uart2, ptr @omap3_l4_per__uart3, ptr @omap3_l4_core__i2c1, ptr @omap3_l4_core__i2c2, ptr @omap3_l4_core__i2c3, ptr @omap3xxx_l4_wkup__l4_sec, ptr @omap3xxx_l4_per__timer3, ptr @omap3xxx_l4_per__timer4, ptr @omap3xxx_l4_per__timer5, ptr @omap3xxx_l4_per__timer6, ptr @omap3xxx_l4_per__timer7, ptr @omap3xxx_l4_per__timer8, ptr @omap3xxx_l4_per__timer9, ptr @omap3xxx_l4_core__timer10, ptr @omap3xxx_l4_core__timer11, ptr @omap3xxx_l4_wkup__wd_timer2, ptr @omap3xxx_l4_wkup__gpio1, ptr @omap3xxx_l4_per__gpio2, ptr @omap3xxx_l4_per__gpio3, ptr @omap3xxx_l4_per__gpio4, ptr @omap3xxx_l4_per__gpio5, ptr @omap3xxx_l4_per__gpio6, ptr @omap3xxx_l4_core__mcbsp1, ptr @omap3xxx_l4_per__mcbsp2, ptr @omap3xxx_l4_per__mcbsp3, ptr @omap3xxx_l4_per__mcbsp4, ptr @omap3xxx_l4_core__mcbsp5, ptr @omap3xxx_l4_per__mcbsp2_sidetone, ptr @omap3xxx_l4_per__mcbsp3_sidetone, ptr @omap34xx_l4_core__mcspi1, ptr @omap34xx_l4_core__mcspi2, ptr @omap34xx_l4_core__mcspi3, ptr @omap34xx_l4_core__mcspi4, ptr @omap3xxx_l3_main__gpmc, ptr null], section ".init.data", align 4
@omap34xx_hwmod_ocp_ifs = internal global [10 x ptr] [ptr @omap3xxx_l3__iva, ptr @omap34xx_l4_core__sr1, ptr @omap34xx_l4_core__sr2, ptr @omap3xxx_l4_core__mailbox, ptr @omap3xxx_l4_core__hdq1w, ptr @omap3xxx_sad2d__l3, ptr @omap3xxx_l4_core__mmu_isp, ptr @omap3xxx_l3_main__mmu_iva, ptr @omap3xxx_l4_core__ssi, ptr null], section ".init.data", align 4
@omap34xx_sham_hwmod_ocp_ifs = internal global [2 x ptr] [ptr @omap3xxx_l4_core__sham, ptr null], section ".init.data", align 4
@am35xx_hwmod_ocp_ifs = internal global [16 x ptr] [ptr @omap3xxx_dss__l3, ptr @omap3xxx_l4_core__dss, ptr @am35xx_usbhsotg__l3, ptr @am35xx_l4_core__usbhsotg, ptr @am35xx_l4_core__uart4, ptr @omap3xxx_usb_host_hs__l3_main_2, ptr @omap3xxx_l4_core__usb_host_hs, ptr @omap3xxx_l4_core__usb_tll_hs, ptr @omap3xxx_l4_core__es3plus_mmc1, ptr @omap3xxx_l4_core__es3plus_mmc2, ptr @omap3xxx_l4_core__hdq1w, ptr @am35xx_mdio__l3, ptr @am35xx_l4_core__mdio, ptr @am35xx_emac__l3, ptr @am35xx_l4_core__emac, ptr null], section ".init.data", align 4
@am35xx_sham_hwmod_ocp_ifs = internal global [1 x ptr] zeroinitializer, section ".init.data", align 4
@omap36xx_hwmod_ocp_ifs = internal global [20 x ptr] [ptr @omap3xxx_l3__iva, ptr @omap36xx_l4_per__uart4, ptr @omap3xxx_dss__l3, ptr @omap3xxx_l4_core__dss, ptr @omap36xx_l4_core__sr1, ptr @omap36xx_l4_core__sr2, ptr @omap3xxx_usbhsotg__l3, ptr @omap3xxx_l4_core__usbhsotg, ptr @omap3xxx_l4_core__mailbox, ptr @omap3xxx_usb_host_hs__l3_main_2, ptr @omap3xxx_l4_core__usb_host_hs, ptr @omap3xxx_l4_core__usb_tll_hs, ptr @omap3xxx_l4_core__es3plus_mmc1, ptr @omap3xxx_l4_core__es3plus_mmc2, ptr @omap3xxx_l4_core__hdq1w, ptr @omap3xxx_sad2d__l3, ptr @omap3xxx_l4_core__mmu_isp, ptr @omap3xxx_l3_main__mmu_iva, ptr @omap3xxx_l4_core__ssi, ptr null], section ".init.data", align 4
@omap36xx_sham_hwmod_ocp_ifs = internal global [2 x ptr] [ptr @omap3xxx_l4_core__sham, ptr null], section ".init.data", align 4
@.str = private unnamed_addr constant [43 x i8] c"arch/arm/mach-omap2/omap_hwmod_3xxx_data.c\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"OMAP3 hwmod family init: unknown chip type\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ocp\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"sham\00", align 1
@omap3430es1_hwmod_ocp_ifs = internal global [3 x ptr] [ptr @omap3430es1_dss__l3, ptr @omap3430es1_l4_core__dss, ptr null], section ".init.data", align 4
@omap3430es2plus_hwmod_ocp_ifs = internal global [8 x ptr] [ptr @omap3xxx_dss__l3, ptr @omap3xxx_l4_core__dss, ptr @omap3xxx_usbhsotg__l3, ptr @omap3xxx_l4_core__usbhsotg, ptr @omap3xxx_usb_host_hs__l3_main_2, ptr @omap3xxx_l4_core__usb_host_hs, ptr @omap3xxx_l4_core__usb_tll_hs, ptr null], section ".init.data", align 4
@omap3430_pre_es3_hwmod_ocp_ifs = internal global [3 x ptr] [ptr @omap3xxx_l4_core__pre_es3_mmc1, ptr @omap3xxx_l4_core__pre_es3_mmc2, ptr null], section ".init.data", align 4
@omap3430_es3plus_hwmod_ocp_ifs = internal global [3 x ptr] [ptr @omap3xxx_l4_core__es3plus_mmc1, ptr @omap3xxx_l4_core__es3plus_mmc2, ptr null], section ".init.data", align 4
@omap3xxx_dss_hwmod_ocp_ifs = internal global [5 x ptr] [ptr @omap3xxx_l4_core__dss_dispc, ptr @omap3xxx_l4_core__dss_dsi1, ptr @omap3xxx_l4_core__dss_rfbi, ptr @omap3xxx_l4_core__dss_venc, ptr null], section ".init.data", align 4
@omap3xxx_l3_main__l4_core = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l3_main_hwmod, ptr @omap3xxx_l4_core_hwmod, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3xxx_l3_main__l4_per = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l3_main_hwmod, ptr @omap3xxx_l4_per_hwmod, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3xxx_mpu__l3_main = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_mpu_hwmod, ptr @omap3xxx_l3_main_hwmod, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@omap3xxx_l3_main__l4_debugss = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l3_main_hwmod, ptr @omap3xxx_debugss_hwmod, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@omap3xxx_l4_core__l4_wkup = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @omap3xxx_l4_wkup_hwmod, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3xxx_l4_core__mmc3 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @omap3xxx_mmc3_hwmod, ptr null, ptr @.str.13, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 2, i8 0 }, align 4
@omap3_l4_core__uart1 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @omap3xxx_uart1_hwmod, ptr null, ptr @.str.20, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3_l4_core__uart2 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @omap3xxx_uart2_hwmod, ptr null, ptr @.str.24, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3_l4_per__uart3 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_per_hwmod, ptr @omap3xxx_uart3_hwmod, ptr null, ptr @.str.28, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3_l4_core__i2c1 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @omap3xxx_i2c1_hwmod, ptr null, ptr @.str.32, ptr null, %struct.list_head zeroinitializer, %union.anon.2 { %struct.omap_hwmod_omap2_firewall { i8 0, i8 21, i8 7, i8 2 } }, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3_l4_core__i2c2 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @omap3xxx_i2c2_hwmod, ptr null, ptr @.str.37, ptr null, %struct.list_head zeroinitializer, %union.anon.2 { %struct.omap_hwmod_omap2_firewall { i8 0, i8 23, i8 7, i8 2 } }, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3_l4_core__i2c3 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @omap3xxx_i2c3_hwmod, ptr null, ptr @.str.41, ptr null, %struct.list_head zeroinitializer, %union.anon.2 { %struct.omap_hwmod_omap2_firewall { i8 0, i8 73, i8 7, i8 2 } }, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3xxx_l4_wkup__l4_sec = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_wkup_hwmod, ptr @omap3xxx_l4_sec_hwmod, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3xxx_l4_per__timer3 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_per_hwmod, ptr @omap3xxx_timer3_hwmod, ptr null, ptr @.str.46, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3xxx_l4_per__timer4 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_per_hwmod, ptr @omap3xxx_timer4_hwmod, ptr null, ptr @.str.51, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3xxx_l4_per__timer5 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_per_hwmod, ptr @omap3xxx_timer5_hwmod, ptr null, ptr @.str.55, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3xxx_l4_per__timer6 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_per_hwmod, ptr @omap3xxx_timer6_hwmod, ptr null, ptr @.str.59, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3xxx_l4_per__timer7 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_per_hwmod, ptr @omap3xxx_timer7_hwmod, ptr null, ptr @.str.63, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3xxx_l4_per__timer8 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_per_hwmod, ptr @omap3xxx_timer8_hwmod, ptr null, ptr @.str.67, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3xxx_l4_per__timer9 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_per_hwmod, ptr @omap3xxx_timer9_hwmod, ptr null, ptr @.str.71, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3xxx_l4_core__timer10 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @omap3xxx_timer10_hwmod, ptr null, ptr @.str.75, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3xxx_l4_core__timer11 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @omap3xxx_timer11_hwmod, ptr null, ptr @.str.79, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3xxx_l4_wkup__wd_timer2 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_wkup_hwmod, ptr @omap3xxx_wd_timer2_hwmod, ptr null, ptr @.str.83, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3xxx_l4_wkup__gpio1 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_wkup_hwmod, ptr @omap3xxx_gpio1_hwmod, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3xxx_l4_per__gpio2 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_per_hwmod, ptr @omap3xxx_gpio2_hwmod, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3xxx_l4_per__gpio3 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_per_hwmod, ptr @omap3xxx_gpio3_hwmod, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3xxx_l4_per__gpio4 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_per_hwmod, ptr @omap3xxx_gpio4_hwmod, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3xxx_l4_per__gpio5 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_per_hwmod, ptr @omap3xxx_gpio5_hwmod, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3xxx_l4_per__gpio6 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_per_hwmod, ptr @omap3xxx_gpio6_hwmod, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3xxx_l4_core__mcbsp1 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @omap3xxx_mcbsp1_hwmod, ptr null, ptr @.str.114, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3xxx_l4_per__mcbsp2 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_per_hwmod, ptr @omap3xxx_mcbsp2_hwmod, ptr null, ptr @.str.123, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3xxx_l4_per__mcbsp3 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_per_hwmod, ptr @omap3xxx_mcbsp3_hwmod, ptr null, ptr @.str.128, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3xxx_l4_per__mcbsp4 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_per_hwmod, ptr @omap3xxx_mcbsp4_hwmod, ptr null, ptr @.str.132, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3xxx_l4_core__mcbsp5 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @omap3xxx_mcbsp5_hwmod, ptr null, ptr @.str.136, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3xxx_l4_per__mcbsp2_sidetone = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_per_hwmod, ptr @omap3xxx_mcbsp2_sidetone_hwmod, ptr null, ptr @.str.123, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@omap3xxx_l4_per__mcbsp3_sidetone = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_per_hwmod, ptr @omap3xxx_mcbsp3_sidetone_hwmod, ptr null, ptr @.str.128, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@omap34xx_l4_core__mcspi1 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @omap34xx_mcspi1, ptr null, ptr @.str.143, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap34xx_l4_core__mcspi2 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @omap34xx_mcspi2, ptr null, ptr @.str.148, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap34xx_l4_core__mcspi3 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @omap34xx_mcspi3, ptr null, ptr @.str.152, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap34xx_l4_core__mcspi4 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @omap34xx_mcspi4, ptr null, ptr @.str.156, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3xxx_l3_main__gpmc = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l3_main_hwmod, ptr @omap3xxx_gpmc_hwmod, ptr null, ptr @.str.160, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3xxx_l3_main_hwmod = internal global %struct.omap_hwmod { ptr @.str.4, ptr @l3_hwmod_class, ptr null, ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 64, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@omap3xxx_l4_core_hwmod = internal global %struct.omap_hwmod { ptr @.str.5, ptr @l4_hwmod_class, ptr null, ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 64, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"l3_main\00", align 1
@l3_hwmod_class = external dso_local global %struct.omap_hwmod_class, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"l4_core\00", align 1
@l4_hwmod_class = external dso_local global %struct.omap_hwmod_class, align 4
@omap3xxx_l4_per_hwmod = internal global %struct.omap_hwmod { ptr @.str.6, ptr @l4_hwmod_class, ptr null, ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 64, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"l4_per\00", align 1
@omap3xxx_mpu_hwmod = internal global %struct.omap_hwmod { ptr @.str.7, ptr @mpu_hwmod_class, ptr null, ptr null, %union.anon zeroinitializer, ptr @.str.8, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"mpu\00", align 1
@mpu_hwmod_class = external dso_local global %struct.omap_hwmod_class, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"arm_fck\00", align 1
@omap3xxx_debugss_hwmod = internal global %struct.omap_hwmod { ptr @.str.9, ptr @omap3xxx_debugss_hwmod_class, ptr null, ptr null, %union.anon zeroinitializer, ptr @.str.10, ptr null, ptr null, ptr @.str.11, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 64, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"debugss\00", align 1
@omap3xxx_debugss_hwmod_class = internal global %struct.omap_hwmod_class { ptr @.str.9, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"emu_src_ck\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"emu_clkdm\00", align 1
@omap3xxx_l4_wkup_hwmod = internal global %struct.omap_hwmod { ptr @.str.12, ptr @l4_hwmod_class, ptr null, ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 64, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"l4_wkup\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"mmchs3_ick\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"mmc3\00", align 1
@omap34xx_mmc_class = internal global %struct.omap_hwmod_class { ptr @.str.17, ptr @omap34xx_mmc_sysc, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.15 = private unnamed_addr constant [11 x i8] c"mmchs3_fck\00", align 1
@omap34xx_mmc3_opt_clks = internal global [1 x %struct.omap_hwmod_opt_clk] [%struct.omap_hwmod_opt_clk { ptr @.str.18, ptr @.str.19, ptr null }], align 4
@omap3xxx_mmc3_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.14, ptr @omap34xx_mmc_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 512, i8 1, i8 30 }, [16 x i8] undef }, ptr @.str.15, ptr null, ptr @omap34xx_mmc3_opt_clks, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.17 = private unnamed_addr constant [4 x i8] c"mmc\00", align 1
@omap34xx_mmc_sysc = internal global %struct.omap_hwmod_class_sysconfig { i32 508, i32 16, i32 20, i16 183, ptr @omap_hwmod_sysc_type1, i8 0, i8 7 }, align 4
@omap_hwmod_sysc_type1 = external dso_local global %struct.sysc_regbits, align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"dbck\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"omap_32k_fck\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"uart1_ick\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"uart1\00", align 1
@omap2_uart_class = external dso_local global %struct.omap_hwmod_class, align 4
@.str.22 = private unnamed_addr constant [10 x i8] c"uart1_fck\00", align 1
@omap3xxx_uart1_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.21, ptr @omap2_uart_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 512, i8 1, i8 13 }, [16 x i8] undef }, ptr @.str.22, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.24 = private unnamed_addr constant [10 x i8] c"uart2_ick\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"uart2\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"uart2_fck\00", align 1
@omap3xxx_uart2_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.25, ptr @omap2_uart_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 512, i8 1, i8 14 }, [16 x i8] undef }, ptr @.str.26, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.28 = private unnamed_addr constant [10 x i8] c"uart3_ick\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"uart3\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"uart3_fck\00", align 1
@omap3xxx_uart3_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.29, ptr @omap2_uart_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 2048, i8 1, i8 11 }, [16 x i8] undef }, ptr @.str.30, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.32 = private unnamed_addr constant [9 x i8] c"i2c1_ick\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"i2c1\00", align 1
@i2c_class = internal global %struct.omap_hwmod_class { ptr @.str.36, ptr @i2c_sysc, ptr null, ptr @omap_i2c_reset, ptr null, ptr null }, align 4
@.str.34 = private unnamed_addr constant [9 x i8] c"i2c1_fck\00", align 1
@omap3xxx_i2c1_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.33, ptr @i2c_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 512, i8 1, i8 15 }, [16 x i8] undef }, ptr @.str.34, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 288, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.36 = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@i2c_sysc = internal global %struct.omap_hwmod_class_sysconfig { i32 0, i32 32, i32 16, i16 183, ptr @omap_hwmod_sysc_type1, i8 0, i8 7 }, align 4
@.str.37 = private unnamed_addr constant [9 x i8] c"i2c2_ick\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"i2c2\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"i2c2_fck\00", align 1
@omap3xxx_i2c2_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.38, ptr @i2c_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 512, i8 1, i8 16 }, [16 x i8] undef }, ptr @.str.39, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 288, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.41 = private unnamed_addr constant [9 x i8] c"i2c3_ick\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"i2c3\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"i2c3_fck\00", align 1
@omap3xxx_i2c3_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.42, ptr @i2c_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 512, i8 1, i8 17 }, [16 x i8] undef }, ptr @.str.43, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 288, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@omap3xxx_l4_sec_hwmod = internal global %struct.omap_hwmod { ptr @.str.45, ptr @l4_hwmod_class, ptr null, ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 64, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.45 = private unnamed_addr constant [7 x i8] c"l4_sec\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"gpt3_ick\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"timer3\00", align 1
@omap3xxx_timer_hwmod_class = internal global %struct.omap_hwmod_class { ptr @.str.50, ptr @omap3xxx_timer_sysc, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.48 = private unnamed_addr constant [9 x i8] c"gpt3_fck\00", align 1
@omap3xxx_timer3_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.47, ptr @omap3xxx_timer_hwmod_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 2048, i8 1, i8 4 }, [16 x i8] undef }, ptr @.str.48, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.50 = private unnamed_addr constant [6 x i8] c"timer\00", align 1
@omap3xxx_timer_sysc = internal global %struct.omap_hwmod_class_sysconfig { i32 0, i32 16, i32 20, i16 191, ptr @omap_hwmod_sysc_type1, i8 0, i8 7 }, align 4
@.str.51 = private unnamed_addr constant [9 x i8] c"gpt4_ick\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"timer4\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"gpt4_fck\00", align 1
@omap3xxx_timer4_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.52, ptr @omap3xxx_timer_hwmod_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 2048, i8 1, i8 5 }, [16 x i8] undef }, ptr @.str.53, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.55 = private unnamed_addr constant [9 x i8] c"gpt5_ick\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"timer5\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"gpt5_fck\00", align 1
@omap3xxx_timer5_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.56, ptr @omap3xxx_timer_hwmod_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 2048, i8 1, i8 6 }, [16 x i8] undef }, ptr @.str.57, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.59 = private unnamed_addr constant [9 x i8] c"gpt6_ick\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"timer6\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"gpt6_fck\00", align 1
@omap3xxx_timer6_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.60, ptr @omap3xxx_timer_hwmod_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 2048, i8 1, i8 7 }, [16 x i8] undef }, ptr @.str.61, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.63 = private unnamed_addr constant [9 x i8] c"gpt7_ick\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"timer7\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"gpt7_fck\00", align 1
@omap3xxx_timer7_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.64, ptr @omap3xxx_timer_hwmod_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 2048, i8 1, i8 8 }, [16 x i8] undef }, ptr @.str.65, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.67 = private unnamed_addr constant [9 x i8] c"gpt8_ick\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"timer8\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"gpt8_fck\00", align 1
@omap3xxx_timer8_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.68, ptr @omap3xxx_timer_hwmod_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 2048, i8 1, i8 9 }, [16 x i8] undef }, ptr @.str.69, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.71 = private unnamed_addr constant [9 x i8] c"gpt9_ick\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"timer9\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"gpt9_fck\00", align 1
@omap3xxx_timer9_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.72, ptr @omap3xxx_timer_hwmod_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 2048, i8 1, i8 10 }, [16 x i8] undef }, ptr @.str.73, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.75 = private unnamed_addr constant [10 x i8] c"gpt10_ick\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"timer10\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"gpt10_fck\00", align 1
@omap3xxx_timer10_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.76, ptr @omap3xxx_timer_hwmod_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 512, i8 1, i8 11 }, [16 x i8] undef }, ptr @.str.77, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.79 = private unnamed_addr constant [10 x i8] c"gpt11_ick\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"timer11\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"gpt11_fck\00", align 1
@omap3xxx_timer11_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.80, ptr @omap3xxx_timer_hwmod_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 512, i8 1, i8 12 }, [16 x i8] undef }, ptr @.str.81, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.83 = private unnamed_addr constant [9 x i8] c"wdt2_ick\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"wd_timer2\00", align 1
@omap3xxx_wd_timer_hwmod_class = internal global %struct.omap_hwmod_class { ptr @.str.87, ptr @omap3xxx_wd_timer_sysc, ptr @omap2_wd_timer_disable, ptr @omap2_wd_timer_reset, ptr null, ptr null }, align 4
@.str.85 = private unnamed_addr constant [9 x i8] c"wdt2_fck\00", align 1
@omap3xxx_wd_timer2_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.84, ptr @omap3xxx_wd_timer_hwmod_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 1024, i8 1, i8 5 }, [16 x i8] undef }, ptr @.str.85, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.87 = private unnamed_addr constant [9 x i8] c"wd_timer\00", align 1
@omap3xxx_wd_timer_sysc = internal global %struct.omap_hwmod_class_sysconfig { i32 0, i32 16, i32 20, i16 191, ptr @omap_hwmod_sysc_type1, i8 0, i8 7 }, align 4
@.str.88 = private unnamed_addr constant [6 x i8] c"gpio1\00", align 1
@omap3xxx_gpio_hwmod_class = internal global %struct.omap_hwmod_class { ptr @.str.91, ptr @omap3xxx_gpio_sysc, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.89 = private unnamed_addr constant [10 x i8] c"gpio1_ick\00", align 1
@gpio1_opt_clks = internal global [1 x %struct.omap_hwmod_opt_clk] [%struct.omap_hwmod_opt_clk { ptr @.str.92, ptr @.str.93, ptr null }], align 4
@omap3xxx_gpio1_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.88, ptr @omap3xxx_gpio_hwmod_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 1024, i8 1, i8 3 }, [16 x i8] undef }, ptr @.str.89, ptr null, ptr @gpio1_opt_clks, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 128, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.91 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@omap3xxx_gpio_sysc = internal global %struct.omap_hwmod_class_sysconfig { i32 0, i32 16, i32 20, i16 167, ptr @omap_hwmod_sysc_type1, i8 0, i8 7 }, align 4
@.str.92 = private unnamed_addr constant [6 x i8] c"dbclk\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"gpio1_dbck\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"gpio2\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"gpio2_ick\00", align 1
@gpio2_opt_clks = internal global [1 x %struct.omap_hwmod_opt_clk] [%struct.omap_hwmod_opt_clk { ptr @.str.92, ptr @.str.97, ptr null }], align 4
@omap3xxx_gpio2_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.94, ptr @omap3xxx_gpio_hwmod_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 2048, i8 1, i8 13 }, [16 x i8] undef }, ptr @.str.95, ptr null, ptr @gpio2_opt_clks, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 128, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.97 = private unnamed_addr constant [11 x i8] c"gpio2_dbck\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"gpio3\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"gpio3_ick\00", align 1
@gpio3_opt_clks = internal global [1 x %struct.omap_hwmod_opt_clk] [%struct.omap_hwmod_opt_clk { ptr @.str.92, ptr @.str.101, ptr null }], align 4
@omap3xxx_gpio3_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.98, ptr @omap3xxx_gpio_hwmod_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 2048, i8 1, i8 14 }, [16 x i8] undef }, ptr @.str.99, ptr null, ptr @gpio3_opt_clks, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 128, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.101 = private unnamed_addr constant [11 x i8] c"gpio3_dbck\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"gpio4\00", align 1
@.str.103 = private unnamed_addr constant [10 x i8] c"gpio4_ick\00", align 1
@gpio4_opt_clks = internal global [1 x %struct.omap_hwmod_opt_clk] [%struct.omap_hwmod_opt_clk { ptr @.str.92, ptr @.str.105, ptr null }], align 4
@omap3xxx_gpio4_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.102, ptr @omap3xxx_gpio_hwmod_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 2048, i8 1, i8 15 }, [16 x i8] undef }, ptr @.str.103, ptr null, ptr @gpio4_opt_clks, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 128, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.105 = private unnamed_addr constant [11 x i8] c"gpio4_dbck\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"gpio5\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"gpio5_ick\00", align 1
@gpio5_opt_clks = internal global [1 x %struct.omap_hwmod_opt_clk] [%struct.omap_hwmod_opt_clk { ptr @.str.92, ptr @.str.109, ptr null }], align 4
@omap3xxx_gpio5_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.106, ptr @omap3xxx_gpio_hwmod_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 2048, i8 1, i8 16 }, [16 x i8] undef }, ptr @.str.107, ptr null, ptr @gpio5_opt_clks, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 128, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.109 = private unnamed_addr constant [11 x i8] c"gpio5_dbck\00", align 1
@.str.110 = private unnamed_addr constant [6 x i8] c"gpio6\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c"gpio6_ick\00", align 1
@gpio6_opt_clks = internal global [1 x %struct.omap_hwmod_opt_clk] [%struct.omap_hwmod_opt_clk { ptr @.str.92, ptr @.str.113, ptr null }], align 4
@omap3xxx_gpio6_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.110, ptr @omap3xxx_gpio_hwmod_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 2048, i8 1, i8 17 }, [16 x i8] undef }, ptr @.str.111, ptr null, ptr @gpio6_opt_clks, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 128, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.113 = private unnamed_addr constant [11 x i8] c"gpio6_dbck\00", align 1
@.str.114 = private unnamed_addr constant [11 x i8] c"mcbsp1_ick\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"mcbsp1\00", align 1
@omap3xxx_mcbsp_hwmod_class = internal global %struct.omap_hwmod_class { ptr @.str.118, ptr @omap3xxx_mcbsp_sysc, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.116 = private unnamed_addr constant [11 x i8] c"mcbsp1_fck\00", align 1
@mcbsp15_opt_clks = internal global [2 x %struct.omap_hwmod_opt_clk] [%struct.omap_hwmod_opt_clk { ptr @.str.119, ptr @.str.120, ptr null }, %struct.omap_hwmod_opt_clk { ptr @.str.121, ptr @.str.122, ptr null }], align 4
@omap3xxx_mcbsp1_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.115, ptr @omap3xxx_mcbsp_hwmod_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 512, i8 1, i8 9 }, [16 x i8] undef }, ptr @.str.116, ptr null, ptr @mcbsp15_opt_clks, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.118 = private unnamed_addr constant [6 x i8] c"mcbsp\00", align 1
@omap3xxx_mcbsp_sysc = internal global %struct.omap_hwmod_class_sysconfig { i32 -19, i32 140, i32 0, i16 54, ptr @omap_hwmod_sysc_type1, i8 0, i8 7 }, align 4
@.str.119 = private unnamed_addr constant [8 x i8] c"pad_fck\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"mcbsp_clks\00", align 1
@.str.121 = private unnamed_addr constant [9 x i8] c"prcm_fck\00", align 1
@.str.122 = private unnamed_addr constant [13 x i8] c"core_96m_fck\00", align 1
@.str.123 = private unnamed_addr constant [11 x i8] c"mcbsp2_ick\00", align 1
@.str.124 = private unnamed_addr constant [7 x i8] c"mcbsp2\00", align 1
@.str.125 = private unnamed_addr constant [11 x i8] c"mcbsp2_fck\00", align 1
@mcbsp234_opt_clks = internal global [2 x %struct.omap_hwmod_opt_clk] [%struct.omap_hwmod_opt_clk { ptr @.str.119, ptr @.str.120, ptr null }, %struct.omap_hwmod_opt_clk { ptr @.str.121, ptr @.str.127, ptr null }], align 4
@omap3xxx_mcbsp2_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.124, ptr @omap3xxx_mcbsp_hwmod_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 2048, i8 1, i8 0 }, [16 x i8] undef }, ptr @.str.125, ptr null, ptr @mcbsp234_opt_clks, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.127 = private unnamed_addr constant [12 x i8] c"per_96m_fck\00", align 1
@.str.128 = private unnamed_addr constant [11 x i8] c"mcbsp3_ick\00", align 1
@.str.129 = private unnamed_addr constant [7 x i8] c"mcbsp3\00", align 1
@.str.130 = private unnamed_addr constant [11 x i8] c"mcbsp3_fck\00", align 1
@omap3xxx_mcbsp3_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.129, ptr @omap3xxx_mcbsp_hwmod_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 2048, i8 1, i8 1 }, [16 x i8] undef }, ptr @.str.130, ptr null, ptr @mcbsp234_opt_clks, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.132 = private unnamed_addr constant [11 x i8] c"mcbsp4_ick\00", align 1
@.str.133 = private unnamed_addr constant [7 x i8] c"mcbsp4\00", align 1
@.str.134 = private unnamed_addr constant [11 x i8] c"mcbsp4_fck\00", align 1
@omap3xxx_mcbsp4_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.133, ptr @omap3xxx_mcbsp_hwmod_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 2048, i8 1, i8 2 }, [16 x i8] undef }, ptr @.str.134, ptr null, ptr @mcbsp234_opt_clks, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.136 = private unnamed_addr constant [11 x i8] c"mcbsp5_ick\00", align 1
@.str.137 = private unnamed_addr constant [7 x i8] c"mcbsp5\00", align 1
@.str.138 = private unnamed_addr constant [11 x i8] c"mcbsp5_fck\00", align 1
@omap3xxx_mcbsp5_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.137, ptr @omap3xxx_mcbsp_hwmod_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 512, i8 1, i8 10 }, [16 x i8] undef }, ptr @.str.138, ptr null, ptr @mcbsp15_opt_clks, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@omap3xxx_mcbsp2_sidetone_hwmod = internal global %struct.omap_hwmod { ptr @.str.140, ptr @omap3xxx_mcbsp_sidetone_hwmod_class, ptr null, ptr null, %union.anon zeroinitializer, ptr @.str.123, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 64, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.140 = private unnamed_addr constant [16 x i8] c"mcbsp2_sidetone\00", align 1
@omap3xxx_mcbsp_sidetone_hwmod_class = internal global %struct.omap_hwmod_class { ptr @.str.141, ptr @omap3xxx_mcbsp_sidetone_sysc, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.141 = private unnamed_addr constant [15 x i8] c"mcbsp_sidetone\00", align 1
@omap3xxx_mcbsp_sidetone_sysc = internal global %struct.omap_hwmod_class_sysconfig { i32 -19, i32 16, i32 0, i16 1, ptr @omap_hwmod_sysc_type1, i8 0, i8 0 }, align 4
@omap3xxx_mcbsp3_sidetone_hwmod = internal global %struct.omap_hwmod { ptr @.str.142, ptr @omap3xxx_mcbsp_sidetone_hwmod_class, ptr null, ptr null, %union.anon zeroinitializer, ptr @.str.128, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 64, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.142 = private unnamed_addr constant [16 x i8] c"mcbsp3_sidetone\00", align 1
@.str.143 = private unnamed_addr constant [11 x i8] c"mcspi1_ick\00", align 1
@.str.144 = private unnamed_addr constant [7 x i8] c"mcspi1\00", align 1
@omap34xx_mcspi_class = internal global %struct.omap_hwmod_class { ptr @.str.147, ptr @omap34xx_mcspi_sysc, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.145 = private unnamed_addr constant [11 x i8] c"mcspi1_fck\00", align 1
@omap34xx_mcspi1 = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.144, ptr @omap34xx_mcspi_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 512, i8 1, i8 18 }, [16 x i8] undef }, ptr @.str.145, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.147 = private unnamed_addr constant [6 x i8] c"mcspi\00", align 1
@omap34xx_mcspi_sysc = internal global %struct.omap_hwmod_class_sysconfig { i32 0, i32 16, i32 20, i16 183, ptr @omap_hwmod_sysc_type1, i8 0, i8 7 }, align 4
@.str.148 = private unnamed_addr constant [11 x i8] c"mcspi2_ick\00", align 1
@.str.149 = private unnamed_addr constant [7 x i8] c"mcspi2\00", align 1
@.str.150 = private unnamed_addr constant [11 x i8] c"mcspi2_fck\00", align 1
@omap34xx_mcspi2 = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.149, ptr @omap34xx_mcspi_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 512, i8 1, i8 19 }, [16 x i8] undef }, ptr @.str.150, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.152 = private unnamed_addr constant [11 x i8] c"mcspi3_ick\00", align 1
@.str.153 = private unnamed_addr constant [7 x i8] c"mcspi3\00", align 1
@.str.154 = private unnamed_addr constant [11 x i8] c"mcspi3_fck\00", align 1
@omap34xx_mcspi3 = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.153, ptr @omap34xx_mcspi_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 512, i8 1, i8 20 }, [16 x i8] undef }, ptr @.str.154, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.156 = private unnamed_addr constant [11 x i8] c"mcspi4_ick\00", align 1
@.str.157 = private unnamed_addr constant [7 x i8] c"mcspi4\00", align 1
@.str.158 = private unnamed_addr constant [11 x i8] c"mcspi4_fck\00", align 1
@omap34xx_mcspi4 = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.157, ptr @omap34xx_mcspi_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 512, i8 1, i8 21 }, [16 x i8] undef }, ptr @.str.158, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@omap3xxx_gpmc_hwmod = internal global %struct.omap_hwmod { ptr @.str.161, ptr @omap3xxx_gpmc_hwmod_class, ptr null, ptr null, %union.anon zeroinitializer, ptr @.str.162, ptr null, ptr null, ptr @.str.163, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 64, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.160 = private unnamed_addr constant [12 x i8] c"core_l3_ick\00", align 1
@.str.161 = private unnamed_addr constant [5 x i8] c"gpmc\00", align 1
@omap3xxx_gpmc_hwmod_class = internal global %struct.omap_hwmod_class { ptr @.str.161, ptr @omap3xxx_gpmc_sysc, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.162 = private unnamed_addr constant [9 x i8] c"gpmc_fck\00", align 1
@.str.163 = private unnamed_addr constant [14 x i8] c"core_l3_clkdm\00", align 1
@omap3xxx_gpmc_sysc = internal global %struct.omap_hwmod_class_sysconfig { i32 0, i32 16, i32 20, i16 163, ptr @omap_hwmod_sysc_type1, i8 0, i8 7 }, align 4
@omap3xxx_l3__iva = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l3_main_hwmod, ptr @omap3xxx_iva_hwmod, ptr null, ptr @.str.160, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap34xx_l4_core__sr1 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @omap34xx_sr1_hwmod, ptr null, ptr @.str.171, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@omap34xx_l4_core__sr2 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @omap34xx_sr2_hwmod, ptr null, ptr @.str.171, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@omap3xxx_l4_core__mailbox = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @omap3xxx_mailbox_hwmod, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3xxx_l4_core__hdq1w = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @omap3xxx_hdq1w_hwmod, ptr null, ptr @.str.184, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 3, i8 0 }, align 4
@omap3xxx_sad2d__l3 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_sad2d_hwmod, ptr @omap3xxx_l3_main_hwmod, ptr null, ptr @.str.160, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@omap3xxx_l4_core__mmu_isp = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @omap3xxx_mmu_isp_hwmod, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3xxx_l3_main__mmu_iva = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l3_main_hwmod, ptr @omap3xxx_mmu_iva_hwmod, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3xxx_l4_core__ssi = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @omap3xxx_ssi_hwmod, ptr null, ptr @.str.198, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@.str.164 = private unnamed_addr constant [4 x i8] c"iva\00", align 1
@iva_hwmod_class = external dso_local global %struct.omap_hwmod_class, align 4
@omap3xxx_iva_resets = internal global [3 x %struct.omap_hwmod_rst_info] [%struct.omap_hwmod_rst_info { ptr @.str.168, i8 0, i8 8 }, %struct.omap_hwmod_rst_info { ptr @.str.169, i8 1, i8 9 }, %struct.omap_hwmod_rst_info { ptr @.str.170, i8 2, i8 10 }], align 4
@.str.165 = private unnamed_addr constant [8 x i8] c"iva2_ck\00", align 1
@.str.166 = private unnamed_addr constant [11 x i8] c"iva2_clkdm\00", align 1
@omap3xxx_iva_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.164, ptr @iva_hwmod_class, ptr null, ptr @omap3xxx_iva_resets, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 -2048, i8 1, i8 0 }, [16 x i8] undef }, ptr @.str.165, ptr null, ptr null, ptr @.str.166, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.168 = private unnamed_addr constant [6 x i8] c"logic\00", align 1
@.str.169 = private unnamed_addr constant [5 x i8] c"seq0\00", align 1
@.str.170 = private unnamed_addr constant [5 x i8] c"seq1\00", align 1
@.str.171 = private unnamed_addr constant [10 x i8] c"sr_l4_ick\00", align 1
@.str.172 = private unnamed_addr constant [20 x i8] c"smartreflex_mpu_iva\00", align 1
@omap34xx_smartreflex_hwmod_class = internal global %struct.omap_hwmod_class { ptr @.str.175, ptr @omap34xx_sr_sysc, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.173 = private unnamed_addr constant [8 x i8] c"sr1_fck\00", align 1
@sr1_dev_attr = internal global %struct.omap_smartreflex_dev_attr { ptr @.str.176 }, align 4
@omap34xx_sr1_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.172, ptr @omap34xx_smartreflex_hwmod_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 1024, i8 1, i8 6 }, [16 x i8] undef }, ptr @.str.173, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr @sr1_dev_attr, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.175 = private unnamed_addr constant [12 x i8] c"smartreflex\00", align 1
@omap34xx_sr_sysc = internal global %struct.omap_hwmod_class_sysconfig { i32 -19, i32 36, i32 0, i16 272, ptr @omap34xx_sr_sysc_fields, i8 0, i8 0 }, align 4
@omap34xx_sr_sysc_fields = external dso_local global %struct.sysc_regbits, align 1
@.str.176 = private unnamed_addr constant [8 x i8] c"mpu_iva\00", align 1
@.str.177 = private unnamed_addr constant [17 x i8] c"smartreflex_core\00", align 1
@.str.178 = private unnamed_addr constant [8 x i8] c"sr2_fck\00", align 1
@sr2_dev_attr = internal global %struct.omap_smartreflex_dev_attr { ptr @.str.180 }, align 4
@omap34xx_sr2_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.177, ptr @omap34xx_smartreflex_hwmod_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 1024, i8 1, i8 7 }, [16 x i8] undef }, ptr @.str.178, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr @sr2_dev_attr, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.180 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.181 = private unnamed_addr constant [8 x i8] c"mailbox\00", align 1
@omap3xxx_mailbox_hwmod_class = internal global %struct.omap_hwmod_class { ptr @.str.181, ptr @omap3xxx_mailbox_sysc, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.182 = private unnamed_addr constant [14 x i8] c"mailboxes_ick\00", align 1
@omap3xxx_mailbox_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.181, ptr @omap3xxx_mailbox_hwmod_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 512, i8 1, i8 7 }, [16 x i8] undef }, ptr @.str.182, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@omap3xxx_mailbox_sysc = internal global %struct.omap_hwmod_class_sysconfig { i32 0, i32 16, i32 20, i16 51, ptr @omap_hwmod_sysc_type1, i8 0, i8 7 }, align 4
@.str.184 = private unnamed_addr constant [8 x i8] c"hdq_ick\00", align 1
@.str.185 = private unnamed_addr constant [6 x i8] c"hdq1w\00", align 1
@omap2_hdq1w_class = external dso_local global %struct.omap_hwmod_class, align 4
@.str.186 = private unnamed_addr constant [8 x i8] c"hdq_fck\00", align 1
@omap3xxx_hdq1w_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.185, ptr @omap2_hdq1w_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 512, i8 1, i8 22 }, [16 x i8] undef }, ptr @.str.186, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.188 = private unnamed_addr constant [6 x i8] c"sad2d\00", align 1
@omap3xxx_sad2d_class = internal global %struct.omap_hwmod_class { ptr @.str.188, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@omap3xxx_sad2d_resets = internal global [2 x %struct.omap_hwmod_rst_info] [%struct.omap_hwmod_rst_info { ptr @.str.191, i8 0, i8 0 }, %struct.omap_hwmod_rst_info { ptr @.str.192, i8 1, i8 0 }], align 4
@.str.189 = private unnamed_addr constant [10 x i8] c"sad2d_ick\00", align 1
@omap3xxx_sad2d_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.188, ptr @omap3xxx_sad2d_class, ptr null, ptr @omap3xxx_sad2d_resets, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 512, i8 1, i8 3 }, [16 x i8] undef }, ptr @.str.189, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.191 = private unnamed_addr constant [19 x i8] c"rst_modem_pwron_sw\00", align 1
@.str.192 = private unnamed_addr constant [13 x i8] c"rst_modem_sw\00", align 1
@omap3xxx_mmu_isp_hwmod = internal global %struct.omap_hwmod { ptr @.str.193, ptr @omap3xxx_mmu_hwmod_class, ptr null, ptr null, %union.anon zeroinitializer, ptr @.str.194, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 64, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.193 = private unnamed_addr constant [8 x i8] c"mmu_isp\00", align 1
@omap3xxx_mmu_hwmod_class = internal global %struct.omap_hwmod_class { ptr @.str.195, ptr @mmu_sysc, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.194 = private unnamed_addr constant [8 x i8] c"cam_ick\00", align 1
@.str.195 = private unnamed_addr constant [4 x i8] c"mmu\00", align 1
@mmu_sysc = internal global %struct.omap_hwmod_class_sysconfig { i32 0, i32 16, i32 20, i16 51, ptr @omap_hwmod_sysc_type1, i8 0, i8 7 }, align 4
@.str.196 = private unnamed_addr constant [8 x i8] c"mmu_iva\00", align 1
@omap3xxx_mmu_iva_resets = internal global [1 x %struct.omap_hwmod_rst_info] [%struct.omap_hwmod_rst_info { ptr @.str.195, i8 1, i8 9 }], align 4
@omap3xxx_mmu_iva_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.196, ptr @omap3xxx_mmu_hwmod_class, ptr null, ptr @omap3xxx_mmu_iva_resets, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 -2048, i8 1, i8 0 }, [16 x i8] undef }, ptr @.str.165, ptr null, ptr null, ptr @.str.166, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 64, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.198 = private unnamed_addr constant [8 x i8] c"ssi_ick\00", align 1
@.str.199 = private unnamed_addr constant [4 x i8] c"ssi\00", align 1
@omap3xxx_ssi_hwmod_class = internal global %struct.omap_hwmod_class { ptr @.str.199, ptr @omap34xx_ssi_sysc, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.200 = private unnamed_addr constant [12 x i8] c"ssi_ssr_fck\00", align 1
@.str.201 = private unnamed_addr constant [14 x i8] c"core_l4_clkdm\00", align 1
@omap3xxx_ssi_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.199, ptr @omap3xxx_ssi_hwmod_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 512, i8 1, i8 8 }, [16 x i8] undef }, ptr @.str.200, ptr null, ptr null, ptr @.str.201, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@omap34xx_ssi_sysc = internal global %struct.omap_hwmod_class_sysconfig { i32 0, i32 16, i32 20, i16 99, ptr @omap_hwmod_sysc_type1, i8 0, i8 7 }, align 4
@omap3xxx_l4_core__sham = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @omap3xxx_sham_hwmod, ptr null, ptr @.str.203, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@.str.203 = private unnamed_addr constant [10 x i8] c"sha12_ick\00", align 1
@omap3xxx_sham_class = internal global %struct.omap_hwmod_class { ptr @.str.3, ptr @omap3_sham_sysc, ptr null, ptr null, ptr null, ptr null }, align 4
@omap3xxx_sham_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.3, ptr @omap3xxx_sham_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 512, i8 1, i8 27 }, [16 x i8] undef }, ptr @.str.203, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@omap3_sham_sysc = internal global %struct.omap_hwmod_class_sysconfig { i32 92, i32 96, i32 100, i16 163, ptr @omap3_sham_sysc_fields, i8 0, i8 0 }, align 4
@omap3_sham_sysc_fields = external dso_local global %struct.sysc_regbits, align 1
@omap3xxx_dss__l3 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_dss_core_hwmod, ptr @omap3xxx_l3_main_hwmod, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %union.anon.2 { %struct.omap_hwmod_omap2_firewall { i8 29, i8 0, i8 0, i8 1 } }, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3xxx_l4_core__dss = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @omap3xxx_dss_core_hwmod, ptr null, ptr @.str.214, ptr null, %struct.list_head zeroinitializer, %union.anon.2 { %struct.omap_hwmod_omap2_firewall { i8 0, i8 4, i8 2, i8 2 } }, i8 0, i8 3, i8 0, i8 0 }, align 4
@am35xx_usbhsotg__l3 = internal global %struct.omap_hwmod_ocp_if { ptr @am35xx_usbhsotg_hwmod, ptr @omap3xxx_l3_main_hwmod, ptr null, ptr @.str.215, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@am35xx_l4_core__usbhsotg = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @am35xx_usbhsotg_hwmod, ptr null, ptr @.str.215, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@am35xx_l4_core__uart4 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @am35xx_uart4_hwmod, ptr null, ptr @.str.219, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3xxx_usb_host_hs__l3_main_2 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_usb_host_hs_hwmod, ptr @omap3xxx_l3_main_hwmod, ptr null, ptr @.str.160, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@omap3xxx_l4_core__usb_host_hs = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @omap3xxx_usb_host_hs_hwmod, ptr null, ptr @.str.228, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3xxx_l4_core__usb_tll_hs = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @omap3xxx_usb_tll_hs_hwmod, ptr null, ptr @.str.229, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3xxx_l4_core__es3plus_mmc1 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @omap3xxx_es3plus_mmc1_hwmod, ptr null, ptr @.str.233, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 2, i8 0 }, align 4
@omap3xxx_l4_core__es3plus_mmc2 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @omap3xxx_es3plus_mmc2_hwmod, ptr null, ptr @.str.237, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 2, i8 0 }, align 4
@am35xx_mdio__l3 = internal global %struct.omap_hwmod_ocp_if { ptr @am35xx_mdio_hwmod, ptr @omap3xxx_l3_main_hwmod, ptr null, ptr @.str.241, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@am35xx_l4_core__mdio = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @am35xx_mdio_hwmod, ptr null, ptr @.str.241, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@am35xx_emac__l3 = internal global %struct.omap_hwmod_ocp_if { ptr @am35xx_emac_hwmod, ptr @omap3xxx_l3_main_hwmod, ptr null, ptr @.str.243, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@am35xx_l4_core__emac = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @am35xx_emac_hwmod, ptr null, ptr @.str.243, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@.str.205 = private unnamed_addr constant [9 x i8] c"dss_core\00", align 1
@omap2_dss_hwmod_class = external dso_local global %struct.omap_hwmod_class, align 4
@.str.206 = private unnamed_addr constant [15 x i8] c"dss1_alwon_fck\00", align 1
@dss_opt_clks = internal global [3 x %struct.omap_hwmod_opt_clk] [%struct.omap_hwmod_opt_clk { ptr @.str.208, ptr @.str.209, ptr null }, %struct.omap_hwmod_opt_clk { ptr @.str.210, ptr @.str.211, ptr null }, %struct.omap_hwmod_opt_clk { ptr @.str.212, ptr @.str.213, ptr null }], align 4
@omap3xxx_dss_core_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.205, ptr @omap2_dss_hwmod_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 1536, i8 1, i8 1 }, [16 x i8] undef }, ptr @.str.206, ptr null, ptr @dss_opt_clks, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 128, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.208 = private unnamed_addr constant [8 x i8] c"sys_clk\00", align 1
@.str.209 = private unnamed_addr constant [15 x i8] c"dss2_alwon_fck\00", align 1
@.str.210 = private unnamed_addr constant [7 x i8] c"tv_clk\00", align 1
@.str.211 = private unnamed_addr constant [11 x i8] c"dss_tv_fck\00", align 1
@.str.212 = private unnamed_addr constant [11 x i8] c"tv_dac_clk\00", align 1
@.str.213 = private unnamed_addr constant [12 x i8] c"dss_96m_fck\00", align 1
@.str.214 = private unnamed_addr constant [8 x i8] c"dss_ick\00", align 1
@am35xx_usbhsotg_hwmod = internal global %struct.omap_hwmod { ptr @.str.216, ptr @am35xx_usbotg_class, ptr null, ptr null, %union.anon zeroinitializer, ptr @.str.217, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 64, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.215 = private unnamed_addr constant [13 x i8] c"hsotgusb_ick\00", align 1
@.str.216 = private unnamed_addr constant [13 x i8] c"am35x_otg_hs\00", align 1
@am35xx_usbotg_class = internal global %struct.omap_hwmod_class { ptr @.str.218, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.217 = private unnamed_addr constant [13 x i8] c"hsotgusb_fck\00", align 1
@.str.218 = private unnamed_addr constant [14 x i8] c"am35xx_usbotg\00", align 1
@.str.219 = private unnamed_addr constant [10 x i8] c"uart4_ick\00", align 1
@.str.220 = private unnamed_addr constant [6 x i8] c"uart4\00", align 1
@.str.221 = private unnamed_addr constant [10 x i8] c"uart4_fck\00", align 1
@am35xx_uart4_opt_clks = internal global [1 x %struct.omap_hwmod_opt_clk] [%struct.omap_hwmod_opt_clk { ptr @.str.223, ptr @.str.22, ptr null }], align 4
@am35xx_uart4_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.220, ptr @omap2_uart_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 512, i8 1, i8 23 }, [16 x i8] undef }, ptr @.str.221, ptr null, ptr @am35xx_uart4_opt_clks, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 128, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.223 = private unnamed_addr constant [20 x i8] c"softreset_uart1_fck\00", align 1
@.str.224 = private unnamed_addr constant [12 x i8] c"usb_host_hs\00", align 1
@omap3xxx_usb_host_hs_hwmod_class = internal global %struct.omap_hwmod_class { ptr @.str.224, ptr @omap3xxx_usb_host_hs_sysc, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.225 = private unnamed_addr constant [16 x i8] c"usbhost_48m_fck\00", align 1
@.str.226 = private unnamed_addr constant [14 x i8] c"usbhost_clkdm\00", align 1
@omap3xxx_usb_host_hs_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.224, ptr @omap3xxx_usb_host_hs_hwmod_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 3072, i8 1, i8 1 }, [16 x i8] undef }, ptr @.str.225, ptr null, ptr null, ptr @.str.226, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 3, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@omap3xxx_usb_host_hs_sysc = internal global %struct.omap_hwmod_class_sysconfig { i32 0, i32 16, i32 20, i16 247, ptr @omap_hwmod_sysc_type1, i8 0, i8 119 }, align 4
@.str.228 = private unnamed_addr constant [12 x i8] c"usbhost_ick\00", align 1
@.str.229 = private unnamed_addr constant [11 x i8] c"usbtll_ick\00", align 1
@.str.230 = private unnamed_addr constant [11 x i8] c"usb_tll_hs\00", align 1
@omap3xxx_usb_tll_hs_hwmod_class = internal global %struct.omap_hwmod_class { ptr @.str.230, ptr @omap3xxx_usb_tll_hs_sysc, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.231 = private unnamed_addr constant [11 x i8] c"usbtll_fck\00", align 1
@omap3xxx_usb_tll_hs_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.230, ptr @omap3xxx_usb_tll_hs_hwmod_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 512, i8 3, i8 2 }, [16 x i8] undef }, ptr @.str.231, ptr null, ptr null, ptr @.str.201, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@omap3xxx_usb_tll_hs_sysc = internal global %struct.omap_hwmod_class_sysconfig { i32 0, i32 16, i32 20, i16 55, ptr @omap_hwmod_sysc_type1, i8 0, i8 7 }, align 4
@.str.233 = private unnamed_addr constant [11 x i8] c"mmchs1_ick\00", align 1
@.str.234 = private unnamed_addr constant [5 x i8] c"mmc1\00", align 1
@.str.235 = private unnamed_addr constant [11 x i8] c"mmchs1_fck\00", align 1
@omap34xx_mmc1_opt_clks = internal global [1 x %struct.omap_hwmod_opt_clk] [%struct.omap_hwmod_opt_clk { ptr @.str.18, ptr @.str.19, ptr null }], align 4
@mmc1_dev_attr = internal global %struct.omap_hsmmc_dev_attr { i8 1 }, align 1
@omap3xxx_es3plus_mmc1_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.234, ptr @omap34xx_mmc_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 512, i8 1, i8 24 }, [16 x i8] undef }, ptr @.str.235, ptr null, ptr @omap34xx_mmc1_opt_clks, ptr null, ptr null, %struct.list_head zeroinitializer, ptr @mmc1_dev_attr, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.237 = private unnamed_addr constant [11 x i8] c"mmchs2_ick\00", align 1
@.str.238 = private unnamed_addr constant [5 x i8] c"mmc2\00", align 1
@.str.239 = private unnamed_addr constant [11 x i8] c"mmchs2_fck\00", align 1
@omap34xx_mmc2_opt_clks = internal global [1 x %struct.omap_hwmod_opt_clk] [%struct.omap_hwmod_opt_clk { ptr @.str.18, ptr @.str.19, ptr null }], align 4
@omap3xxx_es3plus_mmc2_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.238, ptr @omap34xx_mmc_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 512, i8 1, i8 25 }, [16 x i8] undef }, ptr @.str.239, ptr null, ptr @omap34xx_mmc2_opt_clks, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@am35xx_mdio_hwmod = internal global %struct.omap_hwmod { ptr @.str.242, ptr @am35xx_mdio_class, ptr null, ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 64, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.241 = private unnamed_addr constant [9 x i8] c"emac_fck\00", align 1
@.str.242 = private unnamed_addr constant [13 x i8] c"davinci_mdio\00", align 1
@am35xx_mdio_class = internal global %struct.omap_hwmod_class { ptr @.str.242, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@am35xx_emac_hwmod = internal global %struct.omap_hwmod { ptr @.str.244, ptr @am35xx_emac_class, ptr null, ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 1088, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.243 = private unnamed_addr constant [9 x i8] c"emac_ick\00", align 1
@.str.244 = private unnamed_addr constant [13 x i8] c"davinci_emac\00", align 1
@am35xx_emac_class = internal global %struct.omap_hwmod_class { ptr @.str.244, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@omap36xx_l4_per__uart4 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_per_hwmod, ptr @omap36xx_uart4_hwmod, ptr null, ptr @.str.219, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap36xx_l4_core__sr1 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @omap36xx_sr1_hwmod, ptr null, ptr @.str.171, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@omap36xx_l4_core__sr2 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @omap36xx_sr2_hwmod, ptr null, ptr @.str.171, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@omap3xxx_usbhsotg__l3 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_usbhsotg_hwmod, ptr @omap3xxx_l3_main_hwmod, ptr null, ptr @.str.160, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@omap3xxx_l4_core__usbhsotg = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @omap3xxx_usbhsotg_hwmod, ptr null, ptr @.str.251, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 1, i8 0, i8 0 }, align 4
@omap36xx_uart4_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.220, ptr @omap2_uart_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 2048, i8 1, i8 18 }, [16 x i8] undef }, ptr @.str.221, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@omap36xx_smartreflex_hwmod_class = internal global %struct.omap_hwmod_class { ptr @.str.175, ptr @omap36xx_sr_sysc, ptr null, ptr null, ptr null, ptr null }, align 4
@omap36xx_sr1_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.172, ptr @omap36xx_smartreflex_hwmod_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 1024, i8 1, i8 6 }, [16 x i8] undef }, ptr @.str.173, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr @sr1_dev_attr, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@omap36xx_sr_sysc = internal global %struct.omap_hwmod_class_sysconfig { i32 -19, i32 56, i32 0, i16 292, ptr @omap36xx_sr_sysc_fields, i8 0, i8 7 }, align 4
@omap36xx_sr_sysc_fields = external dso_local global %struct.sysc_regbits, align 1
@omap36xx_sr2_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.177, ptr @omap36xx_smartreflex_hwmod_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 1024, i8 1, i8 7 }, [16 x i8] undef }, ptr @.str.178, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr @sr2_dev_attr, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.248 = private unnamed_addr constant [11 x i8] c"usb_otg_hs\00", align 1
@usbotg_class = internal global %struct.omap_hwmod_class { ptr @.str.250, ptr @omap3xxx_usbhsotg_sysc, ptr null, ptr null, ptr null, ptr null }, align 4
@omap3xxx_usbhsotg_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.248, ptr @usbotg_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 512, i8 1, i8 5 }, [16 x i8] undef }, ptr @.str.215, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 10257, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.250 = private unnamed_addr constant [7 x i8] c"usbotg\00", align 1
@omap3xxx_usbhsotg_sysc = internal global %struct.omap_hwmod_class_sysconfig { i32 1024, i32 1028, i32 1032, i16 103, ptr @omap_hwmod_sysc_type1, i8 0, i8 119 }, align 4
@.str.251 = private unnamed_addr constant [7 x i8] c"l4_ick\00", align 1
@omap3430es1_dss__l3 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3430es1_dss_core_hwmod, ptr @omap3xxx_l3_main_hwmod, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3430es1_l4_core__dss = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @omap3430es1_dss_core_hwmod, ptr null, ptr @.str.214, ptr null, %struct.list_head zeroinitializer, %union.anon.2 { %struct.omap_hwmod_omap2_firewall { i8 0, i8 3, i8 2, i8 2 } }, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3430es1_dss_core_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.205, ptr @omap2_dss_hwmod_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 1536, i8 1, i8 0 }, [16 x i8] undef }, ptr @.str.206, ptr null, ptr @dss_opt_clks, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 192, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@omap3xxx_l4_core__pre_es3_mmc1 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @omap3xxx_pre_es3_mmc1_hwmod, ptr null, ptr @.str.233, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 2, i8 0 }, align 4
@omap3xxx_l4_core__pre_es3_mmc2 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @omap3xxx_pre_es3_mmc2_hwmod, ptr null, ptr @.str.237, ptr null, %struct.list_head zeroinitializer, %union.anon.2 zeroinitializer, i8 0, i8 3, i8 2, i8 0 }, align 4
@mmc1_pre_es3_dev_attr = internal global %struct.omap_hsmmc_dev_attr { i8 3 }, align 1
@omap3xxx_pre_es3_mmc1_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.234, ptr @omap34xx_mmc_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 512, i8 1, i8 24 }, [16 x i8] undef }, ptr @.str.235, ptr null, ptr @omap34xx_mmc1_opt_clks, ptr null, ptr null, %struct.list_head zeroinitializer, ptr @mmc1_pre_es3_dev_attr, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@mmc2_pre_es3_dev_attr = internal global %struct.omap_hsmmc_dev_attr { i8 2 }, align 1
@omap3xxx_pre_es3_mmc2_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.238, ptr @omap34xx_mmc_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 512, i8 1, i8 25 }, [16 x i8] undef }, ptr @.str.239, ptr null, ptr @omap34xx_mmc2_opt_clks, ptr null, ptr null, %struct.list_head zeroinitializer, ptr @mmc2_pre_es3_dev_attr, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@omap3xxx_l4_core__dss_dispc = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @omap3xxx_dss_dispc_hwmod, ptr null, ptr @.str.214, ptr null, %struct.list_head zeroinitializer, %union.anon.2 { %struct.omap_hwmod_omap2_firewall { i8 0, i8 4, i8 2, i8 2 } }, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3xxx_l4_core__dss_dsi1 = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @omap3xxx_dss_dsi1_hwmod, ptr null, ptr @.str.214, ptr null, %struct.list_head zeroinitializer, %union.anon.2 { %struct.omap_hwmod_omap2_firewall { i8 0, i8 104, i8 2, i8 2 } }, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3xxx_l4_core__dss_rfbi = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @omap3xxx_dss_rfbi_hwmod, ptr null, ptr @.str.214, ptr null, %struct.list_head zeroinitializer, %union.anon.2 { %struct.omap_hwmod_omap2_firewall { i8 0, i8 5, i8 2, i8 2 } }, i8 0, i8 3, i8 0, i8 0 }, align 4
@omap3xxx_l4_core__dss_venc = internal global %struct.omap_hwmod_ocp_if { ptr @omap3xxx_l4_core_hwmod, ptr @omap3xxx_dss_venc_hwmod, ptr null, ptr @.str.214, ptr null, %struct.list_head zeroinitializer, %union.anon.2 { %struct.omap_hwmod_omap2_firewall { i8 0, i8 6, i8 2, i8 2 } }, i8 0, i8 3, i8 1, i8 0 }, align 4
@.str.255 = private unnamed_addr constant [10 x i8] c"dss_dispc\00", align 1
@omap3_dispc_hwmod_class = internal global %struct.omap_hwmod_class { ptr @.str.257, ptr @omap3_dispc_sysc, ptr null, ptr null, ptr null, ptr null }, align 4
@omap2_3_dss_dispc_dev_attr = external dso_local global %struct.omap_dss_dispc_dev_attr, align 1
@omap3xxx_dss_dispc_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.255, ptr @omap3_dispc_hwmod_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 1536, i8 0, i8 0 }, [16 x i8] undef }, ptr @.str.206, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr @omap2_3_dss_dispc_dev_attr, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 64, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.257 = private unnamed_addr constant [6 x i8] c"dispc\00", align 1
@omap3_dispc_sysc = internal global %struct.omap_hwmod_class_sysconfig { i32 0, i32 16, i32 20, i16 103, ptr @omap_hwmod_sysc_type1, i8 0, i8 119 }, align 4
@.str.258 = private unnamed_addr constant [9 x i8] c"dss_dsi1\00", align 1
@omap3xxx_dsi_hwmod_class = internal global %struct.omap_hwmod_class { ptr @.str.260, ptr @omap3xxx_dsi_sysc, ptr null, ptr null, ptr null, ptr null }, align 4
@dss_dsi1_opt_clks = internal global [1 x %struct.omap_hwmod_opt_clk] [%struct.omap_hwmod_opt_clk { ptr @.str.208, ptr @.str.209, ptr null }], align 4
@omap3xxx_dss_dsi1_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.258, ptr @omap3xxx_dsi_hwmod_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 1536, i8 0, i8 0 }, [16 x i8] undef }, ptr @.str.206, ptr null, ptr @dss_dsi1_opt_clks, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 64, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.260 = private unnamed_addr constant [4 x i8] c"dsi\00", align 1
@omap3xxx_dsi_sysc = internal global %struct.omap_hwmod_class_sysconfig { i32 0, i32 16, i32 20, i16 183, ptr @omap_hwmod_sysc_type1, i8 0, i8 7 }, align 4
@.str.261 = private unnamed_addr constant [9 x i8] c"dss_rfbi\00", align 1
@omap2_rfbi_hwmod_class = external dso_local global %struct.omap_hwmod_class, align 4
@dss_rfbi_opt_clks = internal global [1 x %struct.omap_hwmod_opt_clk] [%struct.omap_hwmod_opt_clk { ptr @.str.263, ptr @.str.214, ptr null }], align 4
@omap3xxx_dss_rfbi_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.261, ptr @omap2_rfbi_hwmod_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 1536, i8 0, i8 0 }, [16 x i8] undef }, ptr @.str.206, ptr null, ptr @dss_rfbi_opt_clks, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 64, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@.str.263 = private unnamed_addr constant [4 x i8] c"ick\00", align 1
@.str.264 = private unnamed_addr constant [9 x i8] c"dss_venc\00", align 1
@omap2_venc_hwmod_class = external dso_local global %struct.omap_hwmod_class, align 4
@dss_venc_opt_clks = internal global [1 x %struct.omap_hwmod_opt_clk] [%struct.omap_hwmod_opt_clk { ptr @.str.212, ptr @.str.213, ptr null }], align 4
@omap3xxx_dss_venc_hwmod = internal global { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.264, ptr @omap2_venc_hwmod_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 1536, i8 0, i8 0 }, [16 x i8] undef }, ptr @.str.211, ptr null, ptr @dss_venc_opt_clks, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 64, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, align 4
@switch.table.omap3xxx_hwmod_init = private unnamed_addr constant [6 x ptr] [ptr @omap3430es1_hwmod_ocp_ifs, ptr @omap3430es2plus_hwmod_ocp_ifs, ptr @omap3430es2plus_hwmod_ocp_ifs, ptr @omap3430es2plus_hwmod_ocp_ifs, ptr @omap3430es2plus_hwmod_ocp_ifs, ptr @omap3430es2plus_hwmod_ocp_ifs], align 4
@switch.table.omap3xxx_hwmod_init.266 = private unnamed_addr constant [6 x ptr] [ptr @omap3430_pre_es3_hwmod_ocp_ifs, ptr @omap3430_pre_es3_hwmod_ocp_ifs, ptr @omap3430_pre_es3_hwmod_ocp_ifs, ptr @omap3430_es3plus_hwmod_ocp_ifs, ptr @omap3430_es3plus_hwmod_ocp_ifs, ptr @omap3430_es3plus_hwmod_ocp_ifs], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @omap3xxx_hwmod_init() local_unnamed_addr #0 section ".init.text" {
  tail call void @omap_hwmod_init() #4
  %1 = tail call i32 @omap_hwmod_register_links(ptr noundef nonnull @omap3xxx_hwmod_ocp_ifs) #4
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %41, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @omap_rev() #5
  %5 = add i32 %4, -875561012
  %6 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 24)
  %7 = icmp ult i32 %6, 6
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = and i32 %4, -257
  %10 = icmp eq i32 %9, 890699828
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  switch i32 %4, label %12 [
    i32 909115956, label %13
    i32 909115700, label %13
    i32 909115444, label %13
  ]

12:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2622, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %41

13:                                               ; preds = %11, %11, %11, %8, %3
  %14 = phi ptr [ @omap34xx_hwmod_ocp_ifs, %3 ], [ @am35xx_hwmod_ocp_ifs, %8 ], [ @omap36xx_hwmod_ocp_ifs, %11 ], [ @omap36xx_hwmod_ocp_ifs, %11 ], [ @omap36xx_hwmod_ocp_ifs, %11 ]
  %15 = phi ptr [ @omap34xx_sham_hwmod_ocp_ifs, %3 ], [ @am35xx_sham_hwmod_ocp_ifs, %8 ], [ @omap36xx_sham_hwmod_ocp_ifs, %11 ], [ @omap36xx_sham_hwmod_ocp_ifs, %11 ], [ @omap36xx_sham_hwmod_ocp_ifs, %11 ]
  %16 = tail call i32 @omap_hwmod_register_links(ptr noundef nonnull %14) #4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %41, label %18

18:                                               ; preds = %13
  %19 = tail call ptr @of_find_node_by_name(ptr noundef null, ptr noundef nonnull @.str.2) #5
  %20 = tail call fastcc zeroext i1 @omap3xxx_hwmod_is_hs_ip_block_usable(ptr noundef %19) #6
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = tail call i32 @omap_hwmod_register_links(ptr noundef nonnull %15) #4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %21, %18
  tail call void @of_node_put(ptr noundef %19) #5
  %25 = icmp ult i32 %6, 6
  br i1 %25, label %26, label %38

26:                                               ; preds = %24
  %27 = getelementptr inbounds [6 x ptr], ptr @switch.table.omap3xxx_hwmod_init, i32 0, i32 %6
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @omap_hwmod_register_links(ptr noundef nonnull %28) #4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = icmp ult i32 %6, 6
  br i1 %32, label %33, label %38

33:                                               ; preds = %31
  %34 = getelementptr inbounds [6 x ptr], ptr @switch.table.omap3xxx_hwmod_init.266, i32 0, i32 %6
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @omap_hwmod_register_links(ptr noundef nonnull %35) #4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33, %31, %24
  %39 = tail call i32 @omap_hwmod_register_links(ptr noundef nonnull @omap3xxx_dss_hwmod_ocp_ifs) #4
  br label %41

40:                                               ; preds = %21
  tail call void @of_node_put(ptr noundef %19) #5
  br label %41

41:                                               ; preds = %40, %38, %33, %26, %13, %12, %0
  %42 = phi i32 [ %22, %40 ], [ %39, %38 ], [ -22, %12 ], [ %1, %0 ], [ %16, %13 ], [ %29, %26 ], [ %36, %33 ]
  ret i32 %42
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @omap_hwmod_init() local_unnamed_addr #1 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @omap_hwmod_register_links(ptr noundef) local_unnamed_addr #1 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc zeroext i1 @omap3xxx_hwmod_is_hs_ip_block_usable(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = tail call i32 @omap_type() #5
  %5 = icmp eq i32 %4, 3
  br label %9

6:                                                ; preds = %1
  %7 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #5
  %8 = tail call zeroext i1 @of_device_is_available(ptr noundef %7) #5
  tail call void @of_node_put(ptr noundef %7) #5
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi i1 [ %8, %6 ], [ %5, %3 ]
  ret i1 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_i2c_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_wd_timer_disable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_wd_timer_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_type() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold nounwind }
attributes #5 = { nounwind }
attributes #6 = { cold }

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
