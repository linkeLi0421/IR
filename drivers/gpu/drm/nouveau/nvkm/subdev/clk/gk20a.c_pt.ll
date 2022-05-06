; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/clk/gk20a.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/clk/gk20a.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gk20a_clk_pllg_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.nvkm_domain = type { i32, i8, i8, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_clk = type { ptr, %struct.nvkm_subdev, ptr, %struct.nvkm_pstate, %struct.list_head, i32, %struct.work_struct, %struct.wait_queue_head, %struct.atomic_t, %struct.nvkm_notify, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_pstate = type { %struct.list_head, %struct.list_head, %struct.nvkm_cstate, i8, i8, i32, i8 }
%struct.nvkm_cstate = type { %struct.list_head, i8, [29 x i32], i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.gk20a_pll = type { i32, i32, i32 }
%struct.gk20a_clk = type { %struct.nvkm_clk, ptr, %struct.gk20a_pll, i32, ptr, ptr }
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
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_clk_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [0 x %struct.nvkm_domain] }
%struct.nvkm_device_tegra = type { ptr, %struct.nvkm_device, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.128, i32, i32 }
%struct.anon.128 = type { %struct.mutex, %struct.nvkm_mm, ptr, i32 }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"%s: low_PL %d(div%d), high_PL %d(div%d)\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/clk/gk20a.c\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"%s: no best match for target @ %dMHz on gpc_pll\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"%s: actual target freq %d KHz, M %d, N %d, PL %d(div%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"%s: invalid clock source %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"%s: invalid parent clock rate %u KHz\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"%s: parent clock rate: %d Khz\0A\00", align 1
@gk20a_pllg_params = internal constant %struct.gk20a_clk_pllg_params { i32 1000000, i32 2064000, i32 12000, i32 38000, i32 1, i32 255, i32 8, i32 255, i32 1, i32 32 }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@gk20a_clk = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [3 x %struct.nvkm_domain] } { ptr @gk20a_clk_init, ptr @gk20a_clk_fini, ptr @gk20a_clk_read, ptr @gk20a_clk_calc, ptr @gk20a_clk_prog, ptr @gk20a_clk_tidy, ptr @gk20a_pstates, i32 15, [3 x %struct.nvkm_domain] [%struct.nvkm_domain { i32 0, i8 -1, i8 0, ptr null, i32 0 }, %struct.nvkm_domain { i32 19, i8 -1, i8 0, ptr @.str.8, i32 1000 }, %struct.nvkm_domain { i32 29, i8 0, i8 0, ptr null, i32 0 }] }, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"%s: cannot initialize clock\0A\00", align 1
@gk20a_pstates = internal global [15 x { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 }] [{ %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 0, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 72000], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 1, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 108000], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 2, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 180000], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 3, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 252000], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 4, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 324000], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 5, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 396000], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 6, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 468000], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 7, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 540000], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 8, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 612000], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 9, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 648000], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 10, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 684000], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 11, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 708000], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 12, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 756000], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 13, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 804000], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }, { %struct.list_head, %struct.list_head, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 }, i8, i8, i32, i8 } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, { %struct.list_head, i8, [3 x i8], <{ [20 x i32], [9 x i32] }>, i8 } { %struct.list_head zeroinitializer, i8 14, [3 x i8] undef, <{ [20 x i32], [9 x i32] }> <{ [20 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 852000], [9 x i32] zeroinitializer }>, i8 0 }, i8 0, i8 0, i32 0, i8 0 }], align 4
@_pl_to_div = internal unnamed_addr constant [15 x i8] c"\01\02\03\04\05\06\08\0A\0C\10\0C\10\14\18 ", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gk20a_pllg_read_mnp(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 1273860
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  %9 = and i32 %8, 255
  store i32 %9, ptr %1, align 4
  %10 = lshr i32 %8, 8
  %11 = and i32 %10, 255
  %12 = getelementptr inbounds %struct.gk20a_pll, ptr %1, i32 0, i32 1
  store i32 %11, ptr %12, align 4
  %13 = lshr i32 %8, 16
  %14 = and i32 %13, 63
  %15 = getelementptr inbounds %struct.gk20a_pll, ptr %1, i32 0, i32 2
  store i32 %14, ptr %15, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gk20a_pllg_write_mnp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %1, align 4
  %6 = and i32 %5, 255
  %7 = getelementptr inbounds %struct.gk20a_pll, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 8
  %10 = and i32 %9, 65280
  %11 = or i32 %10, %6
  %12 = getelementptr inbounds %struct.gk20a_pll, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = shl i32 %13, 16
  %15 = and i32 %14, 4128768
  %16 = or i32 %11, %15
  %17 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 1273860
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %16) #10, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk20a_pllg_calc_rate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gk20a_clk, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gk20a_pll, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = mul i32 %6, %4
  %8 = load i32, ptr %1, align 4
  %9 = getelementptr inbounds %struct.gk20a_clk, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.gk20a_pll, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 %10(i32 noundef %12) #10
  %14 = mul i32 %13, %8
  %15 = udiv i32 %7, %14
  %16 = lshr i32 %15, 1
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk20a_pllg_calc_mnp(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = shl i32 %1, 1
  %5 = udiv i32 %4, 1000
  %6 = getelementptr inbounds %struct.gk20a_clk, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = udiv i32 %7, 1000
  %9 = udiv i32 %4, 50000
  %10 = add nuw nsw i32 %5, %9
  %11 = getelementptr inbounds %struct.gk20a_clk, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.gk20a_clk_pllg_params, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @llvm.umax.i32(i32 %14, i32 %10)
  %16 = load i32, ptr %12, align 4
  %17 = getelementptr inbounds %struct.gk20a_clk_pllg_params, ptr %12, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.gk20a_clk_pllg_params, ptr %12, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.gk20a_clk_pllg_params, ptr %12, i32 0, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = add nsw i32 %10, -1
  %24 = add i32 %23, %15
  %25 = udiv i32 %24, %10
  %26 = getelementptr inbounds %struct.gk20a_clk_pllg_params, ptr %12, i32 0, i32 9
  %27 = load i32, ptr %26, align 4
  %28 = tail call i32 @llvm.umin.i32(i32 %25, i32 %27)
  %29 = tail call i32 @llvm.umax.i32(i32 %28, i32 %22)
  %30 = getelementptr inbounds %struct.gk20a_clk, ptr %0, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 %31(i32 noundef %29) #10
  %33 = udiv i32 %16, %10
  %34 = load ptr, ptr %11, align 4
  %35 = getelementptr inbounds %struct.gk20a_clk_pllg_params, ptr %34, i32 0, i32 9
  %36 = load i32, ptr %35, align 4
  %37 = tail call i32 @llvm.umin.i32(i32 %33, i32 %36)
  %38 = getelementptr inbounds %struct.gk20a_clk_pllg_params, ptr %34, i32 0, i32 8
  %39 = load i32, ptr %38, align 4
  %40 = tail call i32 @llvm.umax.i32(i32 %37, i32 %39)
  %41 = load ptr, ptr %30, align 4
  %42 = tail call i32 %41(i32 noundef %40) #10
  %43 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = icmp ugt i32 %44, 3
  br i1 %45, label %46, label %57

46:                                               ; preds = %3
  %47 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.nvkm_device, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 4
  %52 = getelementptr inbounds %struct.gk20a_clk, ptr %0, i32 0, i32 5
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 %53(i32 noundef %42) #10
  %55 = load ptr, ptr %52, align 4
  %56 = tail call i32 %55(i32 noundef %32) #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str, ptr noundef %51, i32 noundef %42, i32 noundef %54, i32 noundef %32, i32 noundef %56) #11
  br label %57

57:                                               ; preds = %46, %3
  %58 = icmp ugt i32 %42, %32
  br i1 %58, label %164, label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.gk20a_clk, ptr %0, i32 0, i32 5
  %61 = add nsw i32 %8, -1
  br label %62

62:                                               ; preds = %156, %59
  %63 = phi i32 [ %22, %59 ], [ %160, %156 ]
  %64 = phi i32 [ %18, %59 ], [ %159, %156 ]
  %65 = phi i32 [ %20, %59 ], [ %158, %156 ]
  %66 = phi i32 [ -1, %59 ], [ %157, %156 ]
  %67 = phi i32 [ %42, %59 ], [ %161, %156 ]
  %68 = load ptr, ptr %60, align 4
  %69 = tail call i32 %68(i32 noundef %67) #10
  %70 = mul i32 %69, %5
  %71 = load ptr, ptr %11, align 4
  %72 = getelementptr inbounds %struct.gk20a_clk_pllg_params, ptr %71, i32 0, i32 4
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.gk20a_clk_pllg_params, ptr %71, i32 0, i32 5
  %75 = load i32, ptr %74, align 4
  %76 = icmp ugt i32 %73, %75
  br i1 %76, label %156, label %77

77:                                               ; preds = %145, %62
  %78 = phi ptr [ %146, %145 ], [ %71, %62 ]
  %79 = phi ptr [ %147, %145 ], [ %71, %62 ]
  %80 = phi i32 [ %152, %145 ], [ %73, %62 ]
  %81 = phi i32 [ %151, %145 ], [ %63, %62 ]
  %82 = phi i32 [ %150, %145 ], [ %64, %62 ]
  %83 = phi i32 [ %149, %145 ], [ %65, %62 ]
  %84 = phi i32 [ %148, %145 ], [ %66, %62 ]
  %85 = udiv i32 %8, %80
  %86 = getelementptr inbounds %struct.gk20a_clk_pllg_params, ptr %79, i32 0, i32 2
  %87 = load i32, ptr %86, align 4
  %88 = icmp ult i32 %85, %87
  br i1 %88, label %156, label %89

89:                                               ; preds = %77
  %90 = getelementptr inbounds %struct.gk20a_clk_pllg_params, ptr %79, i32 0, i32 3
  %91 = load i32, ptr %90, align 4
  %92 = icmp ugt i32 %85, %91
  br i1 %92, label %145, label %93

93:                                               ; preds = %89
  %94 = mul i32 %70, %80
  %95 = udiv i32 %94, %8
  %96 = add i32 %61, %94
  %97 = udiv i32 %96, %8
  %98 = getelementptr inbounds %struct.gk20a_clk_pllg_params, ptr %79, i32 0, i32 7
  %99 = load i32, ptr %98, align 4
  %100 = icmp ugt i32 %95, %99
  br i1 %100, label %156, label %101

101:                                              ; preds = %93
  %102 = icmp ugt i32 %95, %97
  br i1 %102, label %145, label %103

103:                                              ; preds = %137, %101
  %104 = phi ptr [ %144, %137 ], [ %78, %101 ]
  %105 = phi ptr [ %144, %137 ], [ %79, %101 ]
  %106 = phi i32 [ %142, %137 ], [ %95, %101 ]
  %107 = phi i32 [ %141, %137 ], [ %81, %101 ]
  %108 = phi i32 [ %140, %137 ], [ %82, %101 ]
  %109 = phi i32 [ %139, %137 ], [ %83, %101 ]
  %110 = phi i32 [ %138, %137 ], [ %84, %101 ]
  %111 = getelementptr inbounds %struct.gk20a_clk_pllg_params, ptr %105, i32 0, i32 6
  %112 = load i32, ptr %111, align 4
  %113 = icmp ult i32 %106, %112
  br i1 %113, label %137, label %114

114:                                              ; preds = %103
  %115 = getelementptr inbounds %struct.gk20a_clk_pllg_params, ptr %105, i32 0, i32 7
  %116 = load i32, ptr %115, align 4
  %117 = icmp ugt i32 %106, %116
  br i1 %117, label %145, label %118

118:                                              ; preds = %114
  %119 = mul i32 %106, %8
  %120 = udiv i32 %119, %80
  %121 = icmp ult i32 %120, %16
  %122 = icmp ugt i32 %120, %15
  %123 = select i1 %121, i1 true, i1 %122
  br i1 %123, label %137, label %124

124:                                              ; preds = %118
  %125 = load ptr, ptr %60, align 4
  %126 = tail call i32 %125(i32 noundef %67) #10
  %127 = lshr i32 %126, 1
  %128 = add i32 %127, %120
  %129 = load ptr, ptr %60, align 4
  %130 = tail call i32 %129(i32 noundef %67) #10
  %131 = udiv i32 %128, %130
  %132 = sub i32 %131, %5
  %133 = tail call i32 @llvm.abs.i32(i32 %132, i1 false)
  %134 = icmp ult i32 %133, %110
  br i1 %134, label %135, label %137

135:                                              ; preds = %124
  %136 = icmp eq i32 %131, %5
  br i1 %136, label %181, label %137

137:                                              ; preds = %135, %124, %118, %103
  %138 = phi i32 [ %110, %118 ], [ %110, %103 ], [ %133, %135 ], [ %110, %124 ]
  %139 = phi i32 [ %109, %118 ], [ %109, %103 ], [ %106, %135 ], [ %109, %124 ]
  %140 = phi i32 [ %108, %118 ], [ %108, %103 ], [ %80, %135 ], [ %108, %124 ]
  %141 = phi i32 [ %107, %118 ], [ %107, %103 ], [ %67, %135 ], [ %107, %124 ]
  %142 = add i32 %106, 1
  %143 = icmp ugt i32 %142, %97
  %144 = load ptr, ptr %11, align 4
  br i1 %143, label %145, label %103

145:                                              ; preds = %137, %114, %101, %89
  %146 = phi ptr [ %78, %89 ], [ %78, %101 ], [ %104, %114 ], [ %144, %137 ]
  %147 = phi ptr [ %79, %89 ], [ %79, %101 ], [ %104, %114 ], [ %144, %137 ]
  %148 = phi i32 [ %84, %89 ], [ %84, %101 ], [ %110, %114 ], [ %138, %137 ]
  %149 = phi i32 [ %83, %89 ], [ %83, %101 ], [ %109, %114 ], [ %139, %137 ]
  %150 = phi i32 [ %82, %89 ], [ %82, %101 ], [ %108, %114 ], [ %140, %137 ]
  %151 = phi i32 [ %81, %89 ], [ %81, %101 ], [ %107, %114 ], [ %141, %137 ]
  %152 = add i32 %80, 1
  %153 = getelementptr inbounds %struct.gk20a_clk_pllg_params, ptr %147, i32 0, i32 5
  %154 = load i32, ptr %153, align 4
  %155 = icmp ugt i32 %152, %154
  br i1 %155, label %156, label %77

156:                                              ; preds = %145, %93, %77, %62
  %157 = phi i32 [ %66, %62 ], [ %84, %93 ], [ %84, %77 ], [ %148, %145 ]
  %158 = phi i32 [ %65, %62 ], [ %83, %93 ], [ %83, %77 ], [ %149, %145 ]
  %159 = phi i32 [ %64, %62 ], [ %82, %93 ], [ %82, %77 ], [ %150, %145 ]
  %160 = phi i32 [ %63, %62 ], [ %81, %93 ], [ %81, %77 ], [ %151, %145 ]
  %161 = add i32 %67, 1
  %162 = icmp ugt i32 %161, %32
  br i1 %162, label %163, label %62

163:                                              ; preds = %156
  switch i32 %157, label %168 [
    i32 -1, label %164
    i32 0, label %181
  ], !prof !12

164:                                              ; preds = %163, %57
  %165 = phi i32 [ %160, %163 ], [ %22, %57 ]
  %166 = phi i32 [ %159, %163 ], [ %18, %57 ]
  %167 = phi i32 [ %158, %163 ], [ %20, %57 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 190, i32 noundef 9, ptr noundef null) #10
  br label %168

168:                                              ; preds = %164, %163
  %169 = phi i32 [ %165, %164 ], [ %160, %163 ]
  %170 = phi i32 [ %166, %164 ], [ %159, %163 ]
  %171 = phi i32 [ %167, %164 ], [ %158, %163 ]
  %172 = load i32, ptr %43, align 4
  %173 = icmp ugt i32 %172, 3
  br i1 %173, label %174, label %181

174:                                              ; preds = %168
  %175 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %176 = load ptr, ptr %175, align 4
  %177 = getelementptr inbounds %struct.nvkm_device, ptr %176, i32 0, i32 2
  %178 = load ptr, ptr %177, align 8
  %179 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 4
  %180 = udiv i32 %4, 1000000
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %178, ptr noundef nonnull @.str.2, ptr noundef %179, i32 noundef %180) #11
  br label %181

