; ModuleID = '/llk/IR/drivers/clk/bcm/clk-bcm2835.c_pt.bc'
source_filename = "../drivers/clk/bcm/clk-bcm2835.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.bcm2835_clk_desc = type { ptr, i32, ptr }
%struct.bcm2835_pll_ana_bits = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.bcm2835_pll_data = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32 }
%struct.bcm2835_pll_divider_data = type { ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.bcm2835_clock_data = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32 }
%struct.bcm2835_gate_data = type { ptr, ptr, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.debugfs_reg32 = type { ptr, i32 }
%struct.cprman_plat_data = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.bcm2835_cprman = type { ptr, ptr, %struct.spinlock, i32, [7 x ptr], %struct.clk_hw_onecell_data }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.bcm2835_pll = type { %struct.clk_hw, ptr, ptr }
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }
%struct.bcm2835_pll_divider = type { %struct.clk_divider, ptr, ptr }
%struct.bcm2835_clock = type { %struct.clk_hw, ptr, ptr }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@__initcall__kmod_clk_bcm2835__218_2319_bcm2835_clk_driver_init6 = internal global ptr @bcm2835_clk_driver_init, section ".initcall6.init", align 4
@__UNIQUE_ID_author219 = internal constant [49 x i8] c"clk_bcm2835.author=Eric Anholt <eric@anholt.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description220 = internal constant [45 x i8] c"clk_bcm2835.description=BCM2835 clock driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file221 = internal constant [45 x i8] c"clk_bcm2835.file=drivers/clk/bcm/clk-bcm2835\00", section ".modinfo", align 1
@__UNIQUE_ID_license222 = internal constant [24 x i8] c"clk_bcm2835.license=GPL\00", section ".modinfo", align 1
@bcm2835_clk_driver = internal global %struct.platform_driver { ptr @bcm2835_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm2835_clk_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [12 x i8] c"bcm2835-clk\00", align 1
@bcm2835_clk_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-cprman\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cprman_bcm2835_plat_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2711-cprman\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cprman_bcm2711_plat_data }, %struct.of_device_id zeroinitializer], align 4
@cprman_parent_names = internal constant [7 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], align 4
@clk_desc_array = internal unnamed_addr constant [52 x %struct.bcm2835_clk_desc] [%struct.bcm2835_clk_desc { ptr @bcm2835_register_pll, i32 3, ptr @.compoundliteral }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll, i32 3, ptr @.compoundliteral.10 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll, i32 3, ptr @.compoundliteral.12 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll, i32 3, ptr @.compoundliteral.14 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll, i32 1, ptr @.compoundliteral.16 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll_divider, i32 3, ptr @.compoundliteral.18 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll_divider, i32 3, ptr @.compoundliteral.20 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll_divider, i32 3, ptr @.compoundliteral.22 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll_divider, i32 3, ptr @.compoundliteral.24 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll_divider, i32 3, ptr @.compoundliteral.26 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll_divider, i32 3, ptr @.compoundliteral.28 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll_divider, i32 3, ptr @.compoundliteral.30 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll_divider, i32 3, ptr @.compoundliteral.32 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll_divider, i32 3, ptr @.compoundliteral.34 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll_divider, i32 1, ptr @.compoundliteral.36 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll_divider, i32 1, ptr @.compoundliteral.38 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll_divider, i32 1, ptr @.compoundliteral.40 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.42 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.44 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.46 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.48 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.50 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.52 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.54 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.56 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.58 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.60 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.62 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.64 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_gate, i32 3, ptr @.compoundliteral.66 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.68 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.70 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll_divider, i32 3, ptr @.compoundliteral.72 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll_divider, i32 3, ptr @.compoundliteral.74 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll_divider, i32 3, ptr @.compoundliteral.76 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_pll_divider, i32 3, ptr @.compoundliteral.78 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.80 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.82 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.84 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.86 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.88 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.90 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.92 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.94 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.96 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.98 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.100 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.102 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.104 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.106 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 3, ptr @.compoundliteral.108 }, %struct.bcm2835_clk_desc { ptr @bcm2835_register_clock, i32 2, ptr @.compoundliteral.110 }], align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"xosc\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"dsi0_byte\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"dsi0_ddr2\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"dsi0_ddr\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"dsi1_byte\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"dsi1_ddr2\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"dsi1_ddr\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"plla\00", align 1
@bcm2835_ana_default = internal constant %struct.bcm2835_pll_ana_bits { i32 0, i32 0, i32 4161536, i32 1310720, i32 896, i32 256, i32 16384 }, align 4
@.compoundliteral = internal global %struct.bcm2835_pll_data { ptr @.str.8, i32 260, i32 4352, i32 4608, i32 4112, i32 64, i32 256, i32 0, ptr @bcm2835_ana_default, i32 600000000, i32 -1894967296, i32 1750000000 }, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"pllb\00", align 1
@.compoundliteral.10 = internal global %struct.bcm2835_pll_data { ptr @.str.9, i32 368, i32 4576, i32 4832, i32 4336, i32 128, i32 512, i32 64, ptr @bcm2835_ana_default, i32 600000000, i32 -1294967296, i32 1750000000 }, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"pllc\00", align 1
@.compoundliteral.12 = internal global %struct.bcm2835_pll_data { ptr @.str.11, i32 264, i32 4384, i32 4640, i32 4144, i32 1, i32 1024, i32 0, ptr @bcm2835_ana_default, i32 600000000, i32 -1294967296, i32 1750000000 }, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"plld\00", align 1
@.compoundliteral.14 = internal global %struct.bcm2835_pll_data { ptr @.str.13, i32 268, i32 4416, i32 4672, i32 4176, i32 16, i32 2048, i32 0, ptr @bcm2835_ana_default, i32 600000000, i32 -1894967296, i32 1750000000 }, align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"pllh\00", align 1
@bcm2835_ana_pllh = internal constant %struct.bcm2835_pll_ana_bits { i32 16252928, i32 9437184, i32 31, i32 12, i32 0, i32 0, i32 2048 }, align 4
@.compoundliteral.16 = internal global %struct.bcm2835_pll_data { ptr @.str.15, i32 272, i32 4448, i32 4704, i32 4208, i32 1, i32 4096, i32 0, ptr @bcm2835_ana_pllh, i32 600000000, i32 -1294967296, i32 1750000000 }, align 4
@.str.17 = private unnamed_addr constant [10 x i8] c"plla_core\00", align 1
@.compoundliteral.18 = internal global %struct.bcm2835_pll_divider_data { ptr @.str.17, ptr @.str.8, i32 260, i32 5120, i32 16, i32 32, i32 1, i32 4 }, align 4
@.str.19 = private unnamed_addr constant [9 x i8] c"plla_per\00", align 1
@.compoundliteral.20 = internal global %struct.bcm2835_pll_divider_data { ptr @.str.19, ptr @.str.8, i32 260, i32 5376, i32 64, i32 128, i32 1, i32 4 }, align 4
@.str.21 = private unnamed_addr constant [9 x i8] c"pllb_arm\00", align 1
@.compoundliteral.22 = internal global %struct.bcm2835_pll_divider_data { ptr @.str.21, ptr @.str.9, i32 368, i32 5088, i32 1, i32 2, i32 1, i32 68 }, align 4
@.str.23 = private unnamed_addr constant [11 x i8] c"pllc_core0\00", align 1
@.compoundliteral.24 = internal global %struct.bcm2835_pll_divider_data { ptr @.str.23, ptr @.str.11, i32 264, i32 5664, i32 1, i32 2, i32 1, i32 4 }, align 4
@.str.25 = private unnamed_addr constant [11 x i8] c"pllc_core1\00", align 1
@.compoundliteral.26 = internal global %struct.bcm2835_pll_divider_data { ptr @.str.25, ptr @.str.11, i32 264, i32 5152, i32 4, i32 8, i32 1, i32 4 }, align 4
@.str.27 = private unnamed_addr constant [11 x i8] c"pllc_core2\00", align 1
@.compoundliteral.28 = internal global %struct.bcm2835_pll_divider_data { ptr @.str.27, ptr @.str.11, i32 264, i32 4896, i32 16, i32 32, i32 1, i32 4 }, align 4
@.str.29 = private unnamed_addr constant [9 x i8] c"pllc_per\00", align 1
@.compoundliteral.30 = internal global %struct.bcm2835_pll_divider_data { ptr @.str.29, ptr @.str.11, i32 264, i32 5408, i32 64, i32 128, i32 1, i32 4 }, align 4
@.str.31 = private unnamed_addr constant [10 x i8] c"plld_core\00", align 1
@.compoundliteral.32 = internal global %struct.bcm2835_pll_divider_data { ptr @.str.31, ptr @.str.13, i32 268, i32 5184, i32 16, i32 32, i32 1, i32 4 }, align 4
@.str.33 = private unnamed_addr constant [9 x i8] c"plld_per\00", align 1
@.compoundliteral.34 = internal global %struct.bcm2835_pll_divider_data { ptr @.str.33, ptr @.str.13, i32 268, i32 5440, i32 64, i32 128, i32 1, i32 2052 }, align 4
@.str.35 = private unnamed_addr constant [10 x i8] c"pllh_rcal\00", align 1
@.compoundliteral.36 = internal global %struct.bcm2835_pll_divider_data { ptr @.str.35, ptr @.str.15, i32 272, i32 5216, i32 4, i32 0, i32 10, i32 4 }, align 4
@.str.37 = private unnamed_addr constant [9 x i8] c"pllh_aux\00", align 1
@.compoundliteral.38 = internal global %struct.bcm2835_pll_divider_data { ptr @.str.37, ptr @.str.15, i32 272, i32 4960, i32 2, i32 0, i32 1, i32 4 }, align 4
@.str.39 = private unnamed_addr constant [9 x i8] c"pllh_pix\00", align 1
@.compoundliteral.40 = internal global %struct.bcm2835_pll_divider_data { ptr @.str.39, ptr @.str.15, i32 272, i32 5472, i32 1, i32 0, i32 10, i32 4 }, align 4
@.str.41 = private unnamed_addr constant [6 x i8] c"timer\00", align 1
@bcm2835_clock_osc_parents = internal constant [4 x ptr] [ptr @.str.129, ptr @.str.1, ptr @.str.130, ptr @.str.131], align 4
@.compoundliteral.42 = internal global %struct.bcm2835_clock_data { ptr @.str.41, ptr @bcm2835_clock_osc_parents, i32 4, i32 0, i32 232, i32 236, i32 6, i32 12, i32 0, i8 0, i8 0, i8 0, i32 0 }, align 4
@.str.43 = private unnamed_addr constant [4 x i8] c"otp\00", align 1
@.compoundliteral.44 = internal global %struct.bcm2835_clock_data { ptr @.str.43, ptr @bcm2835_clock_osc_parents, i32 4, i32 0, i32 144, i32 148, i32 4, i32 0, i32 0, i8 0, i8 0, i8 0, i32 6 }, align 4
@.str.45 = private unnamed_addr constant [5 x i8] c"uart\00", align 1
@bcm2835_clock_per_parents = internal constant [8 x ptr] [ptr @.str.129, ptr @.str.1, ptr @.str.130, ptr @.str.131, ptr @.str.19, ptr @.str.29, ptr @.str.33, ptr @.str.37], align 4
@.compoundliteral.46 = internal global %struct.bcm2835_clock_data { ptr @.str.45, ptr @bcm2835_clock_per_parents, i32 8, i32 0, i32 240, i32 244, i32 10, i32 12, i32 0, i8 0, i8 0, i8 0, i32 28 }, align 4
@.str.47 = private unnamed_addr constant [4 x i8] c"vpu\00", align 1
@bcm2835_clock_vpu_parents = internal constant [10 x ptr] [ptr @.str.129, ptr @.str.1, ptr @.str.130, ptr @.str.131, ptr @.str.17, ptr @.str.23, ptr @.str.31, ptr @.str.37, ptr @.str.25, ptr @.str.27], align 4
@.compoundliteral.48 = internal global %struct.bcm2835_clock_data { ptr @.str.47, ptr @bcm2835_clock_vpu_parents, i32 10, i32 0, i32 8, i32 12, i32 12, i32 8, i32 2048, i8 1, i8 0, i8 0, i32 5 }, align 4
@.str.49 = private unnamed_addr constant [4 x i8] c"v3d\00", align 1
@.compoundliteral.50 = internal global %struct.bcm2835_clock_data { ptr @.str.49, ptr @bcm2835_clock_vpu_parents, i32 10, i32 0, i32 56, i32 60, i32 4, i32 8, i32 0, i8 0, i8 0, i8 0, i32 4 }, align 4
@.str.51 = private unnamed_addr constant [4 x i8] c"isp\00", align 1
@.compoundliteral.52 = internal global %struct.bcm2835_clock_data { ptr @.str.51, ptr @bcm2835_clock_vpu_parents, i32 10, i32 0, i32 48, i32 52, i32 4, i32 8, i32 0, i8 0, i8 0, i8 0, i32 2 }, align 4
@.str.53 = private unnamed_addr constant [5 x i8] c"h264\00", align 1
@.compoundliteral.54 = internal global %struct.bcm2835_clock_data { ptr @.str.53, ptr @bcm2835_clock_vpu_parents, i32 10, i32 0, i32 40, i32 44, i32 4, i32 8, i32 0, i8 0, i8 0, i8 0, i32 1 }, align 4
@.str.55 = private unnamed_addr constant [4 x i8] c"vec\00", align 1
@.compoundliteral.56 = internal global %struct.bcm2835_clock_data { ptr @.str.55, ptr @bcm2835_clock_per_parents, i32 8, i32 128, i32 248, i32 252, i32 4, i32 0, i32 0, i8 0, i8 0, i8 0, i32 29 }, align 4
@.str.57 = private unnamed_addr constant [4 x i8] c"hsm\00", align 1
@.compoundliteral.58 = internal global %struct.bcm2835_clock_data { ptr @.str.57, ptr @bcm2835_clock_per_parents, i32 8, i32 0, i32 136, i32 140, i32 4, i32 8, i32 0, i8 0, i8 0, i8 0, i32 22 }, align 4
@.str.59 = private unnamed_addr constant [6 x i8] c"sdram\00", align 1
@.compoundliteral.60 = internal global %struct.bcm2835_clock_data { ptr @.str.59, ptr @bcm2835_clock_vpu_parents, i32 10, i32 0, i32 424, i32 428, i32 6, i32 0, i32 0, i8 0, i8 0, i8 0, i32 3 }, align 4
@.str.61 = private unnamed_addr constant [6 x i8] c"tsens\00", align 1
@.compoundliteral.62 = internal global %struct.bcm2835_clock_data { ptr @.str.61, ptr @bcm2835_clock_osc_parents, i32 4, i32 0, i32 224, i32 228, i32 5, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0 }, align 4
@.str.63 = private unnamed_addr constant [5 x i8] c"emmc\00", align 1
@.compoundliteral.64 = internal global %struct.bcm2835_clock_data { ptr @.str.63, ptr @bcm2835_clock_per_parents, i32 8, i32 0, i32 448, i32 452, i32 4, i32 8, i32 0, i8 0, i8 0, i8 0, i32 39 }, align 4
@.str.65 = private unnamed_addr constant [11 x i8] c"peri_image\00", align 1
@.compoundliteral.66 = internal global %struct.bcm2835_gate_data { ptr @.str.65, ptr @.str.47, i32 32 }, align 4
@.str.67 = private unnamed_addr constant [4 x i8] c"pwm\00", align 1
@.compoundliteral.68 = internal global %struct.bcm2835_clock_data { ptr @.str.67, ptr @bcm2835_clock_per_parents, i32 8, i32 0, i32 160, i32 164, i32 12, i32 12, i32 0, i8 0, i8 1, i8 0, i32 24 }, align 4
@.str.69 = private unnamed_addr constant [4 x i8] c"pcm\00", align 1
@bcm2835_pcm_per_parents = internal constant [8 x ptr] [ptr @.str.132, ptr @.str.1, ptr @.str.132, ptr @.str.132, ptr @.str.132, ptr @.str.132, ptr @.str.33, ptr @.str.132], align 4
@.compoundliteral.70 = internal global %struct.bcm2835_clock_data { ptr @.str.69, ptr @bcm2835_pcm_per_parents, i32 8, i32 0, i32 152, i32 156, i32 12, i32 12, i32 0, i8 0, i8 1, i8 1, i32 23 }, align 4
@.str.71 = private unnamed_addr constant [10 x i8] c"plla_dsi0\00", align 1
@.compoundliteral.72 = internal global %struct.bcm2835_pll_divider_data { ptr @.str.71, ptr @.str.8, i32 260, i32 4864, i32 1, i32 2, i32 1, i32 0 }, align 4
@.str.73 = private unnamed_addr constant [10 x i8] c"plla_ccp2\00", align 1
@.compoundliteral.74 = internal global %struct.bcm2835_pll_divider_data { ptr @.str.73, ptr @.str.8, i32 260, i32 5632, i32 4, i32 8, i32 1, i32 4 }, align 4
@.str.75 = private unnamed_addr constant [10 x i8] c"plld_dsi0\00", align 1
@.compoundliteral.76 = internal global %struct.bcm2835_pll_divider_data { ptr @.str.75, ptr @.str.13, i32 268, i32 4928, i32 1, i32 2, i32 1, i32 0 }, align 4
@.str.77 = private unnamed_addr constant [10 x i8] c"plld_dsi1\00", align 1
@.compoundliteral.78 = internal global %struct.bcm2835_pll_divider_data { ptr @.str.77, ptr @.str.13, i32 268, i32 5696, i32 4, i32 8, i32 1, i32 0 }, align 4
@.str.79 = private unnamed_addr constant [5 x i8] c"aveo\00", align 1
@.compoundliteral.80 = internal global %struct.bcm2835_clock_data { ptr @.str.79, ptr @bcm2835_clock_per_parents, i32 8, i32 0, i32 440, i32 444, i32 4, i32 0, i32 0, i8 0, i8 0, i8 0, i32 38 }, align 4
@.str.81 = private unnamed_addr constant [4 x i8] c"dft\00", align 1
@.compoundliteral.82 = internal global %struct.bcm2835_clock_data { ptr @.str.81, ptr @bcm2835_clock_per_parents, i32 8, i32 0, i32 360, i32 364, i32 5, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0 }, align 4
@.str.83 = private unnamed_addr constant [4 x i8] c"gp0\00", align 1
@.compoundliteral.84 = internal global %struct.bcm2835_clock_data { ptr @.str.83, ptr @bcm2835_clock_per_parents, i32 8, i32 0, i32 112, i32 116, i32 12, i32 12, i32 0, i8 0, i8 1, i8 0, i32 20 }, align 4
@.str.85 = private unnamed_addr constant [4 x i8] c"gp1\00", align 1
@.compoundliteral.86 = internal global %struct.bcm2835_clock_data { ptr @.str.85, ptr @bcm2835_clock_per_parents, i32 8, i32 0, i32 120, i32 124, i32 12, i32 12, i32 2048, i8 0, i8 1, i8 0, i32 21 }, align 4
@.str.87 = private unnamed_addr constant [4 x i8] c"gp2\00", align 1
@.compoundliteral.88 = internal global %struct.bcm2835_clock_data { ptr @.str.87, ptr @bcm2835_clock_per_parents, i32 8, i32 0, i32 128, i32 132, i32 12, i32 12, i32 2048, i8 0, i8 0, i8 0, i32 0 }, align 4
@.str.89 = private unnamed_addr constant [5 x i8] c"slim\00", align 1
@.compoundliteral.90 = internal global %struct.bcm2835_clock_data { ptr @.str.89, ptr @bcm2835_clock_per_parents, i32 8, i32 0, i32 168, i32 172, i32 12, i32 12, i32 0, i8 0, i8 1, i8 0, i32 25 }, align 4
@.str.91 = private unnamed_addr constant [4 x i8] c"smi\00", align 1
@.compoundliteral.92 = internal global %struct.bcm2835_clock_data { ptr @.str.91, ptr @bcm2835_clock_per_parents, i32 8, i32 0, i32 176, i32 180, i32 4, i32 8, i32 0, i8 0, i8 0, i8 0, i32 27 }, align 4
@.str.93 = private unnamed_addr constant [4 x i8] c"tec\00", align 1
@.compoundliteral.94 = internal global %struct.bcm2835_clock_data { ptr @.str.93, ptr @bcm2835_clock_osc_parents, i32 4, i32 0, i32 200, i32 204, i32 6, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0 }, align 4
@.str.95 = private unnamed_addr constant [4 x i8] c"dpi\00", align 1
@.compoundliteral.96 = internal global %struct.bcm2835_clock_data { ptr @.str.95, ptr @bcm2835_clock_per_parents, i32 8, i32 0, i32 104, i32 108, i32 4, i32 8, i32 0, i8 0, i8 0, i8 0, i32 17 }, align 4
@.str.97 = private unnamed_addr constant [5 x i8] c"cam0\00", align 1
@.compoundliteral.98 = internal global %struct.bcm2835_clock_data { ptr @.str.97, ptr @bcm2835_clock_per_parents, i32 8, i32 0, i32 64, i32 68, i32 4, i32 8, i32 0, i8 0, i8 0, i8 0, i32 14 }, align 4
@.str.99 = private unnamed_addr constant [5 x i8] c"cam1\00", align 1
@.compoundliteral.100 = internal global %struct.bcm2835_clock_data { ptr @.str.99, ptr @bcm2835_clock_per_parents, i32 8, i32 0, i32 72, i32 76, i32 4, i32 8, i32 0, i8 0, i8 0, i8 0, i32 15 }, align 4
@.str.101 = private unnamed_addr constant [6 x i8] c"dsi0e\00", align 1
@.compoundliteral.102 = internal global %struct.bcm2835_clock_data { ptr @.str.101, ptr @bcm2835_clock_per_parents, i32 8, i32 0, i32 88, i32 92, i32 4, i32 8, i32 0, i8 0, i8 0, i8 0, i32 18 }, align 4
@.str.103 = private unnamed_addr constant [6 x i8] c"dsi1e\00", align 1
@.compoundliteral.104 = internal global %struct.bcm2835_clock_data { ptr @.str.103, ptr @bcm2835_clock_per_parents, i32 8, i32 0, i32 344, i32 348, i32 4, i32 8, i32 0, i8 0, i8 0, i8 0, i32 19 }, align 4
@.str.105 = private unnamed_addr constant [6 x i8] c"dsi0p\00", align 1
@bcm2835_clock_dsi0_parents = internal constant [10 x ptr] [ptr @.str.129, ptr @.str.1, ptr @.str.130, ptr @.str.131, ptr @.str.4, ptr @.str.133, ptr @.str.3, ptr @.str.134, ptr @.str.2, ptr @.str.135], align 4
@.compoundliteral.106 = internal global %struct.bcm2835_clock_data { ptr @.str.105, ptr @bcm2835_clock_dsi0_parents, i32 10, i32 0, i32 96, i32 100, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i32 12 }, align 4
@.str.107 = private unnamed_addr constant [6 x i8] c"dsi1p\00", align 1
@bcm2835_clock_dsi1_parents = internal constant [10 x ptr] [ptr @.str.129, ptr @.str.1, ptr @.str.130, ptr @.str.131, ptr @.str.7, ptr @.str.136, ptr @.str.6, ptr @.str.137, ptr @.str.5, ptr @.str.138], align 4
@.compoundliteral.108 = internal global %struct.bcm2835_clock_data { ptr @.str.107, ptr @bcm2835_clock_dsi1_parents, i32 10, i32 0, i32 352, i32 356, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i32 13 }, align 4
@.str.109 = private unnamed_addr constant [6 x i8] c"emmc2\00", align 1
@.compoundliteral.110 = internal global %struct.bcm2835_clock_data { ptr @.str.109, ptr @bcm2835_clock_per_parents, i32 8, i32 0, i32 464, i32 468, i32 4, i32 8, i32 0, i8 0, i8 0, i8 0, i32 42 }, align 4
@bcm2835_pll_clk_ops = internal constant %struct.clk_ops { ptr @bcm2835_pll_on, ptr @bcm2835_pll_off, ptr @bcm2835_pll_is_on, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm2835_pll_get_rate, ptr @bcm2835_pll_round_rate, ptr null, ptr null, ptr null, ptr @bcm2835_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm2835_pll_debug_init }, align 4
@.str.111 = private unnamed_addr constant [23 x i8] c"%s: couldn't lock PLL\0A\00", align 1
@.str.112 = private unnamed_addr constant [8 x i8] c"cm_ctrl\00", align 1
@.str.113 = private unnamed_addr constant [9 x i8] c"a2w_ctrl\00", align 1
@.str.114 = private unnamed_addr constant [5 x i8] c"frac\00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c"ana0\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c"ana1\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c"ana2\00", align 1
@.str.118 = private unnamed_addr constant [5 x i8] c"ana3\00", align 1
@.str.119 = private unnamed_addr constant [8 x i8] c"regdump\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.120 = private unnamed_addr constant [10 x i8] c"%s_prediv\00", align 1
@bcm2835_pll_divider_clk_ops = internal constant %struct.clk_ops { ptr @bcm2835_pll_divider_on, ptr @bcm2835_pll_divider_off, ptr @bcm2835_pll_divider_is_on, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm2835_pll_divider_get_rate, ptr null, ptr @bcm2835_pll_divider_determine_rate, ptr null, ptr null, ptr @bcm2835_pll_divider_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm2835_pll_divider_debug_init }, align 4
@clk_divider_ops = external dso_local local_unnamed_addr constant %struct.clk_ops, align 4
@.str.121 = private unnamed_addr constant [3 x i8] c"cm\00", align 1
@.str.122 = private unnamed_addr constant [4 x i8] c"a2w\00", align 1
@bcm2835_vpu_clock_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr @bcm2835_vpu_clock_is_on, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm2835_clock_get_rate, ptr null, ptr @bcm2835_clock_determine_rate, ptr @bcm2835_clock_set_parent, ptr @bcm2835_clock_get_parent, ptr @bcm2835_clock_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm2835_clock_debug_init }, align 4
@bcm2835_clock_clk_ops = internal constant %struct.clk_ops { ptr @bcm2835_clock_on, ptr @bcm2835_clock_off, ptr @bcm2835_clock_is_on, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm2835_clock_get_rate, ptr null, ptr @bcm2835_clock_determine_rate, ptr @bcm2835_clock_set_parent, ptr @bcm2835_clock_get_parent, ptr @bcm2835_clock_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm2835_clock_debug_init }, align 4
@.str.123 = private unnamed_addr constant [52 x i8] c"frac bits are not used when propagating rate change\00", align 1
@bcm2835_debugfs_clock_reg32 = internal constant [2 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.124, i32 0 }, %struct.debugfs_reg32 { ptr @.str.125, i32 4 }], align 4
@.str.124 = private unnamed_addr constant [4 x i8] c"ctl\00", align 1
@.str.125 = private unnamed_addr constant [4 x i8] c"div\00", align 1
@.str.129 = private unnamed_addr constant [4 x i8] c"gnd\00", align 1
@.str.130 = private unnamed_addr constant [11 x i8] c"testdebug0\00", align 1
@.str.131 = private unnamed_addr constant [11 x i8] c"testdebug1\00", align 1
@.str.132 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.133 = private unnamed_addr constant [13 x i8] c"dsi0_ddr_inv\00", align 1
@.str.134 = private unnamed_addr constant [14 x i8] c"dsi0_ddr2_inv\00", align 1
@.str.135 = private unnamed_addr constant [14 x i8] c"dsi0_byte_inv\00", align 1
@.str.136 = private unnamed_addr constant [13 x i8] c"dsi1_ddr_inv\00", align 1
@.str.137 = private unnamed_addr constant [14 x i8] c"dsi1_ddr2_inv\00", align 1
@.str.138 = private unnamed_addr constant [14 x i8] c"dsi1_byte_inv\00", align 1
@cprman_bcm2835_plat_data = internal constant %struct.cprman_plat_data { i32 1 }, align 4
@cprman_bcm2711_plat_data = internal constant %struct.cprman_plat_data { i32 2 }, align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author219, ptr @__UNIQUE_ID_description220, ptr @__UNIQUE_ID_file221, ptr @__UNIQUE_ID_license222, ptr @__initcall__kmod_clk_bcm2835__218_2319_bcm2835_clk_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bcm2835_clk_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm2835_clk_driver, ptr noundef null) #12
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_clk_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_device_get_match_data(ptr noundef %2) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %66, label %5

