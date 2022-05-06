; ModuleID = '/llk/IR/drivers/usb/musb/musb_debugfs.c_pt.bc'
source_filename = "../drivers/usb/musb/musb_debugfs.c"
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
%struct.musb_register_map = type { ptr, i32, i32 }
%struct.musb = type { %struct.spinlock, %struct.spinlock, %struct.musb_io, ptr, %struct.musb_context_registers, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i16, i16, i16, i32, i32, i8, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.timer_list, %struct.notifier_block, ptr, ptr, ptr, ptr, i8, i16, i16, ptr, ptr, i32, i8, [16 x %struct.musb_hw_ep], i16, i16, i8, ptr, i8, i32, i8, i32, i8, i32, i32, [3 x i8], i8, i8, i16, i8, %struct.usb_gadget, ptr, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.musb_io = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.musb_context_registers = type { i8, i8, i16, i8, i8, i8, i8, i8, i32, [16 x %struct.musb_csr_regs] }
%struct.musb_csr_regs = type { i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.musb_hw_ep = type { ptr, ptr, ptr, i8, i8, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i8, i8, %struct.musb_ep, %struct.musb_ep }
%struct.musb_ep = type { %struct.usb_ep, [12 x i8], ptr, ptr, i8, i8, i8, i16, ptr, ptr, %struct.list_head, i8, i8, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.66, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.67, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.68, ptr, %struct.address_space, %struct.list_head, %union.anon.69, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.66 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.67 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.68 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.69 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }

@usb_debug_root = external dso_local local_unnamed_addr global ptr, align 4
@.str = private unnamed_addr constant [8 x i8] c"regdump\00", align 1
@musb_regdump_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @musb_regdump_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"testmode\00", align 1
@musb_test_mode_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @musb_test_mode_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @musb_test_mode_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"softconnect\00", align 1
@musb_softconnect_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @musb_softconnect_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @musb_softconnect_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.3 = private unnamed_addr constant [28 x i8] c"MUSB (M)HDRC Register Dump\0A\00", align 1
@musb_regmap = internal unnamed_addr constant [55 x %struct.musb_register_map] [%struct.musb_register_map { ptr @.str.7, i32 0, i32 8 }, %struct.musb_register_map { ptr @.str.8, i32 1, i32 8 }, %struct.musb_register_map { ptr @.str.9, i32 12, i32 16 }, %struct.musb_register_map { ptr @.str.10, i32 14, i32 8 }, %struct.musb_register_map { ptr @.str.11, i32 15, i32 8 }, %struct.musb_register_map { ptr @.str.12, i32 0, i32 16 }, %struct.musb_register_map { ptr @.str.13, i32 2, i32 16 }, %struct.musb_register_map { ptr @.str.14, i32 4, i32 16 }, %struct.musb_register_map { ptr @.str.15, i32 6, i32 16 }, %struct.musb_register_map { ptr @.str.16, i32 8, i32 16 }, %struct.musb_register_map { ptr @.str.17, i32 8, i32 16 }, %struct.musb_register_map { ptr @.str.18, i32 6, i32 16 }, %struct.musb_register_map { ptr @.str.19, i32 11, i32 8 }, %struct.musb_register_map { ptr @.str.20, i32 96, i32 8 }, %struct.musb_register_map { ptr @.str.21, i32 104, i32 32 }, %struct.musb_register_map { ptr @.str.22, i32 105, i32 16 }, %struct.musb_register_map { ptr @.str.23, i32 122, i32 8 }, %struct.musb_register_map { ptr @.str.24, i32 123, i32 8 }, %struct.musb_register_map { ptr @.str.25, i32 124, i32 8 }, %struct.musb_register_map { ptr @.str.26, i32 125, i32 8 }, %struct.musb_register_map { ptr @.str.27, i32 126, i32 8 }, %struct.musb_register_map { ptr @.str.28, i32 127, i32 8 }, %struct.musb_register_map { ptr @.str.29, i32 516, i32 16 }, %struct.musb_register_map { ptr @.str.30, i32 520, i32 32 }, %struct.musb_register_map { ptr @.str.31, i32 524, i32 32 }, %struct.musb_register_map { ptr @.str.32, i32 532, i32 16 }, %struct.musb_register_map { ptr @.str.33, i32 536, i32 32 }, %struct.musb_register_map { ptr @.str.34, i32 540, i32 32 }, %struct.musb_register_map { ptr @.str.35, i32 548, i32 16 }, %struct.musb_register_map { ptr @.str.36, i32 552, i32 32 }, %struct.musb_register_map { ptr @.str.37, i32 556, i32 32 }, %struct.musb_register_map { ptr @.str.38, i32 564, i32 16 }, %struct.musb_register_map { ptr @.str.39, i32 568, i32 32 }, %struct.musb_register_map { ptr @.str.40, i32 572, i32 32 }, %struct.musb_register_map { ptr @.str.41, i32 580, i32 16 }, %struct.musb_register_map { ptr @.str.42, i32 584, i32 32 }, %struct.musb_register_map { ptr @.str.43, i32 588, i32 32 }, %struct.musb_register_map { ptr @.str.44, i32 596, i32 16 }, %struct.musb_register_map { ptr @.str.45, i32 600, i32 32 }, %struct.musb_register_map { ptr @.str.46, i32 604, i32 32 }, %struct.musb_register_map { ptr @.str.47, i32 612, i32 16 }, %struct.musb_register_map { ptr @.str.48, i32 616, i32 32 }, %struct.musb_register_map { ptr @.str.49, i32 620, i32 32 }, %struct.musb_register_map { ptr @.str.50, i32 628, i32 16 }, %struct.musb_register_map { ptr @.str.51, i32 632, i32 32 }, %struct.musb_register_map { ptr @.str.52, i32 636, i32 32 }, %struct.musb_register_map { ptr @.str.53, i32 15, i32 8 }, %struct.musb_register_map { ptr @.str.54, i32 97, i32 8 }, %struct.musb_register_map { ptr @.str.55, i32 98, i32 8 }, %struct.musb_register_map { ptr @.str.56, i32 99, i32 8 }, %struct.musb_register_map { ptr @.str.57, i32 100, i32 16 }, %struct.musb_register_map { ptr @.str.58, i32 102, i32 16 }, %struct.musb_register_map { ptr @.str.59, i32 120, i32 8 }, %struct.musb_register_map { ptr @.str.60, i32 121, i32 8 }, %struct.musb_register_map zeroinitializer], align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"%-12s: %02x\0A\00", align 1
@musb_readb = external dso_local local_unnamed_addr global ptr, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"%-12s: %04x\0A\00", align 1
@musb_readw = external dso_local local_unnamed_addr global ptr, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"%-12s: %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"FAddr\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Power\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Frame\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"Index\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"Testmode\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"TxMaxPp\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"TxCSRp\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"RxMaxPp\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"RxCSR\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"RxCount\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"IntrRxE\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"IntrTxE\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"IntrUsbE\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"DevCtl\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"VControl\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"HWVers\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"LinkInfo\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"VPLen\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"HS_EOF1\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"FS_EOF1\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"LS_EOF1\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"SOFT_RST\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"DMA_CNTLch0\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"DMA_ADDRch0\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"DMA_COUNTch0\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"DMA_CNTLch1\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"DMA_ADDRch1\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"DMA_COUNTch1\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"DMA_CNTLch2\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"DMA_ADDRch2\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"DMA_COUNTch2\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"DMA_CNTLch3\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"DMA_ADDRch3\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"DMA_COUNTch3\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"DMA_CNTLch4\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"DMA_ADDRch4\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"DMA_COUNTch4\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"DMA_CNTLch5\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"DMA_ADDRch5\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"DMA_COUNTch5\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"DMA_CNTLch6\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"DMA_ADDRch6\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"DMA_COUNTch6\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"DMA_CNTLch7\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"DMA_ADDRch7\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"DMA_COUNTch7\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"ConfigData\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"BabbleCtl\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"TxFIFOsz\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"RxFIFOsz\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"TxFIFOadd\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"RxFIFOadd\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"EPInfo\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"RAMInfo\00", align 1
@.str.61 = private unnamed_addr constant [79 x i8] c"Error: test mode is already set. Please do USB Bus Reset to start a new test.\0A\00", align 1
@.str.62 = private unnamed_addr constant [22 x i8] c"force host full-speed\00", align 1
@.str.63 = private unnamed_addr constant [22 x i8] c"force host high-speed\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"force host\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"fifo access\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"force full-speed\00", align 1
@.str.67 = private unnamed_addr constant [17 x i8] c"force high-speed\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"test packet\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"test K\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"test J\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"test SE0 NAK\00", align 1
@musb_writeb = external dso_local local_unnamed_addr global ptr, align 4
@.str.74 = private unnamed_addr constant [23 x i8] c"force host full-speed\0A\00", align 1
@.str.75 = private unnamed_addr constant [23 x i8] c"force host high-speed\0A\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"force host\0A\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"fifo access\0A\00", align 1
@.str.78 = private unnamed_addr constant [18 x i8] c"force full-speed\0A\00", align 1
@.str.79 = private unnamed_addr constant [18 x i8] c"force high-speed\0A\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"test packet\0A\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"test K\0A\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"test J\0A\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"test SE0 NAK\0A\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @musb_init_debugfs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 4
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi ptr [ %8, %7 ], [ %5, %1 ]
  %11 = load ptr, ptr @usb_debug_root, align 4
  %12 = tail call ptr @debugfs_create_dir(ptr noundef %10, ptr noundef %11) #10
  %13 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 57
  store ptr %12, ptr %13, align 8
  %14 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef %12, ptr noundef %0, ptr noundef nonnull @musb_regdump_fops) #10
  %15 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 420, ptr noundef %12, ptr noundef %0, ptr noundef nonnull @musb_test_mode_fops) #10
  %16 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 420, ptr noundef %12, ptr noundef %0, ptr noundef nonnull @musb_softconnect_fops) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @musb_exit_debugfs(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 57
  %3 = load ptr, ptr %2, align 8
  tail call void @debugfs_remove(ptr noundef %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @musb_regdump_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @musb_regdump_show, ptr noundef %4) #10
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @musb_regdump_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3) #10
  %5 = getelementptr inbounds %struct.musb, ptr %4, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #10
  %8 = getelementptr inbounds %struct.musb, ptr %4, i32 0, i32 27
  br label %9

