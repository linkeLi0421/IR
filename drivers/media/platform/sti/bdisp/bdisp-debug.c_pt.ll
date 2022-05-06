; ModuleID = '/llk/IR/drivers/media/platform/sti/bdisp/bdisp-debug.c_pt.bc'
source_filename = "../drivers/media/platform/sti/bdisp/bdisp-debug.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.bdisp_dev = type { %struct.v4l2_device, %struct.video_device, ptr, ptr, %struct.spinlock, %struct.mutex, i16, %struct.bdisp_m2m_device, i32, ptr, ptr, %struct.wait_queue_head, ptr, %struct.delayed_work, %struct.bdisp_dbg }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.68 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.65], %struct.media_entity_enum, i32 }
%struct.anon.65 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.bdisp_m2m_device = type { ptr, ptr, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.bdisp_dbg = type { ptr, [4 x ptr], %struct.bdisp_request, i64, i64, i64, i64, i64 }
%struct.bdisp_request = type { %struct.bdisp_frame, %struct.bdisp_frame, i8, i32 }
%struct.bdisp_frame = type { i32, i32, ptr, i32, i32, i32, i32, %struct.v4l2_rect, [4 x i32] }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.81, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.82, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.83, ptr, %struct.address_space, %struct.list_head, %union.anon.84, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.81 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.82 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.83 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.84 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.bdisp_node = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"bdisp\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"regs\00", align 1
@regs_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @regs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"last_nodes\00", align 1
@last_nodes_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @last_nodes_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"last_nodes_raw\00", align 1
@last_nodes_raw_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @last_nodes_raw_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"last_request\00", align 1
@last_request_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @last_request_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"perf\00", align 1
@perf_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @perf_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.7 = private unnamed_addr constant [19 x i8] c"Cannot wake up IP\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Reg @ = 0x%p\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"\0AStatic:\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"BLT_CTL \090x%08X\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"BLT_ITS \090x%08X\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"BLT_STA1 \090x%08X\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"BLT_AQ1_CTL \090x%08X\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"BLT_AQ1_IP \090x%08X\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"BLT_AQ1_LNA \090x%08X\0A\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"BLT_AQ1_STA \090x%08X\0A\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"BLT_ITM0 \090x%08X\0A\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"\0APlugs:\0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"BLT_PLUGS1_OP2 \090x%08X\0A\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"BLT_PLUGS1_CHZ \090x%08X\0A\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"BLT_PLUGS1_MSZ \090x%08X\0A\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"BLT_PLUGS1_PGZ \090x%08X\0A\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"BLT_PLUGS2_OP2 \090x%08X\0A\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"BLT_PLUGS2_CHZ \090x%08X\0A\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"BLT_PLUGS2_MSZ \090x%08X\0A\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"BLT_PLUGS2_PGZ \090x%08X\0A\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"BLT_PLUGS3_OP2 \090x%08X\0A\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"BLT_PLUGS3_CHZ \090x%08X\0A\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"BLT_PLUGS3_MSZ \090x%08X\0A\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"BLT_PLUGS3_PGZ \090x%08X\0A\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"BLT_PLUGT_OP2 \090x%08X\0A\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"BLT_PLUGT_CHZ \090x%08X\0A\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"BLT_PLUGT_MSZ \090x%08X\0A\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"BLT_PLUGT_PGZ \090x%08X\0A\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"\0ANode:\0A\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"BLT_NIP \090x%08X\0A\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"BLT_CIC \090x%08X\0A\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"BLT_INS \090x%08X\0A\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"BLT_ACK \090x%08X\0A\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"BLT_TBA \090x%08X\0A\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"BLT_TTY \090x%08X\0A\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"BLT_TXY \090x%08X\0A\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"BLT_TSZ \090x%08X\0A\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"BLT_S1BA \090x%08X\0A\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"BLT_S1TY \090x%08X\0A\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"BLT_S1XY \090x%08X\0A\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"BLT_S2BA \090x%08X\0A\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"BLT_S2TY \090x%08X\0A\00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c"BLT_S2XY \090x%08X\0A\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"BLT_S2SZ \090x%08X\0A\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"BLT_S3BA \090x%08X\0A\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"BLT_S3TY \090x%08X\0A\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"BLT_S3XY \090x%08X\0A\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"BLT_S3SZ \090x%08X\0A\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"BLT_FCTL \090x%08X\0A\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"BLT_RSF \090x%08X\0A\00", align 1
@.str.57 = private unnamed_addr constant [17 x i8] c"BLT_RZI \090x%08X\0A\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"BLT_HFP \090x%08X\0A\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"BLT_VFP \090x%08X\0A\00", align 1
@.str.60 = private unnamed_addr constant [19 x i8] c"BLT_Y_RSF \090x%08X\0A\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"BLT_Y_RZI \090x%08X\0A\00", align 1
@.str.62 = private unnamed_addr constant [19 x i8] c"BLT_Y_HFP \090x%08X\0A\00", align 1
@.str.63 = private unnamed_addr constant [19 x i8] c"BLT_Y_VFP \090x%08X\0A\00", align 1
@.str.64 = private unnamed_addr constant [19 x i8] c"BLT_IVMX0 \090x%08X\0A\00", align 1
@.str.65 = private unnamed_addr constant [19 x i8] c"BLT_IVMX1 \090x%08X\0A\00", align 1
@.str.66 = private unnamed_addr constant [19 x i8] c"BLT_IVMX2 \090x%08X\0A\00", align 1
@.str.67 = private unnamed_addr constant [19 x i8] c"BLT_IVMX3 \090x%08X\0A\00", align 1
@.str.68 = private unnamed_addr constant [19 x i8] c"BLT_OVMX0 \090x%08X\0A\00", align 1
@.str.69 = private unnamed_addr constant [19 x i8] c"BLT_OVMX1 \090x%08X\0A\00", align 1
@.str.70 = private unnamed_addr constant [19 x i8] c"BLT_OVMX2 \090x%08X\0A\00", align 1
@.str.71 = private unnamed_addr constant [19 x i8] c"BLT_OVMX3 \090x%08X\0A\00", align 1
@.str.72 = private unnamed_addr constant [17 x i8] c"BLT_DEI \090x%08X\0A\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"\0AFilter:\0A\00", align 1
@.str.74 = private unnamed_addr constant [19 x i8] c"BLT_HFC%d \090x%08X\0A\00", align 1
@.str.75 = private unnamed_addr constant [19 x i8] c"BLT_VFC%d \090x%08X\0A\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"\0ALuma filter:\0A\00", align 1
@.str.77 = private unnamed_addr constant [21 x i8] c"BLT_Y_HFC%d \090x%08X\0A\00", align 1
@.str.78 = private unnamed_addr constant [21 x i8] c"BLT_Y_VFC%d \090x%08X\0A\00", align 1
@.str.79 = private unnamed_addr constant [19 x i8] c"No node built yet\0A\00", align 1
@.str.80 = private unnamed_addr constant [19 x i8] c"--------\0ANode %d:\0A\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"-- General --\0A\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"NIP\090x%08X\0A\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"CIC\090x%08X\0A\00", align 1
@.str.84 = private unnamed_addr constant [12 x i8] c"ACK\090x%08X\0A\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"-- Target --\0A\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"TBA\090x%08X\0A\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"TXY\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"TSZ\00", align 1
@.str.89 = private unnamed_addr constant [16 x i8] c"-- Source 1 --\0A\00", align 1
@.str.90 = private unnamed_addr constant [13 x i8] c"S1BA\090x%08X\0A\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"S1TY\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"S1XY\00", align 1
@.str.93 = private unnamed_addr constant [16 x i8] c"-- Source 2 --\0A\00", align 1
@.str.94 = private unnamed_addr constant [13 x i8] c"S2BA\090x%08X\0A\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"S2TY\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"S2XY\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c"S2SZ\00", align 1
@.str.98 = private unnamed_addr constant [16 x i8] c"-- Source 3 --\0A\00", align 1
@.str.99 = private unnamed_addr constant [13 x i8] c"S3BA\090x%08X\0A\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"S3TY\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"S3XY\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"S3SZ\00", align 1
@.str.103 = private unnamed_addr constant [21 x i8] c"-- Filter & Mask --\0A\00", align 1
@.str.104 = private unnamed_addr constant [21 x i8] c"-- Chroma Filter --\0A\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"RSF\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"RZI\00", align 1
@.str.107 = private unnamed_addr constant [12 x i8] c"HFP\090x%08X\0A\00", align 1
@.str.108 = private unnamed_addr constant [12 x i8] c"VFP\090x%08X\0A\00", align 1
@.str.109 = private unnamed_addr constant [19 x i8] c"-- Luma Filter --\0A\00", align 1
@.str.110 = private unnamed_addr constant [6 x i8] c"Y_RSF\00", align 1
@.str.111 = private unnamed_addr constant [6 x i8] c"Y_RZI\00", align 1
@.str.112 = private unnamed_addr constant [14 x i8] c"Y_HFP\090x%08X\0A\00", align 1
@.str.113 = private unnamed_addr constant [14 x i8] c"Y_VFP\090x%08X\0A\00", align 1
@.str.114 = private unnamed_addr constant [30 x i8] c"-- Input Versatile Matrix --\0A\00", align 1
@.str.115 = private unnamed_addr constant [12 x i8] c"INS\090x%08X\09\00", align 1
@.str.116 = private unnamed_addr constant [12 x i8] c"SRC1=mem - \00", align 1
@.str.117 = private unnamed_addr constant [18 x i8] c"SRC1=ColorFill - \00", align 1
@.str.118 = private unnamed_addr constant [13 x i8] c"SRC1=copy - \00", align 1
@.str.119 = private unnamed_addr constant [12 x i8] c"SRC1=fil - \00", align 1
@.str.120 = private unnamed_addr constant [12 x i8] c"SRC1=??? - \00", align 1
@.str.121 = private unnamed_addr constant [12 x i8] c"SRC2=mem - \00", align 1
@.str.122 = private unnamed_addr constant [18 x i8] c"SRC2=ColorFill - \00", align 1
@.str.123 = private unnamed_addr constant [12 x i8] c"SRC2=??? - \00", align 1
@.str.124 = private unnamed_addr constant [12 x i8] c"SRC3=mem - \00", align 1
@.str.125 = private unnamed_addr constant [8 x i8] c"IVMX - \00", align 1
@.str.126 = private unnamed_addr constant [8 x i8] c"CLUT - \00", align 1
@.str.127 = private unnamed_addr constant [9 x i8] c"Scale - \00", align 1
@.str.128 = private unnamed_addr constant [11 x i8] c"Flicker - \00", align 1
@.str.129 = private unnamed_addr constant [8 x i8] c"Clip - \00", align 1
@.str.130 = private unnamed_addr constant [12 x i8] c"ColorKey - \00", align 1
@.str.131 = private unnamed_addr constant [8 x i8] c"OVMX - \00", align 1
@.str.132 = private unnamed_addr constant [9 x i8] c"Deint - \00", align 1
@.str.133 = private unnamed_addr constant [13 x i8] c"PlaneMask - \00", align 1
@.str.134 = private unnamed_addr constant [8 x i8] c"VC1R - \00", align 1
@.str.135 = private unnamed_addr constant [10 x i8] c"Rotate - \00", align 1
@.str.136 = private unnamed_addr constant [12 x i8] c"GradFill - \00", align 1
@.str.137 = private unnamed_addr constant [10 x i8] c"AQLock - \00", align 1
@.str.138 = private unnamed_addr constant [8 x i8] c"Pace - \00", align 1
@.str.139 = private unnamed_addr constant [7 x i8] c"IRQ - \00", align 1
@.str.140 = private unnamed_addr constant [12 x i8] c"TTY\090x%08X\09\00", align 1
@.str.141 = private unnamed_addr constant [12 x i8] c"Pitch=%d - \00", align 1
@.str.142 = private unnamed_addr constant [10 x i8] c"RGB565 - \00", align 1
@.str.143 = private unnamed_addr constant [10 x i8] c"RGB888 - \00", align 1
@.str.144 = private unnamed_addr constant [11 x i8] c"xRGB888 - \00", align 1
@.str.145 = private unnamed_addr constant [12 x i8] c"ARGB8888 - \00", align 1
@.str.146 = private unnamed_addr constant [8 x i8] c"NV12 - \00", align 1
@.str.147 = private unnamed_addr constant [11 x i8] c"YUV420P - \00", align 1
@.str.148 = private unnamed_addr constant [19 x i8] c"ColorFormat ??? - \00", align 1
@.str.149 = private unnamed_addr constant [14 x i8] c"AlphaRange - \00", align 1
@.str.150 = private unnamed_addr constant [11 x i8] c"CrNotCb - \00", align 1
@.str.151 = private unnamed_addr constant [6 x i8] c"MB - \00", align 1
@.str.152 = private unnamed_addr constant [15 x i8] c"HSO inverse - \00", align 1
@.str.153 = private unnamed_addr constant [15 x i8] c"VSO inverse - \00", align 1
@.str.154 = private unnamed_addr constant [10 x i8] c"Dither - \00", align 1
@.str.155 = private unnamed_addr constant [16 x i8] c"Write CHROMA - \00", align 1
@.str.156 = private unnamed_addr constant [13 x i8] c"BigEndian - \00", align 1
@.str.157 = private unnamed_addr constant [11 x i8] c"%s\090x%08X\09\00", align 1
@.str.158 = private unnamed_addr constant [9 x i8] c"(%d,%d)\0A\00", align 1
@.str.159 = private unnamed_addr constant [7 x i8] c"%dx%d\0A\00", align 1
@.str.160 = private unnamed_addr constant [11 x i8] c"ARGB888 - \00", align 1
@.str.161 = private unnamed_addr constant [12 x i8] c"A1SubSet - \00", align 1
@.str.162 = private unnamed_addr constant [13 x i8] c"ChromaExt - \00", align 1
@.str.163 = private unnamed_addr constant [13 x i8] c"Blank Acc - \00", align 1
@.str.164 = private unnamed_addr constant [11 x i8] c"SubByte - \00", align 1
@.str.165 = private unnamed_addr constant [13 x i8] c"RGBExpand - \00", align 1
@.str.166 = private unnamed_addr constant [13 x i8] c"FCTL\090x%08X\09\00", align 1
@.str.167 = private unnamed_addr constant [15 x i8] c"Resize Luma - \00", align 1
@.str.168 = private unnamed_addr constant [15 x i8] c"Sample Luma - \00", align 1
@.str.169 = private unnamed_addr constant [14 x i8] c"Resize Chroma\00", align 1
@.str.170 = private unnamed_addr constant [14 x i8] c"Sample Chroma\00", align 1
@.str.171 = private unnamed_addr constant [30 x i8] c"H: %d(6.10) / scale~%dx0.1 - \00", align 1
@.str.172 = private unnamed_addr constant [27 x i8] c"V: %d(6.10) / scale~%dx0.1\00", align 1
@.str.173 = private unnamed_addr constant [24 x i8] c"H: init=%d repeat=%d - \00", align 1
@.str.174 = private unnamed_addr constant [21 x i8] c"V: init=%d repeat=%d\00", align 1
@.str.175 = private unnamed_addr constant [14 x i8] c"IVMX0\090x%08X\0A\00", align 1
@.str.176 = private unnamed_addr constant [14 x i8] c"IVMX1\090x%08X\0A\00", align 1
@.str.177 = private unnamed_addr constant [14 x i8] c"IVMX2\090x%08X\0A\00", align 1
@.str.178 = private unnamed_addr constant [14 x i8] c"IVMX3\090x%08X\09\00", align 1
@.str.179 = private unnamed_addr constant [12 x i8] c"RGB to YUV\0A\00", align 1
@.str.180 = private unnamed_addr constant [12 x i8] c"YUV to RGB\0A\00", align 1
@.str.181 = private unnamed_addr constant [20 x i8] c"Unknown conversion\0A\00", align 1
@.str.182 = private unnamed_addr constant [8 x i8] c"0x%08X\0A\00", align 1
@.str.183 = private unnamed_addr constant [12 x i8] c"No request\0A\00", align 1
@.str.184 = private unnamed_addr constant [14 x i8] c"\0ARequest #%d\0A\00", align 1
@.str.185 = private unnamed_addr constant [20 x i8] c"Format:    %s\09\09\09%s\0A\00", align 1
@.str.186 = private unnamed_addr constant [45 x i8] c"Crop area: %dx%d @ %d,%d  ==>\09%dx%d @ %d,%d\0A\00", align 1
@.str.187 = private unnamed_addr constant [26 x i8] c"Buff size: %dx%d\09\09%dx%d\0A\0A\00", align 1
@.str.188 = private unnamed_addr constant [18 x i8] c"Horizontal flip\0A\0A\00", align 1
@.str.189 = private unnamed_addr constant [16 x i8] c"Vertical flip\0A\0A\00", align 1
@.str.190 = private unnamed_addr constant [8 x i8] c"YUV420P\00", align 1
@.str.191 = private unnamed_addr constant [16 x i8] c"NV12 interlaced\00", align 1
@.str.192 = private unnamed_addr constant [5 x i8] c"NV12\00", align 1
@.str.193 = private unnamed_addr constant [6 x i8] c"RGB16\00", align 1
@.str.194 = private unnamed_addr constant [6 x i8] c"RGB24\00", align 1
@.str.195 = private unnamed_addr constant [5 x i8] c"XRGB\00", align 1
@.str.196 = private unnamed_addr constant [5 x i8] c"ARGB\00", align 1
@.str.197 = private unnamed_addr constant [5 x i8] c"????\00", align 1
@.str.198 = private unnamed_addr constant [30 x i8] c"HW processing (%d requests):\0A\00", align 1
@.str.199 = private unnamed_addr constant [31 x i8] c" Average: %5lld us  (%3d fps)\0A\00", align 1
@.str.200 = private unnamed_addr constant [53 x i8] c" Min-Max: %5lld us  (%3d fps) - %5lld us  (%3d fps)\0A\00", align 1
@.str.201 = private unnamed_addr constant [31 x i8] c" Last:    %5lld us  (%3d fps)\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bdisp_dbg_perf_begin(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = tail call i64 @ktime_get() #7
  %3 = getelementptr inbounds %struct.bdisp_dev, ptr %0, i32 0, i32 14, i32 3
  store i64 %2, ptr %3, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bdisp_dbg_perf_end(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = tail call i64 @ktime_get() #7
  %3 = getelementptr inbounds %struct.bdisp_dev, ptr %0, i32 0, i32 14, i32 3
  %4 = load i64, ptr %3, align 8
  %5 = sub i64 %2, %4
  %6 = tail call i64 @llvm.abs.i64(i64 %5, i1 false) #7
  %7 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %6, i32 0) #8, !srcloc !8
  %8 = extractvalue { i64, i32 } %7, 0
  %9 = extractvalue { i64, i32 } %7, 1
  %10 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %6, i64 %8, i32 %9) #8, !srcloc !9
  %11 = extractvalue { i64, i32 } %10, 0
  %12 = icmp slt i64 %5, 0
  %13 = lshr i64 %11, 9
  %14 = sub nsw i64 0, %13
  %15 = select i1 %12, i64 %14, i64 %13
  %16 = getelementptr inbounds %struct.bdisp_dev, ptr %0, i32 0, i32 14, i32 5
  %17 = load i64, ptr %16, align 8
  %18 = icmp eq i64 %17, 0
  %19 = tail call i64 @llvm.smin.i64(i64 %15, i64 %17)
  %20 = select i1 %18, i64 %15, i64 %19
  store i64 %20, ptr %16, align 8
  %21 = getelementptr inbounds %struct.bdisp_dev, ptr %0, i32 0, i32 14, i32 4
  store i64 %15, ptr %21, align 8
  %22 = getelementptr inbounds %struct.bdisp_dev, ptr %0, i32 0, i32 14, i32 6
  %23 = load i64, ptr %22, align 8
  %24 = tail call i64 @llvm.smax.i64(i64 %15, i64 %23)
  store i64 %24, ptr %22, align 8
  %25 = getelementptr inbounds %struct.bdisp_dev, ptr %0, i32 0, i32 14, i32 7
  %26 = load i64, ptr %25, align 8
  %27 = add i64 %26, %15
  store i64 %27, ptr %25, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bdisp_debugfs_create(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !10
  %3 = getelementptr inbounds %struct.bdisp_dev, ptr %0, i32 0, i32 6
  %4 = load i16, ptr %3, align 8
  %5 = zext i16 %4 to i32
  %6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %5)
  %7 = call ptr @debugfs_create_dir(ptr noundef nonnull %2, ptr noundef null) #7
  %8 = getelementptr inbounds %struct.bdisp_dev, ptr %0, i32 0, i32 14
  store ptr %7, ptr %8, align 8
  %9 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef %7, ptr noundef %0, ptr noundef nonnull @regs_fops) #7
  %10 = load ptr, ptr %8, align 8
  %11 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 292, ptr noundef %10, ptr noundef %0, ptr noundef nonnull @last_nodes_fops) #7
  %12 = load ptr, ptr %8, align 8
  %13 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 292, ptr noundef %12, ptr noundef %0, ptr noundef nonnull @last_nodes_raw_fops) #7
  %14 = load ptr, ptr %8, align 8
  %15 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 292, ptr noundef %14, ptr noundef %0, ptr noundef nonnull @last_request_fops) #7
  %16 = load ptr, ptr %8, align 8
  %17 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 292, ptr noundef %16, ptr noundef %0, ptr noundef nonnull @perf_fops) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bdisp_debugfs_remove(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bdisp_dev, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 8
  tail call void @debugfs_remove(ptr noundef %3) #7
  store ptr null, ptr %2, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regs_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @regs_show, ptr noundef %4) #7
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regs_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #7
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #7, !srcloc !12
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 0, i32 -1, ptr elementtype(i32) %10) #7, !srcloc !13
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  br label %15