5:                                                ; preds = %1
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 256, i32 noundef 3520) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %66, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.bcm2835_cprman, ptr %6, i32 0, i32 2
  store i32 0, ptr %9, align 4
  store ptr %2, ptr %6, align 4
  %10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #12
  %11 = getelementptr inbounds %struct.bcm2835_cprman, ptr %6, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = ptrtoint ptr %10 to i32
  br label %66

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.bcm2835_cprman, ptr %6, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %16, ptr noundef nonnull align 4 dereferenceable(28) @cprman_parent_names, i32 28, i1 false)
  %17 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %18 = load ptr, ptr %17, align 8
  %19 = tail call i32 @of_clk_parent_fill(ptr noundef %18, ptr noundef %16, i32 noundef 7) #12
  %20 = load ptr, ptr %16, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %66, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %23, align 8
  %24 = getelementptr inbounds %struct.bcm2835_cprman, ptr %6, i32 0, i32 5
  store i32 52, ptr %24, align 4
  %25 = load i32, ptr %3, align 4
  %26 = getelementptr inbounds %struct.bcm2835_cprman, ptr %6, i32 0, i32 3
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.bcm2835_cprman, ptr %6, i32 1
  br label %28

28:                                               ; preds = %44, %22
  %29 = phi i32 [ 0, %22 ], [ %45, %44 ]
  %30 = getelementptr [52 x %struct.bcm2835_clk_desc], ptr @clk_desc_array, i32 0, i32 %29
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %44, label %33

