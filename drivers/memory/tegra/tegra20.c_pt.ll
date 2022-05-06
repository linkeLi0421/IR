; ModuleID = '/llk/IR/drivers/memory/tegra/tegra20.c_pt.bc'
source_filename = "../drivers/memory/tegra/tegra20.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tegra_mc_client = type { i32, ptr, %union.anon, i32, %struct.anon }
%union.anon = type { i32 }
%struct.anon = type { %struct.anon.0, %struct.anon.1, %struct.anon.2 }
%struct.anon.0 = type { i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32 }
%struct.anon.2 = type { i32, i32 }
%struct.tegra_mc_reset_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_mc_reset = type { ptr, i32, i32, i32, i32, i32 }
%struct.tegra_mc_icc_ops = type { ptr, ptr, ptr }
%struct.tegra_mc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_mc_soc = type { ptr, i32, ptr, i32, i32, i32, i8, ptr, i32, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.tegra_mc = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.reset_controller_dev, %struct.icc_provider, %struct.spinlock, %struct.anon.63 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.icc_provider = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.anon.63 = type { ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.icc_node_data = type { ptr, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.tegra20_mc_client_stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@tegra20_mc_clients = internal constant [52 x %struct.tegra_mc_client] [%struct.tegra_mc_client { i32 0, ptr @.str, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 1, ptr @.str.1, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 2, ptr @.str.2, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 3, ptr @.str.3, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 4, ptr @.str.4, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 5, ptr @.str.5, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 6, ptr @.str.6, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 7, ptr @.str.7, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 8, ptr @.str.8, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 9, ptr @.str.9, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 10, ptr @.str.10, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 11, ptr @.str.11, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 12, ptr @.str.12, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 13, ptr @.str.13, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 14, ptr @.str.14, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 15, ptr @.str.15, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 16, ptr @.str.16, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 17, ptr @.str.17, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 18, ptr @.str.18, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 19, ptr @.str.19, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 20, ptr @.str.20, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 21, ptr @.str.21, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 22, ptr @.str.22, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 23, ptr @.str.23, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 24, ptr @.str.24, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 25, ptr @.str.25, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 26, ptr @.str.26, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 27, ptr @.str.27, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 28, ptr @.str.28, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 29, ptr @.str.29, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 30, ptr @.str.30, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 31, ptr @.str.31, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 32, ptr @.str.32, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 33, ptr @.str.33, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 34, ptr @.str.34, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 35, ptr @.str.35, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 36, ptr @.str.36, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 37, ptr @.str.37, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 38, ptr @.str.38, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 39, ptr @.str.39, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 40, ptr @.str.40, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 41, ptr @.str.41, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 42, ptr @.str.42, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 43, ptr @.str.43, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 44, ptr @.str.44, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 45, ptr @.str.45, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 46, ptr @.str.46, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 47, ptr @.str.47, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 48, ptr @.str.48, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 49, ptr @.str.49, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 50, ptr @.str.50, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }, %struct.tegra_mc_client { i32 51, ptr @.str.51, %union.anon zeroinitializer, i32 0, %struct.anon zeroinitializer }], align 4
@tegra20_mc_reset_ops = internal constant %struct.tegra_mc_reset_ops { ptr @tegra20_mc_hotreset_assert, ptr @tegra20_mc_hotreset_deassert, ptr @tegra20_mc_block_dma, ptr @tegra20_mc_dma_idling, ptr @tegra20_mc_unblock_dma, ptr @tegra20_mc_reset_status }, align 4
@tegra20_mc_resets = internal constant [15 x %struct.tegra_mc_reset] [%struct.tegra_mc_reset { ptr @.str.52, i32 0, i32 256, i32 320, i32 260, i32 0 }, %struct.tegra_mc_reset { ptr @.str.53, i32 1, i32 256, i32 324, i32 260, i32 1 }, %struct.tegra_mc_reset { ptr @.str.54, i32 2, i32 256, i32 328, i32 260, i32 2 }, %struct.tegra_mc_reset { ptr @.str.55, i32 3, i32 256, i32 332, i32 260, i32 3 }, %struct.tegra_mc_reset { ptr @.str.56, i32 4, i32 256, i32 336, i32 260, i32 4 }, %struct.tegra_mc_reset { ptr @.str.57, i32 5, i32 256, i32 340, i32 260, i32 5 }, %struct.tegra_mc_reset { ptr @.str.58, i32 6, i32 256, i32 344, i32 260, i32 6 }, %struct.tegra_mc_reset { ptr @.str.59, i32 7, i32 256, i32 348, i32 260, i32 7 }, %struct.tegra_mc_reset { ptr @.str.60, i32 8, i32 256, i32 352, i32 260, i32 8 }, %struct.tegra_mc_reset { ptr @.str.61, i32 9, i32 256, i32 356, i32 260, i32 9 }, %struct.tegra_mc_reset { ptr @.str.62, i32 10, i32 256, i32 360, i32 260, i32 10 }, %struct.tegra_mc_reset { ptr @.str.63, i32 11, i32 256, i32 364, i32 260, i32 11 }, %struct.tegra_mc_reset { ptr @.str.64, i32 12, i32 256, i32 368, i32 260, i32 12 }, %struct.tegra_mc_reset { ptr @.str.65, i32 13, i32 256, i32 372, i32 260, i32 13 }, %struct.tegra_mc_reset { ptr @.str.66, i32 14, i32 256, i32 376, i32 260, i32 14 }], align 4
@tegra20_mc_icc_ops = internal constant %struct.tegra_mc_icc_ops { ptr @tegra20_mc_icc_set, ptr @tegra20_mc_icc_aggreate, ptr @tegra20_mc_of_icc_xlate_extended }, align 4
@tegra20_mc_ops = internal constant %struct.tegra_mc_ops { ptr @tegra20_mc_probe, ptr null, ptr @tegra20_mc_suspend, ptr @tegra20_mc_resume, ptr @tegra20_mc_handle_irq, ptr null }, align 4
@tegra20_mc_soc = dso_local local_unnamed_addr constant %struct.tegra_mc_soc { ptr @tegra20_mc_clients, i32 52, ptr null, i32 0, i32 32, i32 0, i8 63, ptr null, i32 448, ptr @tegra20_mc_reset_ops, ptr @tegra20_mc_resets, i32 15, ptr @tegra20_mc_icc_ops, ptr @tegra20_mc_ops }, align 4
@.str = private unnamed_addr constant [10 x i8] c"display0a\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"display0ab\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"display0b\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"display0bb\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"display0c\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"display0cb\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"display1b\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"display1bb\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"eppup\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"g2pr\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"g2sr\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"mpeunifbr\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"viruv\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"avpcarm7r\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"displayhc\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"displayhcb\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"fdcdrd\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"g2dr\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"host1xdmar\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"host1xr\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"idxsrd\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"mpcorer\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"mpe_ipred\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"mpeamemrd\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"mpecsrd\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"ppcsahbdmar\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"ppcsahbslvr\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"texsrd\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"vdebsevr\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"vdember\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"vdemcer\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"vdetper\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"eppu\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"eppv\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"eppy\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"mpeunifbw\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"viwsb\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"viwu\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"viwv\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"viwy\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"g2dw\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"avpcarm7w\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"fdcdwr\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"host1xw\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"ispw\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"mpcorew\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"mpecswr\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"ppcsahbdmaw\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"ppcsahbslvw\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"vdebsevw\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"vdembew\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"vdetpmw\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"AVPC\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"DC\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"DCB\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"EPP\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"2D\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"HC\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"ISP\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"MPCORE\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"MPEA\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"MPEB\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"MPEC\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"3D\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"PPCS\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"VDE\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"VI\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"vi\00", align 1
@.str.69 = private unnamed_addr constant [26 x i8] c"invalid ICC client ID %u\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.70 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@tegra20_mc_stat_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @tegra20_mc_stat_lock, i64 12), ptr getelementptr (i8, ptr @tegra20_mc_stat_lock, i64 12) } }, align 4
@.str.71 = private unnamed_addr constant [103 x i8] c"Memory client   Events   Timeout   High priority   Bandwidth ARB   RW change   Successive   Page miss\0A\00", align 1
@.str.72 = private unnamed_addr constant [103 x i8] c"-----------------------------------------------------------------------------------------------------\0A\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"%-14s  \00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"%-9s\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"%-10s\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"%-16s\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"%-12s\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"%-13s\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"%-12s\0A\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"%3u.%02u%%\00", align 1
@tegra_mc_status_names = external dso_local local_unnamed_addr constant [32 x ptr], align 4
@.str.81 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.82 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@tegra_mc_error_names = external dso_local local_unnamed_addr constant [8 x ptr], align 4
@.str.83 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"secure \00", align 1
@tegra20_mc_handle_irq._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.tegra20_mc_handle_irq = private unnamed_addr constant [22 x i8] c"tegra20_mc_handle_irq\00", align 1
@.str.85 = private unnamed_addr constant [24 x i8] c"%s: %s%s @%pa: %s (%s)\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra20_mc_hotreset_assert(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.tegra_mc, ptr %0, i32 0, i32 12
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #11
  %5 = getelementptr inbounds %struct.tegra_mc_reset, ptr %1, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_mc, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 %6
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !8
  %11 = getelementptr inbounds %struct.tegra_mc_reset, ptr %1, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = shl nuw i32 1, %12
  %14 = xor i32 %13, -1
  %15 = and i32 %10, %14
  %16 = load i32, ptr %5, align 4
  %17 = load ptr, ptr %7, align 4
  %18 = getelementptr i8, ptr %17, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %15) #11, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra20_mc_hotreset_deassert(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.tegra_mc, ptr %0, i32 0, i32 12
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #11
  %5 = getelementptr inbounds %struct.tegra_mc_reset, ptr %1, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_mc, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 %6
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !8
  %11 = getelementptr inbounds %struct.tegra_mc_reset, ptr %1, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = shl nuw i32 1, %12
  %14 = or i32 %13, %10
  %15 = load i32, ptr %5, align 4
  %16 = load ptr, ptr %7, align 4
  %17 = getelementptr i8, ptr %16, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %14) #11, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra20_mc_block_dma(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.tegra_mc, ptr %0, i32 0, i32 12
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #11
  %5 = getelementptr inbounds %struct.tegra_mc_reset, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_mc, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 %6
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !8
  %11 = getelementptr inbounds %struct.tegra_mc_reset, ptr %1, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = shl nuw i32 1, %12
  %14 = xor i32 %13, -1
  %15 = and i32 %10, %14
  %16 = load i32, ptr %5, align 4
  %17 = load ptr, ptr %7, align 4
  %18 = getelementptr i8, ptr %17, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %15) #11, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @tegra20_mc_dma_idling(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.tegra_mc_reset, ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_mc, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 %4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #11, !srcloc !8
  %9 = icmp eq i32 %8, 0
  ret i1 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra20_mc_unblock_dma(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.tegra_mc, ptr %0, i32 0, i32 12
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #11
  %5 = getelementptr inbounds %struct.tegra_mc_reset, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_mc, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 %6
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !8
  %11 = getelementptr inbounds %struct.tegra_mc_reset, ptr %1, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = shl nuw i32 1, %12
  %14 = or i32 %13, %10
  %15 = load i32, ptr %5, align 4
  %16 = load ptr, ptr %7, align 4
  %17 = getelementptr i8, ptr %16, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %14) #11, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra20_mc_reset_status(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.tegra_mc_reset, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_mc, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 %4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #11, !srcloc !8
  %9 = getelementptr inbounds %struct.tegra_mc_reset, ptr %1, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = xor i32 %8, -1
  %12 = lshr i32 %11, %10
  %13 = and i32 %12, 1
  ret i32 %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @tegra20_mc_icc_set(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #3 {
  ret i32 0
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra20_mc_icc_aggreate(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) #4 {
  %7 = and i32 %1, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %6
  %10 = zext i32 %3 to i64
  %11 = mul nuw nsw i64 %10, 300
  %12 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %11, i32 0) #12, !srcloc !10
  %13 = extractvalue { i64, i32 } %12, 0
  %14 = extractvalue { i64, i32 } %12, 1
  %15 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %11, i64 %13, i32 %14) #12, !srcloc !11
  %16 = extractvalue { i64, i32 } %15, 0
  %17 = lshr i64 %16, 6
  %18 = tail call i64 @llvm.umin.i64(i64 %17, i64 4294967295) #11
  %19 = trunc i64 %18 to i32
  br label %20