15:                                               ; preds = %14, %9
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.7) #7
  br label %360

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 10
  %18 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef %18) #7
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.9) #7
  %19 = load ptr, ptr %17, align 4
  %20 = getelementptr i8, ptr %19, i32 2560
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %21) #7
  %22 = load ptr, ptr %17, align 4
  %23 = getelementptr i8, ptr %22, i32 2564
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %24) #7
  %25 = load ptr, ptr %17, align 4
  %26 = getelementptr i8, ptr %25, i32 2568
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %27) #7
  %28 = load ptr, ptr %17, align 4
  %29 = getelementptr i8, ptr %28, i32 2656
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !19
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %30) #7
  %31 = load ptr, ptr %17, align 4
  %32 = getelementptr i8, ptr %31, i32 2660
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !20
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %33) #7
  %34 = load ptr, ptr %17, align 4
  %35 = getelementptr i8, ptr %34, i32 2664
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !21
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %36) #7
  %37 = load ptr, ptr %17, align 4
  %38 = getelementptr i8, ptr %37, i32 2668
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !22
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %39) #7
  %40 = load ptr, ptr %17, align 4
  %41 = getelementptr i8, ptr %40, i32 2768
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !23
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %42) #7
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.18) #7
  %43 = load ptr, ptr %17, align 4
  %44 = getelementptr i8, ptr %43, i32 2820
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !24
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %45) #7
  %46 = load ptr, ptr %17, align 4
  %47 = getelementptr i8, ptr %46, i32 2824
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !25
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %48) #7
  %49 = load ptr, ptr %17, align 4
  %50 = getelementptr i8, ptr %49, i32 2828
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !26
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %51) #7
  %52 = load ptr, ptr %17, align 4
  %53 = getelementptr i8, ptr %52, i32 2832
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !27
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %54) #7
  %55 = load ptr, ptr %17, align 4
  %56 = getelementptr i8, ptr %55, i32 2852
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !28
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %57) #7
  %58 = load ptr, ptr %17, align 4
  %59 = getelementptr i8, ptr %58, i32 2856
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !29
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %60) #7
  %61 = load ptr, ptr %17, align 4
  %62 = getelementptr i8, ptr %61, i32 2860
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !30
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.25, i32 noundef %63) #7
  %64 = load ptr, ptr %17, align 4
  %65 = getelementptr i8, ptr %64, i32 2864
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !31
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef %66) #7
  %67 = load ptr, ptr %17, align 4
  %68 = getelementptr i8, ptr %67, i32 2884
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %69) #7
  %70 = load ptr, ptr %17, align 4
  %71 = getelementptr i8, ptr %70, i32 2888
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !33
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %72) #7
  %73 = load ptr, ptr %17, align 4
  %74 = getelementptr i8, ptr %73, i32 2892
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !34
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.29, i32 noundef %75) #7
  %76 = load ptr, ptr %17, align 4
  %77 = getelementptr i8, ptr %76, i32 2896
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !35
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.30, i32 noundef %78) #7
  %79 = load ptr, ptr %17, align 4
  %80 = getelementptr i8, ptr %79, i32 2948
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !36
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef %81) #7
  %82 = load ptr, ptr %17, align 4
  %83 = getelementptr i8, ptr %82, i32 2952
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !37
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.32, i32 noundef %84) #7
  %85 = load ptr, ptr %17, align 4
  %86 = getelementptr i8, ptr %85, i32 2956
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !38
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.33, i32 noundef %87) #7
  %88 = load ptr, ptr %17, align 4
  %89 = getelementptr i8, ptr %88, i32 2960
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !39
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef %90) #7
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.35) #7
  %91 = load ptr, ptr %17, align 4
  %92 = getelementptr i8, ptr %91, i32 3072
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !40
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef %93) #7
  %94 = load ptr, ptr %17, align 4
  %95 = getelementptr i8, ptr %94, i32 3076
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !41
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.37, i32 noundef %96) #7
  %97 = load ptr, ptr %17, align 4
  %98 = getelementptr i8, ptr %97, i32 3080
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !42
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.38, i32 noundef %99) #7
  %100 = load ptr, ptr %17, align 4
  %101 = getelementptr i8, ptr %100, i32 3084
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !43
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %102) #7
  %103 = load ptr, ptr %17, align 4
  %104 = getelementptr i8, ptr %103, i32 3088
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !44
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.40, i32 noundef %105) #7
  %106 = load ptr, ptr %17, align 4
  %107 = getelementptr i8, ptr %106, i32 3092
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !45
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %108) #7
  %109 = load ptr, ptr %17, align 4
  %110 = getelementptr i8, ptr %109, i32 3096
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !46
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.42, i32 noundef %111) #7
  %112 = load ptr, ptr %17, align 4
  %113 = getelementptr i8, ptr %112, i32 3100
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %113) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !47
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef %114) #7
  %115 = load ptr, ptr %17, align 4
  %116 = getelementptr i8, ptr %115, i32 3112
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %116) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !48
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.44, i32 noundef %117) #7
  %118 = load ptr, ptr %17, align 4
  %119 = getelementptr i8, ptr %118, i32 3116
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !49
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.45, i32 noundef %120) #7
  %121 = load ptr, ptr %17, align 4
  %122 = getelementptr i8, ptr %121, i32 3120
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %122) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !50
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.46, i32 noundef %123) #7
  %124 = load ptr, ptr %17, align 4
  %125 = getelementptr i8, ptr %124, i32 3128
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %125) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !51
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.47, i32 noundef %126) #7
  %127 = load ptr, ptr %17, align 4
  %128 = getelementptr i8, ptr %127, i32 3132
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %128) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !52
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.48, i32 noundef %129) #7
  %130 = load ptr, ptr %17, align 4
  %131 = getelementptr i8, ptr %130, i32 3136
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %131) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !53
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.49, i32 noundef %132) #7
  %133 = load ptr, ptr %17, align 4
  %134 = getelementptr i8, ptr %133, i32 3140
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !54
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, i32 noundef %135) #7
  %136 = load ptr, ptr %17, align 4
  %137 = getelementptr i8, ptr %136, i32 3144
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %137) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !55
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.51, i32 noundef %138) #7
  %139 = load ptr, ptr %17, align 4
  %140 = getelementptr i8, ptr %139, i32 3148
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %140) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !56
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.52, i32 noundef %141) #7
  %142 = load ptr, ptr %17, align 4
  %143 = getelementptr i8, ptr %142, i32 3152
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %143) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !57
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.53, i32 noundef %144) #7
  %145 = load ptr, ptr %17, align 4
  %146 = getelementptr i8, ptr %145, i32 3156
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %146) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !58
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef %147) #7
  %148 = load ptr, ptr %17, align 4
  %149 = getelementptr i8, ptr %148, i32 3176
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %149) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !59
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.55, i32 noundef %150) #7
  %151 = load ptr, ptr %17, align 4
  %152 = getelementptr i8, ptr %151, i32 3184
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %152) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !60
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.56, i32 noundef %153) #7
  %154 = load ptr, ptr %17, align 4
  %155 = getelementptr i8, ptr %154, i32 3188
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %155) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !61
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.57, i32 noundef %156) #7
  %157 = load ptr, ptr %17, align 4
  %158 = getelementptr i8, ptr %157, i32 3192
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %158) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !62
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.58, i32 noundef %159) #7
  %160 = load ptr, ptr %17, align 4
  %161 = getelementptr i8, ptr %160, i32 3196
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %161) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !63
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.59, i32 noundef %162) #7
  %163 = load ptr, ptr %17, align 4
  %164 = getelementptr i8, ptr %163, i32 3200
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %164) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.60, i32 noundef %165) #7
  %166 = load ptr, ptr %17, align 4
  %167 = getelementptr i8, ptr %166, i32 3204
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %167) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !65
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.61, i32 noundef %168) #7
  %169 = load ptr, ptr %17, align 4
  %170 = getelementptr i8, ptr %169, i32 3208
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %170) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !66
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.62, i32 noundef %171) #7
  %172 = load ptr, ptr %17, align 4
  %173 = getelementptr i8, ptr %172, i32 3212
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %173) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !67
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.63, i32 noundef %174) #7
  %175 = load ptr, ptr %17, align 4
  %176 = getelementptr i8, ptr %175, i32 3264
  %177 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %176) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !68
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.64, i32 noundef %177) #7
  %178 = load ptr, ptr %17, align 4
  %179 = getelementptr i8, ptr %178, i32 3268
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %179) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !69
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.65, i32 noundef %180) #7
  %181 = load ptr, ptr %17, align 4
  %182 = getelementptr i8, ptr %181, i32 3272
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %182) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !70
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.66, i32 noundef %183) #7
  %184 = load ptr, ptr %17, align 4
  %185 = getelementptr i8, ptr %184, i32 3276
  %186 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %185) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !71
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.67, i32 noundef %186) #7
  %187 = load ptr, ptr %17, align 4
  %188 = getelementptr i8, ptr %187, i32 3280
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %188) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !72
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.68, i32 noundef %189) #7
  %190 = load ptr, ptr %17, align 4
  %191 = getelementptr i8, ptr %190, i32 3284
  %192 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %191) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !73
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.69, i32 noundef %192) #7
  %193 = load ptr, ptr %17, align 4
  %194 = getelementptr i8, ptr %193, i32 3288
  %195 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %194) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !74
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.70, i32 noundef %195) #7
  %196 = load ptr, ptr %17, align 4
  %197 = getelementptr i8, ptr %196, i32 3292
  %198 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %197) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !75
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.71, i32 noundef %198) #7
  %199 = load ptr, ptr %17, align 4
  %200 = getelementptr i8, ptr %199, i32 3308
  %201 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %200) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !76
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.72, i32 noundef %201) #7
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.73) #7
  %202 = load ptr, ptr %17, align 4
  %203 = getelementptr i8, ptr %202, i32 3328
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %203) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !77
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.74, i32 noundef 0, i32 noundef %204) #7
  %205 = load ptr, ptr %17, align 4
  %206 = getelementptr i8, ptr %205, i32 3332
  %207 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %206) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !77
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.74, i32 noundef 1, i32 noundef %207) #7
  %208 = load ptr, ptr %17, align 4
  %209 = getelementptr i8, ptr %208, i32 3336
  %210 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %209) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !77
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.74, i32 noundef 2, i32 noundef %210) #7
  %211 = load ptr, ptr %17, align 4
  %212 = getelementptr i8, ptr %211, i32 3340
  %213 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %212) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !77
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.74, i32 noundef 3, i32 noundef %213) #7
  %214 = load ptr, ptr %17, align 4
  %215 = getelementptr i8, ptr %214, i32 3344
  %216 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %215) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !77
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.74, i32 noundef 4, i32 noundef %216) #7
  %217 = load ptr, ptr %17, align 4
  %218 = getelementptr i8, ptr %217, i32 3348
  %219 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %218) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !77
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.74, i32 noundef 5, i32 noundef %219) #7
  %220 = load ptr, ptr %17, align 4
  %221 = getelementptr i8, ptr %220, i32 3352
  %222 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %221) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !77
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.74, i32 noundef 6, i32 noundef %222) #7
  %223 = load ptr, ptr %17, align 4
  %224 = getelementptr i8, ptr %223, i32 3356
  %225 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %224) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !77
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.74, i32 noundef 7, i32 noundef %225) #7
  %226 = load ptr, ptr %17, align 4
  %227 = getelementptr i8, ptr %226, i32 3360
  %228 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %227) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !77
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.74, i32 noundef 8, i32 noundef %228) #7
  %229 = load ptr, ptr %17, align 4
  %230 = getelementptr i8, ptr %229, i32 3364
  %231 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %230) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !77
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.74, i32 noundef 9, i32 noundef %231) #7
  %232 = load ptr, ptr %17, align 4
  %233 = getelementptr i8, ptr %232, i32 3368
  %234 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %233) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !77
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.74, i32 noundef 10, i32 noundef %234) #7
  %235 = load ptr, ptr %17, align 4
  %236 = getelementptr i8, ptr %235, i32 3372
  %237 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %236) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !77
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.74, i32 noundef 11, i32 noundef %237) #7
  %238 = load ptr, ptr %17, align 4
  %239 = getelementptr i8, ptr %238, i32 3376
  %240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %239) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !77
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.74, i32 noundef 12, i32 noundef %240) #7
  %241 = load ptr, ptr %17, align 4
  %242 = getelementptr i8, ptr %241, i32 3380
  %243 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %242) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !77
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.74, i32 noundef 13, i32 noundef %243) #7
  %244 = load ptr, ptr %17, align 4
  %245 = getelementptr i8, ptr %244, i32 3384
  %246 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %245) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !77
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.74, i32 noundef 14, i32 noundef %246) #7
  %247 = load ptr, ptr %17, align 4
  %248 = getelementptr i8, ptr %247, i32 3388
  %249 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %248) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !77
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.74, i32 noundef 15, i32 noundef %249) #7
  %250 = load ptr, ptr %17, align 4
  %251 = getelementptr i8, ptr %250, i32 3472
  %252 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %251) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !78
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef 0, i32 noundef %252) #7
  %253 = load ptr, ptr %17, align 4
  %254 = getelementptr i8, ptr %253, i32 3476
  %255 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %254) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !78
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef 1, i32 noundef %255) #7
  %256 = load ptr, ptr %17, align 4
  %257 = getelementptr i8, ptr %256, i32 3480
  %258 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %257) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !78
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef 2, i32 noundef %258) #7
  %259 = load ptr, ptr %17, align 4
  %260 = getelementptr i8, ptr %259, i32 3484
  %261 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %260) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !78
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef 3, i32 noundef %261) #7
  %262 = load ptr, ptr %17, align 4
  %263 = getelementptr i8, ptr %262, i32 3488
  %264 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %263) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !78
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef 4, i32 noundef %264) #7
  %265 = load ptr, ptr %17, align 4
  %266 = getelementptr i8, ptr %265, i32 3492
  %267 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %266) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !78
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef 5, i32 noundef %267) #7
  %268 = load ptr, ptr %17, align 4
  %269 = getelementptr i8, ptr %268, i32 3496
  %270 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %269) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !78
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef 6, i32 noundef %270) #7
  %271 = load ptr, ptr %17, align 4
  %272 = getelementptr i8, ptr %271, i32 3500
  %273 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %272) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !78
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef 7, i32 noundef %273) #7
  %274 = load ptr, ptr %17, align 4
  %275 = getelementptr i8, ptr %274, i32 3504
  %276 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %275) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !78
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef 8, i32 noundef %276) #7
  %277 = load ptr, ptr %17, align 4
  %278 = getelementptr i8, ptr %277, i32 3508
  %279 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %278) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !78
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef 9, i32 noundef %279) #7
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.76) #7
  %280 = load ptr, ptr %17, align 4
  %281 = getelementptr i8, ptr %280, i32 3584
  %282 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %281) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !79
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.77, i32 noundef 0, i32 noundef %282) #7
  %283 = load ptr, ptr %17, align 4
  %284 = getelementptr i8, ptr %283, i32 3588
  %285 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %284) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !79
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.77, i32 noundef 1, i32 noundef %285) #7
  %286 = load ptr, ptr %17, align 4
  %287 = getelementptr i8, ptr %286, i32 3592
  %288 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %287) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !79
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.77, i32 noundef 2, i32 noundef %288) #7
  %289 = load ptr, ptr %17, align 4
  %290 = getelementptr i8, ptr %289, i32 3596
  %291 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %290) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !79
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.77, i32 noundef 3, i32 noundef %291) #7
  %292 = load ptr, ptr %17, align 4
  %293 = getelementptr i8, ptr %292, i32 3600
  %294 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %293) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !79
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.77, i32 noundef 4, i32 noundef %294) #7
  %295 = load ptr, ptr %17, align 4
  %296 = getelementptr i8, ptr %295, i32 3604
  %297 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %296) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !79
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.77, i32 noundef 5, i32 noundef %297) #7
  %298 = load ptr, ptr %17, align 4
  %299 = getelementptr i8, ptr %298, i32 3608
  %300 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %299) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !79
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.77, i32 noundef 6, i32 noundef %300) #7
  %301 = load ptr, ptr %17, align 4
  %302 = getelementptr i8, ptr %301, i32 3612
  %303 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %302) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !79
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.77, i32 noundef 7, i32 noundef %303) #7
  %304 = load ptr, ptr %17, align 4
  %305 = getelementptr i8, ptr %304, i32 3616
  %306 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %305) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !79
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.77, i32 noundef 8, i32 noundef %306) #7
  %307 = load ptr, ptr %17, align 4
  %308 = getelementptr i8, ptr %307, i32 3620
  %309 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %308) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !79
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.77, i32 noundef 9, i32 noundef %309) #7
  %310 = load ptr, ptr %17, align 4
  %311 = getelementptr i8, ptr %310, i32 3624
  %312 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %311) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !79
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.77, i32 noundef 10, i32 noundef %312) #7
  %313 = load ptr, ptr %17, align 4
  %314 = getelementptr i8, ptr %313, i32 3628
  %315 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %314) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !79
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.77, i32 noundef 11, i32 noundef %315) #7
  %316 = load ptr, ptr %17, align 4
  %317 = getelementptr i8, ptr %316, i32 3632
  %318 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %317) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !79
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.77, i32 noundef 12, i32 noundef %318) #7
  %319 = load ptr, ptr %17, align 4
  %320 = getelementptr i8, ptr %319, i32 3636
  %321 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %320) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !79
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.77, i32 noundef 13, i32 noundef %321) #7
  %322 = load ptr, ptr %17, align 4
  %323 = getelementptr i8, ptr %322, i32 3640
  %324 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %323) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !79
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.77, i32 noundef 14, i32 noundef %324) #7
  %325 = load ptr, ptr %17, align 4
  %326 = getelementptr i8, ptr %325, i32 3644
  %327 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %326) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !79
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.77, i32 noundef 15, i32 noundef %327) #7
  %328 = load ptr, ptr %17, align 4
  %329 = getelementptr i8, ptr %328, i32 3728
  %330 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %329) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !80
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.78, i32 noundef 0, i32 noundef %330) #7
  %331 = load ptr, ptr %17, align 4
  %332 = getelementptr i8, ptr %331, i32 3732
  %333 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %332) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !80
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.78, i32 noundef 1, i32 noundef %333) #7
  %334 = load ptr, ptr %17, align 4
  %335 = getelementptr i8, ptr %334, i32 3736
  %336 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %335) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !80
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.78, i32 noundef 2, i32 noundef %336) #7
  %337 = load ptr, ptr %17, align 4
  %338 = getelementptr i8, ptr %337, i32 3740
  %339 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %338) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !80
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.78, i32 noundef 3, i32 noundef %339) #7
  %340 = load ptr, ptr %17, align 4
  %341 = getelementptr i8, ptr %340, i32 3744
  %342 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %341) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !80
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.78, i32 noundef 4, i32 noundef %342) #7
  %343 = load ptr, ptr %17, align 4
  %344 = getelementptr i8, ptr %343, i32 3748
  %345 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %344) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !80
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.78, i32 noundef 5, i32 noundef %345) #7
  %346 = load ptr, ptr %17, align 4
  %347 = getelementptr i8, ptr %346, i32 3752
  %348 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %347) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !80
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.78, i32 noundef 6, i32 noundef %348) #7
  %349 = load ptr, ptr %17, align 4
  %350 = getelementptr i8, ptr %349, i32 3756
  %351 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %350) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !80
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.78, i32 noundef 7, i32 noundef %351) #7
  %352 = load ptr, ptr %17, align 4
  %353 = getelementptr i8, ptr %352, i32 3760
  %354 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %353) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !80
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.78, i32 noundef 8, i32 noundef %354) #7
  %355 = load ptr, ptr %17, align 4
  %356 = getelementptr i8, ptr %355, i32 3764
  %357 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %356) #7, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !80
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.78, i32 noundef 9, i32 noundef %357) #7
  %358 = load ptr, ptr %5, align 4
  %359 = tail call i32 @__pm_runtime_idle(ptr noundef %358, i32 noundef 5) #7
  br label %360