9:                                                ; preds = %36, %2
  %10 = phi i32 [ 0, %2 ], [ %37, %36 ]
  %11 = getelementptr [55 x %struct.musb_register_map], ptr @musb_regmap, i32 0, i32 %10
  %12 = getelementptr [55 x %struct.musb_register_map], ptr @musb_regmap, i32 0, i32 %10, i32 2
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %36 [
    i32 8, label %14
    i32 16, label %22
    i32 32, label %30
  ]

14:                                               ; preds = %9
  %15 = load ptr, ptr %11, align 4
  %16 = load ptr, ptr @musb_readb, align 4
  %17 = load ptr, ptr %8, align 8
  %18 = getelementptr [55 x %struct.musb_register_map], ptr @musb_regmap, i32 0, i32 %10, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = tail call zeroext i8 %16(ptr noundef %17, i32 noundef %19) #10
  %21 = zext i8 %20 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %15, i32 noundef %21) #10
  br label %36

22:                                               ; preds = %9
  %23 = load ptr, ptr %11, align 4
  %24 = load ptr, ptr @musb_readw, align 4
  %25 = load ptr, ptr %8, align 8
  %26 = getelementptr [55 x %struct.musb_register_map], ptr @musb_regmap, i32 0, i32 %10, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = tail call zeroext i16 %24(ptr noundef %25, i32 noundef %27) #10
  %29 = zext i16 %28 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %23, i32 noundef %29) #10
  br label %36