181:                                              ; preds = %174, %168, %163, %135
  %182 = phi i32 [ %169, %168 ], [ %169, %174 ], [ %160, %163 ], [ %67, %135 ]
  %183 = phi i32 [ %170, %168 ], [ %170, %174 ], [ %159, %163 ], [ %80, %135 ]
  %184 = phi i32 [ %171, %168 ], [ %171, %174 ], [ %158, %163 ], [ %106, %135 ]
  store i32 %183, ptr %2, align 4
  %185 = getelementptr inbounds %struct.gk20a_pll, ptr %2, i32 0, i32 1
  store i32 %184, ptr %185, align 4
  %186 = getelementptr inbounds %struct.gk20a_pll, ptr %2, i32 0, i32 2
  store i32 %182, ptr %186, align 4
  %187 = load i32, ptr %6, align 4
  %188 = getelementptr inbounds %struct.gk20a_clk, ptr %0, i32 0, i32 5
  %189 = load ptr, ptr %188, align 4
  %190 = tail call i32 %189(i32 noundef %182) #10
  %191 = load i32, ptr %43, align 4
  %192 = icmp ugt i32 %191, 3
  br i1 %192, label %193, label %208

193:                                              ; preds = %181
  %194 = mul i32 %187, %184
  %195 = mul i32 %190, %183
  %196 = udiv i32 %194, %195
  %197 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %198 = load ptr, ptr %197, align 4
  %199 = getelementptr inbounds %struct.nvkm_device, ptr %198, i32 0, i32 2
  %200 = load ptr, ptr %199, align 8
  %201 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 4
  %202 = udiv i32 %196, 2000
  %203 = load i32, ptr %2, align 4
  %204 = load i32, ptr %185, align 4
  %205 = load i32, ptr %186, align 4
  %206 = load ptr, ptr %188, align 4
  %207 = tail call i32 %206(i32 noundef %205) #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %200, ptr noundef nonnull @.str.3, ptr noundef %201, i32 noundef %202, i32 noundef %203, i32 noundef %204, i32 noundef %205, i32 noundef %207) #11
  br label %208