360:                                              ; preds = %16, %15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @last_nodes_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @last_nodes_show, ptr noundef %4) #7
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @last_nodes_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 14, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.79) #7
  br label %300

9:                                                ; preds = %296, %2
  %10 = phi i32 [ %297, %296 ], [ 0, %2 ]
  %11 = getelementptr %struct.bdisp_dev, ptr %4, i32 0, i32 14, i32 1, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %300, label %14

14:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.80, i32 noundef %10) #7
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.81) #7
  %15 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.82, i32 noundef %15) #7
  %16 = getelementptr inbounds %struct.bdisp_node, ptr %12, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.83, i32 noundef %17) #7
  %18 = getelementptr inbounds %struct.bdisp_node, ptr %12, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.115, i32 noundef %19) #7
  %20 = and i32 %19, 7
  switch i32 %20, label %24 [
    i32 0, label %27
    i32 1, label %25
    i32 3, label %21
    i32 4, label %22
    i32 7, label %23
  ]

21:                                               ; preds = %14
  br label %25

22:                                               ; preds = %14
  br label %25

23:                                               ; preds = %14
  br label %25

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24, %23, %22, %21, %14
  %26 = phi ptr [ @.str.120, %24 ], [ @.str.119, %23 ], [ @.str.118, %22 ], [ @.str.117, %21 ], [ @.str.116, %14 ]
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %26) #7
  br label %27