20:                                               ; preds = %9, %6
  %21 = phi i32 [ %19, %9 ], [ %3, %6 ]
  %22 = load i32, ptr %4, align 4
  %23 = add i32 %22, %2
  store i32 %23, ptr %4, align 4
  %24 = load i32, ptr %5, align 4
  %25 = tail call i32 @llvm.umax.i32(i32 %24, i32 %21)
  store i32 %25, ptr %5, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra20_mc_of_icc_xlate_extended(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 -84
  %4 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %1, i32 8
  br label %7

7:                                                ; preds = %19, %2
  %8 = phi ptr [ %6, %2 ], [ %9, %19 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %6
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %1, i32 -60
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tegra_mc_soc, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %48, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %13, align 4
  br label %43

19:                                               ; preds = %7
  %20 = getelementptr i8, ptr %9, i32 -20
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %5
  br i1 %22, label %23, label %7

23:                                               ; preds = %19
  %24 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %25 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 8) #13
  %26 = icmp eq ptr %25, null
  br i1 %26, label %50, label %27

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %9, i32 -20
  store ptr %28, ptr %25, align 8
  %29 = getelementptr i8, ptr %9, i32 -16
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @strncmp(ptr noundef %30, ptr noundef nonnull dereferenceable(8) @.str.67, i32 noundef 7) #11
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = tail call i32 @strncmp(ptr noundef %30, ptr noundef nonnull dereferenceable(3) @.str.68, i32 noundef 2) #11
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33, %27
  %37 = getelementptr inbounds %struct.icc_node_data, ptr %25, i32 0, i32 1
  store i32 1, ptr %37, align 4
  br label %50

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.icc_node_data, ptr %25, i32 0, i32 1
  store i32 0, ptr %39, align 4
  br label %50

40:                                               ; preds = %43
  %41 = add nuw i32 %44, 1
  %42 = icmp eq i32 %41, %15
  br i1 %42, label %48, label %43

43:                                               ; preds = %40, %17
  %44 = phi i32 [ 0, %17 ], [ %41, %40 ]
  %45 = getelementptr %struct.tegra_mc_client, ptr %18, i32 %44
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, %5
  br i1 %47, label %50, label %40

48:                                               ; preds = %40, %11
  %49 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.69, i32 noundef %5) #14
  br label %50