30:                                               ; preds = %9
  %31 = load ptr, ptr %11, align 4
  %32 = load ptr, ptr %8, align 8
  %33 = getelementptr [55 x %struct.musb_register_map], ptr @musb_regmap, i32 0, i32 %10, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = tail call i32 @musb_readl(ptr noundef %32, i32 noundef %34) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %31, i32 noundef %35) #10
  br label %36

36:                                               ; preds = %30, %22, %14, %9
  %37 = add nuw nsw i32 %10, 1
  %38 = icmp eq i32 %37, 55
  br i1 %38, label %39, label %9

39:                                               ; preds = %36
  %40 = load ptr, ptr %5, align 8
  %41 = tail call i64 @ktime_get_mono_fast_ns() #10
  %42 = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 11, i32 22
  store volatile i64 %41, ptr %42, align 8
  %43 = load ptr, ptr %5, align 8
  %44 = tail call i32 @__pm_runtime_suspend(ptr noundef %43, i32 noundef 13) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_readl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @musb_test_mode_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca [24 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.seq_file, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %10 = tail call i32 @llvm.umin.i32(i32 %2, i32 23)
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %10, i32 -1090519040) #11, !srcloc !8
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br i1 %13, label %14, label %21, !prof !9

14:                                               ; preds = %4
  %15 = tail call ptr @llvm.thread.pointer() #10
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %16) #12, !srcloc !10
  %18 = and i32 %17, -13
  %19 = or i32 %18, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #10, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %20 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %10) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #10, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  br label %21