27:                                               ; preds = %25, %14
  %28 = and i32 %19, 24
  switch i32 %28, label %30 [
    i32 0, label %33
    i32 8, label %31
    i32 24, label %29
  ]

29:                                               ; preds = %27
  br label %31

30:                                               ; preds = %27
  br label %31

31:                                               ; preds = %30, %29, %27
  %32 = phi ptr [ @.str.123, %30 ], [ @.str.122, %29 ], [ @.str.121, %27 ]
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %32) #7
  br label %33

33:                                               ; preds = %31, %27
  %34 = and i32 %19, 32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.124) #7
  br label %37

37:                                               ; preds = %36, %33
  %38 = and i32 %19, 64
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.125) #7
  br label %41

41:                                               ; preds = %40, %37
  %42 = and i32 %19, 128
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.126) #7
  br label %45

45:                                               ; preds = %44, %41
  %46 = and i32 %19, 256
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.127) #7
  br label %49

49:                                               ; preds = %48, %45
  %50 = and i32 %19, 512
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.128) #7
  br label %53

53:                                               ; preds = %52, %49
  %54 = and i32 %19, 1024
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.129) #7
  br label %57

57:                                               ; preds = %56, %53
  %58 = and i32 %19, 2048
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.130) #7
  br label %61

61:                                               ; preds = %60, %57
  %62 = and i32 %19, 4096
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.131) #7
  br label %65