33:                                               ; preds = %28
  %34 = getelementptr [52 x %struct.bcm2835_clk_desc], ptr @clk_desc_array, i32 0, i32 %29, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = load i32, ptr %3, align 4
  %37 = and i32 %36, %35
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %33
  %40 = getelementptr [52 x %struct.bcm2835_clk_desc], ptr @clk_desc_array, i32 0, i32 %29, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = tail call ptr %31(ptr noundef nonnull %6, ptr noundef %41) #12
  %43 = getelementptr ptr, ptr %27, i32 %29
  store ptr %42, ptr %43, align 4
  br label %44

44:                                               ; preds = %39, %33, %28
  %45 = add nuw nsw i32 %29, 1
  %46 = icmp eq i32 %45, 52
  br i1 %46, label %47, label %28

47:                                               ; preds = %44
  %48 = getelementptr %struct.bcm2835_cprman, ptr %6, i32 3, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.clk_hw, ptr %49, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = tail call ptr @clk_get_parent(ptr noundef %51) #12
  %53 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %61, label %54

54:                                               ; preds = %47
  %55 = tail call i32 @clk_prepare(ptr noundef %52) #12
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = tail call i32 @clk_enable(ptr noundef %52) #12
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  tail call void @clk_unprepare(ptr noundef %52) #12
  br label %66

61:                                               ; preds = %47
  %62 = ptrtoint ptr %52 to i32
  br label %66

63:                                               ; preds = %57
  %64 = load ptr, ptr %17, align 8
  %65 = tail call i32 @of_clk_add_hw_provider(ptr noundef %64, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %24) #12
  br label %66