50:                                               ; preds = %48, %43, %38, %36, %23
  %51 = phi ptr [ inttoptr (i32 -22 to ptr), %48 ], [ %25, %38 ], [ %25, %36 ], [ inttoptr (i32 -12 to ptr), %23 ], [ inttoptr (i32 -517 to ptr), %43 ]
  ret ptr %51
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra20_mc_probe(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.tegra_mc, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  tail call void @debugfs_create_devm_seqfile(ptr noundef %2, ptr noundef nonnull @.str.70, ptr noundef %4, ptr noundef nonnull @tegra20_mc_stats_show) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra20_mc_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_mc, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @tegra_gart_suspend(ptr noundef nonnull %3) #11
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5, %1
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi i32 [ 0, %8 ], [ %6, %5 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra20_mc_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_mc, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @tegra_gart_resume(ptr noundef nonnull %3) #11
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5, %1
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi i32 [ 0, %8 ], [ %6, %5 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra20_mc_handle_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %5 = getelementptr inbounds %struct.tegra_mc, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !8
  %8 = getelementptr inbounds %struct.tegra_mc, ptr %1, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tegra_mc_soc, ptr %9, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, %7
  store i32 %12, ptr %3, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %85, label %14

14:                                               ; preds = %2
  %15 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 32, i32 noundef 0) #11
  %16 = icmp ult i32 %15, 32
  br i1 %16, label %17, label %82

17:                                               ; preds = %78, %14
  %18 = phi i32 [ %80, %78 ], [ %15, %14 ]
  %19 = getelementptr [32 x ptr], ptr @tegra_mc_status_names, i32 0, i32 %18
  %20 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !12
  %21 = shl nuw i32 1, %18
  switch i32 %21, label %78 [
    i32 64, label %22
    i32 128, label %32
    i32 256, label %44
  ]

22:                                               ; preds = %17
  %23 = load ptr, ptr %5, align 4
  %24 = getelementptr i8, ptr %23, i32 88
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !8
  %26 = load ptr, ptr %8, align 4
  %27 = getelementptr inbounds %struct.tegra_mc_soc, ptr %26, i32 0, i32 6
  %28 = load i8, ptr %27, align 4
  %29 = trunc i32 %25 to i8
  %30 = and i8 %28, %29
  %31 = icmp sgt i32 %25, -1
  br label %58

32:                                               ; preds = %17
  %33 = load ptr, ptr %5, align 4
  %34 = getelementptr i8, ptr %33, i32 48
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #11, !srcloc !8
  %36 = lshr i32 %35, 1
  %37 = load ptr, ptr %8, align 4
  %38 = getelementptr inbounds %struct.tegra_mc_soc, ptr %37, i32 0, i32 6
  %39 = load i8, ptr %38, align 4
  %40 = trunc i32 %36 to i8
  %41 = and i8 %39, %40
  %42 = and i32 %35, 1
  %43 = icmp eq i32 %42, 0
  br label %58

44:                                               ; preds = %17
  %45 = load ptr, ptr %5, align 4
  %46 = getelementptr i8, ptr %45, i32 116
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #11, !srcloc !8
  %48 = load ptr, ptr %8, align 4
  %49 = getelementptr inbounds %struct.tegra_mc_soc, ptr %48, i32 0, i32 6
  %50 = load i8, ptr %49, align 4
  %51 = trunc i32 %47 to i8
  %52 = and i8 %50, %51
  %53 = and i32 %47, 1073741824
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, i32 3, i32 4
  %56 = getelementptr [8 x ptr], ptr @tegra_mc_error_names, i32 0, i32 %55
  %57 = icmp sgt i32 %47, -1
  br label %58

58:                                               ; preds = %44, %32, %22
  %59 = phi i1 [ %57, %44 ], [ %43, %32 ], [ %31, %22 ]
  %60 = phi ptr [ %48, %44 ], [ %37, %32 ], [ %26, %22 ]
  %61 = phi ptr [ @.str.84, %44 ], [ @.str.82, %32 ], [ @.str.82, %22 ]
  %62 = phi ptr [ %56, %44 ], [ getelementptr inbounds ([8 x ptr], ptr @tegra_mc_error_names, i32 0, i32 2), %32 ], [ getelementptr inbounds ([8 x ptr], ptr @tegra_mc_error_names, i32 0, i32 2), %22 ]
  %63 = phi i32 [ 120, %44 ], [ 52, %32 ], [ 92, %22 ]
  %64 = phi i8 [ %52, %44 ], [ %41, %32 ], [ %30, %22 ]
  %65 = load ptr, ptr %62, align 4
  %66 = load ptr, ptr %60, align 4
  %67 = zext i8 %64 to i32
  %68 = getelementptr %struct.tegra_mc_client, ptr %66, i32 %67, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = load ptr, ptr %5, align 4
  %71 = getelementptr i8, ptr %70, i32 %63
  %72 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #11, !srcloc !8
  store i32 %72, ptr %4, align 4
  %73 = call i32 @___ratelimit(ptr noundef nonnull @tegra20_mc_handle_irq._rs, ptr noundef nonnull @__func__.tegra20_mc_handle_irq) #11
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %58
  %76 = select i1 %59, ptr @.str.81, ptr @.str.83
  %77 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.85, ptr noundef %69, ptr noundef nonnull %61, ptr noundef nonnull %76, ptr noundef nonnull %4, ptr noundef %20, ptr noundef %65) #14
  br label %78

78:                                               ; preds = %75, %58, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  %79 = add nuw nsw i32 %18, 1
  %80 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 32, i32 noundef %79) #11
  %81 = icmp ult i32 %80, 32
  br i1 %81, label %17, label %82