65:                                               ; preds = %64, %61
  %66 = and i32 %19, 8192
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.132) #7
  br label %69

69:                                               ; preds = %68, %65
  %70 = and i32 %19, 16384
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.133) #7
  br label %73

73:                                               ; preds = %72, %69
  %74 = and i32 %19, 131072
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.134) #7
  br label %77

77:                                               ; preds = %76, %73
  %78 = and i32 %19, 262144
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.135) #7
  br label %81

81:                                               ; preds = %80, %77
  %82 = and i32 %19, 524288
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.136) #7
  br label %85

85:                                               ; preds = %84, %81
  %86 = and i32 %19, 536870912
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %85
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.137) #7
  br label %89

89:                                               ; preds = %88, %85
  %90 = and i32 %19, 1073741824
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.138) #7
  br label %93

93:                                               ; preds = %92, %89
  %94 = icmp sgt i32 %19, -1
  br i1 %94, label %96, label %95

95:                                               ; preds = %93
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.139) #7
  br label %96

96:                                               ; preds = %95, %93
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #7
  %97 = getelementptr inbounds %struct.bdisp_node, ptr %12, i32 0, i32 3
  %98 = load i32, ptr %97, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.84, i32 noundef %98) #7
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.85) #7
  %99 = getelementptr inbounds %struct.bdisp_node, ptr %12, i32 0, i32 4
  %100 = load i32, ptr %99, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.86, i32 noundef %100) #7
  %101 = getelementptr inbounds %struct.bdisp_node, ptr %12, i32 0, i32 5
  %102 = load i32, ptr %101, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.140, i32 noundef %102) #7
  %103 = and i32 %102, 65535
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.141, i32 noundef %103) #7
  %104 = lshr i32 %102, 16
  %105 = and i32 %104, 31
  switch i32 %105, label %111 [
    i32 0, label %112
    i32 1, label %106
    i32 2, label %107
    i32 5, label %108
    i32 22, label %109
    i32 30, label %110
  ]

