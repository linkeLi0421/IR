; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/clk/gm20b.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gm20b.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gk20a_clk_pllg_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gm20b_clk_dvfs_params = type { i32, i32, i32 }
%struct.nvkm_domain = type { i32, i8, i8, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_device_tegra = type { ptr, %struct.nvkm_device, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.129, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.122, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.122 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.anon.129 = type { %struct.mutex, %struct.nvkm_mm, ptr, i32 }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.gk20a_clk = type { %struct.nvkm_clk, ptr, %struct.gk20a_pll, i32, ptr, ptr }
%struct.nvkm_clk = type { ptr, %struct.nvkm_subdev, ptr, %struct.nvkm_pstate, %struct.list_head, i32, %struct.work_struct, %struct.wait_queue_head, %struct.atomic_t, %struct.nvkm_notify, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_pstate = type { %struct.list_head, %struct.list_head, %struct.nvkm_cstate, i8, i8, i32, i8 }
%struct.nvkm_cstate = type { %struct.list_head, i8, [29 x i32], i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.gk20a_pll = type { i32, i32, i32 }
%struct.gm20b_clk = type { %struct.gk20a_clk, %struct.gm20b_clk_dvfs, i32, %struct.gk20a_pll, %struct.gm20b_clk_dvfs, i32, ptr, i32, i32, i32 }
%struct.gm20b_clk_dvfs = type { i32, i32, i32 }
%struct.nvkm_clk_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [0 x %struct.nvkm_domain] }
%struct.nvkm_volt = type { ptr, %struct.nvkm_subdev, i8, i8, [256 x %struct.anon.91], i32, i32, i8, i8, i8, i32 }
%struct.anon.91 = type { i32, i8 }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.gm20b_pll = type { %struct.gk20a_pll, i32 }

@gm20b_pllg_params = internal constant %struct.gk20a_clk_pllg_params { i32 1300000, i32 2600000, i32 12000, i32 38400, i32 1, i32 255, i32 8, i32 255, i32 1, i32 31 }, align 4
@.str = private unnamed_addr constant [45 x i8] c"%s: cannot use NAPLL, using legacy clock...\0A\00", align 1
@gm20b_dvfs_params = internal constant %struct.gm20b_clk_dvfs_params { i32 -165230, i32 214007, i32 56 }, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"%s: no fused calibration parameters\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@gm20b_clk_speedo0 = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [3 x %struct.nvkm_domain] } { ptr @gm20b_clk_init, ptr @gk20a_clk_fini, ptr @gk20a_clk_read, ptr @gk20a_clk_calc, ptr @gk20a_clk_prog, ptr @gk20a_clk_tidy, ptr @gm20b_pstates, i32 12, [3 x %struct.nvkm_domain] [%struct.nvkm_domain { i32 0, i8 -1, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 19, i8 -1, i8 0, ptr @.str.2, i32 1000 }, %struct.nvkm_domain { i32 29, i8 0, i8 0, ptr null, i32 0 }] }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"%s: cannot initialize clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/clk/gm20b.c\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"%s: GPCPLL calibration timeout\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"%s: calibrated DVFS parameters: offs %d, slope %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"%s: dfs_ext_cal overflow!\0A\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"%s: %s uv: %d coeff: %x, ext_cal: %d, det_max: %d\0A\00", align 1
@__func__.gm20b_dvfs_calc_det_coeff = private unnamed_addr constant [26 x i8] c"gm20b_dvfs_calc_det_coeff\00", align 1
@gm20b_pstates = internal global [13 x { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 }] [{ %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 0, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 76800], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 1, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 153600], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 2, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 230400], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 3, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 307200], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 4, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 384000], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 5, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 460800], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 6, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 537600], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 7, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 614400], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 8, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 691200], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 9, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 768000], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 10, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 844800], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 11, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 921600], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 12, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 998400], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@gm20b_clk = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [3 x %struct.nvkm_domain] } { ptr @gm20b_clk_init, ptr @gm20b_clk_fini, ptr @gk20a_clk_read, ptr @gm20b_clk_calc, ptr @gm20b_clk_prog, ptr @gk20a_clk_tidy, ptr @gm20b_pstates, i32 13, [3 x %struct.nvkm_domain] [%struct.nvkm_domain { i32 0, i8 -1, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 19, i8 -1, i8 0, ptr @.str.2, i32 1000 }, %struct.nvkm_domain { i32 29, i8 0, i8 0, ptr null, i32 0 }] }, align 4
@.str.13 = private unnamed_addr constant [33 x i8] c"%s: ndiv <= 0 - setting to 1...\0A\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"%s: ndiv > max_n - setting to max_n...\0A\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"%s: %s n_eff: %d, n_int: %d, sdm_din: %d\0A\00", align 1
@__func__.gm20b_dvfs_calc_ndiv = private unnamed_addr constant [21 x i8] c"gm20b_dvfs_calc_ndiv\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"%s: %s uv: %d uv\0A\00", align 1
@__func__.gm20b_clk_calc = private unnamed_addr constant [15 x i8] c"gm20b_clk_calc\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"%s: fused calibration data: slope %d, offs %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"%s: failed to evaluate safe fmax\0A\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"%s: safe fmax @ vmin = %u Khz\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm20b_clk_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.nvkm_device_func, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr %8(ptr noundef %0) #9
  %10 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %9, i32 0, i32 11
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  br i1 %12, label %14, label %21

14:                                               ; preds = %4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 392) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %172, label %17

17:                                               ; preds = %14
  store ptr %15, ptr %3, align 4
  %18 = tail call i32 @gk20a_clk_ctor(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @gm20b_clk_speedo0, ptr noundef nonnull @gm20b_pllg_params, ptr noundef nonnull %15) #9
  %19 = getelementptr inbounds %struct.gk20a_clk, ptr %15, i32 0, i32 5
  store ptr @pl_to_div, ptr %19, align 4
  %20 = getelementptr inbounds %struct.gk20a_clk, ptr %15, i32 0, i32 4
  store ptr @div_to_pl, ptr %20, align 8
  br label %172

21:                                               ; preds = %4
  %22 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 492) #10
  %23 = icmp eq ptr %22, null
  br i1 %23, label %172, label %24

24:                                               ; preds = %21
  store ptr %22, ptr %3, align 4
  %25 = getelementptr %struct.gm20b_clk, ptr %22, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(40) %25, ptr noundef nonnull align 4 dereferenceable(40) @gm20b_pllg_params, i32 40, i1 false)
  %26 = tail call i32 @gk20a_clk_ctor(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @gm20b_clk, ptr noundef %25, ptr noundef nonnull %22) #9
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %172

28:                                               ; preds = %24
  %29 = getelementptr %struct.gm20b_clk, ptr %22, i32 1, i32 0, i32 0, i32 1, i32 2
  %30 = load i32, ptr %29, align 8
  %31 = getelementptr inbounds %struct.gk20a_clk, ptr %22, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = udiv i32 %32, 1000
  %34 = add i32 %30, -1
  %35 = add i32 %34, %33
  %36 = udiv i32 %35, %33
  %37 = getelementptr %struct.gm20b_clk, ptr %22, i32 1, i32 0, i32 0, i32 1, i32 3
  store i32 %36, ptr %37, align 4
  %38 = getelementptr %struct.gm20b_clk, ptr %22, i32 1, i32 0, i32 0, i32 1, i32 4
  store i32 %36, ptr %38, align 8
  %39 = icmp ugt i32 %33, %35
  br i1 %39, label %40, label %58

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.nvkm_clk, ptr %22, i32 0, i32 1, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = icmp ugt i32 %42, 1
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.nvkm_clk, ptr %22, i32 0, i32 1, i32 1
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.nvkm_device, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.nvkm_clk, ptr %22, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %48, ptr noundef nonnull @.str, ptr noundef %49) #11
  br label %50

50:                                               ; preds = %44, %40
  tail call void @kfree(ptr noundef nonnull %22) #9
  %51 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %52 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %51, i32 noundef 3520, i32 noundef 392) #10
  %53 = icmp eq ptr %52, null
  br i1 %53, label %172, label %54