21:                                               ; preds = %14, %4
  %22 = phi i32 [ %20, %14 ], [ %10, %4 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24, !prof !9

24:                                               ; preds = %21
  %25 = sub i32 %10, %22
  %26 = getelementptr i8, ptr %5, i32 %25
  call void @llvm.memset.p0.i32(ptr align 1 %26, i8 0, i32 %22, i1 false) #10
  br label %75

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.musb, ptr %9, i32 0, i32 25
  %29 = load ptr, ptr %28, align 8
  %30 = call i32 @__pm_runtime_resume(ptr noundef %29, i32 noundef 4) #10
  %31 = load ptr, ptr @musb_readb, align 4
  %32 = getelementptr inbounds %struct.musb, ptr %9, i32 0, i32 27
  %33 = load ptr, ptr %32, align 8
  %34 = call zeroext i8 %31(ptr noundef %33, i32 noundef 15) #10
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %27
  %37 = load ptr, ptr %28, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.61) #13
  br label %69

38:                                               ; preds = %27
  %39 = call i32 @bcmp(ptr noundef nonnull dereferenceable(21) %5, ptr noundef nonnull dereferenceable(21) @.str.62, i32 21)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %65, label %41

41:                                               ; preds = %38
  %42 = call i32 @bcmp(ptr noundef nonnull dereferenceable(21) %5, ptr noundef nonnull dereferenceable(21) @.str.63, i32 21)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %65, label %44

44:                                               ; preds = %41
  %45 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %5, ptr noundef nonnull dereferenceable(10) @.str.64, i32 10)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %65, label %47

47:                                               ; preds = %44
  %48 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %5, ptr noundef nonnull dereferenceable(11) @.str.65, i32 11)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %65, label %50

50:                                               ; preds = %47
  %51 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %5, ptr noundef nonnull dereferenceable(16) @.str.66, i32 16)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %50
  %54 = call fastcc zeroext i1 @strstarts(ptr noundef nonnull %5, ptr noundef nonnull @.str.67)
  br i1 %54, label %65, label %55

55:                                               ; preds = %53
  %56 = call fastcc zeroext i1 @strstarts(ptr noundef nonnull %5, ptr noundef nonnull @.str.68)
  br i1 %56, label %57, label %58

57:                                               ; preds = %55
  call void @musb_load_testpacket(ptr noundef %9) #10
  br label %65

58:                                               ; preds = %55
  %59 = call fastcc zeroext i1 @strstarts(ptr noundef nonnull %5, ptr noundef nonnull @.str.69)
  br i1 %59, label %65, label %60

60:                                               ; preds = %58
  %61 = call fastcc zeroext i1 @strstarts(ptr noundef nonnull %5, ptr noundef nonnull @.str.70)
  br i1 %61, label %65, label %62

62:                                               ; preds = %60
  %63 = call fastcc zeroext i1 @strstarts(ptr noundef nonnull %5, ptr noundef nonnull @.str.71)
  %64 = zext i1 %63 to i8
  br label %65

65:                                               ; preds = %62, %60, %58, %57, %53, %50, %47, %44, %41, %38
  %66 = phi i8 [ 8, %57 ], [ -96, %38 ], [ -112, %41 ], [ -128, %44 ], [ 64, %47 ], [ 32, %50 ], [ 16, %53 ], [ 4, %58 ], [ 2, %60 ], [ %64, %62 ]
  %67 = load ptr, ptr @musb_writeb, align 4
  %68 = load ptr, ptr %32, align 8
  call void %67(ptr noundef %68, i32 noundef 15, i8 noundef zeroext %66) #10
  br label %69