106:                                              ; preds = %96
  br label %112

107:                                              ; preds = %96
  br label %112

108:                                              ; preds = %96
  br label %112

109:                                              ; preds = %96
  br label %112

110:                                              ; preds = %96
  br label %112

111:                                              ; preds = %96
  br label %112

112:                                              ; preds = %111, %110, %109, %108, %107, %106, %96
  %113 = phi ptr [ @.str.148, %111 ], [ @.str.147, %110 ], [ @.str.146, %109 ], [ @.str.145, %108 ], [ @.str.144, %107 ], [ @.str.143, %106 ], [ @.str.142, %96 ]
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %113) #7
  %114 = and i32 %102, 2097152
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %112
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.149) #7
  br label %117

117:                                              ; preds = %116, %112
  %118 = and i32 %102, 4194304
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %117
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.150) #7
  br label %121

121:                                              ; preds = %120, %117
  %122 = and i32 %102, 8388608
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %121
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.151) #7
  br label %125

125:                                              ; preds = %124, %121
  %126 = and i32 %102, 16777216
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %125
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.152) #7
  br label %129

129:                                              ; preds = %128, %125
  %130 = and i32 %102, 33554432
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %129
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.153) #7
  br label %133

133:                                              ; preds = %132, %129
  %134 = and i32 %102, 67108864
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %133
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.154) #7
  br label %137

137:                                              ; preds = %136, %133
  %138 = and i32 %102, 134217728
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %137
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.155) #7
  br label %141

141:                                              ; preds = %140, %137
  %142 = and i32 %102, 1073741824
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %141
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.156) #7
  br label %145

145:                                              ; preds = %144, %141
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #7
  %146 = getelementptr inbounds %struct.bdisp_node, ptr %12, i32 0, i32 6
  %147 = load i32, ptr %146, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.87, i32 noundef %147) #7
  %148 = and i32 %147, 65535
  %149 = lshr i32 %147, 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.158, i32 noundef %148, i32 noundef %149) #7
  %150 = getelementptr inbounds %struct.bdisp_node, ptr %12, i32 0, i32 7
  %151 = load i32, ptr %150, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.88, i32 noundef %151) #7
  %152 = and i32 %151, 8191
  %153 = lshr i32 %151, 16
  %154 = and i32 %153, 8191
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.159, i32 noundef %152, i32 noundef %154) #7
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.89) #7
  %155 = getelementptr inbounds %struct.bdisp_node, ptr %12, i32 0, i32 10
  %156 = load i32, ptr %155, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.90, i32 noundef %156) #7
  %157 = getelementptr inbounds %struct.bdisp_node, ptr %12, i32 0, i32 11
  %158 = load i32, ptr %157, align 4
  %159 = load i32, ptr %155, align 4
  tail call fastcc void @bdisp_dbg_dump_sty(ptr noundef %0, i32 noundef %158, i32 noundef %159, ptr noundef nonnull @.str.91)
  %160 = getelementptr inbounds %struct.bdisp_node, ptr %12, i32 0, i32 12
  %161 = load i32, ptr %160, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.92, i32 noundef %161) #7
  %162 = and i32 %161, 65535
  %163 = lshr i32 %161, 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.158, i32 noundef %162, i32 noundef %163) #7
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.93) #7
  %164 = getelementptr inbounds %struct.bdisp_node, ptr %12, i32 0, i32 14
  %165 = load i32, ptr %164, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.94, i32 noundef %165) #7
  %166 = getelementptr inbounds %struct.bdisp_node, ptr %12, i32 0, i32 15
  %167 = load i32, ptr %166, align 4
  %168 = load i32, ptr %164, align 4
  tail call fastcc void @bdisp_dbg_dump_sty(ptr noundef %0, i32 noundef %167, i32 noundef %168, ptr noundef nonnull @.str.95)
  %169 = getelementptr inbounds %struct.bdisp_node, ptr %12, i32 0, i32 16
  %170 = load i32, ptr %169, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.96, i32 noundef %170) #7
  %171 = and i32 %170, 65535
  %172 = lshr i32 %170, 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.158, i32 noundef %171, i32 noundef %172) #7
  %173 = getelementptr inbounds %struct.bdisp_node, ptr %12, i32 0, i32 17
  %174 = load i32, ptr %173, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.97, i32 noundef %174) #7
  %175 = and i32 %174, 8191
  %176 = lshr i32 %174, 16
  %177 = and i32 %176, 8191
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.159, i32 noundef %175, i32 noundef %177) #7
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.98) #7
  %178 = getelementptr inbounds %struct.bdisp_node, ptr %12, i32 0, i32 18
  %179 = load i32, ptr %178, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.99, i32 noundef %179) #7
  %180 = getelementptr inbounds %struct.bdisp_node, ptr %12, i32 0, i32 19
  %181 = load i32, ptr %180, align 4
  %182 = load i32, ptr %178, align 4
  tail call fastcc void @bdisp_dbg_dump_sty(ptr noundef %0, i32 noundef %181, i32 noundef %182, ptr noundef nonnull @.str.100)
  %183 = getelementptr inbounds %struct.bdisp_node, ptr %12, i32 0, i32 20
  %184 = load i32, ptr %183, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.101, i32 noundef %184) #7
  %185 = and i32 %184, 65535
  %186 = lshr i32 %184, 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.158, i32 noundef %185, i32 noundef %186) #7
  %187 = getelementptr inbounds %struct.bdisp_node, ptr %12, i32 0, i32 21
  %188 = load i32, ptr %187, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.102, i32 noundef %188) #7
  %189 = and i32 %188, 8191
  %190 = lshr i32 %188, 16
  %191 = and i32 %190, 8191
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.159, i32 noundef %189, i32 noundef %191) #7
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.103) #7
  %192 = getelementptr inbounds %struct.bdisp_node, ptr %12, i32 0, i32 26
  %193 = load i32, ptr %192, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.166, i32 noundef %193) #7
  %194 = and i32 %193, 855638016
  switch i32 %194, label %198 [
    i32 855638016, label %196
    i32 570425344, label %195
  ]

195:                                              ; preds = %145
  br label %196

196:                                              ; preds = %195, %145
  %197 = phi ptr [ @.str.168, %195 ], [ @.str.167, %145 ]
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %197) #7
  br label %198

198:                                              ; preds = %196, %145
  %199 = and i32 %193, 85
  switch i32 %199, label %203 [
    i32 85, label %201
    i32 68, label %200
  ]

200:                                              ; preds = %198
  br label %201

201:                                              ; preds = %200, %198
  %202 = phi ptr [ @.str.170, %200 ], [ @.str.169, %198 ]
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %202) #7
  br label %203

203:                                              ; preds = %201, %198
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #7
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.104) #7
  %204 = getelementptr inbounds %struct.bdisp_node, ptr %12, i32 0, i32 28
  %205 = load i32, ptr %204, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.105, i32 noundef %205) #7
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %216, label %207

207:                                              ; preds = %203
  %208 = and i32 %205, 65535
  %209 = trunc i32 %205 to i16
  %210 = udiv i16 10240, %209
  %211 = zext i16 %210 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.171, i32 noundef %208, i32 noundef %211) #7
  %212 = lshr i32 %205, 16
  %213 = trunc i32 %212 to i16
  %214 = udiv i16 10240, %213
  %215 = zext i16 %214 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.172, i32 noundef %212, i32 noundef %215) #7
  br label %216

216:                                              ; preds = %207, %203
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #7
  %217 = getelementptr inbounds %struct.bdisp_node, ptr %12, i32 0, i32 29
  %218 = load i32, ptr %217, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.106, i32 noundef %218) #7
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %228, label %220

220:                                              ; preds = %216
  %221 = and i32 %218, 1023
  %222 = lshr i32 %218, 12
  %223 = and i32 %222, 7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.173, i32 noundef %221, i32 noundef %223) #7
  %224 = lshr i32 %218, 16
  %225 = and i32 %224, 1023
  %226 = lshr i32 %218, 28
  %227 = and i32 %226, 7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.174, i32 noundef %225, i32 noundef %227) #7
  br label %228

228:                                              ; preds = %220, %216
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #7
  %229 = getelementptr inbounds %struct.bdisp_node, ptr %12, i32 0, i32 30
  %230 = load i32, ptr %229, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.107, i32 noundef %230) #7
  %231 = getelementptr inbounds %struct.bdisp_node, ptr %12, i32 0, i32 31
  %232 = load i32, ptr %231, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.108, i32 noundef %232) #7
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.109) #7
  %233 = getelementptr inbounds %struct.bdisp_node, ptr %12, i32 0, i32 32
  %234 = load i32, ptr %233, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.110, i32 noundef %234) #7
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %245, label %236

