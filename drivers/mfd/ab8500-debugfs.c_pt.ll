; ModuleID = '/llk/IR/drivers/mfd/ab8500-debugfs.c_pt.bc'
source_filename = "../drivers/mfd/ab8500-debugfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ab8500_prcmu_ranges = type { i8, i8, ptr }
%struct.ab8500_reg_range = type { i8, i8, i8 }
%struct.hwreg_cfg = type { i32, i32, i32, i32, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ab8500 = type { ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, i32, ptr, i32, i8, ptr, ptr, ptr, [4 x i32], [4 x i32], ptr, ptr, i32, ptr, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.66 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.68 = type { ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"ab8500 register values:\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c" bank 0x%02X:\0A\00", align 1
@num_interrupt_lines = internal unnamed_addr global i32 0, align 4
@num_interrupts = internal unnamed_addr global [216 x i32] zeroinitializer, align 4
@__initcall__kmod_ab8500_debugfs__249_2096_ab8500_debug_init4 = internal global ptr @ab8500_debug_init, section ".initcall4.init", align 4
@debug_ranges = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"ab->read fail %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"  [0x%02X/0x%02X]: 0x%02X\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c" [0x%02X/0x%02X]: 0x%02X\0A\00", align 1
@ab8500_debug_driver = internal global %struct.platform_driver { ptr @ab8500_debug_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.5, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"ab8500-debug\00", align 1
@debug_bank = internal unnamed_addr global i32 0, align 4
@debug_address = internal unnamed_addr global i32 0, align 4
@num_irqs = internal unnamed_addr global i32 0, align 4
@irq_count = internal unnamed_addr global ptr null, align 4
@dev_attr = internal unnamed_addr global ptr null, align 4
@event_name = internal unnamed_addr global ptr null, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"IRQ_AB8500\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"AB8500 irq not found, err %d\0A\00", align 1
@irq_first = internal unnamed_addr global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"IRQ_FIRST\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"IRQ_LAST\00", align 1
@irq_last = internal unnamed_addr global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"ab8500\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"all-bank-registers\00", align 1
@ab8500_bank_registers_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ab8500_bank_registers_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"all-banks\00", align 1
@ab8500_all_banks_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ab8500_all_banks_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"register-bank\00", align 1
@ab8500_bank_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @ab8500_bank_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ab8500_bank_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"register-address\00", align 1
@ab8500_address_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @ab8500_address_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ab8500_address_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.15 = private unnamed_addr constant [15 x i8] c"register-value\00", align 1
@ab8500_val_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @ab8500_val_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ab8500_val_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.16 = private unnamed_addr constant [14 x i8] c"irq-subscribe\00", align 1
@ab8500_subscribe_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @ab8500_subscribe_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ab8500_subscribe_unsubscribe_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ab8500_debug_ranges = internal global [22 x %struct.ab8500_prcmu_ranges] [%struct.ab8500_prcmu_ranges zeroinitializer, %struct.ab8500_prcmu_ranges { i8 3, i8 0, ptr @.compoundliteral }, %struct.ab8500_prcmu_ranges { i8 4, i8 0, ptr @.compoundliteral.34 }, %struct.ab8500_prcmu_ranges { i8 3, i8 0, ptr @.compoundliteral.35 }, %struct.ab8500_prcmu_ranges { i8 5, i8 0, ptr @.compoundliteral.36 }, %struct.ab8500_prcmu_ranges { i8 2, i8 0, ptr @.compoundliteral.37 }, %struct.ab8500_prcmu_ranges { i8 9, i8 0, ptr @.compoundliteral.38 }, %struct.ab8500_prcmu_ranges zeroinitializer, %struct.ab8500_prcmu_ranges { i8 1, i8 0, ptr @.compoundliteral.39 }, %struct.ab8500_prcmu_ranges zeroinitializer, %struct.ab8500_prcmu_ranges { i8 1, i8 0, ptr @.compoundliteral.40 }, %struct.ab8500_prcmu_ranges { i8 9, i8 0, ptr @.compoundliteral.41 }, %struct.ab8500_prcmu_ranges { i8 3, i8 0, ptr @.compoundliteral.42 }, %struct.ab8500_prcmu_ranges { i8 1, i8 0, ptr @.compoundliteral.43 }, %struct.ab8500_prcmu_ranges zeroinitializer, %struct.ab8500_prcmu_ranges { i8 1, i8 0, ptr @.compoundliteral.44 }, %struct.ab8500_prcmu_ranges { i8 8, i8 0, ptr @.compoundliteral.45 }, %struct.ab8500_prcmu_ranges { i8 1, i8 0, ptr @.compoundliteral.46 }, %struct.ab8500_prcmu_ranges { i8 1, i8 0, ptr @.compoundliteral.47 }, %struct.ab8500_prcmu_ranges zeroinitializer, %struct.ab8500_prcmu_ranges zeroinitializer, %struct.ab8500_prcmu_ranges { i8 1, i8 0, ptr @.compoundliteral.48 }], align 4
@ab8505_debug_ranges = internal global [22 x %struct.ab8500_prcmu_ranges] [%struct.ab8500_prcmu_ranges zeroinitializer, %struct.ab8500_prcmu_ranges { i8 5, i8 0, ptr @.compoundliteral.49 }, %struct.ab8500_prcmu_ranges { i8 5, i8 0, ptr @.compoundliteral.50 }, %struct.ab8500_prcmu_ranges { i8 3, i8 0, ptr @.compoundliteral.51 }, %struct.ab8500_prcmu_ranges { i8 6, i8 0, ptr @.compoundliteral.52 }, %struct.ab8500_prcmu_ranges { i8 3, i8 0, ptr @.compoundliteral.53 }, %struct.ab8500_prcmu_ranges zeroinitializer, %struct.ab8500_prcmu_ranges zeroinitializer, %struct.ab8500_prcmu_ranges { i8 1, i8 0, ptr @.compoundliteral.54 }, %struct.ab8500_prcmu_ranges zeroinitializer, %struct.ab8500_prcmu_ranges { i8 1, i8 0, ptr @.compoundliteral.55 }, %struct.ab8500_prcmu_ranges { i8 9, i8 0, ptr @.compoundliteral.56 }, %struct.ab8500_prcmu_ranges { i8 3, i8 0, ptr @.compoundliteral.57 }, %struct.ab8500_prcmu_ranges { i8 1, i8 0, ptr @.compoundliteral.58 }, %struct.ab8500_prcmu_ranges { i8 11, i8 0, ptr @.compoundliteral.59 }, %struct.ab8500_prcmu_ranges { i8 2, i8 0, ptr @.compoundliteral.60 }, %struct.ab8500_prcmu_ranges { i8 8, i8 0, ptr @.compoundliteral.61 }, %struct.ab8500_prcmu_ranges { i8 2, i8 0, ptr @.compoundliteral.62 }, %struct.ab8500_prcmu_ranges { i8 1, i8 0, ptr @.compoundliteral.63 }, %struct.ab8500_prcmu_ranges zeroinitializer, %struct.ab8500_prcmu_ranges zeroinitializer, %struct.ab8500_prcmu_ranges { i8 1, i8 0, ptr @.compoundliteral.64 }], align 4
@ab8540_debug_ranges = internal global [22 x %struct.ab8500_prcmu_ranges] [%struct.ab8500_prcmu_ranges { i8 1, i8 0, ptr @.compoundliteral.65 }, %struct.ab8500_prcmu_ranges { i8 6, i8 0, ptr @.compoundliteral.66 }, %struct.ab8500_prcmu_ranges { i8 5, i8 0, ptr @.compoundliteral.67 }, %struct.ab8500_prcmu_ranges { i8 4, i8 0, ptr @.compoundliteral.68 }, %struct.ab8500_prcmu_ranges { i8 8, i8 0, ptr @.compoundliteral.69 }, %struct.ab8500_prcmu_ranges { i8 3, i8 0, ptr @.compoundliteral.70 }, %struct.ab8500_prcmu_ranges zeroinitializer, %struct.ab8500_prcmu_ranges { i8 4, i8 0, ptr @.compoundliteral.71 }, %struct.ab8500_prcmu_ranges { i8 2, i8 0, ptr @.compoundliteral.72 }, %struct.ab8500_prcmu_ranges zeroinitializer, %struct.ab8500_prcmu_ranges { i8 4, i8 0, ptr @.compoundliteral.73 }, %struct.ab8500_prcmu_ranges { i8 10, i8 0, ptr @.compoundliteral.74 }, %struct.ab8500_prcmu_ranges { i8 3, i8 0, ptr @.compoundliteral.75 }, %struct.ab8500_prcmu_ranges { i8 1, i8 0, ptr @.compoundliteral.76 }, %struct.ab8500_prcmu_ranges { i8 6, i8 0, ptr @.compoundliteral.77 }, %struct.ab8500_prcmu_ranges { i8 3, i8 0, ptr @.compoundliteral.78 }, %struct.ab8500_prcmu_ranges { i8 9, i8 0, ptr @.compoundliteral.79 }, %struct.ab8500_prcmu_ranges { i8 3, i8 0, ptr @.compoundliteral.80 }, %struct.ab8500_prcmu_ranges { i8 3, i8 0, ptr @.compoundliteral.81 }, %struct.ab8500_prcmu_ranges zeroinitializer, %struct.ab8500_prcmu_ranges zeroinitializer, %struct.ab8500_prcmu_ranges { i8 1, i8 0, ptr @.compoundliteral.82 }], align 4
@.str.17 = private unnamed_addr constant [11 x i8] c"interrupts\00", align 1
@ab8500_interrupts_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ab8500_interrupts_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.18 = private unnamed_addr constant [16 x i8] c"irq-unsubscribe\00", align 1
@ab8500_unsubscribe_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @ab8500_unsubscribe_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ab8500_subscribe_unsubscribe_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"hwreg\00", align 1
@ab8500_hwreg_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @ab8500_hwreg_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ab8500_hwreg_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.20 = private unnamed_addr constant [20 x i8] c"all-modem-registers\00", align 1
@ab8500_modem_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ab8500_modem_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.21 = private unnamed_addr constant [39 x i8] c"debugfs error input > number of banks\0A\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"0x%02X\0A\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"debugfs error input > 0xff\0A\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"\013abx500_set_reg failed %d, %d\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"abx500_get_reg fail %d, %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"debugfs error input < %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"debugfs error input > %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"\016sysfs_create_file failed %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"\016request_threaded_irq failed %d, %lu\0A\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.compoundliteral = internal global [3 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 2, i8 0 }, %struct.ab8500_reg_range { i8 66, i8 66, i8 0 }, %struct.ab8500_reg_range { i8 -128, i8 -127, i8 0 }], align 1
@.compoundliteral.34 = internal global [4 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 13, i8 0 }, %struct.ab8500_reg_range { i8 15, i8 23, i8 0 }, %struct.ab8500_reg_range { i8 48, i8 48, i8 0 }, %struct.ab8500_reg_range { i8 50, i8 51, i8 0 }], align 1
@.compoundliteral.35 = internal global [3 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range zeroinitializer, %struct.ab8500_reg_range { i8 3, i8 16, i8 0 }, %struct.ab8500_reg_range { i8 -128, i8 -124, i8 0 }], align 1
@.compoundliteral.36 = internal global [5 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 21, i8 0 }, %struct.ab8500_reg_range { i8 23, i8 25, i8 0 }, %struct.ab8500_reg_range { i8 27, i8 29, i8 0 }, %struct.ab8500_reg_range { i8 31, i8 34, i8 0 }, %struct.ab8500_reg_range { i8 64, i8 68, i8 0 }], align 1
@.compoundliteral.37 = internal global [2 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 -128, i8 -125, i8 0 }, %struct.ab8500_reg_range { i8 -121, i8 -118, i8 0 }], align 1
@.compoundliteral.38 = internal global [9 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 18, i8 0 }, %struct.ab8500_reg_range { i8 21, i8 23, i8 0 }, %struct.ab8500_reg_range { i8 25, i8 33, i8 0 }, %struct.ab8500_reg_range { i8 39, i8 44, i8 0 }, %struct.ab8500_reg_range { i8 65, i8 65, i8 0 }, %struct.ab8500_reg_range { i8 69, i8 91, i8 0 }, %struct.ab8500_reg_range { i8 93, i8 93, i8 0 }, %struct.ab8500_reg_range { i8 105, i8 105, i8 0 }, %struct.ab8500_reg_range { i8 -128, i8 -127, i8 0 }], align 1
@.compoundliteral.39 = internal global [1 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 -128, i8 -126, i8 0 }], align 1
@.compoundliteral.40 = internal global [1 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 8, i8 0 }], align 1
@.compoundliteral.41 = internal global [9 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 3, i8 0 }, %struct.ab8500_reg_range { i8 5, i8 5, i8 0 }, %struct.ab8500_reg_range { i8 64, i8 64, i8 0 }, %struct.ab8500_reg_range { i8 66, i8 66, i8 0 }, %struct.ab8500_reg_range { i8 68, i8 68, i8 0 }, %struct.ab8500_reg_range { i8 80, i8 85, i8 0 }, %struct.ab8500_reg_range { i8 -128, i8 -126, i8 0 }, %struct.ab8500_reg_range { i8 -64, i8 -62, i8 0 }, %struct.ab8500_reg_range { i8 -11, i8 -10, i8 0 }], align 1
@.compoundliteral.42 = internal global [3 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range zeroinitializer, %struct.ab8500_reg_range { i8 7, i8 10, i8 0 }, %struct.ab8500_reg_range { i8 16, i8 20, i8 0 }], align 1
@.compoundliteral.43 = internal global [1 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 111, i8 0 }], align 1
@.compoundliteral.44 = internal global [1 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 15, i8 0 }], align 1
@.compoundliteral.45 = internal global [8 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 5, i8 0 }, %struct.ab8500_reg_range { i8 16, i8 21, i8 0 }, %struct.ab8500_reg_range { i8 32, i8 37, i8 0 }, %struct.ab8500_reg_range { i8 48, i8 53, i8 0 }, %struct.ab8500_reg_range { i8 64, i8 69, i8 0 }, %struct.ab8500_reg_range { i8 80, i8 80, i8 0 }, %struct.ab8500_reg_range { i8 96, i8 103, i8 0 }, %struct.ab8500_reg_range { i8 -128, i8 -128, i8 0 }], align 1
@.compoundliteral.46 = internal global [1 x %struct.ab8500_reg_range] zeroinitializer, align 1
@.compoundliteral.47 = internal global [1 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 5, i8 7, i8 0 }], align 1
@.compoundliteral.48 = internal global [1 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 1, i8 15, i8 0 }], align 1
@.compoundliteral.49 = internal global [5 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 4, i8 0 }, %struct.ab8500_reg_range { i8 66, i8 66, i8 0 }, %struct.ab8500_reg_range { i8 82, i8 82, i8 0 }, %struct.ab8500_reg_range { i8 84, i8 87, i8 0 }, %struct.ab8500_reg_range { i8 -128, i8 -125, i8 0 }], align 1
@.compoundliteral.50 = internal global [5 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 13, i8 0 }, %struct.ab8500_reg_range { i8 15, i8 23, i8 0 }, %struct.ab8500_reg_range { i8 32, i8 32, i8 0 }, %struct.ab8500_reg_range { i8 48, i8 48, i8 0 }, %struct.ab8500_reg_range { i8 50, i8 58, i8 0 }], align 1
@.compoundliteral.51 = internal global [3 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range zeroinitializer, %struct.ab8500_reg_range { i8 3, i8 17, i8 0 }, %struct.ab8500_reg_range { i8 -128, i8 -122, i8 0 }], align 1
@.compoundliteral.52 = internal global [6 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 6, i8 0 }, %struct.ab8500_reg_range { i8 8, i8 21, i8 0 }, %struct.ab8500_reg_range { i8 23, i8 25, i8 0 }, %struct.ab8500_reg_range { i8 27, i8 29, i8 0 }, %struct.ab8500_reg_range { i8 31, i8 48, i8 0 }, %struct.ab8500_reg_range { i8 64, i8 72, i8 0 }], align 1
@.compoundliteral.53 = internal global [3 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 -128, i8 -125, i8 0 }, %struct.ab8500_reg_range { i8 -121, i8 -118, i8 0 }, %struct.ab8500_reg_range { i8 -111, i8 -108, i8 0 }], align 1
@.compoundliteral.54 = internal global [1 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 -128, i8 -126, i8 0 }], align 1
@.compoundliteral.55 = internal global [1 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 8, i8 0 }], align 1
@.compoundliteral.56 = internal global [9 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 2, i8 3, i8 0 }, %struct.ab8500_reg_range { i8 5, i8 5, i8 0 }, %struct.ab8500_reg_range { i8 64, i8 68, i8 0 }, %struct.ab8500_reg_range { i8 80, i8 87, i8 0 }, %struct.ab8500_reg_range { i8 96, i8 96, i8 0 }, %struct.ab8500_reg_range { i8 -96, i8 -89, i8 0 }, %struct.ab8500_reg_range { i8 -81, i8 -78, i8 0 }, %struct.ab8500_reg_range { i8 -64, i8 -62, i8 0 }, %struct.ab8500_reg_range { i8 -11, i8 -11, i8 0 }], align 1
@.compoundliteral.57 = internal global [3 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range zeroinitializer, %struct.ab8500_reg_range { i8 7, i8 10, i8 0 }, %struct.ab8500_reg_range { i8 16, i8 20, i8 0 }], align 1
@.compoundliteral.58 = internal global [1 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 -125, i8 0 }], align 1
@.compoundliteral.59 = internal global [11 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 4, i8 0 }, %struct.ab8500_reg_range { i8 6, i8 7, i8 0 }, %struct.ab8500_reg_range { i8 9, i8 9, i8 0 }, %struct.ab8500_reg_range { i8 11, i8 12, i8 0 }, %struct.ab8500_reg_range { i8 18, i8 21, i8 0 }, %struct.ab8500_reg_range { i8 24, i8 24, i8 0 }, %struct.ab8500_reg_range { i8 64, i8 68, i8 0 }, %struct.ab8500_reg_range { i8 70, i8 73, i8 0 }, %struct.ab8500_reg_range { i8 75, i8 77, i8 0 }, %struct.ab8500_reg_range { i8 82, i8 85, i8 0 }, %struct.ab8500_reg_range { i8 88, i8 88, i8 0 }], align 1
@.compoundliteral.60 = internal global [2 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 20, i8 0 }, %struct.ab8500_reg_range { i8 22, i8 23, i8 0 }], align 1
@.compoundliteral.61 = internal global [8 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 6, i8 0 }, %struct.ab8500_reg_range { i8 16, i8 22, i8 0 }, %struct.ab8500_reg_range { i8 32, i8 38, i8 0 }, %struct.ab8500_reg_range { i8 48, i8 54, i8 0 }, %struct.ab8500_reg_range { i8 64, i8 70, i8 0 }, %struct.ab8500_reg_range { i8 80, i8 80, i8 0 }, %struct.ab8500_reg_range { i8 96, i8 107, i8 0 }, %struct.ab8500_reg_range { i8 -128, i8 -126, i8 0 }], align 1
@.compoundliteral.62 = internal global [2 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range zeroinitializer, %struct.ab8500_reg_range { i8 5, i8 5, i8 0 }], align 1
@.compoundliteral.63 = internal global [1 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 5, i8 7, i8 0 }], align 1
@.compoundliteral.64 = internal global [1 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 1, i8 21, i8 0 }], align 1
@.compoundliteral.65 = internal global [1 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 11, i8 0 }], align 1
@.compoundliteral.66 = internal global [6 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 4, i8 0 }, %struct.ab8500_reg_range { i8 66, i8 66, i8 0 }, %struct.ab8500_reg_range { i8 80, i8 84, i8 0 }, %struct.ab8500_reg_range { i8 87, i8 87, i8 0 }, %struct.ab8500_reg_range { i8 -128, i8 -125, i8 0 }, %struct.ab8500_reg_range { i8 -112, i8 -112, i8 0 }], align 1
@.compoundliteral.67 = internal global [5 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 13, i8 0 }, %struct.ab8500_reg_range { i8 15, i8 16, i8 0 }, %struct.ab8500_reg_range { i8 32, i8 33, i8 0 }, %struct.ab8500_reg_range { i8 50, i8 60, i8 0 }, %struct.ab8500_reg_range { i8 64, i8 66, i8 0 }], align 1
@.compoundliteral.68 = internal global [4 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 3, i8 21, i8 0 }, %struct.ab8500_reg_range { i8 32, i8 32, i8 0 }, %struct.ab8500_reg_range { i8 -128, i8 -123, i8 0 }, %struct.ab8500_reg_range { i8 -121, i8 -120, i8 0 }], align 1
@.compoundliteral.69 = internal global [8 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 6, i8 0 }, %struct.ab8500_reg_range { i8 8, i8 21, i8 0 }, %struct.ab8500_reg_range { i8 23, i8 25, i8 0 }, %struct.ab8500_reg_range { i8 27, i8 29, i8 0 }, %struct.ab8500_reg_range { i8 31, i8 47, i8 0 }, %struct.ab8500_reg_range { i8 49, i8 58, i8 0 }, %struct.ab8500_reg_range { i8 67, i8 68, i8 0 }, %struct.ab8500_reg_range { i8 72, i8 73, i8 0 }], align 1
@.compoundliteral.70 = internal global [3 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 -128, i8 -125, i8 0 }, %struct.ab8500_reg_range { i8 -121, i8 -118, i8 0 }, %struct.ab8500_reg_range { i8 -111, i8 -108, i8 0 }], align 1
@.compoundliteral.71 = internal global [4 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 7, i8 0 }, %struct.ab8500_reg_range { i8 16, i8 17, i8 0 }, %struct.ab8500_reg_range { i8 32, i8 33, i8 0 }, %struct.ab8500_reg_range { i8 48, i8 67, i8 0 }], align 1
@.compoundliteral.72 = internal global [2 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 3, i8 0 }, %struct.ab8500_reg_range { i8 -128, i8 -126, i8 0 }], align 1
@.compoundliteral.73 = internal global [4 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 1, i8 0 }, %struct.ab8500_reg_range { i8 4, i8 6, i8 0 }, %struct.ab8500_reg_range { i8 9, i8 10, i8 0 }, %struct.ab8500_reg_range { i8 16, i8 20, i8 0 }], align 1
@.compoundliteral.74 = internal global [10 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range zeroinitializer, %struct.ab8500_reg_range { i8 2, i8 5, i8 0 }, %struct.ab8500_reg_range { i8 64, i8 68, i8 0 }, %struct.ab8500_reg_range { i8 80, i8 87, i8 0 }, %struct.ab8500_reg_range { i8 96, i8 96, i8 0 }, %struct.ab8500_reg_range { i8 112, i8 112, i8 0 }, %struct.ab8500_reg_range { i8 -96, i8 -87, i8 0 }, %struct.ab8500_reg_range { i8 -81, i8 -78, i8 0 }, %struct.ab8500_reg_range { i8 -64, i8 -58, i8 0 }, %struct.ab8500_reg_range { i8 -11, i8 -11, i8 0 }], align 1
@.compoundliteral.75 = internal global [3 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range zeroinitializer, %struct.ab8500_reg_range { i8 7, i8 10, i8 0 }, %struct.ab8500_reg_range { i8 16, i8 20, i8 0 }], align 1
@.compoundliteral.76 = internal global [1 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 -97, i8 0 }], align 1
@.compoundliteral.77 = internal global [6 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 5, i8 0 }, %struct.ab8500_reg_range { i8 11, i8 13, i8 0 }, %struct.ab8500_reg_range { i8 18, i8 32, i8 0 }, %struct.ab8500_reg_range { i8 64, i8 69, i8 0 }, %struct.ab8500_reg_range { i8 75, i8 77, i8 0 }, %struct.ab8500_reg_range { i8 82, i8 96, i8 0 }], align 1
@.compoundliteral.78 = internal global [3 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 7, i8 0 }, %struct.ab8500_reg_range { i8 11, i8 24, i8 0 }, %struct.ab8500_reg_range { i8 32, i8 37, i8 0 }], align 1
@.compoundliteral.79 = internal global [9 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 6, i8 0 }, %struct.ab8500_reg_range { i8 16, i8 22, i8 0 }, %struct.ab8500_reg_range { i8 32, i8 38, i8 0 }, %struct.ab8500_reg_range { i8 48, i8 54, i8 0 }, %struct.ab8500_reg_range { i8 64, i8 73, i8 0 }, %struct.ab8500_reg_range { i8 80, i8 80, i8 0 }, %struct.ab8500_reg_range { i8 96, i8 107, i8 0 }, %struct.ab8500_reg_range { i8 112, i8 116, i8 0 }, %struct.ab8500_reg_range { i8 -128, i8 -126, i8 0 }], align 1
@.compoundliteral.80 = internal global [3 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 1, i8 0 }, %struct.ab8500_reg_range { i8 6, i8 6, i8 0 }, %struct.ab8500_reg_range { i8 16, i8 33, i8 0 }], align 1
@.compoundliteral.81 = internal global [3 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 1, i8 12, i8 0 }, %struct.ab8500_reg_range { i8 14, i8 17, i8 0 }, %struct.ab8500_reg_range { i8 -128, i8 -127, i8 0 }], align 1
@.compoundliteral.82 = internal global [1 x %struct.ab8500_reg_range] [%struct.ab8500_reg_range { i8 0, i8 63, i8 0 }], align 1
@.str.83 = private unnamed_addr constant [37 x i8] c"name: number: irq: number of: wake:\0A\00", align 1
@.str.84 = private unnamed_addr constant [19 x i8] c"%3i:  %4i %6i %4i\0A\00", align 1
@hwreg_cfg = internal unnamed_addr global %struct.hwreg_cfg { i32 0, i32 0, i32 0, i32 -1, i32 0 }, align 4
@.str.85 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.86 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@__const.hwreg_common_write.loc = private unnamed_addr constant %struct.hwreg_cfg { i32 0, i32 0, i32 0, i32 -1, i32 0 }, align 4
@.str.87 = private unnamed_addr constant [6 x i8] c"read \00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"write \00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"-d \00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"-dec \00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"-h \00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"-hex \00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"-m \00", align 1
@.str.94 = private unnamed_addr constant [7 x i8] c"-mask \00", align 1
@.str.95 = private unnamed_addr constant [4 x i8] c"-s \00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"-shift \00", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.97 = private unnamed_addr constant [88 x i8] c"WARNING! This operation can interfer with modem side\0Aand should only be done with care\0A\00", align 1
@.str.98 = private unnamed_addr constant [19 x i8] c"ab->write fail %d\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_ab8500_debugfs__249_2096_ab8500_debug_init4], section "llvm.metadata"
@switch.table.ab8500_debug_probe = private unnamed_addr constant [5 x ptr] [ptr @ab8500_debug_ranges, ptr @ab8505_debug_ranges, ptr @ab8505_debug_ranges, ptr @ab8500_debug_ranges, ptr @ab8540_debug_ranges], align 4
@switch.table.ab8500_debug_probe.99 = private unnamed_addr constant [5 x i32] [i32 112, i32 153, i32 153, i32 112, i32 216], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ab8500_dump_all_banks(ptr noundef %0) local_unnamed_addr #0 {
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str) #15
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i32 [ 1, %1 ], [ %5, %2 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %3) #15
  %4 = tail call fastcc i32 @ab8500_registers_print(ptr noundef %0, i32 noundef %3, ptr noundef null)
  %5 = add nuw nsw i32 %3, 1
  %6 = icmp eq i32 %5, 22
  br i1 %6, label %7, label %2