66:                                               ; preds = %63, %61, %60, %54, %15, %13, %5, %1
  %67 = phi i32 [ %14, %13 ], [ %65, %63 ], [ -19, %1 ], [ -12, %5 ], [ -19, %15 ], [ %62, %61 ], [ %58, %60 ], [ %55, %54 ]
  ret i32 %67
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_parent_fill(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @bcm2835_register_pll(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #12
  %4 = getelementptr inbounds %struct.bcm2835_cprman, ptr %0, i32 0, i32 4
  %5 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 2
  %6 = getelementptr inbounds i8, ptr %3, i32 12
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  store ptr %4, ptr %5, align 4
  %7 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 5
  store i8 1, ptr %7, align 4
  %8 = load ptr, ptr %1, align 4
  store ptr %8, ptr %3, align 4
  %9 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 1
  store ptr @bcm2835_pll_clk_ops, ptr %9, align 4
  %10 = getelementptr inbounds %struct.bcm2835_pll_data, ptr %1, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = or i32 %11, 8
  %13 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 6
  store i32 %12, ptr %13, align 4
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 20) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.bcm2835_pll, ptr %15, i32 0, i32 1
  store ptr %0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.bcm2835_pll, ptr %15, i32 0, i32 2
  store ptr %1, ptr %19, align 8
  %20 = getelementptr inbounds %struct.clk_hw, ptr %15, i32 0, i32 2
  store ptr %3, ptr %20, align 8
  %21 = load ptr, ptr %0, align 4
  %22 = call i32 @devm_clk_hw_register(ptr noundef %21, ptr noundef nonnull %15) #12
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  call void @kfree(ptr noundef nonnull %15) #12
  br label %25

25:                                               ; preds = %24, %17, %2
  %26 = phi ptr [ null, %24 ], [ null, %2 ], [ %15, %17 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #12
  ret ptr %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @bcm2835_register_pll_divider(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #12
  %4 = getelementptr inbounds %struct.bcm2835_pll_divider_data, ptr %1, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 4
  %9 = load ptr, ptr %1, align 4
  %10 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %8, i32 noundef 3264, ptr noundef nonnull @.str.120, ptr noundef %9) #12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %56, label %14

12:                                               ; preds = %2
  %13 = load ptr, ptr %1, align 4
  br label %14

14:                                               ; preds = %12, %7
  %15 = phi ptr [ %10, %7 ], [ %13, %12 ]
  %16 = getelementptr inbounds i8, ptr %3, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %16, i8 0, i32 12, i1 false)
  %17 = getelementptr inbounds %struct.bcm2835_pll_divider_data, ptr %1, i32 0, i32 1
  %18 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 2
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 5
  store i8 1, ptr %19, align 4
  store ptr %15, ptr %3, align 4
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 1
  store ptr @bcm2835_pll_divider_clk_ops, ptr %20, align 4
  %21 = getelementptr inbounds %struct.bcm2835_pll_divider_data, ptr %1, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = or i32 %22, 8
  %24 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 6
  store i32 %23, ptr %24, align 4
  %25 = load ptr, ptr %0, align 4
  %26 = tail call noalias ptr @devm_kmalloc(ptr noundef %25, i32 noundef 36, i32 noundef 3520) #12
  %27 = icmp eq ptr %26, null
  br i1 %27, label %56, label %28

28:                                               ; preds = %14
  %29 = getelementptr inbounds %struct.bcm2835_cprman, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.bcm2835_pll_divider_data, ptr %1, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr i8, ptr %30, i32 %32
  %34 = getelementptr inbounds %struct.clk_divider, ptr %26, i32 0, i32 1
  store ptr %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.clk_divider, ptr %26, i32 0, i32 2
  store i8 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.clk_divider, ptr %26, i32 0, i32 3
  store i8 8, ptr %36, align 1
  %37 = getelementptr inbounds %struct.clk_divider, ptr %26, i32 0, i32 4
  store i8 64, ptr %37, align 2
  %38 = getelementptr inbounds %struct.bcm2835_cprman, ptr %0, i32 0, i32 2
  %39 = getelementptr inbounds %struct.clk_divider, ptr %26, i32 0, i32 6
  store ptr %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.clk_hw, ptr %26, i32 0, i32 2
  store ptr %3, ptr %40, align 4
  %41 = getelementptr inbounds %struct.clk_divider, ptr %26, i32 0, i32 5
  store ptr null, ptr %41, align 4
  %42 = getelementptr inbounds %struct.bcm2835_pll_divider, ptr %26, i32 0, i32 1
  store ptr %0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.bcm2835_pll_divider, ptr %26, i32 0, i32 2
  store ptr %1, ptr %43, align 4
  %44 = load ptr, ptr %0, align 4
  %45 = call i32 @devm_clk_hw_register(ptr noundef %44, ptr noundef nonnull %26) #12
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %28
  %48 = inttoptr i32 %45 to ptr
  br label %56

49:                                               ; preds = %28
  %50 = load i32, ptr %4, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %0, align 4
  %54 = load ptr, ptr %1, align 4
  %55 = call ptr @clk_hw_register_fixed_factor(ptr noundef %53, ptr noundef %54, ptr noundef %15, i32 noundef 4, i32 noundef 1, i32 noundef %50) #12
  br label %56

56:                                               ; preds = %52, %49, %47, %14, %7
  %57 = phi ptr [ %48, %47 ], [ %55, %52 ], [ null, %7 ], [ null, %14 ], [ %26, %49 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #12
  ret ptr %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @bcm2835_register_clock(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.clk_init_data, align 4
  %4 = alloca [16 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %4, i8 0, i32 64, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.bcm2835_clock_data, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bcm2835_clock_data, ptr %1, i32 0, i32 1
  br label %10

10:                                               ; preds = %21, %8
  %11 = phi i32 [ 0, %8 ], [ %22, %21 ]
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr ptr, ptr %12, i32 %11
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr [16 x ptr], ptr %4, i32 0, i32 %11
  store ptr %14, ptr %15, align 4
  %16 = tail call i32 @match_string(ptr noundef nonnull @cprman_parent_names, i32 noundef 7, ptr noundef %14) #12
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = getelementptr %struct.bcm2835_cprman, ptr %0, i32 0, i32 4, i32 %16
  %20 = load ptr, ptr %19, align 4
  store ptr %20, ptr %15, align 4
  br label %21

21:                                               ; preds = %18, %10
  %22 = add nuw i32 %11, 1
  %23 = load i32, ptr %5, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %10, label %25

25:                                               ; preds = %21
  %26 = trunc i32 %23 to i8
  br label %27

27:                                               ; preds = %25, %2
  %28 = phi i8 [ 0, %2 ], [ %26, %25 ]
  %29 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %29, i8 0, i32 20, i1 false)
  %30 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 2
  store ptr %4, ptr %30, align 4
  %31 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 5
  store i8 %28, ptr %31, align 4
  %32 = load ptr, ptr %1, align 4
  store ptr %32, ptr %3, align 4
  %33 = getelementptr inbounds %struct.bcm2835_clock_data, ptr %1, i32 0, i32 8
  %34 = load i32, ptr %33, align 4
  %35 = or i32 %34, 8
  %36 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 6
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.bcm2835_clock_data, ptr %1, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %27
  %41 = or i32 %34, 12
  store i32 %41, ptr %36, align 4
  br label %42

42:                                               ; preds = %40, %27
  %43 = phi i32 [ %41, %40 ], [ %35, %27 ]
  %44 = getelementptr inbounds %struct.bcm2835_clock_data, ptr %1, i32 0, i32 9
  %45 = load i8, ptr %44, align 4, !range !9
  %46 = icmp eq i8 %45, 0
  %47 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 1
  br i1 %46, label %49, label %48

48:                                               ; preds = %42
  store ptr @bcm2835_vpu_clock_clk_ops, ptr %47, align 4
  br label %61

49:                                               ; preds = %42
  store ptr @bcm2835_clock_clk_ops, ptr %47, align 4
  %50 = or i32 %43, 3
  store i32 %50, ptr %36, align 4
  %51 = getelementptr inbounds %struct.bcm2835_clock_data, ptr %1, i32 0, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.bcm2835_cprman, ptr %0, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %54, i32 %52
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #12, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %57 = and i32 %56, 16
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = and i32 %50, -2049
  store i32 %60, ptr %36, align 4
  br label %61

61:                                               ; preds = %59, %49, %48
  %62 = load ptr, ptr %0, align 4
  %63 = call noalias ptr @devm_kmalloc(ptr noundef %62, i32 noundef 20, i32 noundef 3520) #12
  %64 = icmp eq ptr %63, null
  br i1 %64, label %74, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.bcm2835_clock, ptr %63, i32 0, i32 1
  store ptr %0, ptr %66, align 4
  %67 = getelementptr inbounds %struct.bcm2835_clock, ptr %63, i32 0, i32 2
  store ptr %1, ptr %67, align 4
  %68 = getelementptr inbounds %struct.clk_hw, ptr %63, i32 0, i32 2
  store ptr %3, ptr %68, align 4
  %69 = load ptr, ptr %0, align 4
  %70 = call i32 @devm_clk_hw_register(ptr noundef %69, ptr noundef nonnull %63) #12
  %71 = icmp eq i32 %70, 0
  %72 = inttoptr i32 %70 to ptr
  %73 = select i1 %71, ptr %63, ptr %72
  br label %74

74:                                               ; preds = %65, %61
  %75 = phi ptr [ null, %61 ], [ %73, %65 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #12
  ret ptr %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @bcm2835_register_gate(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = load ptr, ptr %1, align 4
  %5 = getelementptr inbounds %struct.bcm2835_gate_data, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.bcm2835_cprman, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.bcm2835_gate_data, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %8, i32 %10
  %12 = getelementptr inbounds %struct.bcm2835_cprman, ptr %0, i32 0, i32 2
  %13 = tail call ptr @__clk_hw_register_gate(ptr noundef %3, ptr noundef null, ptr noundef %4, ptr noundef %6, ptr noundef null, ptr noundef null, i32 noundef 9, ptr noundef %11, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef %12) #12
  ret ptr %13
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_pll_on(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.bcm2835_pll, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bcm2835_pll, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.bcm2835_pll_data, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.bcm2835_cprman, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 %7
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %12 = and i32 %11, -1510014977
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !12
  tail call void @arm_heavy_mb() #12
  %13 = or i32 %12, 1509949440
  %14 = load ptr, ptr %8, align 4
  %15 = getelementptr i8, ptr %14, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #12, !srcloc !13
  %16 = getelementptr inbounds %struct.bcm2835_cprman, ptr %3, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %16) #12
  %17 = getelementptr inbounds %struct.bcm2835_pll_data, ptr %5, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %8, align 4
  %20 = getelementptr i8, ptr %19, i32 %18
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %22 = and i32 %21, -1509949697
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !12
  tail call void @arm_heavy_mb() #12
  %23 = or i32 %22, 1509949440
  %24 = load ptr, ptr %8, align 4
  %25 = getelementptr i8, ptr %24, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #12, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %26 = load i16, ptr %16, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  %28 = tail call i64 @ktime_get() #12
  %29 = add i64 %28, 100000000
  %30 = load ptr, ptr %8, align 4
  %31 = getelementptr i8, ptr %30, i32 276
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %33 = getelementptr inbounds %struct.bcm2835_pll_data, ptr %5, i32 0, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, %32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %43, %1
  %38 = tail call i64 @ktime_get() #12
  %39 = icmp sgt i64 %38, %29
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load ptr, ptr %3, align 4
  %42 = tail call ptr @clk_hw_get_name(ptr noundef %0) #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.111, ptr noundef %42) #14
  br label %58

43:                                               ; preds = %37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !18
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !19
  %44 = load ptr, ptr %8, align 4
  %45 = getelementptr i8, ptr %44, i32 276
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %47 = load i32, ptr %33, align 4
  %48 = and i32 %47, %46
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %37, label %50

50:                                               ; preds = %43, %1
  %51 = load i32, ptr %6, align 4
  %52 = load ptr, ptr %8, align 4
  %53 = getelementptr i8, ptr %52, i32 %51
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !12
  tail call void @arm_heavy_mb() #12
  %55 = or i32 %54, 1510080512
  %56 = load ptr, ptr %8, align 4
  %57 = getelementptr i8, ptr %56, i32 %51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #12, !srcloc !13
  br label %58

58:                                               ; preds = %50, %40
  %59 = phi i32 [ -110, %40 ], [ 0, %50 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2835_pll_off(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.bcm2835_pll, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bcm2835_pll, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.bcm2835_cprman, ptr %3, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %6) #12
  %7 = getelementptr inbounds %struct.bcm2835_pll_data, ptr %5, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !12
  tail call void @arm_heavy_mb() #12
  %9 = getelementptr inbounds %struct.bcm2835_cprman, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 1509949696) #12, !srcloc !13
  %12 = getelementptr inbounds %struct.bcm2835_pll_data, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr i8, ptr %14, i32 %13
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !12
  tail call void @arm_heavy_mb() #12
  %17 = or i32 %16, 1510014976
  %18 = load ptr, ptr %9, align 4
  %19 = getelementptr i8, ptr %18, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #12, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %20 = load i16, ptr %6, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_pll_is_on(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.bcm2835_pll, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bcm2835_pll, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.bcm2835_pll_data, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.bcm2835_cprman, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 %7
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %12 = and i32 %11, 131072
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_pll_get_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.bcm2835_pll, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bcm2835_pll, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.bcm2835_pll_data, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.bcm2835_cprman, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 %8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %63, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.bcm2835_pll_data, ptr %6, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %9, align 4
  %18 = getelementptr i8, ptr %17, i32 %16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %20 = and i32 %19, 1048575
  %21 = and i32 %12, 1023
  %22 = lshr i32 %12, 12
  %23 = and i32 %22, 7
  %24 = getelementptr inbounds %struct.bcm2835_pll_data, ptr %6, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 4
  %27 = load ptr, ptr %9, align 4
  %28 = getelementptr i8, ptr %27, i32 %26
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %30 = getelementptr inbounds %struct.bcm2835_cprman, ptr %4, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %14
  %35 = getelementptr inbounds %struct.bcm2835_pll_data, ptr %6, i32 0, i32 8
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.bcm2835_pll_ana_bits, ptr %36, i32 0, i32 6
  %38 = load i32, ptr %37, align 4
  br label %39

39:                                               ; preds = %34, %14
  %40 = phi i32 [ %38, %34 ], [ 0, %14 ]
  %41 = icmp eq i32 %23, 0
  br i1 %41, label %63, label %42

42:                                               ; preds = %39
  %43 = and i32 %40, %29
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = shl nuw nsw i32 %20, %45
  %47 = shl nuw nsw i32 %21, %45
  %48 = zext i32 %1 to i64
  %49 = shl nuw nsw i32 %47, 20
  %50 = add nuw nsw i32 %49, %46
  %51 = zext i32 %50 to i64
  %52 = mul nuw nsw i64 %51, %48
  %53 = icmp ult i64 %52, 4294967296
  br i1 %53, label %54, label %58, !prof !20

54:                                               ; preds = %42
  %55 = trunc i64 %52 to i32
  %56 = udiv i32 %55, %23
  %57 = lshr i32 %56, 20
  br label %63

58:                                               ; preds = %42
  %59 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %23, i64 %52) #15, !srcloc !21
  %60 = extractvalue { i64, i64 } %59, 1
  %61 = lshr i64 %60, 20
  %62 = trunc i64 %61 to i32
  br label %63

63:                                               ; preds = %58, %54, %39, %2
  %64 = phi i32 [ 0, %2 ], [ 0, %39 ], [ %57, %54 ], [ %62, %58 ]
  ret i32 %64
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @bcm2835_pll_round_rate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #6 {
  %4 = getelementptr inbounds %struct.bcm2835_pll, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.bcm2835_pll_data, ptr %5, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @llvm.umax.i32(i32 %7, i32 %1)
  %9 = getelementptr inbounds %struct.bcm2835_pll_data, ptr %5, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @llvm.umin.i32(i32 %8, i32 %10)
  %12 = load i32, ptr %2, align 4
  %13 = zext i32 %11 to i64
  %14 = shl nuw nsw i64 %13, 20
  %15 = icmp ult i32 %11, 4096
  br i1 %15, label %16, label %20, !prof !20

16:                                               ; preds = %3
  %17 = trunc i64 %14 to i32
  %18 = udiv i32 %17, %12
  %19 = lshr i32 %18, 20
  br label %26

20:                                               ; preds = %3
  %21 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %12, i64 %14) #15, !srcloc !21
  %22 = extractvalue { i64, i64 } %21, 1
  %23 = trunc i64 %22 to i32
  %24 = lshr i64 %22, 20
  %25 = trunc i64 %24 to i32
  br label %26

26:                                               ; preds = %20, %16
  %27 = phi i32 [ %18, %16 ], [ %23, %20 ]
  %28 = phi i32 [ %19, %16 ], [ %25, %20 ]
  %29 = and i32 %27, 1048575
  %30 = zext i32 %12 to i64
  %31 = shl i32 %28, 20
  %32 = or i32 %31, %29
  %33 = zext i32 %32 to i64
  %34 = mul nuw i64 %33, %30
  %35 = lshr i64 %34, 20
  %36 = trunc i64 %35 to i32
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_pll_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.bcm2835_pll, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.bcm2835_pll, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.bcm2835_cprman, ptr %5, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.bcm2835_pll_data, ptr %7, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.bcm2835_pll_ana_bits, ptr %14, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %12, %3
  %18 = phi i32 [ %16, %12 ], [ 0, %3 ]
  %19 = getelementptr inbounds %struct.bcm2835_pll_data, ptr %7, i32 0, i32 11
  %20 = load i32, ptr %19, align 4
  %21 = icmp ult i32 %20, %1
  %22 = zext i1 %21 to i32
  %23 = lshr i32 %1, %22
  %24 = zext i32 %23 to i64
  %25 = shl nuw nsw i64 %24, 20
  %26 = icmp ult i32 %23, 4096
  br i1 %26, label %27, label %31, !prof !20

27:                                               ; preds = %17
  %28 = trunc i64 %25 to i32
  %29 = udiv i32 %28, %2
  %30 = lshr i32 %29, 20
  br label %37

31:                                               ; preds = %17
  %32 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %2, i64 %25) #15, !srcloc !21
  %33 = extractvalue { i64, i64 } %32, 1
  %34 = trunc i64 %33 to i32
  %35 = lshr i64 %33, 20
  %36 = trunc i64 %35 to i32
  br label %37

37:                                               ; preds = %31, %27
  %38 = phi i32 [ %29, %27 ], [ %34, %31 ]
  %39 = phi i32 [ %30, %27 ], [ %36, %31 ]
  %40 = getelementptr inbounds %struct.bcm2835_pll_data, ptr %7, i32 0, i32 4
  %41 = getelementptr inbounds %struct.bcm2835_cprman, ptr %5, i32 0, i32 1
  %42 = load i32, ptr %40, align 4
  %43 = add i32 %42, 12
  %44 = load ptr, ptr %41, align 4
  %45 = getelementptr i8, ptr %44, i32 %43
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %47 = load i32, ptr %40, align 4
  %48 = add i32 %47, 8
  %49 = load ptr, ptr %41, align 4
  %50 = getelementptr i8, ptr %49, i32 %48
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %52 = load i32, ptr %40, align 4
  %53 = add i32 %52, 4
  %54 = load ptr, ptr %41, align 4
  %55 = getelementptr i8, ptr %54, i32 %53
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %57 = load i32, ptr %40, align 4
  %58 = load ptr, ptr %41, align 4
  %59 = getelementptr i8, ptr %58, i32 %57
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %61 = and i32 %38, 1048575
  %62 = and i32 %56, %18
  %63 = icmp eq i32 %62, 0
  %64 = getelementptr inbounds %struct.bcm2835_pll_data, ptr %7, i32 0, i32 8
  %65 = load ptr, ptr %64, align 4
  %66 = load i32, ptr %65, align 4
  %67 = xor i32 %66, -1
  %68 = and i32 %60, %67
  %69 = getelementptr inbounds %struct.bcm2835_pll_ana_bits, ptr %65, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = or i32 %70, %68
  %72 = getelementptr inbounds %struct.bcm2835_pll_ana_bits, ptr %65, i32 0, i32 2
  %73 = load i32, ptr %72, align 4
  %74 = xor i32 %73, -1
  %75 = and i32 %56, %74
  %76 = getelementptr inbounds %struct.bcm2835_pll_ana_bits, ptr %65, i32 0, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = or i32 %77, %75
  %79 = getelementptr inbounds %struct.bcm2835_pll_ana_bits, ptr %65, i32 0, i32 4
  %80 = load i32, ptr %79, align 4
  %81 = xor i32 %80, -1
  %82 = and i32 %46, %81
  %83 = getelementptr inbounds %struct.bcm2835_pll_ana_bits, ptr %65, i32 0, i32 5
  %84 = load i32, ptr %83, align 4
  %85 = or i32 %84, %82
  %86 = select i1 %63, i1 true, i1 %21
  br i1 %86, label %90, label %87

87:                                               ; preds = %37
  %88 = xor i32 %18, -1
  %89 = and i32 %78, %88
  br label %95

90:                                               ; preds = %37
  %91 = select i1 %63, i1 %21, i1 false
  %92 = select i1 %91, i32 %18, i32 0
  %93 = or i32 %78, %92
  %94 = xor i1 %91, true
  br label %95

95:                                               ; preds = %90, %87
  %96 = phi i32 [ %89, %87 ], [ %93, %90 ]
  %97 = phi i1 [ true, %87 ], [ %94, %90 ]
  %98 = getelementptr inbounds %struct.bcm2835_cprman, ptr %5, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %98) #12
  %99 = load ptr, ptr %41, align 4
  %100 = getelementptr i8, ptr %99, i32 4496
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %102 = getelementptr inbounds %struct.bcm2835_pll_data, ptr %7, i32 0, i32 5
  %103 = load i32, ptr %102, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !12
  tail call void @arm_heavy_mb() #12
  %104 = or i32 %101, %103
  %105 = or i32 %104, 1509949440
  %106 = load ptr, ptr %41, align 4
  %107 = getelementptr i8, ptr %106, i32 4496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %105) #12, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %108 = load i16, ptr %98, align 4
  %109 = add i16 %108, 1
  store i16 %109, ptr %98, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  br i1 %97, label %110, label %127

