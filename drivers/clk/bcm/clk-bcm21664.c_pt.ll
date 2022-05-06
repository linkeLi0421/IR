; ModuleID = '/llk/IR/drivers/clk/bcm/clk-bcm21664.c_pt.bc'
source_filename = "../drivers/clk/bcm/clk-bcm21664.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.ccu_policy = type { %struct.bcm_lvm_en, %struct.bcm_policy_ctl }
%struct.bcm_lvm_en = type { i32, i32 }
%struct.bcm_policy_ctl = type { i32, i32, i32, i32 }
%struct.kona_clk = type { %struct.clk_hw, %struct.clk_init_data, ptr, i32, %union.anon.5 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%union.anon.5 = type { ptr }
%struct.bcm_clk_policy = type { i32, i32 }
%struct.bcm_clk_gate = type { i32, i32, i32, i32, i32 }
%struct.bcm_clk_hyst = type { i32, i32, i32 }
%struct.bcm_clk_trig = type { i32, i32, i32 }
%struct.bcm_clk_div = type { %union.anon.6, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { i32, i32, i32, i32, i64 }
%struct.bcm_clk_sel = type { i32, i32, i32, i32, ptr, i8 }

@__of_table_bcm21664_root_ccu = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm21664-root-ccu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @kona_dt_root_ccu_setup }, section "__clk_of_table", align 4
@__of_table_bcm21664_aon_ccu = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm21664-aon-ccu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @kona_dt_aon_ccu_setup }, section "__clk_of_table", align 4
@__of_table_bcm21664_master_ccu = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm21664-master-ccu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @kona_dt_master_ccu_setup }, section "__clk_of_table", align 4
@__of_table_bcm21664_slave_ccu = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm21664-slave-ccu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @kona_dt_slave_ccu_setup }, section "__clk_of_table", align 4
@.str = private unnamed_addr constant [9 x i8] c"root_ccu\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"frac_1m\00", align 1
@kona_peri_clk_ops = external dso_local global %struct.clk_ops, align 4
@root_ccu_data = internal global { ptr, %struct.spinlock, i8, %struct.ccu_policy, ptr, i32, ptr, i32, [2 x %struct.kona_clk] } { ptr null, %struct.spinlock zeroinitializer, i8 0, %struct.ccu_policy zeroinitializer, ptr null, i32 1, ptr @.str, i32 0, [2 x %struct.kona_clk] [%struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.1, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @root_ccu_data, i32 3, %union.anon.5 { ptr @frac_1m_data } }, %struct.kona_clk zeroinitializer] }, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"ref_crystal\00", align 1
@frac_1m_data = internal global { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [2 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 532, i32 16, i32 0, i32 1, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_sel zeroinitializer, [2 x ptr] [ptr @.str.3, ptr null] }, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"aon_ccu\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"hub_timer\00", align 1
@aon_ccu_data = internal global { ptr, %struct.spinlock, i8, %struct.ccu_policy, ptr, i32, ptr, i32, [2 x %struct.kona_clk] } { ptr null, %struct.spinlock zeroinitializer, i8 0, %struct.ccu_policy { %struct.bcm_lvm_en { i32 52, i32 0 }, %struct.bcm_policy_ctl { i32 12, i32 0, i32 2, i32 1 } }, ptr null, i32 1, ptr @.str.5, i32 0, [2 x %struct.kona_clk] [%struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.6, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @aon_ccu_data, i32 3, %union.anon.5 { ptr @hub_timer_data } }, %struct.kona_clk zeroinitializer] }, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"bbl_32k\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"dft_19_5m\00", align 1
@hub_timer_data = internal global { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [4 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 1044, i32 16, i32 0, i32 1, i32 55 }, %struct.bcm_clk_hyst { i32 1044, i32 8, i32 9 }, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2624, i32 4, i32 1 }, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_sel { i32 2576, i32 0, i32 2, i32 0, ptr null, i8 -1 }, [4 x ptr] [ptr @.str.8, ptr @.str.1, ptr @.str.9, ptr null] }, align 8
@.str.11 = private unnamed_addr constant [11 x i8] c"master_ccu\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"sdio1\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"sdio2\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"sdio3\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"sdio4\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"sdio1_sleep\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"sdio2_sleep\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"sdio3_sleep\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"sdio4_sleep\00", align 1
@master_ccu_data = internal global { ptr, %struct.spinlock, i8, %struct.ccu_policy, ptr, i32, ptr, i32, [9 x %struct.kona_clk] } { ptr null, %struct.spinlock zeroinitializer, i8 0, %struct.ccu_policy { %struct.bcm_lvm_en { i32 52, i32 0 }, %struct.bcm_policy_ctl { i32 12, i32 0, i32 2, i32 1 } }, ptr null, i32 8, ptr @.str.11, i32 0, [9 x %struct.kona_clk] [%struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.12, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @master_ccu_data, i32 3, %union.anon.5 { ptr @sdio1_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.13, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @master_ccu_data, i32 3, %union.anon.5 { ptr @sdio2_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.14, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @master_ccu_data, i32 3, %union.anon.5 { ptr @sdio3_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.15, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @master_ccu_data, i32 3, %union.anon.5 { ptr @sdio4_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.16, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @master_ccu_data, i32 3, %union.anon.5 { ptr @sdio1_sleep_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.17, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @master_ccu_data, i32 3, %union.anon.5 { ptr @sdio2_sleep_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.18, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @master_ccu_data, i32 3, %union.anon.5 { ptr @sdio3_sleep_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.19, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @master_ccu_data, i32 3, %union.anon.5 { ptr @sdio4_sleep_data } }, %struct.kona_clk zeroinitializer] }, align 4
@.str.21 = private unnamed_addr constant [8 x i8] c"var_52m\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"ref_52m\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"var_96m\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"ref_96m\00", align 1
@sdio1_data = internal global { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 856, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2812, i32 9, i32 1 }, %struct.bcm_clk_div { %union.anon.6 { %struct.anon.7 { i32 2600, i32 4, i32 14, i32 0, i64 -1 } }, i32 1 }, %struct.bcm_clk_sel { i32 2600, i32 0, i32 3, i32 0, ptr null, i8 -1 }, [6 x ptr] [ptr @.str.3, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr null] }, align 8
@sdio2_data = internal global { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 860, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2812, i32 10, i32 1 }, %struct.bcm_clk_div { %union.anon.6 { %struct.anon.7 { i32 2604, i32 4, i32 14, i32 0, i64 -1 } }, i32 1 }, %struct.bcm_clk_sel { i32 2604, i32 0, i32 3, i32 0, ptr null, i8 -1 }, [6 x ptr] [ptr @.str.3, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr null] }, align 8
@sdio3_data = internal global { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 868, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2812, i32 12, i32 1 }, %struct.bcm_clk_div { %union.anon.6 { %struct.anon.7 { i32 2612, i32 4, i32 14, i32 0, i64 -1 } }, i32 1 }, %struct.bcm_clk_sel { i32 2612, i32 0, i32 3, i32 0, ptr null, i8 -1 }, [6 x ptr] [ptr @.str.3, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr null] }, align 8
@sdio4_data = internal global { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 864, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2812, i32 11, i32 1 }, %struct.bcm_clk_div { %union.anon.6 { %struct.anon.7 { i32 2608, i32 4, i32 14, i32 0, i64 -1 } }, i32 1 }, %struct.bcm_clk_sel { i32 2608, i32 0, i32 3, i32 0, ptr null, i8 -1 }, [6 x ptr] [ptr @.str.3, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr null] }, align 8
@.str.29 = private unnamed_addr constant [8 x i8] c"ref_32k\00", align 1
@sdio1_sleep_data = internal global { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [2 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 856, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_sel zeroinitializer, [2 x ptr] [ptr @.str.29, ptr null] }, align 8
@sdio2_sleep_data = internal global { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [2 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 860, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_sel zeroinitializer, [2 x ptr] [ptr @.str.29, ptr null] }, align 8
@sdio3_sleep_data = internal global { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [2 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 868, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_sel zeroinitializer, [2 x ptr] [ptr @.str.29, ptr null] }, align 8
@sdio4_sleep_data = internal global { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [2 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 864, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_sel zeroinitializer, [2 x ptr] [ptr @.str.29, ptr null] }, align 8
@.str.34 = private unnamed_addr constant [10 x i8] c"slave_ccu\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"uartb\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"uartb2\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"uartb3\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"bsc1\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"bsc2\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"bsc3\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"bsc4\00", align 1
@slave_ccu_data = internal global { ptr, %struct.spinlock, i8, %struct.ccu_policy, ptr, i32, ptr, i32, [8 x %struct.kona_clk] } { ptr null, %struct.spinlock zeroinitializer, i8 0, %struct.ccu_policy { %struct.bcm_lvm_en { i32 52, i32 0 }, %struct.bcm_policy_ctl { i32 12, i32 0, i32 2, i32 1 } }, ptr null, i32 7, ptr @.str.34, i32 0, [8 x %struct.kona_clk] [%struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.35, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @slave_ccu_data, i32 3, %union.anon.5 { ptr @uartb_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.36, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @slave_ccu_data, i32 3, %union.anon.5 { ptr @uartb2_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.37, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @slave_ccu_data, i32 3, %union.anon.5 { ptr @uartb3_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.38, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @slave_ccu_data, i32 3, %union.anon.5 { ptr @bsc1_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.39, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @slave_ccu_data, i32 3, %union.anon.5 { ptr @bsc2_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.40, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @slave_ccu_data, i32 3, %union.anon.5 { ptr @bsc3_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.41, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @slave_ccu_data, i32 3, %union.anon.5 { ptr @bsc4_data } }, %struct.kona_clk zeroinitializer] }, align 4
@.str.43 = private unnamed_addr constant [9 x i8] c"var_156m\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"ref_156m\00", align 1
@uartb_data = internal global { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [4 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 1024, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2812, i32 2, i32 1 }, %struct.bcm_clk_div { %union.anon.6 { %struct.anon.7 { i32 2576, i32 4, i32 12, i32 8, i64 -1 } }, i32 1 }, %struct.bcm_clk_sel { i32 2576, i32 0, i32 2, i32 0, ptr null, i8 -1 }, [4 x ptr] [ptr @.str.3, ptr @.str.43, ptr @.str.44, ptr null] }, align 8
@uartb2_data = internal global { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [4 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 1028, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2812, i32 3, i32 1 }, %struct.bcm_clk_div { %union.anon.6 { %struct.anon.7 { i32 2580, i32 4, i32 12, i32 8, i64 -1 } }, i32 1 }, %struct.bcm_clk_sel { i32 2580, i32 0, i32 2, i32 0, ptr null, i8 -1 }, [4 x ptr] [ptr @.str.3, ptr @.str.43, ptr @.str.44, ptr null] }, align 8
@uartb3_data = internal global { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [4 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 1032, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2812, i32 4, i32 1 }, %struct.bcm_clk_div { %union.anon.6 { %struct.anon.7 { i32 2584, i32 4, i32 12, i32 8, i64 -1 } }, i32 1 }, %struct.bcm_clk_sel { i32 2584, i32 0, i32 2, i32 0, ptr null, i8 -1 }, [4 x ptr] [ptr @.str.3, ptr @.str.43, ptr @.str.44, ptr null] }, align 8
@.str.48 = private unnamed_addr constant [9 x i8] c"var_104m\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"ref_104m\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"var_13m\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"ref_13m\00", align 1
@bsc1_data = internal global { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 1112, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2812, i32 23, i32 1 }, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_sel { i32 2660, i32 0, i32 3, i32 0, ptr null, i8 -1 }, [6 x ptr] [ptr @.str.3, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr null] }, align 8
@bsc2_data = internal global { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 1116, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2812, i32 24, i32 1 }, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_sel { i32 2664, i32 0, i32 3, i32 0, ptr null, i8 -1 }, [6 x ptr] [ptr @.str.3, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr null] }, align 8
@bsc3_data = internal global { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 1136, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2812, i32 18, i32 1 }, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_sel { i32 2684, i32 0, i32 3, i32 0, ptr null, i8 -1 }, [6 x ptr] [ptr @.str.3, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr null] }, align 8
@bsc4_data = internal global { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 1140, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2812, i32 19, i32 1 }, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_sel { i32 2688, i32 0, i32 3, i32 0, ptr null, i8 -1 }, [6 x ptr] [ptr @.str.3, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr null] }, align 8
@llvm.compiler.used = appending global [4 x ptr] [ptr @__of_table_bcm21664_aon_ccu, ptr @__of_table_bcm21664_master_ccu, ptr @__of_table_bcm21664_root_ccu, ptr @__of_table_bcm21664_slave_ccu], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @kona_dt_root_ccu_setup(ptr noundef %0) #0 section ".init.text" {
  tail call void @kona_dt_ccu_setup(ptr noundef nonnull @root_ccu_data, ptr noundef %0) #2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @kona_dt_aon_ccu_setup(ptr noundef %0) #0 section ".init.text" {
  tail call void @kona_dt_ccu_setup(ptr noundef nonnull @aon_ccu_data, ptr noundef %0) #2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @kona_dt_master_ccu_setup(ptr noundef %0) #0 section ".init.text" {
  tail call void @kona_dt_ccu_setup(ptr noundef nonnull @master_ccu_data, ptr noundef %0) #2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @kona_dt_slave_ccu_setup(ptr noundef %0) #0 section ".init.text" {
  tail call void @kona_dt_ccu_setup(ptr noundef nonnull @slave_ccu_data, ptr noundef %0) #2
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @kona_dt_ccu_setup(ptr noundef, ptr noundef) local_unnamed_addr #1 section ".init.text"

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind }

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