7:                                                ; preds = %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ab8500_registers_print(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = load ptr, ptr @debug_ranges, align 4
  %6 = getelementptr %struct.ab8500_prcmu_ranges, ptr %5, i32 %1
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %58, label %9

9:                                                ; preds = %3
  %10 = trunc i32 %1 to i8
  %11 = icmp eq ptr %2, null
  %12 = getelementptr inbounds %struct.seq_file, ptr %2, i32 0, i32 3
  %13 = getelementptr inbounds %struct.seq_file, ptr %2, i32 0, i32 1
  br label %14

14:                                               ; preds = %51, %9
  %15 = phi ptr [ %5, %9 ], [ %52, %51 ]
  %16 = phi i32 [ 0, %9 ], [ %53, %51 ]
  %17 = getelementptr %struct.ab8500_prcmu_ranges, ptr %15, i32 %1, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr %struct.ab8500_reg_range, ptr %18, i32 %16
  %20 = load i8, ptr %19, align 1
  %21 = getelementptr %struct.ab8500_reg_range, ptr %18, i32 %16, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = icmp ugt i8 %20, %22
  br i1 %23, label %51, label %24

24:                                               ; preds = %14
  %25 = zext i8 %20 to i32
  br label %26

26:                                               ; preds = %40, %24
  %27 = phi i32 [ %41, %40 ], [ %25, %24 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #16
  store i8 0, ptr %4, align 1, !annotation !8
  %28 = trunc i32 %27 to i8
  %29 = call i32 @abx500_get_register_interruptible(ptr noundef %0, i8 noundef zeroext %10, i8 noundef zeroext %28, ptr noundef nonnull %4) #16
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %29) #15
  br label %49

32:                                               ; preds = %26
  %33 = load i8, ptr %4, align 1
  %34 = zext i8 %33 to i32
  br i1 %11, label %39, label %35

35:                                               ; preds = %32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %2, ptr noundef nonnull @.str.3, i32 noundef %1, i32 noundef %27, i32 noundef %34) #16
  %36 = load i32, ptr %12, align 4
  %37 = load i32, ptr %13, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %49, label %40