82:                                               ; preds = %78, %14
  %83 = load i32, ptr %3, align 4
  %84 = load ptr, ptr %5, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %83) #11, !srcloc !9
  br label %85

85:                                               ; preds = %82, %2
  %86 = phi i32 [ 1, %82 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %86
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_devm_seqfile(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra20_mc_stats_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca [8 x i8], align 8
  %4 = alloca [8 x i8], align 8
  %5 = alloca [8 x i8], align 8
  %6 = alloca [8 x i8], align 8
  %7 = alloca [8 x i8], align 8
  %8 = alloca [8 x i8], align 8
  %9 = alloca [8 x i8], align 8
  %10 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 8
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.tegra_mc, ptr %13, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.tegra_mc_soc, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  %19 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %18, i32 40) #11
  %20 = extractvalue { i32, i1 } %19, 1
  br i1 %20, label %175, label %21, !prof !13

21:                                               ; preds = %2
  %22 = extractvalue { i32, i1 } %19, 0
  %23 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %22, i32 noundef 3520) #15
  %24 = icmp eq ptr %23, null
  br i1 %24, label %175, label %25

25:                                               ; preds = %21
  tail call void @mutex_lock(ptr noundef nonnull @tegra20_mc_stat_lock) #11
  %26 = load ptr, ptr %14, align 4
  %27 = getelementptr inbounds %struct.tegra_mc_soc, ptr %26, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %109, label %32

