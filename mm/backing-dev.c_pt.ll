; ModuleID = '/llk/IR/mm/backing-dev.c_pt.bc'
source_filename = "../mm/backing-dev.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_noop_backing_dev_info:\09\09\09\09\09"
module asm "\09.asciz \09\22noop_backing_dev_info\22\09\09\09\09\09"
module asm "__kstrtabns_noop_backing_dev_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bdi_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22bdi_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_bdi_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bdi_register:\09\09\09\09\09"
module asm "\09.asciz \09\22bdi_register\22\09\09\09\09\09"
module asm "__kstrtabns_bdi_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bdi_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22bdi_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_bdi_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bdi_put:\09\09\09\09\09"
module asm "\09.asciz \09\22bdi_put\22\09\09\09\09\09"
module asm "__kstrtabns_bdi_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inode_to_bdi:\09\09\09\09\09"
module asm "\09.asciz \09\22inode_to_bdi\22\09\09\09\09\09"
module asm "__kstrtabns_inode_to_bdi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bdi_dev_name:\09\09\09\09\09"
module asm "\09.asciz \09\22bdi_dev_name\22\09\09\09\09\09"
module asm "__kstrtabns_bdi_dev_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clear_bdi_congested:\09\09\09\09\09"
module asm "\09.asciz \09\22clear_bdi_congested\22\09\09\09\09\09"
module asm "__kstrtabns_clear_bdi_congested:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_bdi_congested:\09\09\09\09\09"
module asm "\09.asciz \09\22set_bdi_congested\22\09\09\09\09\09"
module asm "__kstrtabns_set_bdi_congested:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_congestion_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22congestion_wait\22\09\09\09\09\09"
module asm "__kstrtabns_congestion_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.lock_class_key = type {}
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__va_list = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, ptr, %struct.address_space, %struct.list_head, %union.anon.72, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.69 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.70 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.71 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.72 = type { ptr }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.lockdep_map = type {}
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@noop_backing_dev_info = dso_local global %struct.backing_dev_info zeroinitializer, align 8
@__kstrtab_noop_backing_dev_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_noop_backing_dev_info = external dso_local constant [0 x i8], align 1
@__ksymtab_noop_backing_dev_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @noop_backing_dev_info to i32), ptr @__kstrtab_noop_backing_dev_info, ptr @__kstrtabns_noop_backing_dev_info }, section "___ksymtab_gpl+noop_backing_dev_info", align 4
@bdi_lock = dso_local global %struct.spinlock zeroinitializer, align 4
@bdi_list = dso_local global %struct.list_head { ptr @bdi_list, ptr @bdi_list }, align 4
@__initcall__kmod_backing_dev__334_231_bdi_class_init2 = internal global ptr @bdi_class_init, section ".initcall2.init", align 4
@__initcall__kmod_backing_dev__335_248_default_bdi_init4 = internal global ptr @default_bdi_init, section ".initcall4.init", align 4
@dirty_writeback_interval = external dso_local local_unnamed_addr global i32, align 4
@bdi_wq = dso_local local_unnamed_addr global ptr null, align 4
@__kstrtab_bdi_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_bdi_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_bdi_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bdi_alloc to i32), ptr @__kstrtab_bdi_alloc, ptr @__kstrtabns_bdi_alloc }, section "___ksymtab+bdi_alloc", align 4
@bdi_class = internal unnamed_addr global ptr null, align 4
@bdi_id_cursor = internal unnamed_addr global i64 0, align 8
@bdi_tree = internal global %struct.rb_root zeroinitializer, align 4
@__kstrtab_bdi_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_bdi_register = external dso_local constant [0 x i8], align 1
@__ksymtab_bdi_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bdi_register to i32), ptr @__kstrtab_bdi_register, ptr @__kstrtabns_bdi_register }, section "___ksymtab+bdi_register", align 4
@bdi_set_owner.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [17 x i8] c"mm/backing-dev.c\00", align 1
@__kstrtab_bdi_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_bdi_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_bdi_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bdi_unregister to i32), ptr @__kstrtab_bdi_unregister, ptr @__kstrtabns_bdi_unregister }, section "___ksymtab+bdi_unregister", align 4
@__kstrtab_bdi_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_bdi_put = external dso_local constant [0 x i8], align 1
@__ksymtab_bdi_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bdi_put to i32), ptr @__kstrtab_bdi_put, ptr @__kstrtabns_bdi_put }, section "___ksymtab+bdi_put", align 4
@__kstrtab_inode_to_bdi = external dso_local constant [0 x i8], align 1
@__kstrtabns_inode_to_bdi = external dso_local constant [0 x i8], align 1
@__ksymtab_inode_to_bdi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inode_to_bdi to i32), ptr @__kstrtab_inode_to_bdi, ptr @__kstrtabns_inode_to_bdi }, section "___ksymtab+inode_to_bdi", align 4
@__kstrtab_bdi_dev_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_bdi_dev_name = external dso_local constant [0 x i8], align 1
@__ksymtab_bdi_dev_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bdi_dev_name to i32), ptr @__kstrtab_bdi_dev_name, ptr @__kstrtabns_bdi_dev_name }, section "___ksymtab_gpl+bdi_dev_name", align 4
@congestion_wqh = internal global [2 x %struct.wait_queue_head] [%struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @congestion_wqh, i64 4), ptr getelementptr (i8, ptr @congestion_wqh, i64 4) } }, %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @congestion_wqh, i64 16), ptr getelementptr (i8, ptr @congestion_wqh, i64 16) } }], align 4
@nr_wb_congested = internal global [2 x %struct.atomic_t] zeroinitializer, align 4
@__kstrtab_clear_bdi_congested = external dso_local constant [0 x i8], align 1
@__kstrtabns_clear_bdi_congested = external dso_local constant [0 x i8], align 1
@__ksymtab_clear_bdi_congested = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clear_bdi_congested to i32), ptr @__kstrtab_clear_bdi_congested, ptr @__kstrtabns_clear_bdi_congested }, section "___ksymtab+clear_bdi_congested", align 4
@__kstrtab_set_bdi_congested = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_bdi_congested = external dso_local constant [0 x i8], align 1
@__ksymtab_set_bdi_congested = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_bdi_congested to i32), ptr @__kstrtab_set_bdi_congested, ptr @__kstrtabns_set_bdi_congested }, section "___ksymtab+set_bdi_congested", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_congestion_wait = external dso_local constant [0 x i8], align 1
@__kstrtabns_congestion_wait = external dso_local constant [0 x i8], align 1
@__ksymtab_congestion_wait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @congestion_wait to i32), ptr @__kstrtab_congestion_wait, ptr @__kstrtabns_congestion_wait }, section "___ksymtab+congestion_wait", align 4
@bdi_class_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"bdi\00", align 1
@bdi_dev_groups = internal global [2 x ptr] [ptr @bdi_dev_group, ptr null], align 4
@bdi_dev_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @bdi_dev_attrs, ptr null }, align 4
@bdi_dev_attrs = internal global [5 x ptr] [ptr @dev_attr_read_ahead_kb, ptr @dev_attr_min_ratio, ptr @dev_attr_max_ratio, ptr @dev_attr_stable_pages_required, ptr null], align 4
@dev_attr_read_ahead_kb = internal global %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 420 }, ptr @read_ahead_kb_show, ptr @read_ahead_kb_store }, align 4
@dev_attr_min_ratio = internal global %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 420 }, ptr @min_ratio_show, ptr @min_ratio_store }, align 4
@dev_attr_max_ratio = internal global %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 420 }, ptr @max_ratio_show, ptr @max_ratio_store }, align 4
@dev_attr_stable_pages_required = internal global %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292 }, ptr @stable_pages_required_show, ptr null }, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"read_ahead_kb\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"min_ratio\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"max_ratio\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"stable_pages_required\00", align 1
@stable_pages_required_show.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.7 = private unnamed_addr constant [102 x i8] c"the stable_pages_required attribute has been removed. Use the stable_writes queue attribute instead.\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@bdi_debug_root = internal unnamed_addr global ptr null, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"writeback\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@bdi_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"&bdi->wb_waitq\00", align 1
@wb_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@bdi_debug_stats_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @bdi_debug_stats_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.12 = private unnamed_addr constant [390 x i8] c"BdiWriteback:       %10lu kB\0ABdiReclaimable:     %10lu kB\0ABdiDirtyThresh:     %10lu kB\0ADirtyThresh:        %10lu kB\0ABackgroundThresh:   %10lu kB\0ABdiDirtied:         %10lu kB\0ABdiWritten:         %10lu kB\0ABdiWriteBandwidth:  %10lu kBps\0Ab_dirty:            %10lu\0Ab_io:               %10lu\0Ab_more_io:          %10lu\0Ab_dirty_time:       %10lu\0Abdi_list:           %10u\0Astate:              %10lx\0A\00", align 1
@__tracepoint_writeback_bdi_register = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@release_bdi.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@release_bdi.__already_done.14 = internal unnamed_addr global i1 false, section ".data.once", align 1
@blockdev_superblock = external dso_local local_unnamed_addr global ptr, align 4
@.str.15 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@__tracepoint_writeback_congestion_wait = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [12 x ptr] [ptr @__initcall__kmod_backing_dev__334_231_bdi_class_init2, ptr @__initcall__kmod_backing_dev__335_248_default_bdi_init4, ptr @__ksymtab_bdi_alloc, ptr @__ksymtab_bdi_dev_name, ptr @__ksymtab_bdi_put, ptr @__ksymtab_bdi_register, ptr @__ksymtab_bdi_unregister, ptr @__ksymtab_clear_bdi_congested, ptr @__ksymtab_congestion_wait, ptr @__ksymtab_inode_to_bdi, ptr @__ksymtab_noop_backing_dev_info, ptr @__ksymtab_set_bdi_congested], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bdi_class_init() #0 section ".init.text" {
  %1 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull @bdi_class_init.__key) #12
  store ptr %1, ptr @bdi_class, align 4
  %2 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = ptrtoint ptr %1 to i32
  br label %8

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.class, ptr %1, i32 0, i32 3
  store ptr @bdi_dev_groups, ptr %6, align 4
  %7 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.1, ptr noundef null) #12
  store ptr %7, ptr @bdi_debug_root, align 4
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi i32 [ %4, %3 ], [ 0, %5 ]
  ret i32 %9
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @default_bdi_init() #0 section ".init.text" {
  %1 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.9, i32 noundef 74, i32 noundef 0) #12
  store ptr %1, ptr @bdi_wq, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call fastcc i32 @bdi_init(ptr noundef nonnull @noop_backing_dev_info)
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi i32 [ %4, %3 ], [ -12, %0 ]
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wb_wakeup_delayed(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load i32, ptr @dirty_writeback_interval, align 4
  %3 = mul i32 %2, 10
  %4 = tail call i32 @__msecs_to_jiffies(i32 noundef %3) #12
  %5 = getelementptr inbounds %struct.bdi_writeback, ptr %0, i32 0, i32 21
  tail call void @_raw_spin_lock_bh(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.bdi_writeback, ptr %0, i32 0, i32 1
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr @bdi_wq, align 4
  %12 = getelementptr inbounds %struct.bdi_writeback, ptr %0, i32 0, i32 23
  %13 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %11, ptr noundef %12, i32 noundef %4) #12
  br label %14

14:                                               ; preds = %10, %1
  tail call void @_raw_spin_unlock_bh(ptr noundef %5) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @bdi_alloc(i32 %0) #1 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 560) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @bdi_init(ptr noundef nonnull %3)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @kfree(ptr noundef nonnull %3) #12
  br label %14

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.backing_dev_info, ptr %3, i32 0, i32 6
  store i32 3, ptr %10, align 8
  %11 = getelementptr inbounds %struct.backing_dev_info, ptr %3, i32 0, i32 3
  store i32 32, ptr %11, align 4
  %12 = getelementptr inbounds %struct.backing_dev_info, ptr %3, i32 0, i32 4
  store i32 32, ptr %12, align 8
  %13 = getelementptr inbounds %struct.backing_dev_info, ptr %3, i32 0, i32 17
  tail call void @init_timer_key(ptr noundef %13, ptr noundef nonnull @laptop_mode_timer_fn, i32 noundef 0, ptr noundef null, ptr noundef null) #12
  br label %14

14:                                               ; preds = %9, %8, %1
  %15 = phi ptr [ null, %8 ], [ %3, %9 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bdi_init(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 14
  store ptr null, ptr %2, align 4
  %3 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 5
  store volatile i32 1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 7
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 8
  store i32 100, ptr %5, align 8
  %6 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 9
  store i32 1024, ptr %6, align 4
  %7 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 2
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 2, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 12
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 12, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 13
  tail call void @__init_waitqueue_head(ptr noundef %11, ptr noundef nonnull @.str.10, ptr noundef nonnull @bdi_init.__key) #12
  %12 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(376) %12, i8 0, i32 376, i1 false) #12
  store ptr %0, ptr %12, align 8
  %13 = load volatile i32, ptr @jiffies, align 64
  %14 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 2
  store i32 %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 3
  store volatile ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 3, i32 1
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 4
  store volatile ptr %17, ptr %17, align 4
  %18 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 4, i32 1
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 5
  store volatile ptr %19, ptr %19, align 4
  %20 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 5, i32 1
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 6
  store volatile ptr %21, ptr %21, align 4
  %22 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 6, i32 1
  store ptr %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 7
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 8
  store volatile i32 0, ptr %24, align 4
  %25 = load volatile i32, ptr @jiffies, align 64
  %26 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 11
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 17
  store i32 25600, ptr %27, align 4
  %28 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 16
  store i32 25600, ptr %28, align 8
  %29 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 14
  store i32 25600, ptr %29, align 8
  %30 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 15
  store i32 25600, ptr %30, align 4
  %31 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 21
  store i32 0, ptr %31, align 8
  %32 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 22
  store volatile ptr %32, ptr %32, align 4
  %33 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 22, i32 1
  store ptr %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 23
  store i32 -32, ptr %34, align 4
  %35 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 23, i32 0, i32 1
  store volatile ptr %35, ptr %35, align 4
  %36 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 23, i32 0, i32 1, i32 1
  store ptr %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 23, i32 0, i32 2
  store ptr @wb_workfn, ptr %37, align 4
  %38 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 23, i32 1
  tail call void @init_timer_key(ptr noundef %38, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #12
  %39 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 24
  store i32 -32, ptr %39, align 8
  %40 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 24, i32 0, i32 1
  store volatile ptr %40, ptr %40, align 4
  %41 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 24, i32 0, i32 1, i32 1
  store ptr %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 24, i32 0, i32 2
  store ptr @wb_update_bandwidth_workfn, ptr %42, align 4
  %43 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 24, i32 1
  tail call void @init_timer_key(ptr noundef %43, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #12
  %44 = load volatile i32, ptr @jiffies, align 64
  %45 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 25
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 18
  %47 = tail call i32 @fprop_local_init_percpu(ptr noundef %46, i32 noundef 3264) #12
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %78

49:                                               ; preds = %1
  %50 = getelementptr %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 9
  %51 = tail call i32 @__percpu_counter_init(ptr noundef %50, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @wb_init.__key) #12
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %49
  %54 = getelementptr %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 9, i32 1
  %55 = tail call i32 @__percpu_counter_init(ptr noundef %54, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @wb_init.__key) #12
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = getelementptr %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 9, i32 2
  %59 = tail call i32 @__percpu_counter_init(ptr noundef %58, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @wb_init.__key) #12
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = getelementptr %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 9, i32 3
  %63 = tail call i32 @__percpu_counter_init(ptr noundef %62, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @wb_init.__key) #12
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %61, %57, %53
  %66 = phi i32 [ 2, %61 ], [ 1, %57 ], [ 0, %53 ]
  %67 = phi i32 [ %63, %61 ], [ %59, %57 ], [ %55, %53 ]
  %68 = getelementptr %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 9, i32 %66
  tail call void @percpu_counter_destroy(ptr noundef %68) #12
  br i1 %56, label %69, label %76

69:                                               ; preds = %65
  %70 = add nsw i32 %66, -1
  %71 = getelementptr %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 9, i32 %70
  tail call void @percpu_counter_destroy(ptr noundef %71) #12
  %72 = icmp eq i32 %70, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = add nsw i32 %66, -2
  %75 = getelementptr %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 9, i32 %74
  tail call void @percpu_counter_destroy(ptr noundef %75) #12
  br label %76

76:                                               ; preds = %73, %69, %65, %49
  %77 = phi i32 [ %51, %49 ], [ %67, %73 ], [ %67, %69 ], [ %67, %65 ]
  tail call void @fprop_local_destroy_percpu(ptr noundef %46) #12
  br label %78

78:                                               ; preds = %76, %61, %1
  %79 = phi i32 [ %77, %76 ], [ %47, %1 ], [ 0, %61 ]
  ret i32 %79
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @laptop_mode_timer_fn(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @bdi_get_by_id(i64 noundef %0) local_unnamed_addr #1 {
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @bdi_lock) #12
  %2 = load ptr, ptr @bdi_tree, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %31, label %4

4:                                                ; preds = %15, %1
  %5 = phi ptr [ %17, %15 ], [ %2, %1 ]
  %6 = getelementptr i8, ptr %5, i32 -8
  %7 = load i64, ptr %6, align 8
  %8 = icmp ugt i64 %7, %0
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 2
  br label %15

11:                                               ; preds = %4
  %12 = icmp ult i64 %7, %0
  br i1 %12, label %13, label %19

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 1
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi ptr [ %10, %9 ], [ %14, %13 ]
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %31, label %4

19:                                               ; preds = %11
  %20 = getelementptr i8, ptr %5, i32 -8
  %21 = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #12, !srcloc !8
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 1, ptr elementtype(i32) %21) #12, !srcloc !9
  %23 = extractvalue { i32, i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25, !prof !10

25:                                               ; preds = %19
  %26 = add i32 %23, 1
  %27 = or i32 %26, %23
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %31, label %29, !prof !11

29:                                               ; preds = %25, %19
  %30 = phi i32 [ 2, %19 ], [ 1, %25 ]
  tail call void @refcount_warn_saturate(ptr noundef %21, i32 noundef %30) #12
  br label %31

31:                                               ; preds = %29, %25, %15, %1
  %32 = phi ptr [ %20, %25 ], [ %20, %29 ], [ null, %1 ], [ null, %15 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @bdi_lock) #12
  ret ptr %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bdi_register_va(ptr noundef %0, ptr nocapture noundef readonly %1, [1 x i32] %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %78

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 15
  %9 = tail call i32 @vsnprintf(ptr noundef %8, i32 noundef 64, ptr noundef %1, [1 x i32] %2)
  %10 = load ptr, ptr @bdi_class, align 4
  %11 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %10, ptr noundef null, i32 noundef 0, ptr noundef %0, ptr noundef %8) #12
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = ptrtoint ptr %11 to i32
  br label %78

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 26
  %17 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 12
  %18 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 12, i32 1
  %19 = load ptr, ptr %18, align 4
  store ptr %17, ptr %16, align 4
  %20 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 26, i32 1
  store ptr %19, ptr %20, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  store volatile ptr %16, ptr %19, align 4
  store ptr %16, ptr %18, align 4
  store ptr %11, ptr %4, align 4
  %21 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load ptr, ptr %11, align 4
  br label %26

26:                                               ; preds = %24, %15
  %27 = phi ptr [ %25, %24 ], [ %22, %15 ]
  %28 = load ptr, ptr @bdi_debug_root, align 4
  %29 = tail call ptr @debugfs_create_dir(ptr noundef %27, ptr noundef %28) #12
  %30 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 18
  store ptr %29, ptr %30, align 8
  %31 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.11, i16 noundef zeroext 292, ptr noundef %29, ptr noundef %0, ptr noundef nonnull @bdi_debug_stats_fops) #12
  %32 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 1
  tail call void @_set_bit(i32 noundef 0, ptr noundef %32) #12
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @bdi_lock) #12
  %33 = load i64, ptr @bdi_id_cursor, align 8
  %34 = add i64 %33, 1
  store i64 %34, ptr @bdi_id_cursor, align 8
  store i64 %34, ptr %0, align 8
  %35 = load ptr, ptr @bdi_tree, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %53, label %37

37:                                               ; preds = %49, %26
  %38 = phi ptr [ %51, %49 ], [ %35, %26 ]
  %39 = phi ptr [ %50, %49 ], [ @bdi_tree, %26 ]
  %40 = getelementptr i8, ptr %38, i32 -8
  %41 = load i64, ptr %40, align 8
  %42 = icmp ugt i64 %41, %34
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.rb_node, ptr %38, i32 0, i32 2
  br label %49

45:                                               ; preds = %37
  %46 = icmp ult i64 %41, %34
  br i1 %46, label %47, label %53

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.rb_node, ptr %38, i32 0, i32 1
  br label %49

49:                                               ; preds = %47, %43
  %50 = phi ptr [ %44, %43 ], [ %48, %47 ]
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %37

53:                                               ; preds = %49, %45, %26
  %54 = phi ptr [ @bdi_tree, %26 ], [ %50, %49 ], [ %39, %45 ]
  %55 = phi ptr [ null, %26 ], [ %38, %49 ], [ %38, %45 ]
  %56 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 1
  %57 = ptrtoint ptr %55 to i32
  store i32 %57, ptr %56, align 4
  %58 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 1, i32 1
  store ptr null, ptr %58, align 4
  %59 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 1, i32 2
  store ptr null, ptr %59, align 4
  store ptr %56, ptr %54, align 4
  tail call void @rb_insert_color(ptr noundef %56, ptr noundef nonnull @bdi_tree) #12
  %60 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 2
  %61 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @bdi_list, i32 0, i32 1), align 4
  store ptr @bdi_list, ptr %60, align 4
  %62 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 2, i32 1
  store ptr %61, ptr %62, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  store volatile ptr %60, ptr %61, align 4
  store ptr %60, ptr getelementptr inbounds (%struct.list_head, ptr @bdi_list, i32 0, i32 1), align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @bdi_lock) #12
  %63 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_bdi_register, i32 0, i32 1), align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %53
  %66 = tail call ptr @llvm.thread.pointer() #12
  %67 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 2
  %68 = load i32, ptr %67, align 8
  %69 = lshr i32 %68, 5
  %70 = getelementptr i32, ptr @__cpu_online_mask, i32 %69
  %71 = load volatile i32, ptr %70, align 4
  %72 = and i32 %68, 31
  %73 = shl nuw i32 1, %72
  %74 = and i32 %73, %71
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %65
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %77 = tail call i32 @__traceiter_writeback_bdi_register(ptr noundef null, ptr noundef %0) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  br label %78