39:                                               ; preds = %32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %1, i32 noundef %27, i32 noundef %34) #15
  br label %40

40:                                               ; preds = %39, %35
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #16
  %41 = add nuw nsw i32 %27, 1
  %42 = load ptr, ptr @debug_ranges, align 4
  %43 = getelementptr %struct.ab8500_prcmu_ranges, ptr %42, i32 %1, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr %struct.ab8500_reg_range, ptr %44, i32 %16, i32 1
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp ult i32 %27, %47
  br i1 %48, label %26, label %51

49:                                               ; preds = %35, %31
  %50 = phi i32 [ %29, %31 ], [ 0, %35 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #16
  br label %58

51:                                               ; preds = %40, %14
  %52 = phi ptr [ %15, %14 ], [ %42, %40 ]
  %53 = add nuw nsw i32 %16, 1
  %54 = getelementptr %struct.ab8500_prcmu_ranges, ptr %52, i32 %1
  %55 = load i8, ptr %54, align 4
  %56 = zext i8 %55 to i32
  %57 = icmp ult i32 %53, %56
  br i1 %57, label %14, label %58

58:                                               ; preds = %51, %49, %3
  %59 = phi i32 [ %50, %49 ], [ 0, %3 ], [ 0, %51 ]
  ret i32 %59
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ab8500_debug_register_interrupt(i32 noundef %0) local_unnamed_addr #3 {
  %2 = load i32, ptr @num_interrupt_lines, align 4
  %3 = icmp sgt i32 %2, %0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = getelementptr [216 x i32], ptr @num_interrupts, i32 0, i32 %0
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 4
  br label %8

8:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ab8500_debug_init() #4 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ab8500_debug_driver, ptr noundef null) #16
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_get_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_debug_probe(ptr noundef %0) #0 {
  store i32 16, ptr @debug_bank, align 4
  store i32 128, ptr @debug_address, align 4
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ab8500, ptr %6, i32 0, i32 15
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr @num_irqs, align 4
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 4) #16
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %1
  store ptr null, ptr @irq_count, align 4
  br label %71