208:                                              ; preds = %193, %181
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk20a_clk_read(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  switch i32 %1, label %27 [
    i32 0, label %5
    i32 19, label %8
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 18
  %7 = load i32, ptr %6, align 4
  br label %35

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 1273860
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  %13 = and i32 %12, 255
  %14 = lshr i32 %12, 8
  %15 = and i32 %14, 255
  %16 = lshr i32 %12, 16
  %17 = and i32 %16, 63
  %18 = getelementptr inbounds %struct.gk20a_clk, ptr %0, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = mul i32 %15, %19
  %21 = getelementptr inbounds %struct.gk20a_clk, ptr %0, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 %22(i32 noundef %17) #10
  %24 = mul i32 %23, %13
  %25 = udiv i32 %20, %24
  %26 = udiv i32 %25, 2000
  br label %35

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.4, ptr noundef %34, i32 noundef %1) #11
  br label %35

35:                                               ; preds = %31, %27, %8, %5
  %36 = phi i32 [ %26, %8 ], [ %7, %5 ], [ -22, %31 ], [ -22, %27 ]
  ret i32 %36
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk20a_clk_calc(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr %struct.nvkm_cstate, ptr %1, i32 0, i32 2, i32 19
  %4 = load i32, ptr %3, align 4
  %5 = mul i32 %4, 1000
  %6 = getelementptr inbounds %struct.gk20a_clk, ptr %0, i32 0, i32 2
  %7 = tail call i32 @gk20a_pllg_calc_mnp(ptr noundef %0, i32 noundef %5, ptr noundef %6)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk20a_clk_prog(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.gk20a_pll, align 4
  %3 = getelementptr inbounds %struct.gk20a_clk, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  %4 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 1273856
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %40, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 1273860
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  %18 = and i32 %17, 255
  %19 = load i32, ptr %3, align 4
  %20 = icmp eq i32 %19, %18
  br i1 %20, label %21, label %27

21:                                               ; preds = %12
  %22 = lshr i32 %17, 16
  %23 = and i32 %22, 63
  %24 = getelementptr inbounds %struct.gk20a_clk, ptr %0, i32 0, i32 2, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, %23
  br i1 %26, label %56, label %27

27:                                               ; preds = %21, %12
  %28 = getelementptr inbounds %struct.gk20a_clk, ptr %0, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = load i32, ptr %29, align 4
  %31 = mul i32 %30, %18
  %32 = getelementptr inbounds %struct.gk20a_clk, ptr %0, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = udiv i32 %33, 1000
  %35 = add i32 %31, -1
  %36 = add i32 %35, %34
  %37 = udiv i32 %36, %34
  %38 = tail call fastcc i32 @gk20a_pllg_slide(ptr noundef %0, i32 noundef %37) #10
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %27, %1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef align 4 dereferenceable(12) %3, i32 12, i1 false) #10
  %41 = load i32, ptr %2, align 4
  %42 = getelementptr inbounds %struct.gk20a_clk, ptr %0, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = load i32, ptr %43, align 4
  %45 = mul i32 %44, %41
  %46 = getelementptr inbounds %struct.gk20a_clk, ptr %0, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = udiv i32 %47, 1000
  %49 = add i32 %45, -1
  %50 = add i32 %49, %48
  %51 = udiv i32 %50, %48
  %52 = getelementptr inbounds %struct.gk20a_pll, ptr %2, i32 0, i32 1
  store i32 %51, ptr %52, align 4
  %53 = call fastcc i32 @gk20a_pllg_program_mnp(ptr noundef %0, ptr noundef nonnull %2) #10
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %40, %27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  br label %61

56:                                               ; preds = %40, %21
  %57 = getelementptr inbounds %struct.gk20a_clk, ptr %0, i32 0, i32 2, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = tail call fastcc i32 @gk20a_pllg_slide(ptr noundef %0, i32 noundef %58) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %56, %55
  %62 = tail call fastcc i32 @gk20a_pllg_program_mnp(ptr noundef %0, ptr noundef %3)
  br label %63

63:                                               ; preds = %61, %56
  %64 = phi i32 [ %62, %61 ], [ 0, %56 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gk20a_pllg_program_mnp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.nvkm_timer_wait, align 8
  %4 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 1273860
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr i8, ptr %10, i32 1274448
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  %13 = and i32 %12, -16129
  %14 = or i32 %13, 512
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr i8, ptr %15, i32 1274448
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #10, !srcloc !11
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr i8, ptr %17, i32 1274448
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  %20 = and i32 %19, -16129
  %21 = or i32 %20, 512
  %22 = load ptr, ptr %6, align 4
  %23 = getelementptr i8, ptr %22, i32 1274448
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #10, !srcloc !11
  %24 = load ptr, ptr %6, align 4
  %25 = getelementptr i8, ptr %24, i32 1274448
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 429496) #10
  %28 = load ptr, ptr %4, align 4
  %29 = getelementptr inbounds %struct.nvkm_device, ptr %28, i32 0, i32 11
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 1274112
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  %33 = and i32 %32, -2
  %34 = load ptr, ptr %29, align 4
  %35 = getelementptr i8, ptr %34, i32 1274112
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #10, !srcloc !11
  %36 = load ptr, ptr %29, align 4
  %37 = getelementptr i8, ptr %36, i32 1273856
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  %39 = and i32 %38, -2
  %40 = load ptr, ptr %29, align 4
  %41 = getelementptr i8, ptr %40, i32 1273856
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #10, !srcloc !11
  %42 = load ptr, ptr %29, align 4
  %43 = getelementptr i8, ptr %42, i32 1273856
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  %45 = load ptr, ptr %4, align 4
  %46 = load i32, ptr %1, align 4
  %47 = and i32 %46, 255
  %48 = getelementptr inbounds %struct.gk20a_pll, ptr %1, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = shl i32 %49, 8
  %51 = and i32 %50, 65280
  %52 = or i32 %51, %47
  %53 = getelementptr inbounds %struct.gk20a_pll, ptr %1, i32 0, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = shl i32 %54, 16
  %56 = and i32 %55, 4128768
  %57 = or i32 %52, %56
  %58 = getelementptr inbounds %struct.nvkm_device, ptr %45, i32 0, i32 11
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %59, i32 1273860
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %57) #10, !srcloc !11
  %61 = load ptr, ptr %4, align 4
  %62 = getelementptr inbounds %struct.nvkm_device, ptr %61, i32 0, i32 11
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr i8, ptr %63, i32 1273856
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  %66 = or i32 %65, 1
  %67 = load ptr, ptr %62, align 4
  %68 = getelementptr i8, ptr %67, i32 1273856
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #10, !srcloc !11
  %69 = load ptr, ptr %62, align 4
  %70 = getelementptr i8, ptr %69, i32 1273856
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  %72 = load ptr, ptr %62, align 4
  %73 = getelementptr i8, ptr %72, i32 1273856
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  %75 = and i32 %74, 16
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %2
  %78 = and i32 %74, -17
  %79 = load ptr, ptr %62, align 4
  %80 = getelementptr i8, ptr %79, i32 1273856
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %78) #10, !srcloc !11
  br label %81