110:                                              ; preds = %95
  %111 = load i32, ptr %40, align 4
  %112 = add i32 %111, 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !12
  tail call void @arm_heavy_mb() #12
  %113 = or i32 %85, 1509949440
  %114 = load ptr, ptr %41, align 4
  %115 = getelementptr i8, ptr %114, i32 %112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %113) #12, !srcloc !13
  %116 = add i32 %111, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !12
  tail call void @arm_heavy_mb() #12
  %117 = or i32 %51, 1509949440
  %118 = load ptr, ptr %41, align 4
  %119 = getelementptr i8, ptr %118, i32 %116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 %117) #12, !srcloc !13
  %120 = add i32 %111, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !12
  tail call void @arm_heavy_mb() #12
  %121 = or i32 %96, 1509949440
  %122 = load ptr, ptr %41, align 4
  %123 = getelementptr i8, ptr %122, i32 %120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 %121) #12, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !12
  tail call void @arm_heavy_mb() #12
  %124 = or i32 %71, 1509949440
  %125 = load ptr, ptr %41, align 4
  %126 = getelementptr i8, ptr %125, i32 %111
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 %124) #12, !srcloc !13
  br label %127

127:                                              ; preds = %110, %95
  %128 = getelementptr inbounds %struct.bcm2835_pll_data, ptr %7, i32 0, i32 3
  %129 = load i32, ptr %128, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !12
  tail call void @arm_heavy_mb() #12
  %130 = or i32 %61, 1509949440
  %131 = load ptr, ptr %41, align 4
  %132 = getelementptr i8, ptr %131, i32 %129
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %130) #12, !srcloc !13
  %133 = getelementptr inbounds %struct.bcm2835_pll_data, ptr %7, i32 0, i32 2
  %134 = load i32, ptr %133, align 4
  %135 = load ptr, ptr %41, align 4
  %136 = getelementptr i8, ptr %135, i32 %134
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %136) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %138 = and i32 %137, -1509979136
  %139 = and i32 %39, -1509978113
  %140 = load i32, ptr %133, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !12
  tail call void @arm_heavy_mb() #12
  %141 = or i32 %139, %138
  %142 = or i32 %141, 1509953536
  %143 = load ptr, ptr %41, align 4
  %144 = getelementptr i8, ptr %143, i32 %140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %142) #12, !srcloc !13
  br i1 %97, label %162, label %145