12:                                               ; preds = %1
  %13 = extractvalue { i32, i1 } %9, 0
  %14 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %13, i32 noundef 3520) #16
  store ptr %14, ptr @irq_count, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %71, label %16

16:                                               ; preds = %12
  %17 = load i32, ptr @num_irqs, align 4
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 4) #16
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %20, label %21, !prof !9

20:                                               ; preds = %16
  store ptr null, ptr @dev_attr, align 4
  br label %71

21:                                               ; preds = %16
  %22 = extractvalue { i32, i1 } %18, 0
  %23 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %22, i32 noundef 3520) #16
  store ptr %23, ptr @dev_attr, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %71, label %25

25:                                               ; preds = %21
  %26 = load i32, ptr @num_irqs, align 4
  %27 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %26, i32 4) #16
  %28 = extractvalue { i32, i1 } %27, 1
  br i1 %28, label %29, label %30, !prof !9

29:                                               ; preds = %25
  store ptr null, ptr @event_name, align 4
  br label %71

30:                                               ; preds = %25
  %31 = extractvalue { i32, i1 } %27, 0
  %32 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %31, i32 noundef 3520) #16
  store ptr %32, ptr @event_name, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %71, label %34

34:                                               ; preds = %30
  %35 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.6) #16
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, ptr @irq_first, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %38) #15
  br label %71

39:                                               ; preds = %34
  %40 = tail call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.8) #16
  store i32 %40, ptr @irq_first, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %71, label %42

42:                                               ; preds = %39
  %43 = tail call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.9) #16
  store i32 %43, ptr @irq_last, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %71, label %45

45:                                               ; preds = %42
  %46 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.10, ptr noundef null) #16
  %47 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.11, i16 noundef zeroext 292, ptr noundef %46, ptr noundef %2, ptr noundef nonnull @ab8500_bank_registers_fops) #16
  %48 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.12, i16 noundef zeroext 292, ptr noundef %46, ptr noundef %2, ptr noundef nonnull @ab8500_all_banks_fops) #16
  %49 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.13, i16 noundef zeroext 436, ptr noundef %46, ptr noundef %2, ptr noundef nonnull @ab8500_bank_fops) #16
  %50 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.14, i16 noundef zeroext 436, ptr noundef %46, ptr noundef %2, ptr noundef nonnull @ab8500_address_fops) #16
  %51 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.15, i16 noundef zeroext 436, ptr noundef %46, ptr noundef %2, ptr noundef nonnull @ab8500_val_fops) #16
  %52 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext 436, ptr noundef %46, ptr noundef %2, ptr noundef nonnull @ab8500_subscribe_fops) #16
  %53 = getelementptr inbounds %struct.ab8500, ptr %6, i32 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = icmp ult i32 %54, 5
  br i1 %55, label %56, label %66

56:                                               ; preds = %45
  %57 = trunc i32 %54 to i8
  %58 = lshr i8 23, %57
  %59 = and i8 %58, 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds [5 x ptr], ptr @switch.table.ab8500_debug_probe, i32 0, i32 %54
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds [5 x i32], ptr @switch.table.ab8500_debug_probe.99, i32 0, i32 %54
  %65 = load i32, ptr %64, align 4
  store ptr %63, ptr @debug_ranges, align 4
  store i32 %65, ptr @num_interrupt_lines, align 4
  br label %66

66:                                               ; preds = %61, %56, %45
  %67 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.17, i16 noundef zeroext 292, ptr noundef %46, ptr noundef %2, ptr noundef nonnull @ab8500_interrupts_fops) #16
  %68 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.18, i16 noundef zeroext 436, ptr noundef %46, ptr noundef %2, ptr noundef nonnull @ab8500_unsubscribe_fops) #16
  %69 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.19, i16 noundef zeroext 436, ptr noundef %46, ptr noundef %2, ptr noundef nonnull @ab8500_hwreg_fops) #16
  %70 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.20, i16 noundef zeroext 436, ptr noundef %46, ptr noundef %2, ptr noundef nonnull @ab8500_modem_fops) #16
  br label %71

71:                                               ; preds = %66, %42, %39, %37, %30, %29, %21, %20, %12, %11
  %72 = phi i32 [ 0, %66 ], [ -6, %37 ], [ -12, %12 ], [ -12, %21 ], [ -12, %30 ], [ %40, %39 ], [ %43, %42 ], [ -12, %11 ], [ -12, %20 ], [ -12, %29 ]
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_bank_registers_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @ab8500_bank_registers_show, ptr noundef %4) #16
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_bank_registers_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load i32, ptr @debug_bank, align 4
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str) #16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %5) #16
  %6 = tail call fastcc i32 @ab8500_registers_print(ptr noundef %4, i32 noundef %5, ptr noundef %0)
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_all_banks_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @ab8500_print_all_banks, ptr noundef %4) #16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.seq_file, ptr %9, i32 0, i32 1
  store i32 8192, ptr %10, align 4
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 8192) #17
  store ptr %12, ptr %9, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = tail call i32 @single_release(ptr noundef %0, ptr noundef %1) #16
  br label %16

16:                                               ; preds = %14, %7, %2
  %17 = phi i32 [ %5, %2 ], [ 0, %7 ], [ -12, %14 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_print_all_banks(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str) #16
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi i32 [ 0, %2 ], [ %9, %5 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %6) #16
  %7 = tail call fastcc i32 @ab8500_registers_print(ptr noundef %4, i32 noundef %6, ptr noundef %0)
  %8 = icmp ne i32 %7, 0
  %9 = add nuw nsw i32 %6, 1
  %10 = icmp eq i32 %9, 22
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %12, label %5

12:                                               ; preds = %5
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_bank_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.seq_file, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !8
  %10 = call i32 @kstrtoul_from_user(ptr noundef %1, i32 noundef %2, i32 noundef 0, ptr noundef nonnull %5) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = load i32, ptr %5, align 4
  %14 = icmp ugt i32 %13, 21
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.21) #15
  br label %17