30:                                               ; preds = %32
  %31 = icmp eq i32 %47, 0
  br i1 %31, label %109, label %49

32:                                               ; preds = %32, %25
  %33 = phi i32 [ %47, %32 ], [ %28, %25 ]
  %34 = phi ptr [ %45, %32 ], [ %26, %25 ]
  %35 = phi i32 [ %44, %32 ], [ 0, %25 ]
  %36 = load ptr, ptr %34, align 4
  %37 = getelementptr %struct.tegra_mc_client, ptr %36, i32 %35
  %38 = or i32 %35, 1
  %39 = getelementptr %struct.tegra_mc_client, ptr %36, i32 %38
  %40 = icmp eq i32 %38, %33
  %41 = select i1 %40, ptr null, ptr %39
  %42 = getelementptr %struct.tegra20_mc_client_stat, ptr %23, i32 %35
  %43 = getelementptr %struct.tegra20_mc_client_stat, ptr %23, i32 %38
  tail call fastcc void @tegra20_mc_stat_events(ptr noundef %13, ptr noundef %37, ptr noundef %41, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %42, ptr noundef %43) #11
  %44 = add i32 %35, 2
  %45 = load ptr, ptr %14, align 4
  %46 = getelementptr inbounds %struct.tegra_mc_soc, ptr %45, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = icmp ult i32 %44, %47
  br i1 %48, label %32, label %30