145:                                              ; preds = %127
  %146 = load i32, ptr %40, align 4
  %147 = add i32 %146, 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !12
  tail call void @arm_heavy_mb() #12
  %148 = or i32 %85, 1509949440
  %149 = load ptr, ptr %41, align 4
  %150 = getelementptr i8, ptr %149, i32 %147
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 %148) #12, !srcloc !13
  %151 = add i32 %146, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !12
  tail call void @arm_heavy_mb() #12
  %152 = or i32 %51, 1509949440
  %153 = load ptr, ptr %41, align 4
  %154 = getelementptr i8, ptr %153, i32 %151
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 %152) #12, !srcloc !13
  %155 = add i32 %146, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !12
  tail call void @arm_heavy_mb() #12
  %156 = or i32 %96, 1509949440
  %157 = load ptr, ptr %41, align 4
  %158 = getelementptr i8, ptr %157, i32 %155
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 %156) #12, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !12
  tail call void @arm_heavy_mb() #12
  %159 = or i32 %71, 1509949440
  %160 = load ptr, ptr %41, align 4
  %161 = getelementptr i8, ptr %160, i32 %146
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %161, i32 %159) #12, !srcloc !13
  br label %162

162:                                              ; preds = %145, %127
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2835_pll_debug_init(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.bcm2835_pll, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bcm2835_pll, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 56, i32 noundef 3520) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %46, label %10

10:                                               ; preds = %2
  store ptr @.str.112, ptr %8, align 4
  %11 = getelementptr inbounds %struct.bcm2835_pll_data, ptr %6, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.debugfs_reg32, ptr %8, i32 0, i32 1
  store i32 %12, ptr %13, align 4
  %14 = getelementptr %struct.debugfs_reg32, ptr %8, i32 1
  store ptr @.str.113, ptr %14, align 4
  %15 = getelementptr inbounds %struct.bcm2835_pll_data, ptr %6, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr %struct.debugfs_reg32, ptr %8, i32 1, i32 1
  store i32 %16, ptr %17, align 4
  %18 = getelementptr %struct.debugfs_reg32, ptr %8, i32 2
  store ptr @.str.114, ptr %18, align 4
  %19 = getelementptr inbounds %struct.bcm2835_pll_data, ptr %6, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr %struct.debugfs_reg32, ptr %8, i32 2, i32 1
  store i32 %20, ptr %21, align 4
  %22 = getelementptr %struct.debugfs_reg32, ptr %8, i32 3
  store ptr @.str.115, ptr %22, align 4
  %23 = getelementptr inbounds %struct.bcm2835_pll_data, ptr %6, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr %struct.debugfs_reg32, ptr %8, i32 3, i32 1
  store i32 %24, ptr %25, align 4
  %26 = getelementptr %struct.debugfs_reg32, ptr %8, i32 4
  store ptr @.str.116, ptr %26, align 4
  %27 = load i32, ptr %23, align 4
  %28 = add i32 %27, 4
  %29 = getelementptr %struct.debugfs_reg32, ptr %8, i32 4, i32 1
  store i32 %28, ptr %29, align 4
  %30 = getelementptr %struct.debugfs_reg32, ptr %8, i32 5
  store ptr @.str.117, ptr %30, align 4
  %31 = load i32, ptr %23, align 4
  %32 = add i32 %31, 8
  %33 = getelementptr %struct.debugfs_reg32, ptr %8, i32 5, i32 1
  store i32 %32, ptr %33, align 4
  %34 = getelementptr %struct.debugfs_reg32, ptr %8, i32 6
  store ptr @.str.118, ptr %34, align 4
  %35 = load i32, ptr %23, align 4
  %36 = add i32 %35, 12
  %37 = getelementptr %struct.debugfs_reg32, ptr %8, i32 6, i32 1
  store i32 %36, ptr %37, align 4
  %38 = load ptr, ptr %4, align 4
  %39 = tail call noalias ptr @devm_kmalloc(ptr noundef %38, i32 noundef 16, i32 noundef 3520) #12
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %10
  store ptr %8, ptr %39, align 4
  %42 = getelementptr inbounds %struct.debugfs_regset32, ptr %39, i32 0, i32 1
  store i32 7, ptr %42, align 4
  %43 = getelementptr inbounds %struct.bcm2835_cprman, ptr %4, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.debugfs_regset32, ptr %39, i32 0, i32 2
  store ptr %44, ptr %45, align 4
  tail call void @debugfs_create_regset32(ptr noundef nonnull @.str.119, i16 noundef zeroext 292, ptr noundef %1, ptr noundef nonnull %39) #12
  br label %46

46:                                               ; preds = %41, %10, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_regset32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_pll_divider_on(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.bcm2835_pll_divider, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bcm2835_pll_divider, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.bcm2835_cprman, ptr %3, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %6) #12
  %7 = getelementptr inbounds %struct.bcm2835_pll_divider_data, ptr %5, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.bcm2835_cprman, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 %8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %13 = and i32 %12, -1509949697
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !12
  tail call void @arm_heavy_mb() #12
  %14 = or i32 %13, 1509949440
  %15 = load ptr, ptr %9, align 4
  %16 = getelementptr i8, ptr %15, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #12, !srcloc !13
  %17 = getelementptr inbounds %struct.bcm2835_pll_divider_data, ptr %5, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %9, align 4
  %20 = getelementptr i8, ptr %19, i32 %18
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %22 = getelementptr inbounds %struct.bcm2835_pll_divider_data, ptr %5, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %21, %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !12
  tail call void @arm_heavy_mb() #12
  %26 = or i32 %25, 1509949440
  %27 = load ptr, ptr %9, align 4
  %28 = getelementptr i8, ptr %27, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #12, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %29 = load i16, ptr %6, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2835_pll_divider_off(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.bcm2835_pll_divider, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bcm2835_pll_divider, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.bcm2835_cprman, ptr %3, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %6) #12
  %7 = getelementptr inbounds %struct.bcm2835_pll_divider_data, ptr %5, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.bcm2835_cprman, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 %8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %13 = getelementptr inbounds %struct.bcm2835_pll_divider_data, ptr %5, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %12, %15
  %17 = getelementptr inbounds %struct.bcm2835_pll_divider_data, ptr %5, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !12
  tail call void @arm_heavy_mb() #12
  %19 = or i32 %18, %16
  %20 = or i32 %19, 1509949440
  %21 = load ptr, ptr %9, align 4
  %22 = getelementptr i8, ptr %21, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #12, !srcloc !13
  %23 = getelementptr inbounds %struct.bcm2835_pll_divider_data, ptr %5, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = load ptr, ptr %9, align 4
  %26 = getelementptr i8, ptr %25, i32 %24
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !12
  tail call void @arm_heavy_mb() #12
  %28 = or i32 %27, 1509949696
  %29 = load ptr, ptr %9, align 4
  %30 = getelementptr i8, ptr %29, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #12, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %31 = load i16, ptr %6, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_pll_divider_is_on(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.bcm2835_pll_divider, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bcm2835_pll_divider, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.bcm2835_pll_divider_data, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.bcm2835_cprman, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 %7
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %12 = lshr i32 %11, 8
  %13 = and i32 %12, 1
  %14 = xor i32 %13, 1
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_pll_divider_get_rate(ptr noundef %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_divider_ops, i32 0, i32 10), align 4
  %4 = tail call i32 %3(ptr noundef %0, i32 noundef %1) #12
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_pll_divider_determine_rate(ptr noundef %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_divider_ops, i32 0, i32 12), align 4
  %4 = tail call i32 %3(ptr noundef %0, ptr noundef %1) #12
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_pll_divider_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.bcm2835_pll_divider, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.bcm2835_pll_divider, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = zext i32 %2 to i64
  %9 = zext i32 %1 to i64
  %10 = add nsw i64 %9, -1
  %11 = add nsw i64 %10, %8
  %12 = icmp ult i64 %11, 4294967296
  br i1 %12, label %13, label %16, !prof !20

13:                                               ; preds = %3
  %14 = trunc i64 %11 to i32
  %15 = udiv i32 %14, %1
  br label %20

16:                                               ; preds = %3
  %17 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %11) #15, !srcloc !21
  %18 = extractvalue { i64, i64 } %17, 1
  %19 = trunc i64 %18 to i32
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi i32 [ %15, %13 ], [ %19, %16 ]
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 256)
  %23 = icmp ugt i32 %21, 255
  %24 = getelementptr inbounds %struct.bcm2835_pll_divider_data, ptr %7, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !12
  tail call void @arm_heavy_mb() #12
  %26 = or i32 %22, 1509949440
  %27 = select i1 %23, i32 1509949440, i32 %26
  %28 = getelementptr inbounds %struct.bcm2835_cprman, ptr %5, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %27) #12, !srcloc !13
  %31 = getelementptr inbounds %struct.bcm2835_pll_divider_data, ptr %7, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %28, align 4
  %34 = getelementptr i8, ptr %33, i32 %32
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %36 = load i32, ptr %31, align 4
  %37 = getelementptr inbounds %struct.bcm2835_pll_divider_data, ptr %7, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !12
  tail call void @arm_heavy_mb() #12
  %39 = or i32 %35, %38
  %40 = or i32 %39, 1509949440
  %41 = load ptr, ptr %28, align 4
  %42 = getelementptr i8, ptr %41, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #12, !srcloc !13
  %43 = load i32, ptr %31, align 4
  %44 = load i32, ptr %37, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %35, %45
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !12
  tail call void @arm_heavy_mb() #12
  %47 = or i32 %46, 1509949440
  %48 = load ptr, ptr %28, align 4
  %49 = getelementptr i8, ptr %48, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #12, !srcloc !13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2835_pll_divider_debug_init(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.bcm2835_pll_divider, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bcm2835_pll_divider, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 56, i32 noundef 3520) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %2
  store ptr @.str.121, ptr %8, align 4
  %11 = getelementptr inbounds %struct.bcm2835_pll_divider_data, ptr %6, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.debugfs_reg32, ptr %8, i32 0, i32 1
  store i32 %12, ptr %13, align 4
  %14 = getelementptr %struct.debugfs_reg32, ptr %8, i32 1
  store ptr @.str.122, ptr %14, align 4
  %15 = getelementptr inbounds %struct.bcm2835_pll_divider_data, ptr %6, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr %struct.debugfs_reg32, ptr %8, i32 1, i32 1
  store i32 %16, ptr %17, align 4
  %18 = load ptr, ptr %4, align 4
  %19 = tail call noalias ptr @devm_kmalloc(ptr noundef %18, i32 noundef 16, i32 noundef 3520) #12
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %10
  store ptr %8, ptr %19, align 4
  %22 = getelementptr inbounds %struct.debugfs_regset32, ptr %19, i32 0, i32 1
  store i32 2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.bcm2835_cprman, ptr %4, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.debugfs_regset32, ptr %19, i32 0, i32 2
  store ptr %24, ptr %25, align 4
  tail call void @debugfs_create_regset32(ptr noundef nonnull @.str.119, i16 noundef zeroext 292, ptr noundef %1, ptr noundef nonnull %19) #12
  br label %26