16:                                               ; preds = %12
  store i32 %13, ptr @debug_bank, align 4
  br label %17

17:                                               ; preds = %16, %15, %4
  %18 = phi i32 [ -22, %15 ], [ %2, %16 ], [ %10, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_bank_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @ab8500_bank_print, ptr noundef %4) #16
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoul_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_bank_print(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = load i32, ptr @debug_bank, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %3) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_address_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.seq_file, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !8
  %10 = call i32 @kstrtoul_from_user(ptr noundef %1, i32 noundef %2, i32 noundef 0, ptr noundef nonnull %5) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = load i32, ptr %5, align 4
  %14 = icmp ugt i32 %13, 255
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.23) #15
  br label %17

16:                                               ; preds = %12
  store i32 %13, ptr @debug_address, align 4
  br label %17

17:                                               ; preds = %16, %15, %4
  %18 = phi i32 [ -22, %15 ], [ %2, %16 ], [ %10, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_address_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @ab8500_address_print, ptr noundef %4) #16
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_address_print(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = load i32, ptr @debug_address, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %3) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_val_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.seq_file, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !8
  %10 = call i32 @kstrtoul_from_user(ptr noundef %1, i32 noundef %2, i32 noundef 0, ptr noundef nonnull %5) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %4
  %13 = load i32, ptr %5, align 4
  %14 = icmp ugt i32 %13, 255
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.23) #15
  br label %26

16:                                               ; preds = %12
  %17 = load i32, ptr @debug_bank, align 4
  %18 = trunc i32 %17 to i8
  %19 = load i32, ptr @debug_address, align 4
  %20 = trunc i32 %19 to i8
  %21 = trunc i32 %13 to i8
  %22 = call i32 @abx500_set_register_interruptible(ptr noundef %9, i8 noundef zeroext %18, i8 noundef zeroext %20, i8 noundef zeroext %21) #16
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %22, i32 noundef 1492) #15
  br label %26

26:                                               ; preds = %24, %16, %15, %4
  %27 = phi i32 [ -22, %15 ], [ -22, %24 ], [ %10, %4 ], [ %2, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_val_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @ab8500_val_print, ptr noundef %4) #16
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_set_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_val_print(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #16
  store i8 0, ptr %3, align 1, !annotation !8
  %6 = load i32, ptr @debug_bank, align 4
  %7 = trunc i32 %6 to i8
  %8 = load i32, ptr @debug_address, align 4
  %9 = trunc i32 %8 to i8
  %10 = call i32 @abx500_get_register_interruptible(ptr noundef %5, i8 noundef zeroext %7, i8 noundef zeroext %9, ptr noundef nonnull %3) #16
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.25, i32 noundef %10, i32 noundef 1460) #15
  br label %16

13:                                               ; preds = %2
  %14 = load i8, ptr %3, align 1
  %15 = zext i8 %14 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %15) #16
  br label %16

16:                                               ; preds = %13, %12
  %17 = phi i32 [ -22, %12 ], [ 0, %13 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #16
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_subscribe_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.seq_file, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !8
  %10 = call i32 @kstrtoul_from_user(ptr noundef %1, i32 noundef %2, i32 noundef 0, ptr noundef nonnull %5) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %63

12:                                               ; preds = %4
  %13 = load i32, ptr %5, align 4
  %14 = load i32, ptr @irq_first, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.26, i32 noundef %14) #15
  br label %63

17:                                               ; preds = %12
  %18 = load i32, ptr @irq_last, align 4
  %19 = icmp ugt i32 %13, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.27, i32 noundef %18) #15
  br label %63

21:                                               ; preds = %17
  %22 = sub i32 %13, %14
  %23 = load i32, ptr @num_irqs, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %63

25:                                               ; preds = %21
  %26 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %27 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3264, i32 noundef 16) #17
  %28 = load ptr, ptr @dev_attr, align 4
  %29 = getelementptr ptr, ptr %28, i32 %22
  store ptr %27, ptr %29, align 4
  %30 = icmp eq ptr %27, null
  br i1 %30, label %63, label %31

31:                                               ; preds = %25
  %32 = load i32, ptr %5, align 4
  %33 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.28, i32 noundef %32) #16
  %34 = load ptr, ptr @event_name, align 4
  %35 = getelementptr ptr, ptr %34, i32 %22
  store ptr %33, ptr %35, align 4
  %36 = icmp eq ptr %33, null
  br i1 %36, label %63, label %37

37:                                               ; preds = %31
  %38 = load ptr, ptr @dev_attr, align 4
  %39 = getelementptr ptr, ptr %38, i32 %22
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.device_attribute, ptr %40, i32 0, i32 1
  store ptr @show_irq, ptr %41, align 4
  %42 = load ptr, ptr %39, align 4
  %43 = getelementptr inbounds %struct.device_attribute, ptr %42, i32 0, i32 2
  store ptr null, ptr %43, align 4
  %44 = load ptr, ptr %35, align 4
  %45 = load ptr, ptr %39, align 4
  store ptr %44, ptr %45, align 4
  %46 = load ptr, ptr %39, align 4
  %47 = getelementptr inbounds %struct.attribute, ptr %46, i32 0, i32 1
  store i16 292, ptr %47, align 4
  %48 = load ptr, ptr %39, align 4
  %49 = call i32 @sysfs_create_file_ns(ptr noundef %9, ptr noundef %48, ptr noundef null) #16
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %37
  %52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %49) #15
  br label %63

53:                                               ; preds = %37
  %54 = load i32, ptr %5, align 4
  %55 = call i32 @request_threaded_irq(i32 noundef %54, ptr noundef null, ptr noundef nonnull @ab8500_debug_handler, i32 noundef 24704, ptr noundef nonnull @.str.5, ptr noundef %9) #16
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load i32, ptr %5, align 4
  %59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %55, i32 noundef %58) #15
  %60 = load ptr, ptr @dev_attr, align 4
  %61 = getelementptr ptr, ptr %60, i32 %22
  %62 = load ptr, ptr %61, align 4
  call void @sysfs_remove_file_ns(ptr noundef %9, ptr noundef %62, ptr noundef null) #16
  br label %63

63:                                               ; preds = %57, %53, %51, %31, %25, %21, %20, %16, %4
  %64 = phi i32 [ -22, %16 ], [ -22, %20 ], [ %49, %51 ], [ %55, %57 ], [ %10, %4 ], [ -22, %21 ], [ -12, %25 ], [ -12, %31 ], [ %2, %53 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_subscribe_unsubscribe_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @ab8500_subscribe_unsubscribe_print, ptr noundef %4) #16
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_irq(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = load ptr, ptr %1, align 4
  %6 = call i32 @_kstrtoul(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %4) #16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = load i32, ptr %4, align 4
  %10 = load i32, ptr @irq_first, align 4
  %11 = sub i32 %9, %10
  %12 = load i32, ptr @num_irqs, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = load ptr, ptr @irq_count, align 4
  %16 = getelementptr i32, ptr %15, i32 %11
  %17 = load i32, ptr %16, align 4
  %18 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.31, i32 noundef %17)
  br label %19

19:                                               ; preds = %14, %8, %3
  %20 = phi i32 [ %18, %14 ], [ %6, %3 ], [ -22, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_debug_handler(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !8
  %4 = load i32, ptr @irq_first, align 4
  %5 = sub i32 %0, %4
  %6 = load i32, ptr @num_irqs, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load ptr, ptr @irq_count, align 4
  %10 = getelementptr i32, ptr %9, i32 %5
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 4
  br label %13

13:                                               ; preds = %8, %2
  %14 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.32, i32 noundef %0)
  call void @sysfs_notify(ptr noundef %1, ptr noundef null, ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret i32 1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_subscribe_unsubscribe_print(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = load i32, ptr @irq_first, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.33, i32 noundef %3) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_interrupts_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @ab8500_interrupts_show, ptr noundef %4) #16
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_interrupts_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.83) #16
  %3 = load i32, ptr @num_interrupt_lines, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %5, %2
  %6 = phi i32 [ %11, %5 ], [ 0, %2 ]
  %7 = load i32, ptr @irq_first, align 4
  %8 = add i32 %7, %6
  %9 = getelementptr [216 x i32], ptr @num_interrupts, i32 0, i32 %6
  %10 = load i32, ptr %9, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.84, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef 0) #16
  %11 = add nuw nsw i32 %6, 1
  %12 = load i32, ptr @num_interrupt_lines, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %5, label %14

14:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_unsubscribe_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.seq_file, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !8
  %10 = call i32 @kstrtoul_from_user(ptr noundef %1, i32 noundef %2, i32 noundef 0, ptr noundef nonnull %5) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %42

12:                                               ; preds = %4
  %13 = load i32, ptr %5, align 4
  %14 = load i32, ptr @irq_first, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.26, i32 noundef %14) #15
  br label %42

17:                                               ; preds = %12
  %18 = load i32, ptr @irq_last, align 4
  %19 = icmp ugt i32 %13, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.27, i32 noundef %18) #15
  br label %42

21:                                               ; preds = %17
  %22 = sub i32 %13, %14
  %23 = load i32, ptr @num_irqs, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = load ptr, ptr @irq_count, align 4
  %27 = getelementptr i32, ptr %26, i32 %22
  store i32 0, ptr %27, align 4
  %28 = load ptr, ptr @dev_attr, align 4
  %29 = getelementptr ptr, ptr %28, i32 %22
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  call void @sysfs_remove_file_ns(ptr noundef %9, ptr noundef nonnull %30, ptr noundef null) #16
  br label %33