78:                                               ; preds = %76, %65, %53, %13, %3
  %79 = phi i32 [ %14, %13 ], [ 0, %3 ], [ 0, %53 ], [ 0, %65 ], [ 0, %76 ]
  ret i32 %79
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bdi_register(ptr noundef %0, ptr nocapture noundef readonly %1, ...) #1 {
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !15
  call void @llvm.va_start(ptr nonnull %3)
  %4 = load i32, ptr %3, align 4
  %5 = insertvalue [1 x i32] poison, i32 %4, 0
  %6 = call i32 @bdi_register_va(ptr noundef %0, ptr noundef %1, [1 x i32] %5)
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 %6
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bdi_set_owner(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 8
  %5 = icmp ne ptr %4, null
  %6 = load i1, ptr @bdi_set_owner.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !10

9:                                                ; preds = %2
  store i1 true, ptr @bdi_set_owner.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 921, i32 noundef 9, ptr noundef null) #12
  br label %10

10:                                               ; preds = %9, %2
  store ptr %1, ptr %3, align 8
  %11 = tail call ptr @get_device(ptr noundef %1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bdi_unregister(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 17
  %3 = tail call i32 @del_timer_sync(ptr noundef %2) #12
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @bdi_lock) #12
  %4 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 1
  tail call void @rb_erase(ptr noundef %4, ptr noundef nonnull @bdi_tree) #12
  %5 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 2
  %6 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 2, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %7, ptr %9, align 4
  store volatile ptr %8, ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %6, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @bdi_lock) #12
  tail call void @synchronize_rcu_expedited() #12
  %10 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 21
  tail call void @_raw_spin_lock_bh(ptr noundef %10) #12
  %11 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 1
  %12 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %11) #12
  %13 = icmp eq i32 %12, 0
  tail call void @_raw_spin_unlock_bh(ptr noundef %10) #12
  br i1 %13, label %31, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 26
  %16 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 26, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %15, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %17, ptr %19, align 4
  store volatile ptr %18, ptr %17, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %16, align 4
  %20 = load ptr, ptr @bdi_wq, align 4
  %21 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 23
  %22 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %20, ptr noundef %21, i32 noundef 0) #12
  %23 = tail call zeroext i1 @flush_delayed_work(ptr noundef %21) #12
  %24 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 22
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %28, label %27, !prof !11

27:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 358, i32 noundef 9, ptr noundef null) #12
  br label %28

28:                                               ; preds = %27, %14
  %29 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 24
  %30 = tail call zeroext i1 @flush_delayed_work(ptr noundef %29) #12
  br label %31

31:                                               ; preds = %28, %1
  %32 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 7
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = tail call i32 @bdi_set_min_ratio(ptr noundef %0, i32 noundef 0) #12
  br label %37

37:                                               ; preds = %35, %31
  %38 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 14
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 18
  %43 = load ptr, ptr %42, align 8
  tail call void @debugfs_remove(ptr noundef %43) #12
  %44 = load ptr, ptr %38, align 4
  tail call void @device_unregister(ptr noundef %44) #12
  store ptr null, ptr %38, align 4
  br label %45

45:                                               ; preds = %41, %37
  %46 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 16
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void @put_device(ptr noundef nonnull %47) #12
  store ptr null, ptr %46, align 8
  br label %50

50:                                               ; preds = %49, %45
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdi_set_min_ratio(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bdi_put(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #12, !srcloc !8
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #12, !srcloc !17
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %38, label %8, !prof !11

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #12
  br label %38

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !18
  %10 = getelementptr %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 1
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  %14 = load i1, ptr @release_bdi.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !10

17:                                               ; preds = %9
  store i1 true, ptr @release_bdi.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 973, i32 noundef 9, ptr noundef null) #12
  br label %18

18:                                               ; preds = %17, %9
  %19 = getelementptr %struct.backing_dev_info, ptr %0, i32 0, i32 14
  %20 = load ptr, ptr %19, align 4
  %21 = icmp ne ptr %20, null
  %22 = load i1, ptr @release_bdi.__already_done.14, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %26, !prof !10

25:                                               ; preds = %18
  store i1 true, ptr @release_bdi.__already_done.14, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 974, i32 noundef 9, ptr noundef null) #12
  br label %26