26:                                               ; preds = %21, %10, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bcm2835_vpu_clock_is_on(ptr nocapture noundef readnone %0) #9 {
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_clock_get_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.bcm2835_clock, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bcm2835_clock, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.bcm2835_clock_data, ptr %6, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.bcm2835_clock_data, ptr %6, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %49, label %14

14:                                               ; preds = %10, %2
  %15 = getelementptr inbounds %struct.bcm2835_clock_data, ptr %6, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.bcm2835_cprman, ptr %4, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 %16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %21 = load ptr, ptr %5, align 4
  %22 = getelementptr inbounds %struct.bcm2835_clock_data, ptr %21, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds %struct.bcm2835_clock_data, ptr %21, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %24, i1 %27, i1 false
  br i1 %28, label %49, label %29

29:                                               ; preds = %14
  %30 = sub i32 12, %26
  %31 = lshr i32 %20, %30
  %32 = add i32 %26, %23
  %33 = shl nsw i32 -1, %32
  %34 = xor i32 %33, -1
  %35 = and i32 %31, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %29
  %38 = zext i32 %1 to i64
  %39 = zext i32 %26 to i64
  %40 = shl i64 %38, %39
  %41 = icmp ult i64 %40, 4294967296
  br i1 %41, label %42, label %45, !prof !20

42:                                               ; preds = %37
  %43 = trunc i64 %40 to i32
  %44 = udiv i32 %43, %35
  br label %49

45:                                               ; preds = %37
  %46 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %35, i64 %40) #15, !srcloc !21
  %47 = extractvalue { i64, i64 } %46, 1
  %48 = trunc i64 %47 to i32
  br label %49

49:                                               ; preds = %45, %42, %29, %14, %10
  %50 = phi i32 [ %1, %10 ], [ 0, %29 ], [ %44, %42 ], [ %48, %45 ], [ %1, %14 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_clock_determine_rate(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @clk_hw_get_name(ptr noundef nonnull %3) #12
  %7 = tail call i32 @strncmp(ptr noundef %6, ptr noundef nonnull dereferenceable(5) @.str.11, i32 noundef 4) #12
  %8 = icmp eq i32 %7, 0
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi i1 [ %8, %5 ], [ false, %2 ]
  %11 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %229, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.bcm2835_clock, ptr %0, i32 0, i32 1
  %15 = getelementptr inbounds %struct.bcm2835_clock, ptr %0, i32 0, i32 2
  br label %16

16:                                               ; preds = %216, %13
  %17 = phi ptr [ null, %13 ], [ %220, %216 ]
  %18 = phi i32 [ 0, %13 ], [ %221, %216 ]
  %19 = phi i32 [ 0, %13 ], [ %219, %216 ]
  %20 = phi i32 [ 0, %13 ], [ %218, %216 ]
  %21 = phi i32 [ 0, %13 ], [ %217, %216 ]
  %22 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef %18) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %216, label %24

24:                                               ; preds = %16
  %25 = tail call ptr @clk_hw_get_name(ptr noundef nonnull %22) #12
  %26 = tail call i32 @strncmp(ptr noundef %25, ptr noundef nonnull dereferenceable(5) @.str.11, i32 noundef 4) #12
  %27 = icmp ne i32 %26, 0
  %28 = select i1 %27, i1 true, i1 %10
  br i1 %28, label %29, label %216

29:                                               ; preds = %24
  %30 = load i32, ptr %1, align 4
  %31 = load ptr, ptr %14, align 4
  %32 = load ptr, ptr %15, align 4
  %33 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef %18) #12
  %34 = shl nuw i32 1, %18
  %35 = getelementptr inbounds %struct.bcm2835_clock_data, ptr %32, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, %34
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %167

39:                                               ; preds = %29
  %40 = tail call i32 @clk_hw_get_rate(ptr noundef %33) #12
  %41 = load ptr, ptr %15, align 4
  %42 = getelementptr inbounds %struct.bcm2835_clock_data, ptr %41, i32 0, i32 7
  %43 = load i32, ptr %42, align 4
  %44 = zext i32 %40 to i64
  %45 = shl nuw nsw i64 %44, 12
  %46 = icmp ult i32 %40, 1048576
  br i1 %46, label %47, label %50, !prof !20

47:                                               ; preds = %39
  %48 = trunc i64 %45 to i32
  %49 = udiv i32 %48, %30
  br label %54

50:                                               ; preds = %39
  %51 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %30, i64 %45) #15, !srcloc !21
  %52 = extractvalue { i64, i64 } %51, 1
  %53 = trunc i64 %52 to i32
  br label %54

54:                                               ; preds = %50, %47
  %55 = phi i32 [ %49, %47 ], [ %53, %50 ]
  %56 = getelementptr inbounds %struct.bcm2835_clock_data, ptr %41, i32 0, i32 10
  %57 = load i8, ptr %56, align 1, !range !9
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.bcm2835_clock_data, ptr %41, i32 0, i32 6
  %61 = load i32, ptr %60, align 4
  %62 = shl nsw i32 -1, %61
  %63 = xor i32 %62, -1
  %64 = shl i32 %63, 12
  br label %73

65:                                               ; preds = %54
  %66 = sub i32 12, %43
  %67 = shl nsw i32 -1, %66
  %68 = getelementptr inbounds %struct.bcm2835_clock_data, ptr %41, i32 0, i32 6
  %69 = load i32, ptr %68, align 4
  %70 = sub i32 20, %69
  %71 = lshr i32 -1, %70
  %72 = and i32 %71, %67
  br label %73

73:                                               ; preds = %65, %59
  %74 = phi i32 [ %61, %59 ], [ %69, %65 ]
  %75 = phi i32 [ %64, %59 ], [ %72, %65 ]
  %76 = phi i32 [ 8192, %59 ], [ 4096, %65 ]
  %77 = add i32 %43, 19
  %78 = lshr i32 -1, %77
  %79 = lshr i32 %78, 1
  %80 = xor i32 %79, -1
  %81 = and i32 %55, %80
  %82 = tail call i32 @llvm.umax.i32(i32 %81, i32 %76) #12
  %83 = tail call i32 @llvm.umin.i32(i32 %82, i32 %75) #12
  %84 = icmp eq i32 %74, 0
  %85 = icmp eq i32 %43, 0
  %86 = select i1 %84, i1 %85, i1 false
  br i1 %86, label %114, label %87

87:                                               ; preds = %73
  %88 = sub i32 12, %43
  %89 = lshr i32 %83, %88
  %90 = add i32 %74, %43
  %91 = shl nsw i32 -1, %90
  %92 = xor i32 %91, -1
  %93 = and i32 %89, %92
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %106, label %95

95:                                               ; preds = %87
  %96 = zext i32 %43 to i64
  %97 = shl i64 %44, %96
  %98 = icmp ult i64 %97, 4294967296
  br i1 %98, label %99, label %102, !prof !20

99:                                               ; preds = %95
  %100 = trunc i64 %97 to i32
  %101 = udiv i32 %100, %93
  br label %106

102:                                              ; preds = %95
  %103 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %93, i64 %97) #15, !srcloc !21
  %104 = extractvalue { i64, i64 } %103, 1
  %105 = trunc i64 %104 to i32
  br label %106

106:                                              ; preds = %102, %99, %87
  %107 = phi i32 [ 0, %87 ], [ %101, %99 ], [ %105, %102 ]
  %108 = getelementptr inbounds %struct.bcm2835_clock_data, ptr %32, i32 0, i32 11
  %109 = load i8, ptr %108, align 2, !range !9
  %110 = icmp eq i8 %109, 0
  %111 = and i32 %83, 4095
  %112 = icmp eq i32 %111, 0
  %113 = select i1 %110, i1 true, i1 %112
  br i1 %113, label %205, label %121

114:                                              ; preds = %73
  %115 = getelementptr inbounds %struct.bcm2835_clock_data, ptr %32, i32 0, i32 11
  %116 = load i8, ptr %115, align 2, !range !9
  %117 = icmp eq i8 %116, 0
  %118 = and i32 %83, 4095
  %119 = icmp eq i32 %118, 0
  %120 = select i1 %117, i1 true, i1 %119
  br i1 %120, label %205, label %159

121:                                              ; preds = %106
  %122 = and i32 %83, -4096
  br i1 %86, label %159, label %123

123:                                              ; preds = %121
  %124 = sub i32 12, %43
  %125 = lshr i32 %122, %124
  %126 = add i32 %74, %43
  %127 = shl nsw i32 -1, %126
  %128 = xor i32 %127, -1
  %129 = and i32 %125, %128
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %142, label %131

131:                                              ; preds = %123
  %132 = zext i32 %43 to i64
  %133 = shl i64 %44, %132
  %134 = icmp ult i64 %133, 4294967296
  br i1 %134, label %135, label %138, !prof !20

135:                                              ; preds = %131
  %136 = trunc i64 %133 to i32
  %137 = udiv i32 %136, %129
  br label %142

138:                                              ; preds = %131
  %139 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %129, i64 %133) #15, !srcloc !21
  %140 = extractvalue { i64, i64 } %139, 1
  %141 = trunc i64 %140 to i32
  br label %142

142:                                              ; preds = %138, %135, %123
  %143 = phi i32 [ %141, %138 ], [ %137, %135 ], [ 0, %123 ]
  %144 = add i32 %122, 4096
  %145 = lshr i32 %144, %124
  %146 = and i32 %145, %128
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %159, label %148

148:                                              ; preds = %142
  %149 = zext i32 %43 to i64
  %150 = shl i64 %44, %149
  %151 = icmp ult i64 %150, 4294967296
  br i1 %151, label %152, label %155, !prof !20

152:                                              ; preds = %148
  %153 = trunc i64 %150 to i32
  %154 = udiv i32 %153, %146
  br label %159

155:                                              ; preds = %148
  %156 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %146, i64 %150) #15, !srcloc !21
  %157 = extractvalue { i64, i64 } %156, 1
  %158 = trunc i64 %157 to i32
  br label %159

159:                                              ; preds = %155, %152, %142, %121, %114
  %160 = phi i32 [ %107, %142 ], [ %107, %152 ], [ %107, %155 ], [ %107, %121 ], [ %40, %114 ]
  %161 = phi i32 [ %143, %142 ], [ %143, %152 ], [ %143, %155 ], [ %40, %121 ], [ %40, %114 ]
  %162 = phi i32 [ 0, %142 ], [ %154, %152 ], [ %158, %155 ], [ %40, %121 ], [ %40, %114 ]
  %163 = sub i32 %160, %162
  %164 = sub i32 %161, %160
  %165 = tail call i32 @llvm.umax.i32(i32 %163, i32 %164) #12
  %166 = sub i32 %160, %165
  br label %205

167:                                              ; preds = %29
  %168 = getelementptr inbounds %struct.bcm2835_clock_data, ptr %32, i32 0, i32 7
  %169 = load i32, ptr %168, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %173, label %171

171:                                              ; preds = %167
  %172 = load ptr, ptr %31, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %172, ptr noundef nonnull @.str.123) #14
  br label %173