49:                                               ; preds = %91, %30
  %50 = phi i32 [ %107, %91 ], [ %47, %30 ]
  %51 = phi ptr [ %105, %91 ], [ %45, %30 ]
  %52 = phi i32 [ %104, %91 ], [ 0, %30 ]
  %53 = icmp ult i32 %52, %50
  br i1 %53, label %54, label %66

54:                                               ; preds = %63, %49
  %55 = phi i32 [ %64, %63 ], [ %52, %49 ]
  %56 = getelementptr %struct.tegra20_mc_client_stat, ptr %23, i32 %55
  %57 = load i32, ptr %56, align 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = load ptr, ptr %51, align 4
  %61 = getelementptr %struct.tegra_mc_client, ptr %60, i32 %55
  %62 = add nuw i32 %55, 1
  br label %66

63:                                               ; preds = %54
  %64 = add nuw i32 %55, 1
  %65 = icmp eq i32 %64, %50
  br i1 %65, label %82, label %54

66:                                               ; preds = %59, %49
  %67 = phi ptr [ %61, %59 ], [ null, %49 ]
  %68 = phi i32 [ %62, %59 ], [ %52, %49 ]
  %69 = phi i32 [ %55, %59 ], [ 0, %49 ]
  %70 = icmp ult i32 %68, %50
  br i1 %70, label %71, label %82

71:                                               ; preds = %79, %66
  %72 = phi i32 [ %80, %79 ], [ %68, %66 ]
  %73 = getelementptr %struct.tegra20_mc_client_stat, ptr %23, i32 %72
  %74 = load i32, ptr %73, align 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = load ptr, ptr %51, align 4
  %78 = getelementptr %struct.tegra_mc_client, ptr %77, i32 %72
  br label %82

79:                                               ; preds = %71
  %80 = add i32 %72, 1
  %81 = icmp eq i32 %80, %50
  br i1 %81, label %82, label %71

82:                                               ; preds = %79, %76, %66, %63
  %83 = phi i32 [ %69, %76 ], [ %69, %66 ], [ %69, %79 ], [ 0, %63 ]
  %84 = phi ptr [ %67, %76 ], [ %67, %66 ], [ %67, %79 ], [ null, %63 ]
  %85 = phi i32 [ %72, %76 ], [ %68, %66 ], [ %50, %79 ], [ %50, %63 ]
  %86 = phi ptr [ %78, %76 ], [ null, %66 ], [ null, %79 ], [ null, %63 ]
  %87 = phi i32 [ %72, %76 ], [ %50, %66 ], [ %50, %79 ], [ %50, %63 ]
  %88 = icmp ne ptr %84, null
  %89 = icmp ne ptr %86, null
  %90 = select i1 %88, i1 true, i1 %89
  br i1 %90, label %91, label %109

91:                                               ; preds = %82
  %92 = getelementptr %struct.tegra20_mc_client_stat, ptr %23, i32 %83, i32 1
  %93 = getelementptr %struct.tegra20_mc_client_stat, ptr %23, i32 %87, i32 1
  tail call fastcc void @tegra20_mc_stat_events(ptr noundef %13, ptr noundef %84, ptr noundef %86, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef %92, ptr noundef %93) #11
  %94 = getelementptr %struct.tegra20_mc_client_stat, ptr %23, i32 %83, i32 2
  %95 = getelementptr %struct.tegra20_mc_client_stat, ptr %23, i32 %87, i32 2
  tail call fastcc void @tegra20_mc_stat_events(ptr noundef %13, ptr noundef %84, ptr noundef %86, i32 noundef 2, i32 noundef 1, i32 noundef 0, ptr noundef %94, ptr noundef %95) #11
  %96 = getelementptr %struct.tegra20_mc_client_stat, ptr %23, i32 %83, i32 3
  %97 = getelementptr %struct.tegra20_mc_client_stat, ptr %23, i32 %87, i32 3
  tail call fastcc void @tegra20_mc_stat_events(ptr noundef %13, ptr noundef %84, ptr noundef %86, i32 noundef 2, i32 noundef 2, i32 noundef 0, ptr noundef %96, ptr noundef %97) #11
  %98 = getelementptr %struct.tegra20_mc_client_stat, ptr %23, i32 %83, i32 4
  %99 = getelementptr %struct.tegra20_mc_client_stat, ptr %23, i32 %87, i32 4
  tail call fastcc void @tegra20_mc_stat_events(ptr noundef %13, ptr noundef %84, ptr noundef %86, i32 noundef 0, i32 noundef 0, i32 noundef 3, ptr noundef %98, ptr noundef %99) #11
  %100 = getelementptr %struct.tegra20_mc_client_stat, ptr %23, i32 %83, i32 5
  %101 = getelementptr %struct.tegra20_mc_client_stat, ptr %23, i32 %87, i32 5
  tail call fastcc void @tegra20_mc_stat_events(ptr noundef %13, ptr noundef %84, ptr noundef %86, i32 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef %100, ptr noundef %101) #11
  %102 = getelementptr %struct.tegra20_mc_client_stat, ptr %23, i32 %83, i32 6
  %103 = getelementptr %struct.tegra20_mc_client_stat, ptr %23, i32 %87, i32 6
  tail call fastcc void @tegra20_mc_stat_events(ptr noundef %13, ptr noundef %84, ptr noundef %86, i32 noundef 0, i32 noundef 0, i32 noundef 7, ptr noundef %102, ptr noundef %103) #11
  %104 = add i32 %85, 1
  %105 = load ptr, ptr %14, align 4
  %106 = getelementptr inbounds %struct.tegra_mc_soc, ptr %105, i32 0, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = icmp ult i32 %104, %107
  br i1 %108, label %49, label %109