54:                                               ; preds = %50
  store ptr %52, ptr %3, align 4
  %55 = tail call i32 @gk20a_clk_ctor(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @gm20b_clk_speedo0, ptr noundef nonnull @gm20b_pllg_params, ptr noundef nonnull %52) #9
  %56 = getelementptr inbounds %struct.gk20a_clk, ptr %52, i32 0, i32 5
  store ptr @pl_to_div, ptr %56, align 4
  %57 = getelementptr inbounds %struct.gk20a_clk, ptr %52, i32 0, i32 4
  store ptr @div_to_pl, ptr %57, align 8
  br label %172

58:                                               ; preds = %28
  %59 = getelementptr inbounds %struct.gk20a_clk, ptr %22, i32 0, i32 5
  store ptr @pl_to_div, ptr %59, align 4
  %60 = getelementptr inbounds %struct.gk20a_clk, ptr %22, i32 0, i32 4
  store ptr @div_to_pl, ptr %60, align 8
  %61 = getelementptr inbounds %struct.gm20b_clk, ptr %22, i32 0, i32 6
  store ptr @gm20b_dvfs_params, ptr %61, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4
  %62 = call i32 @tegra_fuse_readl(i32 noundef 516, ptr noundef nonnull %5) #9
  %63 = load i32, ptr %5, align 4
  %64 = icmp ult i32 %63, 1073741824
  br i1 %64, label %90, label %65

65:                                               ; preds = %58
  %66 = lshr i32 %63, 24
  %67 = and i32 %66, 63
  %68 = mul nuw nsw i32 %67, 1000
  %69 = lshr i32 %63, 14
  %70 = and i32 %69, 1023
  %71 = add nuw nsw i32 %68, %70
  %72 = getelementptr inbounds %struct.gm20b_clk, ptr %22, i32 0, i32 7
  store i32 %71, ptr %72, align 8
  %73 = lshr i32 %63, 4
  %74 = and i32 %73, 1023
  %75 = mul nuw nsw i32 %74, 1000
  %76 = and i32 %63, 15
  %77 = mul nuw nsw i32 %76, 100
  %78 = add nuw nsw i32 %75, %77
  %79 = getelementptr inbounds %struct.gm20b_clk, ptr %22, i32 0, i32 8
  store i32 %78, ptr %79, align 4
  %80 = getelementptr inbounds %struct.nvkm_clk, ptr %22, i32 0, i32 1, i32 5
  %81 = load i32, ptr %80, align 4
  %82 = icmp ugt i32 %81, 3
  br i1 %82, label %83, label %89

83:                                               ; preds = %65
  %84 = getelementptr inbounds %struct.nvkm_clk, ptr %22, i32 0, i32 1, i32 1
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr inbounds %struct.nvkm_device, ptr %85, i32 0, i32 2
  %87 = load ptr, ptr %86, align 8
  %88 = getelementptr inbounds %struct.nvkm_clk, ptr %22, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %87, ptr noundef nonnull @.str.17, ptr noundef %88, i32 noundef %71, i32 noundef %78) #11
  br label %89

89:                                               ; preds = %83, %65
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  br label %100

90:                                               ; preds = %58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  %91 = getelementptr inbounds %struct.nvkm_clk, ptr %22, i32 0, i32 1, i32 5
  %92 = load i32, ptr %91, align 4
  %93 = icmp ugt i32 %92, 1
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.nvkm_clk, ptr %22, i32 0, i32 1, i32 1
  %96 = load ptr, ptr %95, align 8
  %97 = getelementptr inbounds %struct.nvkm_device, ptr %96, i32 0, i32 2
  %98 = load ptr, ptr %97, align 8
  %99 = getelementptr inbounds %struct.nvkm_clk, ptr %22, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %98, ptr noundef nonnull @.str.1, ptr noundef %99) #11
  br label %100

100:                                              ; preds = %94, %90, %89
  %101 = getelementptr inbounds %struct.nvkm_clk, ptr %22, i32 0, i32 1, i32 1
  %102 = load ptr, ptr %101, align 8
  %103 = getelementptr inbounds %struct.nvkm_device, ptr %102, i32 0, i32 40
  %104 = load ptr, ptr %103, align 4
  %105 = load ptr, ptr %22, align 8
  %106 = getelementptr inbounds %struct.nvkm_clk_func, ptr %105, i32 0, i32 6
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.nvkm_clk_func, ptr %105, i32 0, i32 7
  %109 = load i32, ptr %108, align 4
  %110 = getelementptr inbounds %struct.nvkm_volt, ptr %104, i32 0, i32 3
  %111 = load i8, ptr %110, align 1
  %112 = zext i8 %111 to i32
  %113 = icmp ugt i8 %111, 1
  br i1 %113, label %114, label %117

114:                                              ; preds = %100
  %115 = getelementptr inbounds %struct.nvkm_volt, ptr %104, i32 0, i32 4
  %116 = load i32, ptr %115, align 4
  br label %120

117:                                              ; preds = %131, %100
  %118 = phi i32 [ 0, %100 ], [ %133, %131 ]
  %119 = icmp sgt i32 %109, 0
  br i1 %119, label %136, label %153

120:                                              ; preds = %131, %114
  %121 = phi i32 [ %134, %131 ], [ 1, %114 ]
  %122 = phi i32 [ %133, %131 ], [ 0, %114 ]
  %123 = phi i32 [ %132, %131 ], [ %116, %114 ]
  %124 = getelementptr %struct.nvkm_volt, ptr %104, i32 0, i32 4, i32 %121
  %125 = load i32, ptr %124, align 4
  %126 = icmp ugt i32 %125, %123
  br i1 %126, label %131, label %127

127:                                              ; preds = %120
  %128 = getelementptr %struct.nvkm_volt, ptr %104, i32 0, i32 4, i32 %121, i32 1
  %129 = load i8, ptr %128, align 4
  %130 = zext i8 %129 to i32
  br label %131

131:                                              ; preds = %127, %120
  %132 = phi i32 [ %125, %127 ], [ %123, %120 ]
  %133 = phi i32 [ %130, %127 ], [ %122, %120 ]
  %134 = add nuw nsw i32 %121, 1
  %135 = icmp eq i32 %134, %112
  br i1 %135, label %117, label %120

136:                                              ; preds = %147, %117
  %137 = phi i32 [ %149, %147 ], [ 0, %117 ]
  %138 = phi i32 [ %148, %147 ], [ 0, %117 ]
  %139 = getelementptr %struct.nvkm_pstate, ptr %107, i32 %137, i32 2, i32 1
  %140 = load i8, ptr %139, align 4
  %141 = zext i8 %140 to i32
  %142 = icmp eq i32 %118, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %136
  %144 = getelementptr %struct.nvkm_pstate, ptr %107, i32 %137, i32 2, i32 2, i32 19
  %145 = load i32, ptr %144, align 4
  %146 = call i32 @llvm.umax.i32(i32 %138, i32 %145) #9
  br label %147

147:                                              ; preds = %143, %136
  %148 = phi i32 [ %146, %143 ], [ %138, %136 ]
  %149 = add nuw nsw i32 %137, 1
  %150 = icmp eq i32 %149, %109
  br i1 %150, label %151, label %136

151:                                              ; preds = %147
  %152 = icmp eq i32 %148, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %151, %117
  %154 = getelementptr inbounds %struct.nvkm_clk, ptr %22, i32 0, i32 1, i32 5
  %155 = load i32, ptr %154, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %172, label %157

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.nvkm_device, ptr %102, i32 0, i32 2
  %159 = load ptr, ptr %158, align 8
  %160 = getelementptr inbounds %struct.nvkm_clk, ptr %22, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %159, ptr noundef nonnull @.str.18, ptr noundef %160) #11
  br label %172