81:                                               ; preds = %77, %2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false) #10, !annotation !13
  call void @nvkm_timer_wait_init(ptr noundef %61, i64 noundef 300000, ptr noundef nonnull %3) #10
  br label %82

82:                                               ; preds = %88, %81
  %83 = load ptr, ptr %62, align 4
  %84 = getelementptr i8, ptr %83, i32 1273856
  %85 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #10, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  %86 = and i32 %85, 131072
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %110

88:                                               ; preds = %82
  %89 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %3) #10
  %90 = icmp sgt i64 %89, -1
  br i1 %90, label %82, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr %3, align 8
  %93 = getelementptr inbounds %struct.nvkm_timer, ptr %92, i32 0, i32 1, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.nvkm_device, ptr %94, i32 0, i32 2
  %96 = load ptr, ptr %95, align 8
  %97 = call ptr @dev_driver_string(ptr noundef %96) #10
  %98 = load ptr, ptr %3, align 8
  %99 = getelementptr inbounds %struct.nvkm_timer, ptr %98, i32 0, i32 1, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.nvkm_device, ptr %100, i32 0, i32 2
  %102 = load ptr, ptr %101, align 8
  %103 = getelementptr inbounds %struct.device, ptr %102, i32 0, i32 3
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %91
  %107 = load ptr, ptr %102, align 4
  br label %108