173:                                              ; preds = %171, %167
  %174 = getelementptr inbounds %struct.bcm2835_clock_data, ptr %32, i32 0, i32 10
  %175 = load i8, ptr %174, align 1, !range !9
  %176 = icmp eq i8 %175, 0
  %177 = select i1 %176, i32 1, i32 2
  %178 = getelementptr inbounds %struct.bcm2835_clock_data, ptr %32, i32 0, i32 6
  %179 = load i32, ptr %178, align 4
  %180 = lshr i32 %177, %179
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %201

182:                                              ; preds = %197, %173
  %183 = phi i32 [ %195, %197 ], [ 0, %173 ]
  %184 = phi i32 [ %198, %197 ], [ %177, %173 ]
  %185 = mul i32 %184, %30
  %186 = tail call i32 @clk_hw_round_rate(ptr noundef %33, i32 noundef %185) #12
  %187 = udiv i32 %186, %184
  %188 = icmp eq i32 %184, %177
  br i1 %188, label %193, label %189

189:                                              ; preds = %182
  %190 = icmp ule i32 %187, %183
  %191 = icmp ugt i32 %187, %30
  %192 = or i1 %190, %191
  br i1 %192, label %194, label %193

193:                                              ; preds = %189, %182
  br label %194

194:                                              ; preds = %193, %189
  %195 = phi i32 [ %187, %193 ], [ %183, %189 ]
  %196 = icmp eq i32 %195, %30
  br i1 %196, label %201, label %197

197:                                              ; preds = %194
  %198 = add i32 %184, 1
  %199 = lshr i32 %198, %179
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %182, label %201

201:                                              ; preds = %197, %194, %173
  %202 = phi i32 [ %177, %173 ], [ %184, %194 ], [ %198, %197 ]
  %203 = phi i32 [ 0, %173 ], [ %30, %194 ], [ %195, %197 ]
  %204 = mul i32 %203, %202
  br label %205

205:                                              ; preds = %201, %159, %114, %106
  %206 = phi i32 [ %40, %106 ], [ %40, %159 ], [ %204, %201 ], [ %40, %114 ]
  %207 = phi i32 [ %107, %106 ], [ %160, %159 ], [ %203, %201 ], [ %40, %114 ]
  %208 = phi i32 [ %107, %106 ], [ %166, %159 ], [ %203, %201 ], [ %40, %114 ]
  %209 = load i32, ptr %1, align 4
  %210 = sub i32 %209, %208
  %211 = tail call i32 @llvm.abs.i32(i32 %210, i1 false)
  %212 = sub i32 %209, %21
  %213 = tail call i32 @llvm.abs.i32(i32 %212, i1 false)
  %214 = icmp slt i32 %211, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %205
  br label %216

216:                                              ; preds = %215, %205, %24, %16
  %217 = phi i32 [ %208, %215 ], [ %21, %205 ], [ %21, %16 ], [ %21, %24 ]
  %218 = phi i32 [ %206, %215 ], [ %20, %205 ], [ %20, %16 ], [ %20, %24 ]
  %219 = phi i32 [ %207, %215 ], [ %19, %205 ], [ %19, %16 ], [ %19, %24 ]
  %220 = phi ptr [ %22, %215 ], [ %17, %205 ], [ %17, %16 ], [ %17, %24 ]
  %221 = add nuw i32 %18, 1
  %222 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #12
  %223 = icmp ult i32 %221, %222
  br i1 %223, label %16, label %224

224:                                              ; preds = %216
  %225 = icmp eq ptr %220, null
  br i1 %225, label %229, label %226

226:                                              ; preds = %224
  %227 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  store ptr %220, ptr %227, align 4
  %228 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  store i32 %218, ptr %228, align 4
  store i32 %219, ptr %1, align 4
  br label %229

229:                                              ; preds = %226, %224, %9
  %230 = phi i32 [ 0, %226 ], [ -22, %224 ], [ -22, %9 ]
  ret i32 %230
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_clock_set_parent(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.bcm2835_clock, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bcm2835_clock, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = and i8 %1, 15
  %8 = getelementptr inbounds %struct.bcm2835_clock_data, ptr %6, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = zext i8 %7 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !12
  tail call void @arm_heavy_mb() #12
  %11 = or i32 %10, 1509949440
  %12 = getelementptr inbounds %struct.bcm2835_cprman, ptr %4, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %11) #12, !srcloc !13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @bcm2835_clock_get_parent(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.bcm2835_clock, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bcm2835_clock, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.bcm2835_clock_data, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.bcm2835_cprman, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 %7
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 15
  ret i8 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_clock_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.bcm2835_clock, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.bcm2835_clock, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.bcm2835_clock_data, ptr %7, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = zext i32 %2 to i64
  %11 = shl nuw nsw i64 %10, 12
  %12 = icmp ult i32 %2, 1048576
  br i1 %12, label %13, label %16, !prof !20

13:                                               ; preds = %3
  %14 = trunc i64 %11 to i32
  %15 = udiv i32 %14, %1
  br label %20

16:                                               ; preds = %3
  %17 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %11) #15, !srcloc !21
  %18 = extractvalue { i64, i64 } %17, 1
  %19 = trunc i64 %18 to i32
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi i32 [ %15, %13 ], [ %19, %16 ]
  %22 = getelementptr inbounds %struct.bcm2835_clock_data, ptr %7, i32 0, i32 10
  %23 = load i8, ptr %22, align 1, !range !9
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.bcm2835_clock_data, ptr %7, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = shl nsw i32 -1, %27
  %29 = xor i32 %28, -1
  %30 = shl i32 %29, 12
  br label %39

31:                                               ; preds = %20
  %32 = sub i32 12, %9
  %33 = shl nsw i32 -1, %32
  %34 = getelementptr inbounds %struct.bcm2835_clock_data, ptr %7, i32 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = sub i32 20, %35
  %37 = lshr i32 -1, %36
  %38 = and i32 %37, %33
  br label %39

39:                                               ; preds = %31, %25
  %40 = phi i32 [ %30, %25 ], [ %38, %31 ]
  %41 = phi i32 [ 8192, %25 ], [ 4096, %31 ]
  %42 = add i32 %9, 19
  %43 = lshr i32 -1, %42
  %44 = lshr i32 %43, 1
  %45 = xor i32 %44, -1
  %46 = and i32 %21, %45
  %47 = tail call i32 @llvm.umax.i32(i32 %46, i32 %41) #12
  %48 = tail call i32 @llvm.umin.i32(i32 %47, i32 %40) #12
  %49 = getelementptr inbounds %struct.bcm2835_cprman, ptr %5, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %49) #12
  %50 = getelementptr inbounds %struct.bcm2835_clock_data, ptr %7, i32 0, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.bcm2835_cprman, ptr %5, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i8, ptr %53, i32 %51
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %56 = and i32 %55, -1509949953
  %57 = and i32 %48, 4095
  %58 = icmp eq i32 %57, 0
  %59 = load i32, ptr %50, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !12
  tail call void @arm_heavy_mb() #12
  %60 = select i1 %58, i32 1509949440, i32 1509949952
  %61 = or i32 %60, %56
  %62 = load ptr, ptr %52, align 4
  %63 = getelementptr i8, ptr %62, i32 %59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %61) #12, !srcloc !13
  %64 = getelementptr inbounds %struct.bcm2835_clock_data, ptr %7, i32 0, i32 5
  %65 = load i32, ptr %64, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !12
  tail call void @arm_heavy_mb() #12
  %66 = or i32 %48, 1509949440
  %67 = load ptr, ptr %52, align 4
  %68 = getelementptr i8, ptr %67, i32 %65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #12, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %69 = load i16, ptr %49, align 4
  %70 = add i16 %69, 1
  store i16 %70, ptr %49, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2835_clock_debug_init(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.bcm2835_clock, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bcm2835_clock, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.bcm2835_clock_data, ptr %6, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = load ptr, ptr %4, align 4
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef 16, i32 noundef 3520) #12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  store ptr @bcm2835_debugfs_clock_reg32, ptr %10, align 4
  %13 = getelementptr inbounds %struct.debugfs_regset32, ptr %10, i32 0, i32 1
  store i32 2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.bcm2835_cprman, ptr %4, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 %8
  %17 = getelementptr inbounds %struct.debugfs_regset32, ptr %10, i32 0, i32 2
  store ptr %16, ptr %17, align 4
  tail call void @debugfs_create_regset32(ptr noundef nonnull @.str.119, i16 noundef zeroext 292, ptr noundef %1, ptr noundef nonnull %10) #12
  br label %18

18:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_clock_on(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.bcm2835_clock, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bcm2835_clock, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.bcm2835_cprman, ptr %3, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %6) #12
  %7 = getelementptr inbounds %struct.bcm2835_clock_data, ptr %5, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.bcm2835_cprman, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 %8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !12
  tail call void @arm_heavy_mb() #12
  %13 = or i32 %12, 1509949520
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr i8, ptr %14, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #12, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %16 = load i16, ptr %6, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2835_clock_off(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.bcm2835_clock, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bcm2835_clock, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.bcm2835_cprman, ptr %3, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %6) #12
  %7 = getelementptr inbounds %struct.bcm2835_clock_data, ptr %5, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.bcm2835_cprman, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 %8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %13 = and i32 %12, -1509949457
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !12
  tail call void @arm_heavy_mb() #12
  %14 = or i32 %13, 1509949440
  %15 = load ptr, ptr %9, align 4
  %16 = getelementptr i8, ptr %15, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #12, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %17 = load i16, ptr %6, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  %19 = load ptr, ptr %2, align 4
  %20 = load ptr, ptr %4, align 4
  %21 = tail call i64 @ktime_get() #12
  %22 = add i64 %21, 100000000
  %23 = getelementptr inbounds %struct.bcm2835_clock_data, ptr %20, i32 0, i32 4
  %24 = getelementptr inbounds %struct.bcm2835_cprman, ptr %19, i32 0, i32 1
  %25 = load i32, ptr %23, align 4
  %26 = load ptr, ptr %24, align 4
  %27 = getelementptr i8, ptr %26, i32 %25
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %29 = and i32 %28, 128
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %37, %1
  %32 = tail call i64 @ktime_get() #12
  %33 = icmp sgt i64 %32, %22
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load ptr, ptr %19, align 4
  %36 = tail call ptr @clk_hw_get_name(ptr noundef %0) #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.111, ptr noundef %36) #14
  br label %44

37:                                               ; preds = %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !22
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !23
  %38 = load i32, ptr %23, align 4
  %39 = load ptr, ptr %24, align 4
  %40 = getelementptr i8, ptr %39, i32 %38
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %42 = and i32 %41, 128
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %31

44:                                               ; preds = %37, %34, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_clock_is_on(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.bcm2835_clock, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bcm2835_clock, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.bcm2835_clock_data, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.bcm2835_cprman, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 %7
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %12 = lshr i32 %11, 4
  %13 = and i32 %12, 1
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_gate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }

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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
!10 = !{i64 4379623}
!11 = !{i64 2152339719}
!12 = !{i64 2152339057}
!13 = !{i64 4379205}
!14 = !{i64 2149146058}
!15 = !{i64 2149141882}
!16 = !{i64 2149141957, i64 2149141984, i64 2149142031, i64 2149142053, i64 2149142081, i64 2149142101}
!17 = !{i64 2149169061}
!18 = !{i64 2152375767}
!19 = !{i64 2152375609}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2148712179, i64 2148712459, i64 2148712793, i64 2148713127}
!22 = !{i64 2152404002}
!23 = !{i64 2152403844}