161:                                              ; preds = %151
  %162 = mul i32 %148, 90
  %163 = udiv i32 %162, 100
  %164 = getelementptr inbounds %struct.gm20b_clk, ptr %22, i32 0, i32 9
  store i32 %163, ptr %164, align 8
  %165 = getelementptr inbounds %struct.nvkm_clk, ptr %22, i32 0, i32 1, i32 5
  %166 = load i32, ptr %165, align 4
  %167 = icmp ugt i32 %166, 3
  br i1 %167, label %168, label %172

168:                                              ; preds = %161
  %169 = getelementptr inbounds %struct.nvkm_device, ptr %102, i32 0, i32 2
  %170 = load ptr, ptr %169, align 8
  %171 = getelementptr inbounds %struct.nvkm_clk, ptr %22, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %170, ptr noundef nonnull @.str.19, ptr noundef %171, i32 noundef %163) #11
  br label %172

172:                                              ; preds = %168, %161, %157, %153, %54, %50, %24, %21, %17, %14
  %173 = phi i32 [ -12, %21 ], [ %26, %24 ], [ %18, %17 ], [ -12, %14 ], [ %55, %54 ], [ -12, %50 ], [ -22, %157 ], [ -22, %153 ], [ 0, %168 ], [ 0, %161 ]
  ret i32 %173
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk20a_clk_ctor(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @pl_to_div(i32 noundef returned %0) #5 {
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @div_to_pl(i32 noundef returned %0) #5 {
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gm20b_clk_init(ptr noundef %0) #0 {
  %2 = alloca %struct.nvkm_timer_wait, align 8
  %3 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 1273856
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %9 = and i32 %8, -3
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr i8, ptr %10, i32 1273856
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #9, !srcloc !11
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 1273856
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 1073740) #9
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr i8, ptr %16, i32 1274448
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %19 = and i32 %18, 2147467456
  %20 = or i32 %19, -2147483588
  %21 = load ptr, ptr %5, align 4
  %22 = getelementptr i8, ptr %21, i32 1274448
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #9, !srcloc !11
  %23 = load ptr, ptr %5, align 4
  %24 = getelementptr i8, ptr %23, i32 1274688
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %26 = and i32 %25, -2
  %27 = load ptr, ptr %5, align 4
  %28 = getelementptr i8, ptr %27, i32 1274688
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #9, !srcloc !11
  %29 = tail call i32 @gk20a_clk_setup_slide(ptr noundef %0) #9
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %254

31:                                               ; preds = %1
  %32 = load ptr, ptr %5, align 4
  %33 = getelementptr i8, ptr %32, i32 137540
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %35 = and i32 %34, 3
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = or i32 %34, 2
  %39 = load ptr, ptr %5, align 4
  %40 = getelementptr i8, ptr %39, i32 137540
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #9, !srcloc !11
  %41 = load ptr, ptr %5, align 4
  %42 = getelementptr i8, ptr %41, i32 137544
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %44 = or i32 %43, 1
  %45 = load ptr, ptr %5, align 4
  %46 = getelementptr i8, ptr %45, i32 137544
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #9, !srcloc !11
  br label %47

47:                                               ; preds = %37, %31
  %48 = load ptr, ptr %5, align 4
  %49 = getelementptr i8, ptr %48, i32 131424
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %51 = and i32 %50, -4128769
  %52 = load ptr, ptr %5, align 4
  %53 = getelementptr i8, ptr %52, i32 131424
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #9, !srcloc !11
  %54 = load ptr, ptr %0, align 4
  %55 = icmp eq ptr %54, @gm20b_clk
  br i1 %55, label %56, label %230

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 40
  %58 = load ptr, ptr %57, align 4
  %59 = tail call i32 @nvkm_volt_get(ptr noundef %58) #9
  %60 = getelementptr inbounds %struct.gm20b_clk, ptr %0, i32 0, i32 2
  store i32 %59, ptr %60, align 4
  %61 = load ptr, ptr %3, align 4
  %62 = getelementptr inbounds %struct.gm20b_clk, ptr %0, i32 0, i32 8
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.gm20b_clk, ptr %0, i32 0, i32 7
  %67 = load i32, ptr %66, align 4
  %68 = icmp ne i32 %67, 0
  br label %69

69:                                               ; preds = %65, %56
  %70 = phi i1 [ false, %56 ], [ %68, %65 ]
  %71 = getelementptr inbounds %struct.nvkm_device, ptr %61, i32 0, i32 11
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr i8, ptr %72, i32 1273876
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %75 = or i32 %74, 536870912
  %76 = load ptr, ptr %71, align 4
  %77 = getelementptr i8, ptr %76, i32 1273876
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %75) #9, !srcloc !11
  %78 = getelementptr inbounds %struct.gm20b_clk, ptr %0, i32 0, i32 6
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.gm20b_clk_dvfs_params, ptr %79, i32 0, i32 2
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %94, label %83

83:                                               ; preds = %69
  %84 = load ptr, ptr %71, align 4
  %85 = getelementptr i8, ptr %84, i32 1273880
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %87 = and i32 %86, -512
  %88 = load ptr, ptr %78, align 4
  %89 = getelementptr inbounds %struct.gm20b_clk_dvfs_params, ptr %88, i32 0, i32 2
  %90 = load i32, ptr %89, align 4
  %91 = or i32 %90, %87
  %92 = load ptr, ptr %71, align 4
  %93 = getelementptr i8, ptr %92, i32 1273880
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %91) #9, !srcloc !11
  br label %94

94:                                               ; preds = %83, %69
  %95 = load ptr, ptr %71, align 4
  %96 = getelementptr i8, ptr %95, i32 1273876
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9
  %98 = or i32 %97, 1073741824
  %99 = load ptr, ptr %71, align 4
  %100 = getelementptr i8, ptr %99, i32 1273876
  tail call void asm sideeffect "dsb st", "~{memory}"() #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %98) #9
  br i1 %70, label %159, label %101

101:                                              ; preds = %94
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false) #9, !annotation !12
  call void @nvkm_timer_wait_init(ptr noundef %61, i64 noundef 10000, ptr noundef nonnull %2) #9
  %102 = load ptr, ptr %71, align 4
  %103 = getelementptr i8, ptr %102, i32 1273876
  %104 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #9
  br label %141

107:                                              ; preds = %112
  %108 = load ptr, ptr %71, align 4
  %109 = getelementptr i8, ptr %108, i32 1273876
  %110 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %134, label %112

112:                                              ; preds = %107, %101
  %113 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %2) #9
  %114 = icmp sgt i64 %113, -1
  br i1 %114, label %107, label %115

115:                                              ; preds = %112
  %116 = load ptr, ptr %2, align 8
  %117 = getelementptr inbounds %struct.nvkm_timer, ptr %116, i32 0, i32 1, i32 1
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.nvkm_device, ptr %118, i32 0, i32 2
  %120 = load ptr, ptr %119, align 8
  %121 = call ptr @dev_driver_string(ptr noundef %120) #9
  %122 = load ptr, ptr %2, align 8
  %123 = getelementptr inbounds %struct.nvkm_timer, ptr %122, i32 0, i32 1, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.nvkm_device, ptr %124, i32 0, i32 2
  %126 = load ptr, ptr %125, align 8
  %127 = getelementptr inbounds %struct.device, ptr %126, i32 0, i32 3
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %132

130:                                              ; preds = %115
  %131 = load ptr, ptr %126, align 4
  br label %132

132:                                              ; preds = %130, %115
  %133 = phi ptr [ %131, %130 ], [ %128, %115 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 780, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef %121, ptr noundef %133) #9
  br label %134

134:                                              ; preds = %132, %107
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #9
  %135 = and i64 %113, 2147483648
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 5
  %139 = load i32, ptr %138, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %254, label %247

141:                                              ; preds = %134, %106
  %142 = load ptr, ptr %71, align 4
  %143 = getelementptr i8, ptr %142, i32 1273880
  %144 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %143) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %145 = lshr i32 %144, 24
  %146 = and i32 %145, 127
  %147 = getelementptr inbounds %struct.gm20b_clk, ptr %0, i32 0, i32 7
  store i32 10000, ptr %147, align 4
  %148 = load i32, ptr %60, align 4
  %149 = mul nsw i32 %146, -10000
  %150 = add i32 %149, %148
  store i32 %150, ptr %62, align 4
  %151 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 5
  %152 = load i32, ptr %151, align 4
  %153 = icmp ugt i32 %152, 3
  br i1 %153, label %154, label %159