108:                                              ; preds = %106, %91
  %109 = phi ptr [ %107, %106 ], [ %104, %91 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 273, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %97, ptr noundef %109) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  br label %133

110:                                              ; preds = %82
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  %111 = load ptr, ptr %62, align 4
  %112 = getelementptr i8, ptr %111, i32 1274112
  %113 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #10, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  %114 = or i32 %113, 1
  %115 = load ptr, ptr %62, align 4
  %116 = getelementptr i8, ptr %115, i32 1274112
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !10
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %114) #10, !srcloc !11
  %117 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %117(i32 noundef 429496) #10
  %118 = load ptr, ptr %6, align 4
  %119 = getelementptr i8, ptr %118, i32 1274448
  %120 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #10, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  %121 = and i32 %120, -16129
  %122 = load ptr, ptr %6, align 4
  %123 = getelementptr i8, ptr %122, i32 1274448
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !10
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 %121) #10, !srcloc !11
  %124 = load ptr, ptr %6, align 4
  %125 = getelementptr i8, ptr %124, i32 1274448
  %126 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %125) #10, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  %127 = and i32 %126, -16129
  %128 = load ptr, ptr %6, align 4
  %129 = getelementptr i8, ptr %128, i32 1274448
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !10
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 %127) #10, !srcloc !11
  %130 = load ptr, ptr %6, align 4
  %131 = getelementptr i8, ptr %130, i32 1274448
  %132 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %131) #10, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  br label %133