69:                                               ; preds = %65, %36
  %70 = load ptr, ptr %28, align 8
  %71 = call i64 @ktime_get_mono_fast_ns() #10
  %72 = getelementptr inbounds %struct.device, ptr %70, i32 0, i32 11, i32 22
  store volatile i64 %71, ptr %72, align 8
  %73 = load ptr, ptr %28, align 8
  %74 = call i32 @__pm_runtime_suspend(ptr noundef %73, i32 noundef 13) #10
  br label %75

75:                                               ; preds = %69, %24
  %76 = phi i32 [ %2, %69 ], [ -14, %24 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @musb_test_mode_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @musb_test_mode_show, ptr noundef %4) #10
  ret i32 %5
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly inlinehint mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @strstarts(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = tail call i32 @strlen(ptr noundef %1)
  %4 = tail call i32 @strncmp(ptr noundef %0, ptr noundef %1, i32 noundef %3)
  %5 = icmp eq i32 %4, 0
  ret i1 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_load_testpacket(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @musb_test_mode_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.musb, ptr %4, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #10
  %8 = load ptr, ptr @musb_readb, align 4
  %9 = getelementptr inbounds %struct.musb, ptr %4, i32 0, i32 27
  %10 = load ptr, ptr %9, align 8
  %11 = tail call zeroext i8 %8(ptr noundef %10, i32 noundef 15) #10
  %12 = load ptr, ptr %5, align 8
  %13 = tail call i64 @ktime_get_mono_fast_ns() #10
  %14 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 11, i32 22
  store volatile i64 %13, ptr %14, align 8
  %15 = load ptr, ptr %5, align 8
  %16 = tail call i32 @__pm_runtime_suspend(ptr noundef %15, i32 noundef 13) #10
  switch i8 %11, label %28 [
    i8 -96, label %26
    i8 -112, label %17
    i8 -128, label %18
    i8 64, label %19
    i8 32, label %20
    i8 16, label %21
    i8 8, label %22
    i8 4, label %23
    i8 2, label %24
    i8 1, label %25
  ]

17:                                               ; preds = %2
  br label %26

18:                                               ; preds = %2
  br label %26

19:                                               ; preds = %2
  br label %26

20:                                               ; preds = %2
  br label %26

21:                                               ; preds = %2
  br label %26

22:                                               ; preds = %2
  br label %26

23:                                               ; preds = %2
  br label %26

24:                                               ; preds = %2
  br label %26

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %25, %24, %23, %22, %21, %20, %19, %18, %17, %2
  %27 = phi ptr [ @.str.75, %17 ], [ @.str.77, %19 ], [ @.str.79, %21 ], [ @.str.81, %23 ], [ @.str.83, %25 ], [ @.str.82, %24 ], [ @.str.80, %22 ], [ @.str.78, %20 ], [ @.str.76, %18 ], [ @.str.74, %2 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull %27) #10
  br label %28

28:                                               ; preds = %26, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @musb_softconnect_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca [2 x i8], align 2
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.seq_file, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i16 0, ptr %5, align 2
  %10 = icmp ne i32 %2, 0
  %11 = zext i1 %10 to i32
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %11, i32 -1090519040) #11, !srcloc !8
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22, !prof !9

15:                                               ; preds = %4
  %16 = tail call ptr @llvm.thread.pointer() #10
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %17) #12, !srcloc !10
  %19 = and i32 %18, -13
  %20 = or i32 %19, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #10, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  %21 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %11) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #10, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !12
  br label %22

22:                                               ; preds = %15, %4
  %23 = phi i32 [ %21, %15 ], [ %11, %4 ]
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25, !prof !9

25:                                               ; preds = %22
  %26 = sub i32 %11, %23
  %27 = getelementptr i8, ptr %5, i32 %26
  call void @llvm.memset.p0.i32(ptr align 1 %27, i8 0, i32 %23, i1 false) #10
  br label %75

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.musb, ptr %9, i32 0, i32 25
  %30 = load ptr, ptr %29, align 8
  %31 = call i32 @__pm_runtime_resume(ptr noundef %30, i32 noundef 4) #10
  %32 = load i8, ptr %5, align 2
  switch i8 %32, label %69 [
    i8 48, label %33
    i8 49, label %47
  ]

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.musb, ptr %9, i32 0, i32 31
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.usb_phy, ptr %35, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.usb_otg, ptr %37, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 9
  br i1 %40, label %41, label %69