154:                                              ; preds = %141
  %155 = load ptr, ptr %3, align 4
  %156 = getelementptr inbounds %struct.nvkm_device, ptr %155, i32 0, i32 2
  %157 = load ptr, ptr %156, align 8
  %158 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %157, ptr noundef nonnull @.str.8, ptr noundef %158, i32 noundef %150, i32 noundef 10000) #11
  br label %159

159:                                              ; preds = %154, %141, %94
  %160 = load i32, ptr %60, align 4
  %161 = getelementptr inbounds %struct.gm20b_clk, ptr %0, i32 0, i32 1
  call fastcc void @gm20b_dvfs_calc_det_coeff(ptr noundef %0, i32 noundef %160, ptr noundef %161) #9
  %162 = load ptr, ptr %3, align 4
  %163 = getelementptr inbounds %struct.nvkm_device, ptr %162, i32 0, i32 11
  %164 = load ptr, ptr %163, align 4
  %165 = getelementptr i8, ptr %164, i32 1255456
  %166 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %165) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %167 = or i32 %166, 65536
  %168 = load ptr, ptr %163, align 4
  %169 = getelementptr i8, ptr %168, i32 1255456
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %169, i32 %167) #9, !srcloc !11
  %170 = load ptr, ptr %163, align 4
  %171 = getelementptr i8, ptr %170, i32 1273872
  %172 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %171) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %173 = and i32 %172, -128
  %174 = load ptr, ptr %163, align 4
  %175 = getelementptr i8, ptr %174, i32 1273872
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %175, i32 %173) #9, !srcloc !11
  %176 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %176(i32 noundef 214748) #9
  %177 = load ptr, ptr %163, align 4
  %178 = getelementptr i8, ptr %177, i32 1255456
  %179 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %178) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %180 = and i32 %179, -65537
  %181 = load ptr, ptr %163, align 4
  %182 = getelementptr i8, ptr %181, i32 1255456
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %182, i32 %180) #9, !srcloc !11
  %183 = getelementptr inbounds %struct.gm20b_clk, ptr %0, i32 0, i32 1, i32 2
  %184 = load i32, ptr %183, align 4
  %185 = load ptr, ptr %3, align 4
  %186 = getelementptr inbounds %struct.nvkm_device, ptr %185, i32 0, i32 11
  %187 = load ptr, ptr %186, align 4
  %188 = getelementptr i8, ptr %187, i32 1255456
  %189 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %188) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %190 = and i32 %189, -128
  %191 = or i32 %190, %184
  %192 = load ptr, ptr %186, align 4
  %193 = getelementptr i8, ptr %192, i32 1255456
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %193, i32 %191) #9, !srcloc !11
  %194 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %194(i32 noundef 214748) #9
  %195 = load ptr, ptr %186, align 4
  %196 = getelementptr i8, ptr %195, i32 1273876
  %197 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %196) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %198 = and i32 %197, 33554432
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %159
  %201 = or i32 %197, 33619968
  %202 = load ptr, ptr %186, align 4
  %203 = getelementptr i8, ptr %202, i32 1273876
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %203, i32 %201) #9, !srcloc !11
  br label %204

204:                                              ; preds = %200, %159
  %205 = load i32, ptr %161, align 4
  %206 = load ptr, ptr %3, align 4
  %207 = getelementptr inbounds %struct.nvkm_device, ptr %206, i32 0, i32 11
  %208 = load ptr, ptr %207, align 4
  %209 = getelementptr i8, ptr %208, i32 1255456
  %210 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %209) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %211 = or i32 %210, 65536
  %212 = load ptr, ptr %207, align 4
  %213 = getelementptr i8, ptr %212, i32 1255456
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %213, i32 %211) #9, !srcloc !11
  %214 = load ptr, ptr %207, align 4
  %215 = getelementptr i8, ptr %214, i32 1273872
  %216 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %215) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %217 = and i32 %216, -128
  %218 = or i32 %217, %205
  %219 = load ptr, ptr %207, align 4
  %220 = getelementptr i8, ptr %219, i32 1273872
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %220, i32 %218) #9, !srcloc !11
  %221 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %221(i32 noundef 214748) #9
  %222 = load ptr, ptr %207, align 4
  %223 = getelementptr i8, ptr %222, i32 1255456
  %224 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %223) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %225 = and i32 %224, -65537
  %226 = load ptr, ptr %207, align 4
  %227 = getelementptr i8, ptr %226, i32 1255456
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %227, i32 %225) #9, !srcloc !11
  %228 = getelementptr inbounds %struct.gm20b_clk, ptr %0, i32 0, i32 4
  call fastcc void @gm20b_dvfs_program_dfs_detection(ptr noundef %0, ptr noundef %228) #9
  %229 = load ptr, ptr %0, align 4
  br label %230

230:                                              ; preds = %204, %47
  %231 = phi ptr [ %229, %204 ], [ %54, %47 ]
  %232 = getelementptr inbounds %struct.nvkm_clk_func, ptr %231, i32 0, i32 3
  %233 = load ptr, ptr %232, align 4
  %234 = getelementptr inbounds %struct.nvkm_clk_func, ptr %231, i32 0, i32 6
  %235 = load ptr, ptr %234, align 4
  %236 = getelementptr inbounds %struct.nvkm_pstate, ptr %235, i32 0, i32 2
  %237 = call i32 %233(ptr noundef %0, ptr noundef %236) #9
  %238 = load ptr, ptr %0, align 4
  %239 = getelementptr inbounds %struct.nvkm_clk_func, ptr %238, i32 0, i32 4
  %240 = load ptr, ptr %239, align 4
  %241 = call i32 %240(ptr noundef %0) #9
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %254, label %243

243:                                              ; preds = %230
  %244 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 5
  %245 = load i32, ptr %244, align 4
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %254, label %247

247:                                              ; preds = %243, %137
  %248 = phi ptr [ @.str.7, %137 ], [ @.str.4, %243 ]
  %249 = phi i32 [ -110, %137 ], [ %241, %243 ]
  %250 = load ptr, ptr %3, align 4
  %251 = getelementptr inbounds %struct.nvkm_device, ptr %250, i32 0, i32 2
  %252 = load ptr, ptr %251, align 8
  %253 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %252, ptr noundef nonnull %248, ptr noundef %253) #11
  br label %254