133:                                              ; preds = %110, %108
  %134 = phi i32 [ 0, %110 ], [ -110, %108 ]
  ret i32 %134
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @gk20a_clk_tidy(ptr nocapture %0) #5 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk20a_clk_setup_slide(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gk20a_clk, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %8 [
    i32 12000000, label %17
    i32 12800000, label %17
    i32 13000000, label %17
    i32 19200000, label %6
    i32 38400000, label %7
  ]

6:                                                ; preds = %1
  br label %17

7:                                                ; preds = %1
  br label %17

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 4
  %16 = udiv i32 %5, 1000
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.5, ptr noundef %15, i32 noundef %16) #11
  br label %35

17:                                               ; preds = %7, %6, %1, %1, %1
  %18 = phi i32 [ 327680, %7 ], [ 524288, %6 ], [ 720896, %1 ], [ 720896, %1 ], [ 720896, %1 ]
  %19 = phi i32 [ 67108864, %7 ], [ 301989888, %6 ], [ 721420288, %1 ], [ 721420288, %1 ], [ 721420288, %1 ]
  %20 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 1273868
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  %24 = and i32 %23, 16777215
  %25 = or i32 %24, %19
  %26 = load ptr, ptr %20, align 4
  %27 = getelementptr i8, ptr %26, i32 1273868
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #10, !srcloc !11
  %28 = load ptr, ptr %20, align 4
  %29 = getelementptr i8, ptr %28, i32 1273880
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  %31 = and i32 %30, -16711681
  %32 = or i32 %31, %18
  %33 = load ptr, ptr %20, align 4
  %34 = getelementptr i8, ptr %33, i32 1273880
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #10, !srcloc !11
  br label %35