236:                                              ; preds = %228
  %237 = and i32 %234, 65535
  %238 = trunc i32 %234 to i16
  %239 = udiv i16 10240, %238
  %240 = zext i16 %239 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.171, i32 noundef %237, i32 noundef %240) #7
  %241 = lshr i32 %234, 16
  %242 = trunc i32 %241 to i16
  %243 = udiv i16 10240, %242
  %244 = zext i16 %243 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.172, i32 noundef %241, i32 noundef %244) #7
  br label %245

245:                                              ; preds = %236, %228
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #7
  %246 = getelementptr inbounds %struct.bdisp_node, ptr %12, i32 0, i32 33
  %247 = load i32, ptr %246, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.111, i32 noundef %247) #7
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %257, label %249

249:                                              ; preds = %245
  %250 = and i32 %247, 1023
  %251 = lshr i32 %247, 12
  %252 = and i32 %251, 7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.173, i32 noundef %250, i32 noundef %252) #7
  %253 = lshr i32 %247, 16
  %254 = and i32 %253, 1023
  %255 = lshr i32 %247, 28
  %256 = and i32 %255, 7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.174, i32 noundef %254, i32 noundef %256) #7
  br label %257

257:                                              ; preds = %249, %245
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #7
  %258 = getelementptr inbounds %struct.bdisp_node, ptr %12, i32 0, i32 34
  %259 = load i32, ptr %258, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.112, i32 noundef %259) #7
  %260 = getelementptr inbounds %struct.bdisp_node, ptr %12, i32 0, i32 35
  %261 = load i32, ptr %260, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.113, i32 noundef %261) #7
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.114) #7
  %262 = getelementptr inbounds %struct.bdisp_node, ptr %12, i32 0, i32 44
  %263 = load i32, ptr %262, align 4
  %264 = getelementptr inbounds %struct.bdisp_node, ptr %12, i32 0, i32 45
  %265 = load i32, ptr %264, align 4
  %266 = getelementptr inbounds %struct.bdisp_node, ptr %12, i32 0, i32 46
  %267 = load i32, ptr %266, align 4
  %268 = getelementptr inbounds %struct.bdisp_node, ptr %12, i32 0, i32 47
  %269 = load i32, ptr %268, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.175, i32 noundef %263) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.176, i32 noundef %265) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.177, i32 noundef %267) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.178, i32 noundef %269) #7
  %270 = or i32 %265, %263
  %271 = or i32 %270, %267
  %272 = or i32 %271, %269
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %257
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #7
  br label %294

275:                                              ; preds = %257
  %276 = icmp eq i32 %263, 236882926
  %277 = icmp eq i32 %265, 138544153
  %278 = and i1 %276, %277
  %279 = icmp eq i32 %267, -77671311
  %280 = and i1 %278, %279
  %281 = icmp eq i32 %269, 134234240
  %282 = and i1 %280, %281
  br i1 %282, label %283, label %284

283:                                              ; preds = %275
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.179) #7
  br label %294

284:                                              ; preds = %275
  %285 = icmp eq i32 %263, 858040320
  %286 = icmp eq i32 %265, -435901540
  %287 = and i1 %285, %286
  %288 = icmp eq i32 %267, 305495
  %289 = and i1 %287, %288
  %290 = icmp eq i32 %269, 840048363
  %291 = and i1 %289, %290
  br i1 %291, label %292, label %293

292:                                              ; preds = %284
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.180) #7
  br label %294

293:                                              ; preds = %284
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.181) #7
  br label %294

294:                                              ; preds = %293, %292, %283, %274
  %295 = icmp eq i32 %10, 3
  br i1 %295, label %300, label %296

296:                                              ; preds = %294
  %297 = add nuw nsw i32 %10, 1
  %298 = load i32, ptr %12, align 4
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %9

300:                                              ; preds = %296, %294, %9, %8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bdisp_dbg_dump_sty(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.157, ptr noundef %3, i32 noundef %1) #7
  %5 = icmp ne i32 %2, 0
  %6 = icmp ne ptr %3, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %74

8:                                                ; preds = %4
  %9 = tail call i32 @strlen(ptr noundef nonnull %3)
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %74, label %11

11:                                               ; preds = %8
  %12 = add i32 %9, -1
  %13 = getelementptr i8, ptr %3, i32 %12
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, 49
  %16 = icmp eq i8 %14, 51
  %17 = and i32 %1, 65535
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.141, i32 noundef %17) #7
  %18 = lshr i32 %1, 16
  %19 = and i32 %18, 31
  switch i32 %19, label %25 [
    i32 0, label %26
    i32 1, label %20
    i32 2, label %21
    i32 5, label %22
    i32 22, label %23
    i32 30, label %24
  ]

20:                                               ; preds = %11
  br label %26

21:                                               ; preds = %11
  br label %26

22:                                               ; preds = %11
  br label %26

23:                                               ; preds = %11
  br label %26

24:                                               ; preds = %11
  br label %26

25:                                               ; preds = %11
  br label %26

26:                                               ; preds = %25, %24, %23, %22, %21, %20, %11
  %27 = phi ptr [ @.str.148, %25 ], [ @.str.147, %24 ], [ @.str.146, %23 ], [ @.str.160, %22 ], [ @.str.144, %21 ], [ @.str.143, %20 ], [ @.str.142, %11 ]
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %27) #7
  %28 = and i32 %1, 2097152
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i1 true, i1 %16
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.149) #7
  br label %32

32:                                               ; preds = %31, %26
  %33 = and i32 %1, 4194304
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i1 true, i1 %16
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.161) #7
  br label %37

37:                                               ; preds = %36, %32
  %38 = and i32 %1, 8388608
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i1 true, i1 %15
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.151) #7
  br label %42

42:                                               ; preds = %41, %37
  %43 = and i32 %1, 16777216
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.152) #7
  br label %46

46:                                               ; preds = %45, %42
  %47 = and i32 %1, 33554432
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.153) #7
  br label %50

50:                                               ; preds = %49, %46
  %51 = and i32 %1, 67108864
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  %54 = add i8 %14, -49
  %55 = icmp ult i8 %54, 2
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.162) #7
  br label %57

57:                                               ; preds = %56, %53
  br i1 %16, label %72, label %58

58:                                               ; preds = %57, %50
  %59 = and i32 %1, 268435456
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, i1 true, i1 %16
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.164) #7
  br label %63

63:                                               ; preds = %62, %58
  %64 = and i32 %1, 536870912
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %65, i1 true, i1 %16
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.165) #7
  br label %68

68:                                               ; preds = %67, %63
  %69 = and i32 %1, 1073741824
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %70, i1 true, i1 %16
  br i1 %71, label %74, label %72

72:                                               ; preds = %68, %57
  %73 = phi ptr [ @.str.163, %57 ], [ @.str.156, %68 ]
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %73) #7
  br label %74

74:                                               ; preds = %72, %68, %8, %4
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @last_nodes_raw_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @last_nodes_raw_show, ptr noundef %4) #7
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @last_nodes_raw_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr %struct.bdisp_dev, ptr %4, i32 0, i32 14, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.79) #7
  br label %62

9:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.80, i32 noundef 0) #7
  br label %10

10:                                               ; preds = %10, %9
  %11 = phi i32 [ 0, %9 ], [ %15, %10 ]
  %12 = phi ptr [ %6, %9 ], [ %13, %10 ]
  %13 = getelementptr i32, ptr %12, i32 1
  %14 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.182, i32 noundef %14) #7
  %15 = add nuw nsw i32 %11, 1
  %16 = icmp eq i32 %15, 57
  br i1 %16, label %17, label %10

17:                                               ; preds = %10
  %18 = load i32, ptr %6, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %62, label %20

20:                                               ; preds = %17
  %21 = getelementptr %struct.bdisp_dev, ptr %4, i32 0, i32 14, i32 1, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %62, label %24

24:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.80, i32 noundef 1) #7
  br label %25

25:                                               ; preds = %25, %24
  %26 = phi i32 [ 0, %24 ], [ %30, %25 ]
  %27 = phi ptr [ %22, %24 ], [ %28, %25 ]
  %28 = getelementptr i32, ptr %27, i32 1
  %29 = load i32, ptr %27, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.182, i32 noundef %29) #7
  %30 = add nuw nsw i32 %26, 1
  %31 = icmp eq i32 %30, 57
  br i1 %31, label %32, label %25

32:                                               ; preds = %25
  %33 = load i32, ptr %22, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %62, label %35

35:                                               ; preds = %32
  %36 = getelementptr %struct.bdisp_dev, ptr %4, i32 0, i32 14, i32 1, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %62, label %39

39:                                               ; preds = %35
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.80, i32 noundef 2) #7
  br label %40

40:                                               ; preds = %40, %39
  %41 = phi i32 [ 0, %39 ], [ %45, %40 ]
  %42 = phi ptr [ %37, %39 ], [ %43, %40 ]
  %43 = getelementptr i32, ptr %42, i32 1
  %44 = load i32, ptr %42, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.182, i32 noundef %44) #7
  %45 = add nuw nsw i32 %41, 1
  %46 = icmp eq i32 %45, 57
  br i1 %46, label %47, label %40

47:                                               ; preds = %40
  %48 = load i32, ptr %37, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %47
  %51 = getelementptr %struct.bdisp_dev, ptr %4, i32 0, i32 14, i32 1, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %50
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.80, i32 noundef 3) #7
  br label %55