109:                                              ; preds = %91, %82, %30, %25
  tail call void @mutex_unlock(ptr noundef nonnull @tegra20_mc_stat_lock) #11
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.71) #11
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.72) #11
  %110 = load ptr, ptr %14, align 4
  %111 = getelementptr inbounds %struct.tegra_mc_soc, ptr %110, i32 0, i32 1
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %174, label %114

114:                                              ; preds = %114, %109
  %115 = phi ptr [ %170, %114 ], [ %110, %109 ]
  %116 = phi i32 [ %169, %114 ], [ 0, %109 ]
  %117 = load ptr, ptr %115, align 4
  %118 = getelementptr %struct.tegra_mc_client, ptr %117, i32 %116, i32 1
  %119 = load ptr, ptr %118, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.73, ptr noundef %119) #11
  %120 = getelementptr %struct.tegra20_mc_client_stat, ptr %23, i32 %116
  %121 = load i32, ptr %120, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  store i64 0, ptr %9, align 8, !annotation !12
  %122 = freeze i32 %121
  %123 = udiv i32 %122, 100
  %124 = mul i32 %123, 100
  %125 = sub i32 %122, %124
  %126 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %9, i32 noundef 8, ptr noundef nonnull @.str.80, i32 noundef %123, i32 noundef %125) #11
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.74, ptr noundef nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  %127 = getelementptr %struct.tegra20_mc_client_stat, ptr %23, i32 %116, i32 2
  %128 = load i32, ptr %127, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  store i64 0, ptr %8, align 8, !annotation !12
  %129 = freeze i32 %128
  %130 = udiv i32 %129, 100
  %131 = mul i32 %130, 100
  %132 = sub i32 %129, %131
  %133 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %8, i32 noundef 8, ptr noundef nonnull @.str.80, i32 noundef %130, i32 noundef %132) #11
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.75, ptr noundef nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  %134 = getelementptr %struct.tegra20_mc_client_stat, ptr %23, i32 %116, i32 1
  %135 = load i32, ptr %134, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  store i64 0, ptr %7, align 8, !annotation !12
  %136 = freeze i32 %135
  %137 = udiv i32 %136, 100
  %138 = mul i32 %137, 100
  %139 = sub i32 %136, %138
  %140 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull @.str.80, i32 noundef %137, i32 noundef %139) #11
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.76, ptr noundef nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  %141 = getelementptr %struct.tegra20_mc_client_stat, ptr %23, i32 %116, i32 3
  %142 = load i32, ptr %141, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  store i64 0, ptr %6, align 8, !annotation !12
  %143 = freeze i32 %142
  %144 = udiv i32 %143, 100
  %145 = mul i32 %144, 100
  %146 = sub i32 %143, %145
  %147 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 8, ptr noundef nonnull @.str.80, i32 noundef %144, i32 noundef %146) #11
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.76, ptr noundef nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  %148 = getelementptr %struct.tegra20_mc_client_stat, ptr %23, i32 %116, i32 4
  %149 = load i32, ptr %148, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store i64 0, ptr %5, align 8, !annotation !12
  %150 = freeze i32 %149
  %151 = udiv i32 %150, 100
  %152 = mul i32 %151, 100
  %153 = sub i32 %150, %152
  %154 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 8, ptr noundef nonnull @.str.80, i32 noundef %151, i32 noundef %153) #11
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.77, ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  %155 = getelementptr %struct.tegra20_mc_client_stat, ptr %23, i32 %116, i32 5
  %156 = load i32, ptr %155, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  store i64 0, ptr %4, align 8, !annotation !12
  %157 = freeze i32 %156
  %158 = udiv i32 %157, 100
  %159 = mul i32 %158, 100
  %160 = sub i32 %157, %159
  %161 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 8, ptr noundef nonnull @.str.80, i32 noundef %158, i32 noundef %160) #11
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.78, ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  %162 = getelementptr %struct.tegra20_mc_client_stat, ptr %23, i32 %116, i32 6
  %163 = load i32, ptr %162, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store i64 0, ptr %3, align 8, !annotation !12
  %164 = freeze i32 %163
  %165 = udiv i32 %164, 100
  %166 = mul i32 %165, 100
  %167 = sub i32 %164, %166
  %168 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 8, ptr noundef nonnull @.str.80, i32 noundef %165, i32 noundef %167) #11
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.79, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  %169 = add nuw i32 %116, 1
  %170 = load ptr, ptr %14, align 4
  %171 = getelementptr inbounds %struct.tegra_mc_soc, ptr %170, i32 0, i32 1
  %172 = load i32, ptr %171, align 4
  %173 = icmp ult i32 %169, %172
  br i1 %173, label %114, label %174