35:                                               ; preds = %17, %12, %8
  %36 = phi i32 [ 0, %17 ], [ -22, %12 ], [ -22, %8 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gk20a_clk_fini(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 1273856
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 1273860
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  %16 = and i32 %15, 255
  %17 = getelementptr inbounds %struct.gk20a_clk, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr %18, align 4
  %20 = mul i32 %19, %16
  %21 = getelementptr inbounds %struct.gk20a_clk, ptr %0, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = udiv i32 %22, 1000
  %24 = add i32 %20, -1
  %25 = add i32 %24, %23
  %26 = udiv i32 %25, %23
  %27 = tail call fastcc i32 @gk20a_pllg_slide(ptr noundef %0, i32 noundef %26)
  br label %28

28:                                               ; preds = %10, %1
  %29 = load ptr, ptr %2, align 4
  %30 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 11
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 1274112
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  %34 = and i32 %33, -2
  %35 = load ptr, ptr %30, align 4
  %36 = getelementptr i8, ptr %35, i32 1274112
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #10, !srcloc !11
  %37 = load ptr, ptr %30, align 4
  %38 = getelementptr i8, ptr %37, i32 1273856
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  %40 = and i32 %39, -2
  %41 = load ptr, ptr %30, align 4
  %42 = getelementptr i8, ptr %41, i32 1273856
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #10, !srcloc !11
  %43 = load ptr, ptr %30, align 4
  %44 = getelementptr i8, ptr %43, i32 1273856
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  %46 = load ptr, ptr %4, align 4
  %47 = getelementptr i8, ptr %46, i32 1273856
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  %49 = and i32 %48, -4
  %50 = or i32 %49, 1
  %51 = load ptr, ptr %4, align 4
  %52 = getelementptr i8, ptr %51, i32 1273856
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #10, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gk20a_pllg_slide(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.nvkm_timer_wait, align 8
  %4 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 1273860
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  %10 = lshr i32 %9, 8
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %78, label %13

13:                                               ; preds = %2
  %14 = and i32 %9, 4128768
  %15 = and i32 %9, 255
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr i8, ptr %16, i32 1273884
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  %19 = or i32 %18, 4194304
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr i8, ptr %20, i32 1273884
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #10, !srcloc !11
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748) #10
  %23 = load ptr, ptr %4, align 4
  %24 = shl i32 %1, 8
  %25 = and i32 %24, 65280
  %26 = or i32 %15, %25
  %27 = or i32 %26, %14
  %28 = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 11
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 1273860
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %27) #10, !srcloc !11
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748) #10
  %32 = load ptr, ptr %6, align 4
  %33 = getelementptr i8, ptr %32, i32 1273884
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  %35 = or i32 %34, -2147483648
  %36 = load ptr, ptr %6, align 4
  %37 = getelementptr i8, ptr %36, i32 1273884
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #10, !srcloc !11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !13
  call void @nvkm_timer_wait_init(ptr noundef %5, i64 noundef 500000, ptr noundef nonnull %3) #10
  br label %38

38:                                               ; preds = %45, %13
  %39 = load ptr, ptr %6, align 4
  %40 = getelementptr i8, ptr %39, i32 1255584
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #10, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  %42 = and i32 %41, 16777216
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  br label %67

45:                                               ; preds = %38
  %46 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %3) #10
  %47 = icmp sgt i64 %46, -1
  br i1 %47, label %38, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr %3, align 8
  %50 = getelementptr inbounds %struct.nvkm_timer, ptr %49, i32 0, i32 1, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.nvkm_device, ptr %51, i32 0, i32 2
  %53 = load ptr, ptr %52, align 8
  %54 = call ptr @dev_driver_string(ptr noundef %53) #10
  %55 = load ptr, ptr %3, align 8
  %56 = getelementptr inbounds %struct.nvkm_timer, ptr %55, i32 0, i32 1, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.nvkm_device, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.device, ptr %59, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %48
  %64 = load ptr, ptr %59, align 4
  br label %65

65:                                               ; preds = %63, %48
  %66 = phi ptr [ %64, %63 ], [ %61, %48 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 243, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %54, ptr noundef %66) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  br label %67

67:                                               ; preds = %65, %44
  %68 = phi i32 [ -110, %65 ], [ 0, %44 ]
  %69 = load ptr, ptr %6, align 4
  %70 = getelementptr i8, ptr %69, i32 1273884
  %71 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #10, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  %72 = and i32 %71, 2143289343
  %73 = load ptr, ptr %6, align 4
  %74 = getelementptr i8, ptr %73, i32 1273884
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !10
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #10, !srcloc !11
  %75 = load ptr, ptr %6, align 4
  %76 = getelementptr i8, ptr %75, i32 1273884
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #10, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  br label %78