33:                                               ; preds = %32, %25
  %34 = load i32, ptr %5, align 4
  %35 = call ptr @free_irq(i32 noundef %34, ptr noundef %9) #16
  %36 = load ptr, ptr @event_name, align 4
  %37 = getelementptr ptr, ptr %36, i32 %22
  %38 = load ptr, ptr %37, align 4
  call void @kfree(ptr noundef %38) #16
  %39 = load ptr, ptr @dev_attr, align 4
  %40 = getelementptr ptr, ptr %39, i32 %22
  %41 = load ptr, ptr %40, align 4
  call void @kfree(ptr noundef %41) #16
  br label %42

42:                                               ; preds = %33, %21, %20, %16, %4
  %43 = phi i32 [ -22, %16 ], [ -22, %20 ], [ %2, %33 ], [ %10, %4 ], [ -22, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_hwreg_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca %struct.hwreg_cfg, align 4
  %8 = alloca [128 x i8], align 1
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.seq_file, ptr %10, i32 0, i32 11
  %12 = load ptr, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %8, i8 0, i32 128, i1 false), !annotation !8
  %13 = tail call i32 @llvm.smin.i32(i32 %2, i32 127)
  %14 = icmp ugt i32 %13, 128
  br i1 %14, label %15, label %16, !prof !9

15:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.85, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.86, i32 noundef 128, i32 noundef %13) #16
  br label %320

16:                                               ; preds = %4
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %13, i32 -1090519040) #18, !srcloc !10
  %18 = extractvalue { i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27, !prof !11

20:                                               ; preds = %16
  %21 = tail call ptr @llvm.thread.pointer() #16
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %23 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %22) #19, !srcloc !12
  %24 = and i32 %23, -13
  %25 = or i32 %24, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #16, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !14
  %26 = call i32 @arm_copy_from_user(ptr noundef nonnull %8, ptr noundef %1, i32 noundef %13) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #16, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !14
  br label %27

27:                                               ; preds = %20, %16
  %28 = phi i32 [ %26, %20 ], [ %13, %16 ]
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30, !prof !11

30:                                               ; preds = %27
  %31 = sub i32 %13, %28
  %32 = getelementptr i8, ptr %8, i32 %31
  call void @llvm.memset.p0.i32(ptr align 1 %32, i8 0, i32 %28, i1 false) #16
  br label %320

33:                                               ; preds = %27
  %34 = getelementptr [128 x i8], ptr %8, i32 0, i32 %13
  store i8 0, ptr %34, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #16
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %7, ptr noundef nonnull align 4 dereferenceable(20) @__const.hwreg_common_write.loc, i32 20, i1 false) #16
  %35 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %8, ptr noundef nonnull dereferenceable(5) @.str.87, i32 5)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %8, ptr noundef nonnull dereferenceable(6) @.str.88, i32 6)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %317

40:                                               ; preds = %37, %33
  %41 = phi i32 [ 5, %33 ], [ 6, %37 ]
  %42 = getelementptr i8, ptr %8, i32 %41
  %43 = getelementptr inbounds %struct.hwreg_cfg, ptr %7, i32 0, i32 4
  %44 = getelementptr inbounds %struct.hwreg_cfg, ptr %7, i32 0, i32 3
  %45 = getelementptr inbounds %struct.hwreg_cfg, ptr %7, i32 0, i32 2
  br label %46

46:                                               ; preds = %181, %40
  %47 = phi ptr [ %42, %40 ], [ %182, %181 ]
  %48 = load i8, ptr %47, align 1
  switch i8 %48, label %186 [
    i8 32, label %49
    i8 45, label %49
    i8 48, label %183
  ]

49:                                               ; preds = %46, %46
  %50 = getelementptr i8, ptr %47, i32 -1
  %51 = load i8, ptr %50, align 1
  %52 = icmp eq i8 %51, 32
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = getelementptr i8, ptr %47, i32 1
  br label %181

55:                                               ; preds = %49
  %56 = call i32 @strncmp(ptr noundef %47, ptr noundef nonnull dereferenceable(4) @.str.89, i32 noundef 3) #16
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = call i32 @strncmp(ptr noundef %47, ptr noundef nonnull dereferenceable(6) @.str.90, i32 noundef 5) #16
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58, %55
  %62 = getelementptr i8, ptr %47, i32 2
  %63 = load i8, ptr %62, align 1
  %64 = icmp eq i8 %63, 32
  %65 = select i1 %64, i32 3, i32 5
  %66 = getelementptr i8, ptr %47, i32 %65
  %67 = load i32, ptr %45, align 4
  %68 = or i32 %67, 1
  store i32 %68, ptr %45, align 4
  br label %181

69:                                               ; preds = %58
  %70 = call i32 @strncmp(ptr noundef %47, ptr noundef nonnull dereferenceable(4) @.str.91, i32 noundef 3) #16
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = call i32 @strncmp(ptr noundef %47, ptr noundef nonnull dereferenceable(6) @.str.92, i32 noundef 5) #16
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %72, %69
  %76 = getelementptr i8, ptr %47, i32 2
  %77 = load i8, ptr %76, align 1
  %78 = icmp eq i8 %77, 32
  %79 = select i1 %78, i32 3, i32 5
  %80 = getelementptr i8, ptr %47, i32 %79
  %81 = load i32, ptr %45, align 4
  %82 = and i32 %81, -2
  store i32 %82, ptr %45, align 4
  br label %181

83:                                               ; preds = %72
  %84 = call i32 @strncmp(ptr noundef %47, ptr noundef nonnull dereferenceable(4) @.str.93, i32 noundef 3) #16
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = call i32 @strncmp(ptr noundef %47, ptr noundef nonnull dereferenceable(7) @.str.94, i32 noundef 6) #16
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %132

89:                                               ; preds = %86, %83
  %90 = getelementptr i8, ptr %47, i32 2
  %91 = load i8, ptr %90, align 1
  %92 = icmp eq i8 %91, 32
  %93 = select i1 %92, i32 3, i32 6
  %94 = getelementptr i8, ptr %47, i32 %93
  %95 = load i8, ptr %94, align 1
  %96 = icmp eq i8 %95, 48
  br i1 %96, label %97, label %113

97:                                               ; preds = %89
  %98 = getelementptr i8, ptr %94, i32 1
  %99 = load i8, ptr %98, align 1
  switch i8 %99, label %113 [
    i8 120, label %100
    i8 88, label %100
  ]

100:                                              ; preds = %97, %97
  %101 = getelementptr i8, ptr %94, i32 2
  br label %102

102:                                              ; preds = %111, %100
  %103 = phi ptr [ %101, %100 ], [ %112, %111 ]
  %104 = load i8, ptr %103, align 1
  switch i8 %104, label %105 [
    i8 0, label %126
    i8 32, label %126
    i8 10, label %126
  ]

105:                                              ; preds = %102
  %106 = zext i8 %104 to i32
  %107 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %106
  %108 = load i8, ptr %107, align 1
  %109 = and i8 %108, 68
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %317, label %111

111:                                              ; preds = %105
  %112 = getelementptr i8, ptr %103, i32 1
  br label %102

113:                                              ; preds = %97, %89
  %114 = icmp eq i8 %95, 45
  %115 = zext i1 %114 to i32
  %116 = getelementptr i8, ptr %94, i32 %115
  br label %117

117:                                              ; preds = %124, %113
  %118 = phi ptr [ %116, %113 ], [ %125, %124 ]
  %119 = load i8, ptr %118, align 1
  switch i8 %119, label %120 [
    i8 0, label %126
    i8 32, label %126
    i8 10, label %126
  ]

120:                                              ; preds = %117
  %121 = zext i8 %119 to i32
  %122 = add nsw i32 %121, -58
  %123 = icmp ult i32 %122, -10
  br i1 %123, label %317, label %124

124:                                              ; preds = %120
  %125 = getelementptr i8, ptr %118, i32 1
  br label %117

126:                                              ; preds = %117, %117, %117, %102, %102, %102
  %127 = phi ptr [ %118, %117 ], [ %118, %117 ], [ %118, %117 ], [ %103, %102 ], [ %103, %102 ], [ %103, %102 ]
  %128 = icmp eq ptr %127, %94
  br i1 %128, label %317, label %129

129:                                              ; preds = %126
  %130 = call i32 @_kstrtoul(ptr noundef %94, i32 noundef 0, ptr noundef %44) #16
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %181, label %317

132:                                              ; preds = %86
  %133 = call i32 @strncmp(ptr noundef %47, ptr noundef nonnull dereferenceable(4) @.str.95, i32 noundef 3) #16
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %132
  %136 = call i32 @strncmp(ptr noundef %47, ptr noundef nonnull dereferenceable(8) @.str.96, i32 noundef 7) #16
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %317

138:                                              ; preds = %135, %132
  %139 = getelementptr i8, ptr %47, i32 2
  %140 = load i8, ptr %139, align 1
  %141 = icmp eq i8 %140, 32
  %142 = select i1 %141, i32 3, i32 7
  %143 = getelementptr i8, ptr %47, i32 %142
  %144 = load i8, ptr %143, align 1
  %145 = icmp eq i8 %144, 48
  br i1 %145, label %146, label %162

146:                                              ; preds = %138
  %147 = getelementptr i8, ptr %143, i32 1
  %148 = load i8, ptr %147, align 1
  switch i8 %148, label %162 [
    i8 120, label %149
    i8 88, label %149
  ]