254:                                              ; preds = %247, %243, %230, %137, %1
  %255 = phi i32 [ %29, %1 ], [ %241, %243 ], [ 0, %230 ], [ -110, %137 ], [ %249, %247 ]
  ret i32 %255
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk20a_clk_fini(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk20a_clk_read(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk20a_clk_calc(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk20a_clk_prog(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk20a_clk_tidy(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk20a_clk_setup_slide(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_volt_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gm20b_dvfs_calc_det_coeff(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.gm20b_clk, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp sgt i32 %1, 0
  %7 = select i1 %6, i32 500, i32 -500
  %8 = add i32 %7, %1
  %9 = sdiv i32 %8, 1000
  %10 = load i32, ptr %5, align 4
  %11 = mul i32 %10, %9
  %12 = icmp sgt i32 %11, 0
  %13 = select i1 %12, i32 500, i32 -500
  %14 = add i32 %13, %11
  %15 = sdiv i32 %14, 1000
  %16 = getelementptr inbounds %struct.gm20b_clk_dvfs_params, ptr %5, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 500
  %19 = add i32 %18, %15
  %20 = udiv i32 %19, 1000
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 127)
  store i32 %21, ptr %2, align 4
  %22 = getelementptr inbounds %struct.gm20b_clk, ptr %0, i32 0, i32 8
  %23 = load i32, ptr %22, align 4
  %24 = sub i32 %1, %23
  %25 = getelementptr inbounds %struct.gm20b_clk, ptr %0, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = icmp slt i32 %24, 1
  %28 = icmp sgt i32 %26, 0
  %29 = xor i1 %27, %28
  %30 = select i1 %29, i32 2, i32 -2
  %31 = sdiv i32 %26, %30
  %32 = add i32 %31, %24
  %33 = sdiv i32 %32, %26
  %34 = getelementptr inbounds %struct.gm20b_clk_dvfs, ptr %2, i32 0, i32 2
  store i32 %33, ptr %34, align 4
  %35 = tail call i32 @llvm.abs.i32(i32 %33, i1 false)
  %36 = icmp ugt i32 %35, 63
  br i1 %36, label %37, label %47

37:                                               ; preds = %3
  %38 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.nvkm_device, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.9, ptr noundef %46) #11
  br label %47

47:                                               ; preds = %41, %37, %3
  %48 = getelementptr inbounds %struct.gm20b_clk_dvfs, ptr %2, i32 0, i32 1
  store i32 0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 5
  %50 = load i32, ptr %49, align 4
  %51 = icmp ugt i32 %50, 3
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.nvkm_device, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 4
  %58 = load i32, ptr %2, align 4
  %59 = load i32, ptr %34, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %56, ptr noundef nonnull @.str.10, ptr noundef %57, ptr noundef nonnull @__func__.gm20b_dvfs_calc_det_coeff, i32 noundef %1, i32 noundef %58, i32 noundef %59, i32 noundef 0) #11
  br label %60

60:                                               ; preds = %52, %47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gm20b_dvfs_program_dfs_detection(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 1255456
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %9 = or i32 %8, 65536
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr i8, ptr %10, i32 1255456
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #9, !srcloc !11
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 1273872
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %15 = and i32 %14, -32640
  %16 = load i32, ptr %1, align 4
  %17 = getelementptr inbounds %struct.gm20b_clk_dvfs, ptr %1, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = shl i32 %18, 8
  %20 = or i32 %16, %15
  %21 = or i32 %20, %19
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr i8, ptr %22, i32 1273872
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #9, !srcloc !11
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #9
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr i8, ptr %25, i32 1255456
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %28 = and i32 %27, -65537
  %29 = load ptr, ptr %5, align 4
  %30 = getelementptr i8, ptr %29, i32 1255456
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #9, !srcloc !11
  %31 = getelementptr inbounds %struct.gm20b_clk_dvfs, ptr %1, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %3, align 4
  %34 = getelementptr inbounds %struct.nvkm_device, ptr %33, i32 0, i32 11
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 1255456
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %38 = and i32 %37, -128
  %39 = or i32 %38, %32
  %40 = load ptr, ptr %34, align 4
  %41 = getelementptr i8, ptr %40, i32 1255456
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #9, !srcloc !11
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748) #9
  %43 = load ptr, ptr %34, align 4
  %44 = getelementptr i8, ptr %43, i32 1273876
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %46 = and i32 %45, 33554432
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %2
  %49 = or i32 %45, 33619968
  %50 = load ptr, ptr %34, align 4
  %51 = getelementptr i8, ptr %50, i32 1273876
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #9, !srcloc !11
  br label %52

52:                                               ; preds = %48, %2
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gm20b_clk_fini(ptr noundef %0) #0 {
  %2 = alloca %struct.gk20a_pll, align 4
  %3 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 1273856
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false), !annotation !12
  call void @gk20a_pllg_read_mnp(ptr noundef %0, ptr noundef nonnull %2) #9
  %12 = load i32, ptr %2, align 4
  %13 = getelementptr inbounds %struct.gk20a_clk, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %14, align 4
  %16 = mul i32 %15, %12
  %17 = getelementptr inbounds %struct.gk20a_clk, ptr %0, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = udiv i32 %18, 1000
  %20 = add i32 %16, -1
  %21 = add i32 %20, %19
  %22 = udiv i32 %21, %19
  %23 = call fastcc i32 @gm20b_pllg_slide(ptr noundef %0, i32 noundef %22)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #9
  br label %24

24:                                               ; preds = %11, %1
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 11
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 1274112
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %30 = and i32 %29, -2
  %31 = load ptr, ptr %26, align 4
  %32 = getelementptr i8, ptr %31, i32 1274112
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #9, !srcloc !11
  %33 = load ptr, ptr %26, align 4
  %34 = getelementptr i8, ptr %33, i32 1273856
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %36 = and i32 %35, -5
  %37 = load ptr, ptr %26, align 4
  %38 = getelementptr i8, ptr %37, i32 1273856
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #9, !srcloc !11
  %39 = load ptr, ptr %26, align 4
  %40 = getelementptr i8, ptr %39, i32 1273856
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %42 = and i32 %41, -2
  %43 = load ptr, ptr %26, align 4
  %44 = getelementptr i8, ptr %43, i32 1273856
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #9, !srcloc !11
  %45 = load ptr, ptr %26, align 4
  %46 = getelementptr i8, ptr %45, i32 1273856
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %48 = load ptr, ptr %5, align 4
  %49 = getelementptr i8, ptr %48, i32 1273856
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %51 = and i32 %50, -4
  %52 = or i32 %51, 1
  %53 = load ptr, ptr %5, align 4
  %54 = getelementptr i8, ptr %53, i32 1273856
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #9, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gm20b_clk_calc(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 40
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.nvkm_cstate, ptr %1, i32 0, i32 2, i32 19
  %8 = load i32, ptr %7, align 4
  %9 = mul i32 %8, 1000
  %10 = getelementptr inbounds %struct.gm20b_clk, ptr %0, i32 0, i32 3
  %11 = tail call i32 @gk20a_pllg_calc_mnp(ptr noundef %0, i32 noundef %9, ptr noundef %10) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.nvkm_cstate, ptr %1, i32 0, i32 1
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i32
  %17 = getelementptr %struct.nvkm_volt, ptr %6, i32 0, i32 4, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.gm20b_clk, ptr %0, i32 0, i32 5
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.gm20b_clk, ptr %0, i32 0, i32 4
  tail call fastcc void @gm20b_dvfs_calc_det_coeff(ptr noundef %0, i32 noundef %18, ptr noundef %20)
  %21 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %22, 3
  br i1 %23, label %24, label %30

24:                                               ; preds = %13
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 4
  %29 = load i32, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.16, ptr noundef %28, ptr noundef nonnull @__func__.gm20b_clk_calc, i32 noundef %29) #11
  br label %30

30:                                               ; preds = %24, %13, %2
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gm20b_clk_prog(ptr noundef %0) #0 {
  %2 = alloca %struct.gk20a_pll, align 4
  %3 = getelementptr inbounds %struct.gm20b_clk, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gm20b_clk, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %123, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @nvkm_clk_read(ptr noundef %0, i32 noundef 19) #9
  %10 = getelementptr inbounds %struct.gm20b_clk, ptr %0, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %9, %11
  br i1 %12, label %13, label %53

13:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #9
  %14 = load i32, ptr %3, align 4
  %15 = load i32, ptr %5, align 4
  %16 = icmp ult i32 %14, %15
  %17 = getelementptr inbounds %struct.gm20b_clk, ptr %0, i32 0, i32 3
  %18 = getelementptr inbounds %struct.gk20a_clk, ptr %0, i32 0, i32 2
  %19 = select i1 %16, ptr %18, ptr %17
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef align 4 dereferenceable(12) %19, i32 12, i1 false)
  %20 = call i32 @gk20a_pllg_calc_rate(ptr noundef %0, ptr noundef nonnull %2) #9
  %21 = udiv i32 %20, 1000
  %22 = getelementptr inbounds %struct.gk20a_clk, ptr %0, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = udiv i32 %23, 1000
  %25 = load i32, ptr %10, align 4
  %26 = icmp ugt i32 %21, %25
  %27 = mul nuw nsw i32 %21, 90
  %28 = udiv i32 %27, 100
  %29 = select i1 %26, i32 %28, i32 %21
  %30 = shl nuw nsw i32 %29, 1
  %31 = load i32, ptr %2, align 4
  %32 = getelementptr inbounds %struct.gk20a_clk, ptr %0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = load i32, ptr %33, align 4
  %35 = mul i32 %34, %31
  %36 = add nsw i32 %24, -1
  %37 = add i32 %36, %35
  %38 = udiv i32 %37, %24
  %39 = mul i32 %30, %31
  %40 = udiv i32 %39, %23
  %41 = icmp ult i32 %40, %38
  br i1 %41, label %42, label %48

42:                                               ; preds = %13
  %43 = mul i32 %38, %24
  %44 = add i32 %39, -1
  %45 = add i32 %44, %43
  %46 = udiv i32 %45, %39
  %47 = getelementptr inbounds %struct.gk20a_pll, ptr %2, i32 0, i32 2
  store i32 %46, ptr %47, align 4
  br label %48

48:                                               ; preds = %42, %13
  %49 = phi i32 [ %38, %42 ], [ %40, %13 ]
  %50 = getelementptr inbounds %struct.gk20a_pll, ptr %2, i32 0, i32 1
  store i32 %49, ptr %50, align 4
  %51 = call fastcc i32 @gm20b_pllg_program_mnp_slide(ptr noundef %0, ptr noundef nonnull %2)
  %52 = icmp eq i32 %51, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #9
  br i1 %52, label %53, label %130

53:                                               ; preds = %48, %8
  %54 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.nvkm_device, ptr %55, i32 0, i32 11
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr i8, ptr %57, i32 1255456
  %59 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %60 = or i32 %59, 65536
  %61 = load ptr, ptr %56, align 4
  %62 = getelementptr i8, ptr %61, i32 1255456
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %60) #9, !srcloc !11
  %63 = load ptr, ptr %56, align 4
  %64 = getelementptr i8, ptr %63, i32 1273872
  %65 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %66 = and i32 %65, -128
  %67 = load ptr, ptr %56, align 4
  %68 = getelementptr i8, ptr %67, i32 1273872
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #9, !srcloc !11
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %69(i32 noundef 214748) #9
  %70 = load ptr, ptr %56, align 4
  %71 = getelementptr i8, ptr %70, i32 1255456
  %72 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %73 = and i32 %72, -65537
  %74 = load ptr, ptr %56, align 4
  %75 = getelementptr i8, ptr %74, i32 1255456
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %73) #9, !srcloc !11
  %76 = getelementptr inbounds %struct.gm20b_clk, ptr %0, i32 0, i32 4
  %77 = getelementptr inbounds %struct.gm20b_clk, ptr %0, i32 0, i32 4, i32 2
  %78 = load i32, ptr %77, align 4
  %79 = load ptr, ptr %54, align 4
  %80 = getelementptr inbounds %struct.nvkm_device, ptr %79, i32 0, i32 11
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr i8, ptr %81, i32 1255456
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %84 = and i32 %83, -128
  %85 = or i32 %84, %78
  %86 = load ptr, ptr %80, align 4
  %87 = getelementptr i8, ptr %86, i32 1255456
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %85) #9, !srcloc !11
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %88(i32 noundef 214748) #9
  %89 = load ptr, ptr %80, align 4
  %90 = getelementptr i8, ptr %89, i32 1273876
  %91 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %92 = and i32 %91, 33554432
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %53
  %95 = or i32 %91, 33619968
  %96 = load ptr, ptr %80, align 4
  %97 = getelementptr i8, ptr %96, i32 1273876
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %95) #9, !srcloc !11
  br label %98