78:                                               ; preds = %67, %2
  %79 = phi i32 [ %68, %67 ], [ 0, %2 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk20a_clk_ctor(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.nvkm_device_func, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr %9(ptr noundef %0) #10
  %11 = getelementptr inbounds %struct.nvkm_clk_func, ptr %3, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.nvkm_clk_func, ptr %3, i32 0, i32 6
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i32 [ 0, %14 ], [ %21, %16 ]
  %18 = load ptr, ptr %15, align 4
  %19 = getelementptr %struct.nvkm_pstate, ptr %18, i32 %17, i32 1
  store volatile ptr %19, ptr %19, align 4
  %20 = getelementptr %struct.nvkm_pstate, ptr %18, i32 %17, i32 1, i32 1
  store ptr %19, ptr %20, align 4
  %21 = add nuw nsw i32 %17, 1
  %22 = trunc i32 %21 to i8
  %23 = load ptr, ptr %15, align 4
  %24 = getelementptr %struct.nvkm_pstate, ptr %23, i32 %17, i32 3
  store i8 %22, ptr %24, align 4
  %25 = load i32, ptr %11, align 4
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %16, label %27

27:                                               ; preds = %16, %6
  %28 = getelementptr inbounds %struct.gk20a_clk, ptr %5, i32 0, i32 1
  store ptr %4, ptr %28, align 4
  %29 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %10, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @clk_get_rate(ptr noundef %30) #10
  %32 = getelementptr inbounds %struct.gk20a_clk, ptr %5, i32 0, i32 3
  store i32 %31, ptr %32, align 4
  %33 = tail call i32 @nvkm_clk_ctor(ptr noundef %3, ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext true, ptr noundef %5) #10
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.nvkm_clk, ptr %5, i32 0, i32 1, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = icmp ugt i32 %37, 3
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.nvkm_clk, ptr %5, i32 0, i32 1, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.nvkm_clk, ptr %5, i32 0, i32 1, i32 4
  %45 = load i32, ptr %32, align 4
  %46 = udiv i32 %45, 1000
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %43, ptr noundef nonnull @.str.6, ptr noundef %44, i32 noundef %46) #11
  br label %47

47:                                               ; preds = %39, %35, %27
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_clk_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk20a_clk_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 392) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  store ptr %6, ptr %3, align 4
  %9 = tail call i32 @gk20a_clk_ctor(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @gk20a_clk, ptr noundef nonnull @gk20a_pllg_params, ptr noundef nonnull %6)
  %10 = getelementptr inbounds %struct.gk20a_clk, ptr %6, i32 0, i32 5
  store ptr @pl_to_div, ptr %10, align 4
  %11 = getelementptr inbounds %struct.gk20a_clk, ptr %6, i32 0, i32 4
  store ptr @div_to_pl, ptr %11, align 8
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi i32 [ %9, %8 ], [ -12, %4 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @pl_to_div(i32 noundef %0) #5 {
  %2 = icmp ugt i32 %0, 14
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr [15 x i8], ptr @_pl_to_div, i32 0, i32 %0
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i32 [ %6, %3 ], [ 1, %1 ]
  ret i32 %8
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define internal i32 @div_to_pl(i32 noundef %0) #6 {
  %2 = icmp ugt i32 %0, 1
  br i1 %2, label %3, label %26

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 2
  br i1 %4, label %26, label %5

5:                                                ; preds = %3
  %6 = icmp ugt i32 %0, 3
  br i1 %6, label %7, label %26

7:                                                ; preds = %5
  %8 = icmp eq i32 %0, 4
  br i1 %8, label %26, label %9

9:                                                ; preds = %7
  %10 = icmp ugt i32 %0, 5
  br i1 %10, label %11, label %26

11:                                               ; preds = %9
  %12 = icmp eq i32 %0, 6
  br i1 %12, label %26, label %13

13:                                               ; preds = %11
  %14 = icmp ugt i32 %0, 8
  br i1 %14, label %15, label %26

15:                                               ; preds = %13
  %16 = icmp ugt i32 %0, 10
  br i1 %16, label %17, label %26

17:                                               ; preds = %15
  %18 = icmp ugt i32 %0, 12
  br i1 %18, label %19, label %26

19:                                               ; preds = %17
  %20 = icmp ugt i32 %0, 16
  br i1 %20, label %21, label %26

21:                                               ; preds = %19
  %22 = icmp ugt i32 %0, 20
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = icmp ugt i32 %0, 24
  %25 = select i1 %24, i32 14, i32 13
  br label %26

26:                                               ; preds = %23, %21, %19, %17, %15, %13, %11, %9, %7, %5, %3, %1
  %27 = phi i32 [ 0, %1 ], [ 1, %3 ], [ 2, %5 ], [ 3, %7 ], [ 4, %9 ], [ 5, %11 ], [ 6, %13 ], [ 7, %15 ], [ 8, %17 ], [ 9, %19 ], [ 12, %21 ], [ %25, %23 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gk20a_clk_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 1273856
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  %8 = and i32 %7, -3
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 1273856
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #10, !srcloc !11
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 1273856
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 1073740) #10
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr i8, ptr %15, i32 1274448
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #10, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  %18 = and i32 %17, 2147467456
  %19 = or i32 %18, -2147483588
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr i8, ptr %20, i32 1274448
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #10, !srcloc !11
  %22 = tail call i32 @gk20a_clk_setup_slide(ptr noundef %0)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %1
  %25 = load ptr, ptr %0, align 4
  %26 = getelementptr inbounds %struct.nvkm_clk_func, ptr %25, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nvkm_clk_func, ptr %25, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.nvkm_pstate, ptr %29, i32 0, i32 2
  %31 = tail call i32 %27(ptr noundef %0, ptr noundef %30) #10
  %32 = load ptr, ptr %0, align 4
  %33 = getelementptr inbounds %struct.nvkm_clk_func, ptr %32, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 %34(ptr noundef %0) #10
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %2, align 4
  %43 = getelementptr inbounds %struct.nvkm_device, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.10, ptr noundef %45) #11
  br label %46

46:                                               ; preds = %41, %37, %24, %1
  %47 = phi i32 [ %22, %1 ], [ %35, %41 ], [ %35, %37 ], [ 0, %24 ]
  ret i32 %47
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

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
!8 = !{i64 3955961}
!9 = !{i64 2151495414}
!10 = !{i64 2151496636}
!11 = !{i64 3955543}
!12 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!13 = !{!"auto-init"}