55:                                               ; preds = %55, %54
  %56 = phi i32 [ 0, %54 ], [ %60, %55 ]
  %57 = phi ptr [ %52, %54 ], [ %58, %55 ]
  %58 = getelementptr i32, ptr %57, i32 1
  %59 = load i32, ptr %57, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.182, i32 noundef %59) #7
  %60 = add nuw nsw i32 %56, 1
  %61 = icmp eq i32 %60, 57
  br i1 %61, label %62, label %55

62:                                               ; preds = %55, %50, %47, %35, %32, %20, %17, %8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @last_request_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @last_request_show, ptr noundef %4) #7
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @last_request_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 14, i32 2, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %75, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 14, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 14, i32 2, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 14, i32 2, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 14, i32 2, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 14, i32 2, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 14, i32 2, i32 0, i32 7, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 14, i32 2, i32 0, i32 7, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 14, i32 2, i32 0, i32 7, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 14, i32 2, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 14, i32 2, i32 1, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 14, i32 2, i32 1, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 14, i32 2, i32 1, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 14, i32 2, i32 1, i32 7
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 14, i32 2, i32 1, i32 7, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 14, i32 2, i32 1, i32 7, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 14, i32 2, i32 1, i32 7, i32 3
  %40 = load i32, ptr %39, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.184, i32 noundef %6) #7
  %41 = inttoptr i32 %14 to ptr
  %42 = load i32, ptr %41, align 4
  switch i32 %42, label %50 [
    i32 842093913, label %51
    i32 842094158, label %43
    i32 1346520914, label %46
    i32 859981650, label %47
    i32 875713112, label %48
    i32 875713089, label %49
  ]

43:                                               ; preds = %8
  %44 = icmp eq i32 %16, 4
  %45 = select i1 %44, ptr @.str.191, ptr @.str.192
  br label %51

46:                                               ; preds = %8
  br label %51

47:                                               ; preds = %8
  br label %51

48:                                               ; preds = %8
  br label %51

49:                                               ; preds = %8
  br label %51

50:                                               ; preds = %8
  br label %51

51:                                               ; preds = %50, %49, %48, %47, %46, %43, %8
  %52 = phi ptr [ @.str.197, %50 ], [ @.str.196, %49 ], [ @.str.195, %48 ], [ @.str.194, %47 ], [ @.str.193, %46 ], [ @.str.190, %8 ], [ %45, %43 ]
  %53 = inttoptr i32 %30 to ptr
  %54 = load i32, ptr %53, align 4
  switch i32 %54, label %62 [
    i32 842093913, label %63
    i32 842094158, label %55
    i32 1346520914, label %58
    i32 859981650, label %59
    i32 875713112, label %60
    i32 875713089, label %61
  ]

55:                                               ; preds = %51
  %56 = icmp eq i32 %32, 4
  %57 = select i1 %56, ptr @.str.191, ptr @.str.192
  br label %63

58:                                               ; preds = %51
  br label %63

59:                                               ; preds = %51
  br label %63

60:                                               ; preds = %51
  br label %63

61:                                               ; preds = %51
  br label %63

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %61, %60, %59, %58, %55, %51
  %64 = phi ptr [ @.str.197, %62 ], [ @.str.196, %61 ], [ @.str.195, %60 ], [ @.str.194, %59 ], [ @.str.193, %58 ], [ @.str.190, %51 ], [ %57, %55 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.185, ptr noundef nonnull %52, ptr noundef nonnull %64) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.186, i32 noundef %22, i32 noundef %24, i32 noundef %18, i32 noundef %20, i32 noundef %38, i32 noundef %40, i32 noundef %34, i32 noundef %36) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.187, i32 noundef %10, i32 noundef %12, i32 noundef %26, i32 noundef %28) #7
  %65 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 14, i32 2, i32 2
  %66 = load i8, ptr %65, align 4
  %67 = and i8 %66, 1
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %63
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.188) #7
  %70 = load i8, ptr %65, align 4
  br label %71

71:                                               ; preds = %69, %63
  %72 = phi i8 [ %70, %69 ], [ %66, %63 ]
  %73 = and i8 %72, 2
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %71, %2
  %76 = phi ptr [ @.str.183, %2 ], [ @.str.189, %71 ]
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %76) #7
  br label %77

77:                                               ; preds = %75, %71
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @perf_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @perf_show, ptr noundef %4) #7
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @perf_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 14, i32 2, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.183) #7
  br label %48

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 14, i32 7
  %11 = load i64, ptr %10, align 8
  %12 = sext i32 %6 to i64
  %13 = tail call i64 @div64_s64(i64 noundef %11, i64 noundef %12) #7
  %14 = icmp sgt i64 %13, 1000000
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = trunc i64 %13 to i32
  %17 = sdiv i32 1000000, %16
  br label %18

18:                                               ; preds = %15, %9
  %19 = phi i32 [ %17, %15 ], [ 0, %9 ]
  %20 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 14, i32 5
  %21 = load i64, ptr %20, align 8
  %22 = icmp sgt i64 %21, 1000000
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = trunc i64 %21 to i32
  %25 = sdiv i32 1000000, %24
  br label %26

26:                                               ; preds = %23, %18
  %27 = phi i32 [ %25, %23 ], [ 0, %18 ]
  %28 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 14, i32 6
  %29 = load i64, ptr %28, align 8
  %30 = icmp sgt i64 %29, 1000000
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = trunc i64 %29 to i32
  %33 = sdiv i32 1000000, %32
  br label %34

34:                                               ; preds = %31, %26
  %35 = phi i32 [ %33, %31 ], [ 0, %26 ]
  %36 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 14, i32 4
  %37 = load i64, ptr %36, align 8
  %38 = icmp sgt i64 %37, 1000000
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = trunc i64 %37 to i32
  %41 = sdiv i32 1000000, %40
  br label %42

42:                                               ; preds = %39, %34
  %43 = phi i32 [ %41, %39 ], [ 0, %34 ]
  %44 = load i32, ptr %5, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.198, i32 noundef %44) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.199, i64 noundef %13, i32 noundef %19) #7
  %45 = load i64, ptr %20, align 8
  %46 = load i64, ptr %28, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.200, i64 noundef %45, i32 noundef %27, i64 noundef %46, i32 noundef %35) #7
  %47 = load i64, ptr %36, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.201, i64 noundef %47, i32 noundef %43) #7
  br label %48

48:                                               ; preds = %42, %8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }

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
!8 = !{i64 717777, i64 717804, i64 717826, i64 717854}
!9 = !{i64 718185, i64 718212, i64 718245, i64 718266, i64 718293, i64 718319}
!10 = !{!"auto-init"}
!11 = !{i64 2148353431}
!12 = !{i64 852538, i64 2148342509, i64 2148342535, i64 2148342582, i64 2148342604, i64 2148342632, i64 2148342652}
!13 = !{i64 839107, i64 839132, i64 839154, i64 839170, i64 839182, i64 839202, i64 839226, i64 839242, i64 839254}
!14 = !{i64 2148353557}
!15 = !{i64 5968926}
!16 = !{i64 2155016467}
!17 = !{i64 2155016894}
!18 = !{i64 2155017322}
!19 = !{i64 2155017753}
!20 = !{i64 2155018183}
!21 = !{i64 2155018614}
!22 = !{i64 2155019045}
!23 = !{i64 2155019473}
!24 = !{i64 2155019907}
!25 = !{i64 2155020341}
!26 = !{i64 2155020775}
!27 = !{i64 2155021209}
!28 = !{i64 2155021643}
!29 = !{i64 2155022077}
!30 = !{i64 2155022511}
!31 = !{i64 2155022945}
!32 = !{i64 2155023379}
!33 = !{i64 2155023813}
!34 = !{i64 2155024247}
!35 = !{i64 2155024681}
!36 = !{i64 2155025114}
!37 = !{i64 2155025547}
!38 = !{i64 2155025980}
!39 = !{i64 2155026413}
!40 = !{i64 2155026840}
!41 = !{i64 2155027267}
!42 = !{i64 2155027694}
!43 = !{i64 2155028121}
!44 = !{i64 2155028548}
!45 = !{i64 2155028975}
!46 = !{i64 2155029402}
!47 = !{i64 2155029829}
!48 = !{i64 2155030257}
!49 = !{i64 2155030685}
!50 = !{i64 2155031113}
!51 = !{i64 2155031541}
!52 = !{i64 2155031969}
!53 = !{i64 2155032397}
!54 = !{i64 2155032825}
!55 = !{i64 2155033253}
!56 = !{i64 2155033681}
!57 = !{i64 2155034109}
!58 = !{i64 2155034537}
!59 = !{i64 2155034965}
!60 = !{i64 2155035392}
!61 = !{i64 2155035819}
!62 = !{i64 2155036246}
!63 = !{i64 2155036673}
!64 = !{i64 2155037102}
!65 = !{i64 2155037531}
!66 = !{i64 2155037960}
!67 = !{i64 2155038389}
!68 = !{i64 2155038818}
!69 = !{i64 2155039247}
!70 = !{i64 2155039676}
!71 = !{i64 2155040105}
!72 = !{i64 2155040534}
!73 = !{i64 2155040963}
!74 = !{i64 2155041392}
!75 = !{i64 2155041821}
!76 = !{i64 2155042248}
!77 = !{i64 2155042625}
!78 = !{i64 2155043002}
!79 = !{i64 2155043379}
!80 = !{i64 2155043756}