98:                                               ; preds = %94, %53
  %99 = load i32, ptr %76, align 4
  %100 = load ptr, ptr %54, align 4
  %101 = getelementptr inbounds %struct.nvkm_device, ptr %100, i32 0, i32 11
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr i8, ptr %102, i32 1255456
  %104 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %105 = or i32 %104, 65536
  %106 = load ptr, ptr %101, align 4
  %107 = getelementptr i8, ptr %106, i32 1255456
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %105) #9, !srcloc !11
  %108 = load ptr, ptr %101, align 4
  %109 = getelementptr i8, ptr %108, i32 1273872
  %110 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %111 = and i32 %110, -128
  %112 = or i32 %111, %99
  %113 = load ptr, ptr %101, align 4
  %114 = getelementptr i8, ptr %113, i32 1273872
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %112) #9, !srcloc !11
  %115 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %115(i32 noundef 214748) #9
  %116 = load ptr, ptr %101, align 4
  %117 = getelementptr i8, ptr %116, i32 1255456
  %118 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %117) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %119 = and i32 %118, -65537
  %120 = load ptr, ptr %101, align 4
  %121 = getelementptr i8, ptr %120, i32 1255456
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %119) #9, !srcloc !11
  call fastcc void @gm20b_dvfs_program_dfs_detection(ptr noundef %0, ptr noundef %76)
  %122 = load i32, ptr %5, align 4
  br label %123

123:                                              ; preds = %98, %1
  %124 = phi i32 [ %4, %1 ], [ %122, %98 ]
  store i32 %124, ptr %3, align 4
  %125 = getelementptr inbounds %struct.gm20b_clk, ptr %0, i32 0, i32 1
  %126 = getelementptr inbounds %struct.gm20b_clk, ptr %0, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %125, ptr noundef align 4 dereferenceable(12) %126, i32 12, i1 false)
  %127 = getelementptr inbounds %struct.gk20a_clk, ptr %0, i32 0, i32 2
  %128 = getelementptr inbounds %struct.gm20b_clk, ptr %0, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %127, ptr noundef align 4 dereferenceable(12) %128, i32 12, i1 false)
  %129 = call fastcc i32 @gm20b_pllg_program_mnp_slide(ptr noundef %0, ptr noundef %127)
  br label %130

130:                                              ; preds = %123, %48
  %131 = phi i32 [ %129, %123 ], [ %51, %48 ]
  ret i32 %131
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk20a_pllg_read_mnp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gm20b_pllg_slide(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.gm20b_pll, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_timer_wait, align 8
  %7 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !12
  call fastcc void @gm20b_dvfs_calc_ndiv(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %9 = load ptr, ptr %7, align 4
  call void @gk20a_pllg_read_mnp(ptr noundef %0, ptr noundef nonnull %3) #9
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 1273868
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %14 = and i32 %13, 255
  %15 = getelementptr inbounds %struct.gm20b_pll, ptr %3, i32 0, i32 1
  store i32 %14, ptr %15, align 4
  %16 = load i32, ptr %4, align 4
  %17 = getelementptr inbounds %struct.gk20a_pll, ptr %3, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %16, %18
  %20 = load i32, ptr %5, align 4
  %21 = icmp eq i32 %20, %14
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %94, label %23

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 1273884
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %28 = or i32 %27, 4194304
  %29 = load ptr, ptr %24, align 4
  %30 = getelementptr i8, ptr %29, i32 1273884
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #9, !srcloc !11
  %31 = load ptr, ptr %24, align 4
  %32 = getelementptr i8, ptr %31, i32 1273868
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %34 = and i32 %33, -8388353
  %35 = shl i32 %20, 8
  %36 = or i32 %35, %34
  %37 = load ptr, ptr %24, align 4
  %38 = getelementptr i8, ptr %37, i32 1273868
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #9, !srcloc !11
  store i32 %16, ptr %17, align 4
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %39(i32 noundef 214748) #9
  call void @gk20a_pllg_write_mnp(ptr noundef %0, ptr noundef nonnull %3) #9
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %40(i32 noundef 214748) #9
  %41 = load ptr, ptr %24, align 4
  %42 = getelementptr i8, ptr %41, i32 1273884
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %44 = or i32 %43, -2147483648
  %45 = load ptr, ptr %24, align 4
  %46 = getelementptr i8, ptr %45, i32 1273884
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #9, !srcloc !11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i32 40, i1 false), !annotation !12
  call void @nvkm_timer_wait_init(ptr noundef %8, i64 noundef 500000, ptr noundef nonnull %6) #9
  br label %47

47:                                               ; preds = %54, %23
  %48 = load ptr, ptr %24, align 4
  %49 = getelementptr i8, ptr %48, i32 1255584
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %51 = and i32 %50, 16777216
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #9
  br label %76

54:                                               ; preds = %47
  %55 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %6) #9
  %56 = icmp sgt i64 %55, -1
  br i1 %56, label %47, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %6, align 8
  %59 = getelementptr inbounds %struct.nvkm_timer, ptr %58, i32 0, i32 1, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.nvkm_device, ptr %60, i32 0, i32 2
  %62 = load ptr, ptr %61, align 8
  %63 = call ptr @dev_driver_string(ptr noundef %62) #9
  %64 = load ptr, ptr %6, align 8
  %65 = getelementptr inbounds %struct.nvkm_timer, ptr %64, i32 0, i32 1, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.nvkm_device, ptr %66, i32 0, i32 2
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.device, ptr %68, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %57
  %73 = load ptr, ptr %68, align 4
  br label %74

74:                                               ; preds = %72, %57
  %75 = phi ptr [ %73, %72 ], [ %70, %57 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 305, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef %63, ptr noundef %75) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #9
  br label %76

76:                                               ; preds = %74, %53
  %77 = phi i32 [ -110, %74 ], [ 0, %53 ]
  %78 = load ptr, ptr %24, align 4
  %79 = getelementptr i8, ptr %78, i32 1273868
  %80 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %81 = and i32 %80, -256
  %82 = or i32 %81, %20
  %83 = load ptr, ptr %24, align 4
  %84 = getelementptr i8, ptr %83, i32 1273868
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %82) #9, !srcloc !11
  %85 = load ptr, ptr %24, align 4
  %86 = getelementptr i8, ptr %85, i32 1273884
  %87 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %88 = and i32 %87, 2143289343
  %89 = load ptr, ptr %24, align 4
  %90 = getelementptr i8, ptr %89, i32 1273884
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %88) #9, !srcloc !11
  %91 = load ptr, ptr %24, align 4
  %92 = getelementptr i8, ptr %91, i32 1273884
  %93 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  br label %94