26:                                               ; preds = %25, %18
  %27 = getelementptr %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 23
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31, !prof !11

31:                                               ; preds = %26
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 366, i32 noundef 9, ptr noundef null) #12
  br label %32

32:                                               ; preds = %31, %26
  %33 = getelementptr %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 9
  tail call void @percpu_counter_destroy(ptr noundef %33) #12
  %34 = getelementptr %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 9, i32 1
  tail call void @percpu_counter_destroy(ptr noundef %34) #12
  %35 = getelementptr %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 9, i32 2
  tail call void @percpu_counter_destroy(ptr noundef %35) #12
  %36 = getelementptr %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 9, i32 3
  tail call void @percpu_counter_destroy(ptr noundef %36) #12
  %37 = getelementptr %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 18
  tail call void @fprop_local_destroy_percpu(ptr noundef %37) #12
  tail call void @kfree(ptr noundef %0) #12
  br label %38

38:                                               ; preds = %32, %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @inode_to_bdi(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr @blockdev_superblock, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = tail call ptr @I_BDEV(ptr noundef nonnull %0) #12
  %10 = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 17
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.gendisk, ptr %11, i32 0, i32 15
  %13 = load ptr, ptr %12, align 4
  br label %17

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 21
  %16 = load ptr, ptr %15, align 8
  br label %17

17:                                               ; preds = %14, %8, %1
  %18 = phi ptr [ %13, %8 ], [ %16, %14 ], [ @noop_backing_dev_info, %1 ]
  ret ptr %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @I_BDEV(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @bdi_dev_name(ptr noundef readonly %0) #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 15
  %8 = select i1 %6, ptr @.str.15, ptr %7
  br label %9

9:                                                ; preds = %3, %1
  %10 = phi ptr [ @.str.15, %1 ], [ %8, %3 ]
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clear_bdi_congested(ptr noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr [2 x %struct.wait_queue_head], ptr @congestion_wqh, i32 0, i32 %1
  %4 = icmp ne i32 %1, 0
  %5 = zext i1 %4 to i32
  %6 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 10
  %7 = tail call i32 @_test_and_clear_bit(i32 noundef %5, ptr noundef %6) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr [2 x %struct.atomic_t], ptr @nr_wb_congested, i32 0, i32 %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #12, !srcloc !8
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #12, !srcloc !19
  br label %12

12:                                               ; preds = %9, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !20
  %13 = getelementptr [2 x %struct.wait_queue_head], ptr @congestion_wqh, i32 0, i32 %1, i32 1
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @__wake_up(ptr noundef %3, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %17

17:                                               ; preds = %16, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @set_bdi_congested(ptr noundef %0, i32 noundef %1) #1 {
  %3 = icmp ne i32 %1, 0
  %4 = zext i1 %3 to i32
  %5 = getelementptr inbounds %struct.backing_dev_info, ptr %0, i32 0, i32 11, i32 10
  %6 = tail call i32 @_test_and_set_bit(i32 noundef %4, ptr noundef %5) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr [2 x %struct.atomic_t], ptr @nr_wb_congested, i32 0, i32 %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #12, !srcloc !8
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #12, !srcloc !21
  br label %11

11:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @congestion_wait(i32 noundef %0, i32 noundef %1) #1 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = load volatile i32, ptr @jiffies, align 64
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #12
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 1
  %6 = tail call ptr @llvm.thread.pointer() #12
  store i32 0, ptr %3, align 4
  store ptr %6, ptr %5, align 4
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 2
  store ptr @autoremove_wake_function, ptr %7, align 4
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3
  store ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr [2 x %struct.wait_queue_head], ptr @congestion_wqh, i32 0, i32 %0
  call void @prepare_to_wait(ptr noundef %10, ptr noundef nonnull %3, i32 noundef 2) #12
  %11 = call i32 @io_schedule_timeout(i32 noundef %1) #12
  call void @finish_wait(ptr noundef %10, ptr noundef nonnull %3) #12
  %12 = call i32 @jiffies_to_usecs(i32 noundef %1) #12
  %13 = load volatile i32, ptr @jiffies, align 64
  %14 = sub i32 %13, %4
  %15 = call i32 @jiffies_to_usecs(i32 noundef %14) #12
  %16 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_congestion_wait, i32 0, i32 1), align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 5
  %22 = getelementptr i32, ptr @__cpu_online_mask, i32 %21
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %20, 31
  %25 = shl nuw i32 1, %24
  %26 = and i32 %25, %23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %18
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !22
  %29 = call i32 @__traceiter_writeback_congestion_wait(ptr noundef null, i32 noundef %12, i32 noundef %15) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !23
  br label %30

30:                                               ; preds = %28, %18, %2
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #12
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @io_schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @read_ahead_kb_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.backing_dev_info, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = shl i32 %7, 2
  %9 = zext i32 %8 to i64
  %10 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.3, i64 noundef %9) #12
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @read_ahead_kb_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #1 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !15
  %8 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #12
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = lshr i32 %11, 2
  %13 = getelementptr inbounds %struct.backing_dev_info, ptr %7, i32 0, i32 3
  store i32 %12, ptr %13, align 4
  br label %14

14:                                               ; preds = %10, %4
  %15 = phi i32 [ %3, %10 ], [ %8, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @min_ratio_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.backing_dev_info, ptr %5, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = zext i32 %7 to i64
  %9 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.3, i64 noundef %8) #12
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @min_ratio_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #1 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !15
  %8 = call i32 @kstrtouint(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #12
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = call i32 @bdi_set_min_ratio(ptr noundef %7, i32 noundef %11) #12
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 %3, i32 %12
  br label %15

15:                                               ; preds = %10, %4
  %16 = phi i32 [ %14, %10 ], [ %8, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max_ratio_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.backing_dev_info, ptr %5, i32 0, i32 8
  %7 = load i32, ptr %6, align 8
  %8 = zext i32 %7 to i64
  %9 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.3, i64 noundef %8) #12
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max_ratio_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #1 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !15
  %8 = call i32 @kstrtouint(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #12
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = call i32 @bdi_set_max_ratio(ptr noundef %7, i32 noundef %11) #12
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 %3, i32 %12
  br label %15

15:                                               ; preds = %10, %4
  %16 = phi i32 [ %14, %10 ], [ %8, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdi_set_max_ratio(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stable_pages_required_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #1 {
  %4 = load i1, ptr @stable_pages_required_show.__print_once, align 1
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  store i1 true, ptr @stable_pages_required_show.__print_once, align 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.7) #14
  br label %6

6:                                                ; preds = %5, %3
  %7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef 0) #12
  ret i32 %7
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wb_workfn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wb_update_bandwidth_workfn(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -320
  tail call void @wb_update_bandwidth(ptr noundef %2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fprop_local_init_percpu(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_init(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fprop_local_destroy_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wb_update_bandwidth(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bdi_debug_stats_open(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @bdi_debug_stats_show, ptr noundef %4) #12
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bdi_debug_stats_show(ptr noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !15
  %7 = getelementptr inbounds %struct.backing_dev_info, ptr %6, i32 0, i32 11, i32 7
  tail call void @_raw_spin_lock(ptr noundef %7) #12
  %8 = getelementptr inbounds %struct.backing_dev_info, ptr %6, i32 0, i32 11, i32 3
  br label %9

9:                                                ; preds = %9, %2
  %10 = phi ptr [ %8, %2 ], [ %12, %9 ]
  %11 = phi i32 [ 0, %2 ], [ %14, %9 ]
  %12 = load ptr, ptr %10, align 4
  %13 = icmp eq ptr %12, %8
  %14 = add i32 %11, 1
  br i1 %13, label %15, label %9

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.backing_dev_info, ptr %6, i32 0, i32 11, i32 4
  br label %17

17:                                               ; preds = %17, %15
  %18 = phi ptr [ %16, %15 ], [ %20, %17 ]
  %19 = phi i32 [ 0, %15 ], [ %22, %17 ]
  %20 = load ptr, ptr %18, align 4
  %21 = icmp eq ptr %20, %16
  %22 = add i32 %19, 1
  br i1 %21, label %23, label %17

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.backing_dev_info, ptr %6, i32 0, i32 11, i32 5
  br label %25

25:                                               ; preds = %25, %23
  %26 = phi ptr [ %24, %23 ], [ %28, %25 ]
  %27 = phi i32 [ 0, %23 ], [ %30, %25 ]
  %28 = load ptr, ptr %26, align 4
  %29 = icmp eq ptr %28, %24
  %30 = add i32 %27, 1
  br i1 %29, label %31, label %25

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.backing_dev_info, ptr %6, i32 0, i32 11, i32 6
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %32
  br i1 %34, label %45, label %35

35:                                               ; preds = %35, %31
  %36 = phi ptr [ %43, %35 ], [ %33, %31 ]
  %37 = phi i32 [ %42, %35 ], [ 0, %31 ]
  %38 = getelementptr i8, ptr %36, i32 -44
  %39 = load i32, ptr %38, align 4
  %40 = lshr i32 %39, 11
  %41 = and i32 %40, 1
  %42 = add i32 %41, %37
  %43 = load ptr, ptr %36, align 4
  %44 = icmp eq ptr %43, %32
  br i1 %44, label %45, label %35

45:                                               ; preds = %35, %31
  %46 = phi i32 [ 0, %31 ], [ %42, %35 ]
  %47 = getelementptr inbounds %struct.backing_dev_info, ptr %6, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !24
  %48 = load i16, ptr %7, align 4
  %49 = add i16 %48, 1
  store i16 %49, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !27
  call void @global_dirty_limits(ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  %50 = load i32, ptr %4, align 4
  %51 = call i32 @wb_calc_thresh(ptr noundef %47, i32 noundef %50) #12
  %52 = getelementptr %struct.backing_dev_info, ptr %6, i32 0, i32 11, i32 9, i32 1, i32 1
  %53 = load volatile i64, ptr %52, align 8
  %54 = call i64 @llvm.smax.i64(i64 %53, i64 0) #12
  %55 = trunc i64 %54 to i32
  %56 = shl i32 %55, 2
  %57 = getelementptr %struct.backing_dev_info, ptr %6, i32 0, i32 11, i32 9, i32 0, i32 1
  %58 = load volatile i64, ptr %57, align 8
  %59 = call i64 @llvm.smax.i64(i64 %58, i64 0) #12
  %60 = trunc i64 %59 to i32
  %61 = shl i32 %60, 2
  %62 = shl i32 %51, 2
  %63 = load i32, ptr %4, align 4
  %64 = shl i32 %63, 2
  %65 = load i32, ptr %3, align 4
  %66 = shl i32 %65, 2
  %67 = getelementptr %struct.backing_dev_info, ptr %6, i32 0, i32 11, i32 9, i32 2, i32 1
  %68 = load volatile i64, ptr %67, align 8
  %69 = call i64 @llvm.smax.i64(i64 %68, i64 0) #12
  %70 = trunc i64 %69 to i32
  %71 = shl i32 %70, 2
  %72 = getelementptr %struct.backing_dev_info, ptr %6, i32 0, i32 11, i32 9, i32 3, i32 1
  %73 = load volatile i64, ptr %72, align 8
  %74 = call i64 @llvm.smax.i64(i64 %73, i64 0) #12
  %75 = trunc i64 %74 to i32
  %76 = shl i32 %75, 2
  %77 = getelementptr inbounds %struct.backing_dev_info, ptr %6, i32 0, i32 11, i32 14
  %78 = load i32, ptr %77, align 8
  %79 = shl i32 %78, 2
  %80 = getelementptr inbounds %struct.backing_dev_info, ptr %6, i32 0, i32 2
  %81 = load volatile ptr, ptr %80, align 4
  %82 = icmp ne ptr %81, %80
  %83 = zext i1 %82 to i32
  %84 = getelementptr inbounds %struct.backing_dev_info, ptr %6, i32 0, i32 11, i32 1
  %85 = load i32, ptr %84, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %56, i32 noundef %61, i32 noundef %62, i32 noundef %64, i32 noundef %66, i32 noundef %71, i32 noundef %76, i32 noundef %79, i32 noundef %11, i32 noundef %19, i32 noundef %27, i32 noundef %46, i32 noundef %83, i32 noundef %85) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @global_dirty_limits(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wb_calc_thresh(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_writeback_bdi_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu_expedited() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_writeback_congestion_wait(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #11

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

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
!8 = !{i64 720560, i64 2148210531, i64 2148210557, i64 2148210604, i64 2148210626, i64 2148210654, i64 2148210674}
!9 = !{i64 2148223404, i64 2148223436, i64 2148223465, i64 2148223499, i64 2148223530, i64 2148223553}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2149148206}
!13 = !{i64 2153871813}
!14 = !{i64 2153871975}
!15 = !{!"auto-init"}
!16 = !{i64 2148323626}
!17 = !{i64 2148225761, i64 2148225793, i64 2148225822, i64 2148225856, i64 2148225887, i64 2148225910}
!18 = !{i64 2149291394}
!19 = !{i64 2148224303, i64 2148224329, i64 2148224358, i64 2148224392, i64 2148224423, i64 2148224446}
!20 = !{i64 2154219625}
!21 = !{i64 2148221946, i64 2148221972, i64 2148222001, i64 2148222035, i64 2148222066, i64 2148222089}
!22 = !{i64 2154006433}
!23 = !{i64 2154006647}
!24 = !{i64 2148889164}
!25 = !{i64 2148884988}
!26 = !{i64 2148885063, i64 2148885090, i64 2148885137, i64 2148885159, i64 2148885187, i64 2148885207}
!27 = !{i64 2148912167}