41:                                               ; preds = %33
  call void @musb_root_disconnect(ptr noundef %9) #10
  %42 = load ptr, ptr @musb_readb, align 4
  %43 = getelementptr inbounds %struct.musb, ptr %9, i32 0, i32 27
  %44 = load ptr, ptr %43, align 8
  %45 = call zeroext i8 %42(ptr noundef %44, i32 noundef 96) #10
  %46 = and i8 %45, -2
  br label %64

47:                                               ; preds = %28
  %48 = getelementptr inbounds %struct.musb, ptr %9, i32 0, i32 31
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.usb_phy, ptr %49, i32 0, i32 5
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.usb_otg, ptr %51, i32 0, i32 5
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 8
  br i1 %54, label %55, label %69

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.musb, ptr %9, i32 0, i32 4, i32 5
  %57 = load i8, ptr %56, align 2
  %58 = or i8 %57, 1
  store i8 %58, ptr %56, align 2
  %59 = load ptr, ptr @musb_readb, align 4
  %60 = getelementptr inbounds %struct.musb, ptr %9, i32 0, i32 27
  %61 = load ptr, ptr %60, align 8
  %62 = call zeroext i8 %59(ptr noundef %61, i32 noundef 96) #10
  %63 = or i8 %62, 1
  br label %64

64:                                               ; preds = %55, %41
  %65 = phi ptr [ %60, %55 ], [ %43, %41 ]
  %66 = phi i8 [ %63, %55 ], [ %46, %41 ]
  %67 = load ptr, ptr @musb_writeb, align 4
  %68 = load ptr, ptr %65, align 8
  call void %67(ptr noundef %68, i32 noundef 96, i8 noundef zeroext %66) #10
  br label %69

69:                                               ; preds = %64, %47, %33, %28
  %70 = load ptr, ptr %29, align 8
  %71 = call i64 @ktime_get_mono_fast_ns() #10
  %72 = getelementptr inbounds %struct.device, ptr %70, i32 0, i32 11, i32 22
  store volatile i64 %71, ptr %72, align 8
  %73 = load ptr, ptr %29, align 8
  %74 = call i32 @__pm_runtime_suspend(ptr noundef %73, i32 noundef 13) #10
  br label %75

75:                                               ; preds = %69, %25
  %76 = phi i32 [ %2, %69 ], [ -14, %25 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @musb_softconnect_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @musb_softconnect_show, ptr noundef %4) #10
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_root_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @musb_softconnect_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.musb, ptr %4, i32 0, i32 31
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_phy, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_otg, ptr %8, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, -2
  %12 = icmp eq i32 %11, 8
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.musb, ptr %4, i32 0, i32 25
  %15 = load ptr, ptr %14, align 8
  %16 = tail call i32 @__pm_runtime_resume(ptr noundef %15, i32 noundef 4) #10
  %17 = load ptr, ptr @musb_readb, align 4
  %18 = getelementptr inbounds %struct.musb, ptr %4, i32 0, i32 27
  %19 = load ptr, ptr %18, align 8
  %20 = tail call zeroext i8 %17(ptr noundef %19, i32 noundef 96) #10
  %21 = and i8 %20, 1
  %22 = zext i8 %21 to i32
  %23 = load ptr, ptr %14, align 8
  %24 = tail call i64 @ktime_get_mono_fast_ns() #10
  %25 = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 11, i32 22
  store volatile i64 %24, ptr %25, align 8
  %26 = load ptr, ptr %14, align 8
  %27 = tail call i32 @__pm_runtime_suspend(ptr noundef %26, i32 noundef 13) #10
  br label %28

28:                                               ; preds = %13, %2
  %29 = phi i32 [ %22, %13 ], [ -1, %2 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.86, i32 noundef %29) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly inlinehint mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind readonly }
attributes #13 = { cold nounwind }

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
!8 = !{i64 2151247671, i64 2151247696}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 3743783}
!11 = !{i64 3743980}
!12 = !{i64 2151229259}