94:                                               ; preds = %76, %2
  %95 = phi i32 [ %77, %76 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gm20b_dvfs_calc_ndiv(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.gk20a_clk, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.gm20b_clk, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.gm20b_clk, ptr %0, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = sub i32 %8, %10
  %12 = getelementptr inbounds %struct.gm20b_clk, ptr %0, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = icmp slt i32 %11, 1
  %15 = icmp sgt i32 %13, 0
  %16 = xor i1 %14, %15
  %17 = select i1 %16, i32 2, i32 -2
  %18 = sdiv i32 %13, %17
  %19 = add i32 %18, %11
  %20 = sdiv i32 %19, %13
  %21 = getelementptr inbounds %struct.gm20b_clk, ptr %0, i32 0, i32 1
  %22 = getelementptr inbounds %struct.gm20b_clk, ptr %0, i32 0, i32 1, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = sub i32 %20, %23
  %25 = getelementptr inbounds %struct.gm20b_clk, ptr %0, i32 0, i32 1, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = tail call i32 @llvm.smin.i32(i32 %24, i32 %26)
  %28 = load i32, ptr %21, align 4
  %29 = mul i32 %27, %28
  %30 = shl i32 %1, 6
  %31 = sub i32 %30, %29
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %4
  %34 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.nvkm_device, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.13, ptr noundef %42) #11
  br label %43

43:                                               ; preds = %37, %33, %4
  %44 = phi i32 [ %31, %4 ], [ 64, %37 ], [ 64, %33 ]
  %45 = lshr i32 %44, 6
  %46 = getelementptr inbounds %struct.gk20a_clk_pllg_params, ptr %6, i32 0, i32 7
  %47 = load i32, ptr %46, align 4
  %48 = icmp ugt i32 %45, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 5
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.nvkm_device, ptr %55, i32 0, i32 2
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.14, ptr noundef %58) #11
  %59 = load i32, ptr %46, align 4
  br label %60

60:                                               ; preds = %53, %49
  %61 = phi i32 [ %59, %53 ], [ %47, %49 ]
  %62 = shl i32 %61, 6
  %63 = and i32 %61, 67108863
  br label %64

64:                                               ; preds = %60, %43
  %65 = phi i32 [ %63, %60 ], [ %45, %43 ]
  %66 = phi i32 [ %62, %60 ], [ %44, %43 ]
  store i32 %65, ptr %2, align 4
  %67 = shl i32 %66, 7
  %68 = and i32 %67, 8064
  %69 = add nuw nsw i32 %68, 61440
  %70 = lshr i32 %69, 8
  %71 = and i32 %70, 255
  store i32 %71, ptr %3, align 4
  %72 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 5
  %73 = load i32, ptr %72, align 4
  %74 = icmp ugt i32 %73, 3
  br i1 %74, label %75, label %82

75:                                               ; preds = %64
  %76 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.nvkm_device, ptr %77, i32 0, i32 2
  %79 = load ptr, ptr %78, align 8
  %80 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 4
  %81 = load i32, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %79, ptr noundef nonnull @.str.15, ptr noundef %80, ptr noundef nonnull @__func__.gm20b_dvfs_calc_ndiv, i32 noundef %1, i32 noundef %81, i32 noundef %71) #11
  br label %82

82:                                               ; preds = %75, %64
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk20a_pllg_write_mnp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk20a_pllg_calc_mnp(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_clk_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gm20b_pllg_program_mnp_slide(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.gm20b_pll, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.gk20a_pll, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i32 12, i1 false), !annotation !12
  %7 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 1273856
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %39, label %15

15:                                               ; preds = %2
  call void @gk20a_pllg_read_mnp(ptr noundef %0, ptr noundef nonnull %6) #9
  %16 = load i32, ptr %1, align 4
  %17 = load i32, ptr %6, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.gk20a_pll, ptr %1, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.gk20a_pll, ptr %6, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %194, label %25

25:                                               ; preds = %19, %15
  %26 = getelementptr inbounds %struct.gk20a_clk, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load i32, ptr %27, align 4
  %29 = mul i32 %28, %17
  %30 = getelementptr inbounds %struct.gk20a_clk, ptr %0, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = udiv i32 %31, 1000
  %33 = add i32 %29, -1
  %34 = add i32 %33, %32
  %35 = udiv i32 %34, %32
  %36 = getelementptr inbounds %struct.gk20a_pll, ptr %6, i32 0, i32 1
  store i32 %35, ptr %36, align 4
  %37 = call fastcc i32 @gm20b_pllg_slide(ptr noundef %0, i32 noundef %35)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %198

39:                                               ; preds = %25, %2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef align 4 dereferenceable(12) %1, i32 12, i1 false)
  %40 = load i32, ptr %6, align 4
  %41 = getelementptr inbounds %struct.gk20a_clk, ptr %0, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = load i32, ptr %42, align 4
  %44 = mul i32 %43, %40
  %45 = getelementptr inbounds %struct.gk20a_clk, ptr %0, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = udiv i32 %46, 1000
  %48 = add i32 %44, -1
  %49 = add i32 %48, %47
  %50 = udiv i32 %49, %47
  %51 = getelementptr inbounds %struct.gk20a_pll, ptr %6, i32 0, i32 1
  store i32 %50, ptr %51, align 4
  %52 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #9, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !12
  call fastcc void @gm20b_dvfs_calc_ndiv(ptr noundef %0, i32 noundef %50, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  %53 = load ptr, ptr %7, align 4
  call void @gk20a_pllg_read_mnp(ptr noundef %0, ptr noundef nonnull %3) #9
  %54 = getelementptr inbounds %struct.nvkm_device, ptr %53, i32 0, i32 11
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %55, i32 1273868
  %57 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %58 = and i32 %57, 255
  %59 = getelementptr inbounds %struct.gm20b_pll, ptr %3, i32 0, i32 1
  store i32 %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.gk20a_pll, ptr %3, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = load i32, ptr %4, align 4
  %63 = icmp eq i32 %61, %62
  %64 = load i32, ptr %5, align 4
  %65 = icmp eq i32 %58, %64
  %66 = select i1 %63, i1 %65, i1 false
  br i1 %66, label %67, label %71

67:                                               ; preds = %39
  %68 = load i32, ptr %3, align 4
  %69 = load i32, ptr %6, align 4
  %70 = icmp eq i32 %68, %69
  br label %71

71:                                               ; preds = %67, %39
  %72 = phi i1 [ false, %39 ], [ %70, %67 ]
  %73 = load ptr, ptr %7, align 4
  %74 = getelementptr inbounds %struct.nvkm_device, ptr %73, i32 0, i32 11
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr i8, ptr %75, i32 1273856
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %78 = and i32 %77, 1
  %79 = icmp ne i32 %78, 0
  %80 = select i1 %79, i1 %72, i1 false
  %81 = getelementptr inbounds %struct.nvkm_device, ptr %52, i32 0, i32 11
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr i8, ptr %82, i32 1274448
  %84 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %85 = and i32 %84, -16129
  %86 = or i32 %85, 512
  %87 = load ptr, ptr %81, align 4
  %88 = getelementptr i8, ptr %87, i32 1274448
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %86) #9, !srcloc !11
  %89 = load ptr, ptr %81, align 4
  %90 = getelementptr i8, ptr %89, i32 1274448
  %91 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %92 = and i32 %91, -16129
  %93 = or i32 %92, 512
  %94 = load ptr, ptr %81, align 4
  %95 = getelementptr i8, ptr %94, i32 1274448
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %93) #9, !srcloc !11
  %96 = load ptr, ptr %81, align 4
  %97 = getelementptr i8, ptr %96, i32 1274448
  %98 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %99(i32 noundef 429496) #9
  br i1 %80, label %100, label %116