149:                                              ; preds = %146, %146
  %150 = getelementptr i8, ptr %143, i32 2
  br label %151

151:                                              ; preds = %160, %149
  %152 = phi ptr [ %150, %149 ], [ %161, %160 ]
  %153 = load i8, ptr %152, align 1
  switch i8 %153, label %154 [
    i8 0, label %175
    i8 32, label %175
    i8 10, label %175
  ]

154:                                              ; preds = %151
  %155 = zext i8 %153 to i32
  %156 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %155
  %157 = load i8, ptr %156, align 1
  %158 = and i8 %157, 68
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %317, label %160

160:                                              ; preds = %154
  %161 = getelementptr i8, ptr %152, i32 1
  br label %151

162:                                              ; preds = %146, %138
  %163 = icmp eq i8 %144, 45
  %164 = zext i1 %163 to i32
  %165 = getelementptr i8, ptr %143, i32 %164
  br label %166

166:                                              ; preds = %173, %162
  %167 = phi ptr [ %165, %162 ], [ %174, %173 ]
  %168 = load i8, ptr %167, align 1
  switch i8 %168, label %169 [
    i8 0, label %175
    i8 32, label %175
    i8 10, label %175
  ]

169:                                              ; preds = %166
  %170 = zext i8 %168 to i32
  %171 = add nsw i32 %170, -58
  %172 = icmp ult i32 %171, -10
  br i1 %172, label %317, label %173

173:                                              ; preds = %169
  %174 = getelementptr i8, ptr %167, i32 1
  br label %166

175:                                              ; preds = %166, %166, %166, %151, %151, %151
  %176 = phi ptr [ %167, %166 ], [ %167, %166 ], [ %167, %166 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ]
  %177 = icmp eq ptr %176, %143
  br i1 %177, label %317, label %178

178:                                              ; preds = %175
  %179 = call i32 @_kstrtol(ptr noundef %143, i32 noundef 0, ptr noundef %43) #16
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %317

181:                                              ; preds = %178, %129, %75, %61, %53
  %182 = phi ptr [ %54, %53 ], [ %143, %178 ], [ %94, %129 ], [ %80, %75 ], [ %66, %61 ]
  br label %46

183:                                              ; preds = %46
  %184 = getelementptr i8, ptr %47, i32 1
  %185 = load i8, ptr %184, align 1
  switch i8 %185, label %186 [
    i8 120, label %187
    i8 88, label %187
  ]

186:                                              ; preds = %183, %46
  br label %200

187:                                              ; preds = %183, %183
  %188 = getelementptr i8, ptr %47, i32 2
  br label %189

189:                                              ; preds = %198, %187
  %190 = phi ptr [ %188, %187 ], [ %199, %198 ]
  %191 = load i8, ptr %190, align 1
  switch i8 %191, label %192 [
    i8 0, label %210
    i8 32, label %210
    i8 10, label %210
  ]

192:                                              ; preds = %189
  %193 = zext i8 %191 to i32
  %194 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %193
  %195 = load i8, ptr %194, align 1
  %196 = and i8 %195, 68
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %317, label %198

198:                                              ; preds = %192
  %199 = getelementptr i8, ptr %190, i32 1
  br label %189

200:                                              ; preds = %207, %186
  %201 = phi i8 [ %209, %207 ], [ %48, %186 ]
  %202 = phi ptr [ %208, %207 ], [ %47, %186 ]
  switch i8 %201, label %203 [
    i8 0, label %210
    i8 32, label %210
    i8 10, label %210
  ]

203:                                              ; preds = %200
  %204 = zext i8 %201 to i32
  %205 = add nsw i32 %204, -58
  %206 = icmp ult i32 %205, -10
  br i1 %206, label %317, label %207

207:                                              ; preds = %203
  %208 = getelementptr i8, ptr %202, i32 1
  %209 = load i8, ptr %208, align 1
  br label %200

210:                                              ; preds = %200, %200, %200, %189, %189, %189
  %211 = phi ptr [ %202, %200 ], [ %202, %200 ], [ %202, %200 ], [ %190, %189 ], [ %190, %189 ], [ %190, %189 ]
  %212 = icmp eq ptr %211, %47
  br i1 %212, label %317, label %213

213:                                              ; preds = %210
  %214 = call i32 @kstrtouint(ptr noundef %47, i32 noundef 0, ptr noundef nonnull %7) #16
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %317

216:                                              ; preds = %219, %213
  %217 = phi ptr [ %220, %219 ], [ %47, %213 ]
  %218 = load i8, ptr %217, align 1
  switch i8 %218, label %237 [
    i8 32, label %219
    i8 48, label %221
  ]

219:                                              ; preds = %216
  %220 = getelementptr i8, ptr %217, i32 1
  br label %216

221:                                              ; preds = %216
  %222 = getelementptr i8, ptr %217, i32 1
  %223 = load i8, ptr %222, align 1
  switch i8 %223, label %240 [
    i8 120, label %224
    i8 88, label %224
  ]

224:                                              ; preds = %221, %221
  %225 = getelementptr i8, ptr %217, i32 2
  br label %226

226:                                              ; preds = %235, %224
  %227 = phi ptr [ %225, %224 ], [ %236, %235 ]
  %228 = load i8, ptr %227, align 1
  switch i8 %228, label %229 [
    i8 0, label %252
    i8 32, label %252
    i8 10, label %252
  ]

229:                                              ; preds = %226
  %230 = zext i8 %228 to i32
  %231 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %230
  %232 = load i8, ptr %231, align 1
  %233 = and i8 %232, 68
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %317, label %235

235:                                              ; preds = %229
  %236 = getelementptr i8, ptr %227, i32 1
  br label %226

237:                                              ; preds = %216
  %238 = icmp eq i8 %218, 45
  %239 = zext i1 %238 to i32
  br label %240

240:                                              ; preds = %237, %221
  %241 = phi i32 [ %239, %237 ], [ 0, %221 ]
  %242 = getelementptr i8, ptr %217, i32 %241
  br label %243

243:                                              ; preds = %250, %240
  %244 = phi ptr [ %242, %240 ], [ %251, %250 ]
  %245 = load i8, ptr %244, align 1
  switch i8 %245, label %246 [
    i8 0, label %252
    i8 32, label %252
    i8 10, label %252
  ]

246:                                              ; preds = %243
  %247 = zext i8 %245 to i32
  %248 = add nsw i32 %247, -58
  %249 = icmp ult i32 %248, -10
  br i1 %249, label %317, label %250

250:                                              ; preds = %246
  %251 = getelementptr i8, ptr %244, i32 1
  br label %243

252:                                              ; preds = %243, %243, %243, %226, %226, %226
  %253 = phi ptr [ %244, %243 ], [ %244, %243 ], [ %244, %243 ], [ %227, %226 ], [ %227, %226 ], [ %227, %226 ]
  %254 = icmp eq ptr %253, %217
  br i1 %254, label %317, label %255

255:                                              ; preds = %252
  %256 = getelementptr inbounds %struct.hwreg_cfg, ptr %7, i32 0, i32 1
  %257 = call i32 @_kstrtoul(ptr noundef %217, i32 noundef 0, ptr noundef %256) #16
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %317

259:                                              ; preds = %255
  br i1 %36, label %271, label %260

260:                                              ; preds = %260, %259
  %261 = phi ptr [ %264, %260 ], [ %217, %259 ]
  %262 = load i8, ptr %261, align 1
  %263 = icmp eq i8 %262, 32
  %264 = getelementptr i8, ptr %261, i32 1
  br i1 %263, label %260, label %265

265:                                              ; preds = %260
  %266 = call fastcc i32 @strval_len(ptr noundef %261) #16
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %317, label %268

268:                                              ; preds = %265
  %269 = call i32 @kstrtouint(ptr noundef %261, i32 noundef 0, ptr noundef nonnull %5) #16
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %272, label %317

271:                                              ; preds = %259
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) @hwreg_cfg, ptr noundef nonnull align 4 dereferenceable(20) %7, i32 20, i1 false) #16
  br label %319

272:                                              ; preds = %268
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) @hwreg_cfg, ptr noundef nonnull align 4 dereferenceable(20) %7, i32 20, i1 false) #16
  %273 = load i32, ptr @hwreg_cfg, align 4
  %274 = trunc i32 %273 to i8
  %275 = load i32, ptr getelementptr inbounds (%struct.hwreg_cfg, ptr @hwreg_cfg, i32 0, i32 1), align 4
  %276 = trunc i32 %275 to i8
  %277 = call i32 @abx500_get_register_interruptible(ptr noundef %12, i8 noundef zeroext %274, i8 noundef zeroext %276, ptr noundef nonnull %6) #16
  %278 = icmp slt i32 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %272
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.25, i32 noundef %277, i32 noundef 1761) #15
  br label %317

280:                                              ; preds = %272
  %281 = load i32, ptr getelementptr inbounds (%struct.hwreg_cfg, ptr @hwreg_cfg, i32 0, i32 4), align 4
  %282 = icmp sgt i32 %281, -1
  %283 = load i32, ptr getelementptr inbounds (%struct.hwreg_cfg, ptr @hwreg_cfg, i32 0, i32 3), align 4
  br i1 %282, label %284, label %293

284:                                              ; preds = %280
  %285 = shl i32 %283, %281
  %286 = load i8, ptr %6, align 1
  %287 = trunc i32 %285 to i8
  %288 = xor i8 %287, -1
  %289 = and i8 %286, %288
  store i8 %289, ptr %6, align 1
  %290 = load i32, ptr %5, align 4
  %291 = and i32 %290, %283
  %292 = shl i32 %291, %281
  br label %303