174:                                              ; preds = %114, %109
  call void @kfree(ptr noundef nonnull %23) #11
  br label %175

175:                                              ; preds = %174, %21, %2
  %176 = phi i32 [ 0, %174 ], [ -12, %21 ], [ -12, %2 ]
  ret i32 %176
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra20_mc_stat_events(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7) unnamed_addr #0 {
  %9 = icmp eq ptr %1, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %8
  %11 = load i32, ptr %1, align 4
  %12 = shl i32 %11, 8
  %13 = and i32 %12, 16128
  br label %14

14:                                               ; preds = %10, %8
  %15 = phi i32 [ %13, %10 ], [ 0, %8 ]
  %16 = icmp eq ptr %2, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %2, align 4
  %19 = shl i32 %18, 8
  %20 = and i32 %19, 16128
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i32 [ 67108864, %17 ], [ 0, %14 ]
  %23 = phi i32 [ %20, %17 ], [ 0, %14 ]
  %24 = shl i32 %5, 16
  %25 = and i32 %24, 16711680
  %26 = shl i32 %4, 24
  %27 = and i32 %26, 50331648
  %28 = shl i32 %3, 28
  %29 = and i32 %28, 805306368
  %30 = select i1 %9, i32 0, i32 67108864
  %31 = or i32 %27, %29
  %32 = or i32 %31, %30
  %33 = or i32 %32, %25
  %34 = or i32 %33, %15
  %35 = or i32 %31, %22
  %36 = or i32 %35, %25
  %37 = or i32 %36, %23
  %38 = getelementptr inbounds %struct.tegra_mc, ptr %0, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %39, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 0) #11, !srcloc !9
  %41 = load ptr, ptr %38, align 4
  %42 = getelementptr i8, ptr %41, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %34) #11, !srcloc !9
  %43 = load ptr, ptr %38, align 4
  %44 = getelementptr i8, ptr %43, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %37) #11, !srcloc !9
  %45 = load ptr, ptr %38, align 4
  %46 = getelementptr i8, ptr %45, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 -1) #11, !srcloc !9
  %47 = load ptr, ptr %38, align 4
  %48 = getelementptr i8, ptr %47, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 768) #11, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 16000, i32 noundef 32000, i32 noundef 2) #11
  %49 = load ptr, ptr %38, align 4
  %50 = getelementptr i8, ptr %49, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 512) #11, !srcloc !9
  %51 = load ptr, ptr %38, align 4
  %52 = getelementptr i8, ptr %51, i32 184
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #11, !srcloc !8
  %54 = load ptr, ptr %38, align 4
  %55 = getelementptr i8, ptr %54, i32 188
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #11, !srcloc !8
  %57 = load ptr, ptr %38, align 4
  %58 = getelementptr i8, ptr %57, i32 164
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #11, !srcloc !8
  %60 = udiv i32 %59, 10000
  %61 = tail call i32 @llvm.umax.i32(i32 %60, i32 1) #11
  %62 = add nsw i32 %61, -1
  %63 = add i32 %62, %53
  %64 = udiv i32 %63, %61
  %65 = add i32 %62, %56
  %66 = udiv i32 %65, %61
  store i32 %64, ptr %6, align 4
  store i32 %66, ptr %7, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_gart_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_gart_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

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
!8 = !{i64 3958124}
!9 = !{i64 3957706}
!10 = !{i64 316249, i64 316276, i64 316298, i64 316326}
!11 = !{i64 316657, i64 316684, i64 316717, i64 316738, i64 316765, i64 316791}
!12 = !{!"auto-init"}
!13 = !{!"branch_weights", i32 1, i32 2000}