100:                                              ; preds = %71
  %101 = getelementptr inbounds %struct.gk20a_pll, ptr %3, i32 0, i32 2
  %102 = load i32, ptr %101, align 4
  %103 = getelementptr inbounds %struct.gk20a_pll, ptr %6, i32 0, i32 2
  %104 = load i32, ptr %103, align 4
  %105 = and i32 %104, %102
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %100
  %108 = call i32 @llvm.cttz.i32(i32 %104, i1 true) #9, !range !13
  %109 = shl nuw i32 1, %108
  %110 = or i32 %109, %102
  %111 = call i32 @llvm.cttz.i32(i32 %102, i1 true) #9, !range !13
  %112 = shl nuw i32 1, %111
  %113 = or i32 %112, %104
  %114 = call i32 @llvm.umin.i32(i32 %110, i32 %113) #9
  store i32 %114, ptr %101, align 4
  call void @gk20a_pllg_write_mnp(ptr noundef %0, ptr noundef nonnull %3) #9
  br label %115

115:                                              ; preds = %107, %100
  store i32 %104, ptr %101, align 4
  call void @gk20a_pllg_write_mnp(ptr noundef %0, ptr noundef nonnull %3) #9
  br label %177

116:                                              ; preds = %71
  %117 = load ptr, ptr %7, align 4
  %118 = getelementptr inbounds %struct.nvkm_device, ptr %117, i32 0, i32 11
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr i8, ptr %119, i32 1274112
  %121 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %120) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %122 = and i32 %121, -2
  %123 = load ptr, ptr %118, align 4
  %124 = getelementptr i8, ptr %123, i32 1274112
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 %122) #9, !srcloc !11
  %125 = load ptr, ptr %118, align 4
  %126 = getelementptr i8, ptr %125, i32 1273856
  %127 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %126) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %128 = and i32 %127, -5
  %129 = load ptr, ptr %118, align 4
  %130 = getelementptr i8, ptr %129, i32 1273856
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %128) #9, !srcloc !11
  %131 = load ptr, ptr %118, align 4
  %132 = getelementptr i8, ptr %131, i32 1273856
  %133 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %132) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %134 = and i32 %133, -2
  %135 = load ptr, ptr %118, align 4
  %136 = getelementptr i8, ptr %135, i32 1273856
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 %134) #9, !srcloc !11
  %137 = load ptr, ptr %118, align 4
  %138 = getelementptr i8, ptr %137, i32 1273856
  %139 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %138) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %6, i32 12, i1 false) #9
  store i32 %62, ptr %60, align 4
  store i32 %64, ptr %59, align 4
  %140 = load ptr, ptr %7, align 4
  %141 = getelementptr inbounds %struct.nvkm_device, ptr %140, i32 0, i32 11
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr i8, ptr %142, i32 1273868
  %144 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %143) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %145 = and i32 %144, -256
  %146 = load i32, ptr %59, align 4
  %147 = or i32 %146, %145
  %148 = load ptr, ptr %141, align 4
  %149 = getelementptr i8, ptr %148, i32 1273868
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 %147) #9, !srcloc !11
  call void @gk20a_pllg_write_mnp(ptr noundef %0, ptr noundef nonnull %3) #9
  %150 = load ptr, ptr %7, align 4
  %151 = getelementptr inbounds %struct.nvkm_device, ptr %150, i32 0, i32 11
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr i8, ptr %152, i32 1273856
  %154 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %153) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %155 = or i32 %154, 1
  %156 = load ptr, ptr %151, align 4
  %157 = getelementptr i8, ptr %156, i32 1273856
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 %155) #9, !srcloc !11
  %158 = load ptr, ptr %151, align 4
  %159 = getelementptr i8, ptr %158, i32 1273856
  %160 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %159) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %161 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %161(i32 noundef 8589920) #9
  %162 = load ptr, ptr %151, align 4
  %163 = getelementptr i8, ptr %162, i32 1273856
  %164 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %163) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %165 = or i32 %164, 4
  %166 = load ptr, ptr %151, align 4
  %167 = getelementptr i8, ptr %166, i32 1273856
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 %165) #9, !srcloc !11
  %168 = load ptr, ptr %151, align 4
  %169 = getelementptr i8, ptr %168, i32 1273856
  %170 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %169) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %171 = load ptr, ptr %151, align 4
  %172 = getelementptr i8, ptr %171, i32 1274112
  %173 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %172) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %174 = or i32 %173, 1
  %175 = load ptr, ptr %151, align 4
  %176 = getelementptr i8, ptr %175, i32 1274112
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %176, i32 %174) #9, !srcloc !11
  br label %177

177:                                              ; preds = %116, %115
  %178 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %178(i32 noundef 429496) #9
  %179 = load ptr, ptr %81, align 4
  %180 = getelementptr i8, ptr %179, i32 1274448
  %181 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %180) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %182 = and i32 %181, -16129
  %183 = load ptr, ptr %81, align 4
  %184 = getelementptr i8, ptr %183, i32 1274448
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %184, i32 %182) #9, !srcloc !11
  %185 = load ptr, ptr %81, align 4
  %186 = getelementptr i8, ptr %185, i32 1274448
  %187 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %186) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %188 = and i32 %187, -16129
  %189 = load ptr, ptr %81, align 4
  %190 = getelementptr i8, ptr %189, i32 1274448
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %190, i32 %188) #9, !srcloc !11
  %191 = load ptr, ptr %81, align 4
  %192 = getelementptr i8, ptr %191, i32 1274448
  %193 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %192) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  br label %194

194:                                              ; preds = %177, %19
  %195 = getelementptr inbounds %struct.gk20a_pll, ptr %1, i32 0, i32 1
  %196 = load i32, ptr %195, align 4
  %197 = call fastcc i32 @gm20b_pllg_slide(ptr noundef %0, i32 noundef %196)
  br label %198

198:                                              ; preds = %194, %25
  %199 = phi i32 [ %37, %25 ], [ %197, %194 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  ret i32 %199
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk20a_pllg_calc_rate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_fuse_readl(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

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
!8 = !{i64 3969473}
!9 = !{i64 2151508926}
!10 = !{i64 2151510148}
!11 = !{i64 3969055}
!12 = !{!"auto-init"}
!13 = !{i32 0, i32 33}
