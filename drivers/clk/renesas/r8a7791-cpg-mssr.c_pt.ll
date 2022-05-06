; ModuleID = '/llk/IR/drivers/clk/renesas/r8a7791-cpg-mssr.c_pt.bc'
source_filename = "../drivers/clk/renesas/r8a7791-cpg-mssr.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpg_core_clk = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.mssr_mod_clk = type { ptr, i32, i32 }
%struct.cpg_mssr_info = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr }
%struct.rcar_gen2_cpg_pll_config = type { i8, i8, i8, i8 }
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

@r8a7791_core_clks = internal global [35 x %struct.cpg_core_clk] [%struct.cpg_core_clk { ptr @.str, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.cpg_core_clk { ptr @.str.1, i32 32, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.cpg_core_clk { ptr @.str.2, i32 33, i32 5, i32 31, i32 0, i32 0, i32 0 }, %struct.cpg_core_clk { ptr @.str.3, i32 34, i32 6, i32 33, i32 0, i32 0, i32 0 }, %struct.cpg_core_clk { ptr @.str.4, i32 35, i32 7, i32 33, i32 0, i32 0, i32 0 }, %struct.cpg_core_clk { ptr @.str.5, i32 36, i32 8, i32 33, i32 0, i32 0, i32 0 }, %struct.cpg_core_clk { ptr @.str.6, i32 37, i32 1, i32 35, i32 2, i32 1, i32 0 }, %struct.cpg_core_clk { ptr @.str.7, i32 0, i32 9, i32 34, i32 0, i32 0, i32 0 }, %struct.cpg_core_clk { ptr @.str.8, i32 14, i32 11, i32 35, i32 0, i32 0, i32 0 }, %struct.cpg_core_clk { ptr @.str.9, i32 18, i32 12, i32 35, i32 0, i32 0, i32 0 }, %struct.cpg_core_clk { ptr @.str.10, i32 19, i32 13, i32 35, i32 0, i32 0, i32 0 }, %struct.cpg_core_clk { ptr @.str.11, i32 26, i32 15, i32 37, i32 0, i32 0, i32 0 }, %struct.cpg_core_clk { ptr @.str.12, i32 28, i32 16, i32 32, i32 0, i32 0, i32 0 }, %struct.cpg_core_clk { ptr @.str.13, i32 1, i32 1, i32 35, i32 3, i32 1, i32 0 }, %struct.cpg_core_clk { ptr @.str.14, i32 5, i32 1, i32 35, i32 3, i32 1, i32 0 }, %struct.cpg_core_clk { ptr @.str.15, i32 6, i32 1, i32 35, i32 6, i32 1, i32 0 }, %struct.cpg_core_clk { ptr @.str.16, i32 7, i32 1, i32 35, i32 12, i32 1, i32 0 }, %struct.cpg_core_clk { ptr @.str.17, i32 8, i32 1, i32 35, i32 2, i32 1, i32 0 }, %struct.cpg_core_clk { ptr @.str.18, i32 9, i32 1, i32 35, i32 12, i32 1, i32 0 }, %struct.cpg_core_clk { ptr @.str.19, i32 10, i32 1, i32 35, i32 24, i32 1, i32 0 }, %struct.cpg_core_clk { ptr @.str.20, i32 11, i32 1, i32 35, i32 24, i32 1, i32 0 }, %struct.cpg_core_clk { ptr @.str.21, i32 12, i32 1, i32 35, i32 48, i32 1, i32 0 }, %struct.cpg_core_clk { ptr @.str.22, i32 13, i32 1, i32 35, i32 8, i32 1, i32 0 }, %struct.cpg_core_clk { ptr @.str.23, i32 15, i32 1, i32 36, i32 4, i32 1, i32 0 }, %struct.cpg_core_clk { ptr @.str.24, i32 16, i32 1, i32 36, i32 8, i32 1, i32 0 }, %struct.cpg_core_clk { ptr @.str.25, i32 17, i32 1, i32 36, i32 8, i32 1, i32 0 }, %struct.cpg_core_clk { ptr @.str.26, i32 23, i32 1, i32 37, i32 15, i32 1, i32 0 }, %struct.cpg_core_clk { ptr @.str.27, i32 27, i32 1, i32 31, i32 2, i32 1, i32 0 }, %struct.cpg_core_clk { ptr @.str.28, i32 29, i32 1, i32 35, i32 49152, i32 1, i32 0 }, %struct.cpg_core_clk { ptr @.str.29, i32 30, i32 1, i32 35, i32 12288, i32 1, i32 0 }, %struct.cpg_core_clk { ptr @.str.30, i32 20, i32 2, i32 37, i32 0, i32 0, i32 120 }, %struct.cpg_core_clk { ptr @.str.31, i32 21, i32 2, i32 37, i32 0, i32 0, i32 620 }, %struct.cpg_core_clk { ptr @.str.32, i32 22, i32 2, i32 37, i32 0, i32 0, i32 576 }, %struct.cpg_core_clk { ptr @.str.33, i32 24, i32 2, i32 37, i32 0, i32 0, i32 584 }, %struct.cpg_core_clk { ptr @.str.34, i32 25, i32 2, i32 37, i32 0, i32 0, i32 588 }], section ".init.data", align 4
@r8a7791_mod_clks = internal constant [118 x %struct.mssr_mod_clk] [%struct.mssr_mod_clk { ptr @.str.35, i32 38, i32 23 }, %struct.mssr_mod_clk { ptr @.str.36, i32 71, i32 6 }, %struct.mssr_mod_clk { ptr @.str.37, i32 73, i32 6 }, %struct.mssr_mod_clk { ptr @.str.38, i32 76, i32 13 }, %struct.mssr_mod_clk { ptr @.str.39, i32 79, i32 6 }, %struct.mssr_mod_clk { ptr @.str.40, i32 81, i32 11 }, %struct.mssr_mod_clk { ptr @.str.41, i32 82, i32 1 }, %struct.mssr_mod_clk { ptr @.str.42, i32 85, i32 6 }, %struct.mssr_mod_clk { ptr @.str.43, i32 88, i32 6 }, %struct.mssr_mod_clk { ptr @.str.44, i32 89, i32 6 }, %struct.mssr_mod_clk { ptr @.str.45, i32 91, i32 11 }, %struct.mssr_mod_clk { ptr @.str.46, i32 92, i32 11 }, %struct.mssr_mod_clk { ptr @.str.47, i32 94, i32 29 }, %struct.mssr_mod_clk { ptr @.str.48, i32 95, i32 27 }, %struct.mssr_mod_clk { ptr @.str.49, i32 97, i32 6 }, %struct.mssr_mod_clk { ptr @.str.50, i32 98, i32 6 }, %struct.mssr_mod_clk { ptr @.str.51, i32 101, i32 6 }, %struct.mssr_mod_clk { ptr @.str.52, i32 104, i32 23 }, %struct.mssr_mod_clk { ptr @.str.53, i32 105, i32 23 }, %struct.mssr_mod_clk { ptr @.str.54, i32 106, i32 23 }, %struct.mssr_mod_clk { ptr @.str.55, i32 107, i32 23 }, %struct.mssr_mod_clk { ptr @.str.56, i32 108, i32 23 }, %struct.mssr_mod_clk { ptr @.str.57, i32 109, i32 23 }, %struct.mssr_mod_clk { ptr @.str.58, i32 110, i32 23 }, %struct.mssr_mod_clk { ptr @.str.59, i32 118, i32 23 }, %struct.mssr_mod_clk { ptr @.str.60, i32 120, i32 6 }, %struct.mssr_mod_clk { ptr @.str.61, i32 121, i32 6 }, %struct.mssr_mod_clk { ptr @.str.62, i32 138, i32 27 }, %struct.mssr_mod_clk { ptr @.str.63, i32 145, i32 21 }, %struct.mssr_mod_clk { ptr @.str.64, i32 146, i32 20 }, %struct.mssr_mod_clk { ptr @.str.65, i32 148, i32 19 }, %struct.mssr_mod_clk { ptr @.str.66, i32 149, i32 22 }, %struct.mssr_mod_clk { ptr @.str.67, i32 152, i32 7 }, %struct.mssr_mod_clk { ptr @.str.68, i32 153, i32 23 }, %struct.mssr_mod_clk { ptr @.str.69, i32 157, i32 7 }, %struct.mssr_mod_clk { ptr @.str.70, i32 162, i32 23 }, %struct.mssr_mod_clk { ptr @.str.71, i32 163, i32 29 }, %struct.mssr_mod_clk { ptr @.str.72, i32 164, i32 7 }, %struct.mssr_mod_clk { ptr @.str.73, i32 165, i32 7 }, %struct.mssr_mod_clk { ptr @.str.74, i32 168, i32 29 }, %struct.mssr_mod_clk { ptr @.str.75, i32 173, i32 27 }, %struct.mssr_mod_clk { ptr @.str.76, i32 174, i32 6 }, %struct.mssr_mod_clk { ptr @.str.77, i32 199, i32 7 }, %struct.mssr_mod_clk { ptr @.str.78, i32 200, i32 7 }, %struct.mssr_mod_clk { ptr @.str.79, i32 204, i32 14 }, %struct.mssr_mod_clk { ptr @.str.80, i32 220, i32 31 }, %struct.mssr_mod_clk { ptr @.str.81, i32 221, i32 11 }, %struct.mssr_mod_clk { ptr @.str.82, i32 265, i32 23 }, %struct.mssr_mod_clk { ptr @.str.83, i32 266, i32 7 }, %struct.mssr_mod_clk { ptr @.str.84, i32 275, i32 6 }, %struct.mssr_mod_clk { ptr @.str.85, i32 276, i32 11 }, %struct.mssr_mod_clk { ptr @.str.86, i32 277, i32 11 }, %struct.mssr_mod_clk { ptr @.str.87, i32 278, i32 6 }, %struct.mssr_mod_clk { ptr @.str.88, i32 279, i32 6 }, %struct.mssr_mod_clk { ptr @.str.89, i32 280, i32 11 }, %struct.mssr_mod_clk { ptr @.str.90, i32 281, i32 11 }, %struct.mssr_mod_clk { ptr @.str.91, i32 282, i32 11 }, %struct.mssr_mod_clk { ptr @.str.92, i32 283, i32 11 }, %struct.mssr_mod_clk { ptr @.str.93, i32 285, i32 5 }, %struct.mssr_mod_clk { ptr @.str.94, i32 286, i32 5 }, %struct.mssr_mod_clk { ptr @.str.95, i32 288, i32 5 }, %struct.mssr_mod_clk { ptr @.str.96, i32 294, i32 5 }, %struct.mssr_mod_clk { ptr @.str.97, i32 296, i32 7 }, %struct.mssr_mod_clk { ptr @.str.98, i32 303, i32 1 }, %struct.mssr_mod_clk { ptr @.str.99, i32 304, i32 1 }, %struct.mssr_mod_clk { ptr @.str.100, i32 305, i32 1 }, %struct.mssr_mod_clk { ptr @.str.101, i32 306, i32 7 }, %struct.mssr_mod_clk { ptr @.str.102, i32 307, i32 11 }, %struct.mssr_mod_clk { ptr @.str.103, i32 308, i32 6 }, %struct.mssr_mod_clk { ptr @.str.104, i32 309, i32 6 }, %struct.mssr_mod_clk { ptr @.str.105, i32 327, i32 11 }, %struct.mssr_mod_clk { ptr @.str.106, i32 330, i32 27 }, %struct.mssr_mod_clk { ptr @.str.107, i32 331, i32 27 }, %struct.mssr_mod_clk { ptr @.str.108, i32 333, i32 27 }, %struct.mssr_mod_clk { ptr @.str.109, i32 334, i32 27 }, %struct.mssr_mod_clk { ptr @.str.110, i32 335, i32 27 }, %struct.mssr_mod_clk { ptr @.str.111, i32 336, i32 27 }, %struct.mssr_mod_clk { ptr @.str.112, i32 337, i32 27 }, %struct.mssr_mod_clk { ptr @.str.113, i32 338, i32 27 }, %struct.mssr_mod_clk { ptr @.str.114, i32 341, i32 11 }, %struct.mssr_mod_clk { ptr @.str.115, i32 342, i32 11 }, %struct.mssr_mod_clk { ptr @.str.116, i32 343, i32 26 }, %struct.mssr_mod_clk { ptr @.str.117, i32 351, i32 7 }, %struct.mssr_mod_clk { ptr @.str.118, i32 352, i32 27 }, %struct.mssr_mod_clk { ptr @.str.119, i32 353, i32 7 }, %struct.mssr_mod_clk { ptr @.str.120, i32 354, i32 7 }, %struct.mssr_mod_clk { ptr @.str.121, i32 355, i32 7 }, %struct.mssr_mod_clk { ptr @.str.122, i32 356, i32 7 }, %struct.mssr_mod_clk { ptr @.str.123, i32 357, i32 7 }, %struct.mssr_mod_clk { ptr @.str.124, i32 363, i32 11 }, %struct.mssr_mod_clk { ptr @.str.125, i32 364, i32 363 }, %struct.mssr_mod_clk { ptr @.str.126, i32 365, i32 363 }, %struct.mssr_mod_clk { ptr @.str.127, i32 366, i32 363 }, %struct.mssr_mod_clk { ptr @.str.128, i32 367, i32 363 }, %struct.mssr_mod_clk { ptr @.str.129, i32 368, i32 363 }, %struct.mssr_mod_clk { ptr @.str.130, i32 369, i32 363 }, %struct.mssr_mod_clk { ptr @.str.131, i32 370, i32 363 }, %struct.mssr_mod_clk { ptr @.str.132, i32 371, i32 363 }, %struct.mssr_mod_clk { ptr @.str.133, i32 372, i32 363 }, %struct.mssr_mod_clk { ptr @.str.134, i32 373, i32 363 }, %struct.mssr_mod_clk { ptr @.str.135, i32 375, i32 11 }, %struct.mssr_mod_clk { ptr @.str.136, i32 376, i32 375 }, %struct.mssr_mod_clk { ptr @.str.137, i32 377, i32 375 }, %struct.mssr_mod_clk { ptr @.str.138, i32 378, i32 375 }, %struct.mssr_mod_clk { ptr @.str.139, i32 379, i32 375 }, %struct.mssr_mod_clk { ptr @.str.140, i32 380, i32 375 }, %struct.mssr_mod_clk { ptr @.str.141, i32 381, i32 375 }, %struct.mssr_mod_clk { ptr @.str.142, i32 382, i32 375 }, %struct.mssr_mod_clk { ptr @.str.143, i32 383, i32 375 }, %struct.mssr_mod_clk { ptr @.str.144, i32 384, i32 375 }, %struct.mssr_mod_clk { ptr @.str.145, i32 385, i32 375 }, %struct.mssr_mod_clk { ptr @.str.146, i32 386, i32 375 }, %struct.mssr_mod_clk { ptr @.str.147, i32 387, i32 375 }, %struct.mssr_mod_clk { ptr @.str.148, i32 388, i32 375 }, %struct.mssr_mod_clk { ptr @.str.149, i32 389, i32 375 }, %struct.mssr_mod_clk { ptr @.str.150, i32 396, i32 23 }, %struct.mssr_mod_clk { ptr @.str.151, i32 397, i32 23 }, %struct.mssr_mod_clk { ptr @.str.152, i32 398, i32 23 }], section ".init.rodata", align 4
@r8a7791_crit_mod_clks = internal constant [2 x i32] [i32 168, i32 174], section ".init.rodata", align 4
@r8a7791_cpg_mssr_info = dso_local local_unnamed_addr constant %struct.cpg_mssr_info { ptr null, i32 0, ptr null, i32 0, ptr @r8a7791_core_clks, i32 35, i32 30, i32 38, i32 0, ptr @r8a7791_mod_clks, i32 118, i32 384, ptr @r8a7791_crit_mod_clks, i32 2, ptr null, i32 0, ptr @r8a7791_cpg_mssr_init, ptr @rcar_gen2_cpg_clk_register }, section ".init.rodata", align 4
@.str = private unnamed_addr constant [6 x i8] c"extal\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"usb_extal\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c".main\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c".pll0\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c".pll1\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c".pll3\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c".pll1_div2\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"adsp\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"sdh\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"sd0\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"qspi\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"rcan\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"zg\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"zx\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"zs\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"hp\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"lb\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"cl\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"m2\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"zb3\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"zb3d2\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"ddr\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"mp\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"cp\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"osc\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"sd2\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"sd3\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"mmc0\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"ssp\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"ssprs\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"msiof0\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"vcp0\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"vpc0\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"jpu\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"ssp1\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"tmu1\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"3dg\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"2d-dmac\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"fdp1-1\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"fdp1-0\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"tmu3\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"tmu2\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"cmt0\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"tmu0\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"vsp1du1\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"vsp1du0\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"vsps\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"scifa2\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"scifa1\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"scifa0\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"msiof2\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"scifb0\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"scifb1\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"msiof1\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"scifb2\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"sys-dmac1\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"sys-dmac0\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"tpu0\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"sdhi3\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"sdhi2\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"sdhi0\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"mmcif0\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"iic0\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"pciec\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"iic1\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"usb3.0\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"cmt1\00", align 1
@.str.72 = private unnamed_addr constant [12 x i8] c"usbhs-dmac0\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"usbhs-dmac1\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"rwdt\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"irqc\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"intc-sys\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"audio-dmac1\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"audio-dmac0\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"adsp_mod\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"thermal\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"pwm\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"usb-ehci\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"usbhs\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"hscif2\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"scif5\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"scif4\00", align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"hscif1\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"hscif0\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"scif3\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"scif2\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"scif1\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"scif0\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"du1\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"du0\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"lvds0\00", align 1
@.str.96 = private unnamed_addr constant [10 x i8] c"ipmmu-sgx\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"mlb\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"vin2\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"vin1\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"vin0\00", align 1
@.str.101 = private unnamed_addr constant [9 x i8] c"etheravb\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"ether\00", align 1
@.str.103 = private unnamed_addr constant [6 x i8] c"sata1\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"sata0\00", align 1
@.str.105 = private unnamed_addr constant [9 x i8] c"gyro-adc\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"gpio7\00", align 1
@.str.107 = private unnamed_addr constant [6 x i8] c"gpio6\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"gpio5\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"gpio4\00", align 1
@.str.110 = private unnamed_addr constant [6 x i8] c"gpio3\00", align 1
@.str.111 = private unnamed_addr constant [6 x i8] c"gpio2\00", align 1
@.str.112 = private unnamed_addr constant [6 x i8] c"gpio1\00", align 1
@.str.113 = private unnamed_addr constant [6 x i8] c"gpio0\00", align 1
@.str.114 = private unnamed_addr constant [5 x i8] c"can1\00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c"can0\00", align 1
@.str.116 = private unnamed_addr constant [9 x i8] c"qspi_mod\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c"i2c5\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c"iicdvfs\00", align 1
@.str.119 = private unnamed_addr constant [5 x i8] c"i2c4\00", align 1
@.str.120 = private unnamed_addr constant [5 x i8] c"i2c3\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"i2c2\00", align 1
@.str.122 = private unnamed_addr constant [5 x i8] c"i2c1\00", align 1
@.str.123 = private unnamed_addr constant [5 x i8] c"i2c0\00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"ssi-all\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"ssi9\00", align 1
@.str.126 = private unnamed_addr constant [5 x i8] c"ssi8\00", align 1
@.str.127 = private unnamed_addr constant [5 x i8] c"ssi7\00", align 1
@.str.128 = private unnamed_addr constant [5 x i8] c"ssi6\00", align 1
@.str.129 = private unnamed_addr constant [5 x i8] c"ssi5\00", align 1
@.str.130 = private unnamed_addr constant [5 x i8] c"ssi4\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c"ssi3\00", align 1
@.str.132 = private unnamed_addr constant [5 x i8] c"ssi2\00", align 1
@.str.133 = private unnamed_addr constant [5 x i8] c"ssi1\00", align 1
@.str.134 = private unnamed_addr constant [5 x i8] c"ssi0\00", align 1
@.str.135 = private unnamed_addr constant [8 x i8] c"scu-all\00", align 1
@.str.136 = private unnamed_addr constant [9 x i8] c"scu-dvc1\00", align 1
@.str.137 = private unnamed_addr constant [9 x i8] c"scu-dvc0\00", align 1
@.str.138 = private unnamed_addr constant [14 x i8] c"scu-ctu1-mix1\00", align 1
@.str.139 = private unnamed_addr constant [14 x i8] c"scu-ctu0-mix0\00", align 1
@.str.140 = private unnamed_addr constant [9 x i8] c"scu-src9\00", align 1
@.str.141 = private unnamed_addr constant [9 x i8] c"scu-src8\00", align 1
@.str.142 = private unnamed_addr constant [9 x i8] c"scu-src7\00", align 1
@.str.143 = private unnamed_addr constant [9 x i8] c"scu-src6\00", align 1
@.str.144 = private unnamed_addr constant [9 x i8] c"scu-src5\00", align 1
@.str.145 = private unnamed_addr constant [9 x i8] c"scu-src4\00", align 1
@.str.146 = private unnamed_addr constant [9 x i8] c"scu-src3\00", align 1
@.str.147 = private unnamed_addr constant [9 x i8] c"scu-src2\00", align 1
@.str.148 = private unnamed_addr constant [9 x i8] c"scu-src1\00", align 1
@.str.149 = private unnamed_addr constant [9 x i8] c"scu-src0\00", align 1
@.str.150 = private unnamed_addr constant [7 x i8] c"scifa3\00", align 1
@.str.151 = private unnamed_addr constant [7 x i8] c"scifa4\00", align 1
@.str.152 = private unnamed_addr constant [7 x i8] c"scifa5\00", align 1
@cpg_pll_configs = internal constant [8 x %struct.rcar_gen2_cpg_pll_config] [%struct.rcar_gen2_cpg_pll_config { i8 1, i8 -48, i8 106, i8 0 }, %struct.rcar_gen2_cpg_pll_config { i8 1, i8 -48, i8 88, i8 0 }, %struct.rcar_gen2_cpg_pll_config { i8 1, i8 -100, i8 80, i8 0 }, %struct.rcar_gen2_cpg_pll_config { i8 1, i8 -100, i8 66, i8 0 }, %struct.rcar_gen2_cpg_pll_config { i8 2, i8 -16, i8 122, i8 0 }, %struct.rcar_gen2_cpg_pll_config { i8 2, i8 -16, i8 102, i8 0 }, %struct.rcar_gen2_cpg_pll_config { i8 2, i8 -48, i8 106, i8 0 }, %struct.rcar_gen2_cpg_pll_config { i8 2, i8 -48, i8 88, i8 0 }], section ".init.rodata", align 1
@.str.153 = private unnamed_addr constant [25 x i8] c"renesas,r8a7793-cpg-mssr\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @r8a7791_cpg_mssr_init(ptr nocapture noundef readonly %0) #0 section ".init.text" {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #3
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = call i32 @rcar_rst_read_mode_pins(ptr noundef nonnull %2) #3
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %1
  %8 = load i32, ptr %2, align 4
  %9 = lshr i32 %8, 12
  %10 = and i32 %9, 6
  %11 = lshr i32 %8, 19
  %12 = and i32 %11, 1
  %13 = or i32 %10, %12
  %14 = getelementptr [8 x %struct.rcar_gen2_cpg_pll_config], ptr @cpg_pll_configs, i32 0, i32 %13
  %15 = call i32 @of_device_is_compatible(ptr noundef %4, ptr noundef nonnull @.str.153) #3
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %24, %7
  %18 = phi i32 [ %25, %24 ], [ 0, %7 ]
  %19 = getelementptr [35 x %struct.cpg_core_clk], ptr @r8a7791_core_clks, i32 0, i32 %18, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = getelementptr [35 x %struct.cpg_core_clk], ptr @r8a7791_core_clks, i32 0, i32 %18, i32 4
  store i32 5, ptr %23, align 4
  br label %27

24:                                               ; preds = %17
  %25 = add nuw nsw i32 %18, 1
  %26 = icmp eq i32 %25, 35
  br i1 %26, label %27, label %17

27:                                               ; preds = %24, %22, %7
  %28 = load i32, ptr %2, align 4
  %29 = call i32 @rcar_gen2_cpg_init(ptr noundef %14, i32 noundef 2, i32 noundef %28) #3
  br label %30

30:                                               ; preds = %27, %1
  %31 = phi i32 [ %29, %27 ], [ %5, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #3
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rcar_gen2_cpg_clk_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_rst_read_mode_pins(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_gen2_cpg_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }

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