293:                                              ; preds = %280
  %294 = sub i32 0, %281
  %295 = lshr i32 %283, %294
  %296 = load i8, ptr %6, align 1
  %297 = trunc i32 %295 to i8
  %298 = xor i8 %297, -1
  %299 = and i8 %296, %298
  store i8 %299, ptr %6, align 1
  %300 = load i32, ptr %5, align 4
  %301 = and i32 %300, %283
  %302 = lshr i32 %301, %294
  br label %303

303:                                              ; preds = %293, %284
  %304 = phi i8 [ %299, %293 ], [ %289, %284 ]
  %305 = phi i32 [ %302, %293 ], [ %292, %284 ]
  %306 = zext i8 %304 to i32
  %307 = or i32 %305, %306
  store i32 %307, ptr %5, align 4
  %308 = load i32, ptr @hwreg_cfg, align 4
  %309 = trunc i32 %308 to i8
  %310 = load i32, ptr getelementptr inbounds (%struct.hwreg_cfg, ptr @hwreg_cfg, i32 0, i32 1), align 4
  %311 = trunc i32 %310 to i8
  %312 = trunc i32 %307 to i8
  %313 = call i32 @abx500_set_register_interruptible(ptr noundef %12, i8 noundef zeroext %309, i8 noundef zeroext %311, i8 noundef zeroext %312) #16
  %314 = icmp slt i32 %313, 0
  br i1 %314, label %315, label %319

315:                                              ; preds = %303
  %316 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %313, i32 noundef 1777) #15
  br label %317

317:                                              ; preds = %315, %279, %268, %265, %255, %252, %246, %229, %213, %210, %203, %192, %178, %175, %169, %154, %135, %129, %126, %120, %105, %37
  %318 = phi i32 [ %269, %268 ], [ -22, %265 ], [ %257, %255 ], [ -22, %252 ], [ %214, %213 ], [ -22, %210 ], [ -22, %37 ], [ -22, %315 ], [ -22, %279 ], [ -22, %246 ], [ -22, %229 ], [ -22, %203 ], [ -22, %192 ], [ -22, %120 ], [ -22, %105 ], [ -22, %169 ], [ -22, %154 ], [ -22, %135 ], [ %179, %178 ], [ -22, %175 ], [ %130, %129 ], [ -22, %126 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %320

319:                                              ; preds = %303, %271
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %320

320:                                              ; preds = %319, %317, %30, %15
  %321 = phi i32 [ %13, %319 ], [ %318, %317 ], [ -14, %30 ], [ -14, %15 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #16
  ret i32 %321
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_hwreg_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @ab8500_hwreg_print, ptr noundef %4) #16
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #11

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i32 @strval_len(ptr noundef %0) unnamed_addr #13 {
  %2 = load i8, ptr %0, align 1
  %3 = icmp eq i8 %2, 48
  br i1 %3, label %4, label %20

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %0, i32 1
  %6 = load i8, ptr %5, align 1
  switch i8 %6, label %20 [
    i8 120, label %7
    i8 88, label %7
  ]

7:                                                ; preds = %4, %4
  %8 = getelementptr i8, ptr %0, i32 2
  br label %9

9:                                                ; preds = %18, %7
  %10 = phi ptr [ %8, %7 ], [ %19, %18 ]
  %11 = load i8, ptr %10, align 1
  switch i8 %11, label %12 [
    i8 0, label %33
    i8 32, label %33
    i8 10, label %33
  ]

12:                                               ; preds = %9
  %13 = zext i8 %11 to i32
  %14 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %13
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, 68
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %38, label %18

18:                                               ; preds = %12
  %19 = getelementptr i8, ptr %10, i32 1
  br label %9

20:                                               ; preds = %4, %1
  %21 = icmp eq i8 %2, 45
  %22 = zext i1 %21 to i32
  %23 = getelementptr i8, ptr %0, i32 %22
  br label %24

24:                                               ; preds = %31, %20
  %25 = phi ptr [ %23, %20 ], [ %32, %31 ]
  %26 = load i8, ptr %25, align 1
  switch i8 %26, label %27 [
    i8 0, label %33
    i8 32, label %33
    i8 10, label %33
  ]

27:                                               ; preds = %24
  %28 = zext i8 %26 to i32
  %29 = add nsw i32 %28, -58
  %30 = icmp ult i32 %29, -10
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = getelementptr i8, ptr %25, i32 1
  br label %24

33:                                               ; preds = %24, %24, %24, %9, %9, %9
  %34 = phi ptr [ %25, %24 ], [ %25, %24 ], [ %25, %24 ], [ %10, %9 ], [ %10, %9 ], [ %10, %9 ]
  %35 = ptrtoint ptr %34 to i32
  %36 = ptrtoint ptr %0 to i32
  %37 = sub i32 %35, %36
  br label %38

38:                                               ; preds = %33, %27, %12
  %39 = phi i32 [ %37, %33 ], [ 0, %27 ], [ 0, %12 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_hwreg_print(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #16
  store i8 0, ptr %3, align 1, !annotation !8
  %6 = load i32, ptr @hwreg_cfg, align 4
  %7 = trunc i32 %6 to i8
  %8 = load i32, ptr getelementptr inbounds (%struct.hwreg_cfg, ptr @hwreg_cfg, i32 0, i32 1), align 4
  %9 = trunc i32 %8 to i8
  %10 = call i32 @abx500_get_register_interruptible(ptr noundef %5, i8 noundef zeroext %7, i8 noundef zeroext %9, ptr noundef nonnull %3) #16
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.25, i32 noundef %10, i32 noundef 1544) #15
  br label %36

13:                                               ; preds = %2
  %14 = load i32, ptr getelementptr inbounds (%struct.hwreg_cfg, ptr @hwreg_cfg, i32 0, i32 4), align 4
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i8, ptr %3, align 1
  %18 = zext i8 %17 to i32
  %19 = lshr i32 %18, %14
  br label %25

20:                                               ; preds = %13
  %21 = sub i32 0, %14
  %22 = load i8, ptr %3, align 1
  %23 = zext i8 %22 to i32
  %24 = shl i32 %23, %21
  br label %25

25:                                               ; preds = %20, %16
  %26 = phi i32 [ %24, %20 ], [ %19, %16 ]
  %27 = load i32, ptr getelementptr inbounds (%struct.hwreg_cfg, ptr @hwreg_cfg, i32 0, i32 3), align 4
  %28 = and i32 %27, %26
  %29 = trunc i32 %28 to i8
  store i8 %29, ptr %3, align 1
  %30 = load i32, ptr getelementptr inbounds (%struct.hwreg_cfg, ptr @hwreg_cfg, i32 0, i32 2), align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  %33 = and i32 %28, 255
  br i1 %32, label %35, label %34

34:                                               ; preds = %25
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.33, i32 noundef %33) #16
  br label %36

35:                                               ; preds = %25
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %33) #16
  br label %36

36:                                               ; preds = %35, %34, %12
  %37 = phi i32 [ -22, %12 ], [ 0, %35 ], [ 0, %34 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #16
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_modem_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @ab8500_modem_show, ptr noundef %4) #16
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_modem_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #16
  store i8 0, ptr %3, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #16
  store i8 0, ptr %4, align 1, !annotation !8
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.97) #15
  %11 = call i32 @abx500_get_register_interruptible(ptr noundef %6, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull %4) #16
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %36, label %13

13:                                               ; preds = %2
  %14 = call i32 @abx500_set_register_interruptible(ptr noundef %6, i8 noundef zeroext 3, i8 noundef zeroext 0, i8 noundef zeroext 1) #16
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %38, label %16

16:                                               ; preds = %13
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef 4) #16
  %17 = getelementptr inbounds %struct.ab8500, ptr %10, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, -1
  %20 = icmp ult i32 %19, 2
  %21 = select i1 %20, i32 141, i32 140
  br label %22

22:                                               ; preds = %27, %16
  %23 = phi i32 [ 128, %16 ], [ %30, %27 ]
  %24 = trunc i32 %23 to i8
  %25 = call i32 @abx500_get_register_interruptible(ptr noundef %6, i8 noundef zeroext 4, i8 noundef zeroext %24, ptr noundef nonnull %3) #16
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %22
  %28 = load i8, ptr %3, align 1
  %29 = zext i8 %28 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef 4, i32 noundef %23, i32 noundef %29) #16
  %30 = add nuw nsw i32 %23, 1
  %31 = icmp eq i32 %30, %21
  br i1 %31, label %32, label %22

32:                                               ; preds = %27
  %33 = load i8, ptr %4, align 1
  %34 = call i32 @abx500_set_register_interruptible(ptr noundef %6, i8 noundef zeroext 3, i8 noundef zeroext 0, i8 noundef zeroext %33) #16
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %38, label %40

36:                                               ; preds = %22, %2
  %37 = phi i32 [ %11, %2 ], [ %25, %22 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.2, i32 noundef %37) #15
  br label %40

38:                                               ; preds = %32, %13
  %39 = phi i32 [ %14, %13 ], [ %34, %32 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.98, i32 noundef %39) #15
  br label %40

40:                                               ; preds = %38, %36, %32
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ], [ 0, %32 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #16
  ret i32 %41
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind readnone }
attributes #19 = { nounwind readonly }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2151017276, i64 2151017301}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 3513388}
!13 = !{i64 3513585}
!14 = !{i64 2150998864}
