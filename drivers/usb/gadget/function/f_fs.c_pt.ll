; ModuleID = '/llk/IR/drivers/usb/gadget/function/f_fs.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/f_fs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ffs_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22ffs_lock\22\09\09\09\09\09"
module asm "__kstrtabns_ffs_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ffs_name_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22ffs_name_dev\22\09\09\09\09\09"
module asm "__kstrtabns_ffs_name_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ffs_single_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22ffs_single_dev\22\09\09\09\09\09"
module asm "__kstrtabns_ffs_single_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.usb_function_driver = type { ptr, ptr, %struct.list_head, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.fs_parameter_spec = type { ptr, ptr, i8, i16, ptr }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.configfs_item_operations = type { ptr, ptr, ptr }
%struct.ffs_dev = type { ptr, ptr, %struct.list_head, [41 x i8], i8, i8, i8, ptr, ptr, ptr, ptr }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.f_fs_opts = type { %struct.usb_function_instance, ptr, i32, i8 }
%struct.ffs_function = type { ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.usb_function }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.ffs_data = type { ptr, %struct.mutex, %struct.spinlock, ptr, %struct.completion, %struct.refcount_struct, %struct.atomic_t, i32, i32, %struct.anon.67, i32, %struct.wait_queue_head, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, [31 x i8], i16, i16, i16, i16, ptr, ptr, ptr, %struct.ffs_file_perms, ptr, ptr, i8, %struct.work_struct, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.67 = type { [4 x i8], i16, i16, %struct.usb_ctrlrequest, %struct.wait_queue_head }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ffs_file_perms = type { i16, %struct.kuid_t, %struct.kgid_t }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ffs_sb_fill_data = type { %struct.ffs_file_perms, i16, ptr, i8, ptr }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.list_lru = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.fs_parse_result = type { i8, %union.anon.28 }
%union.anon.28 = type { i64 }
%struct.ffs_epfile = type { %struct.mutex, ptr, ptr, ptr, ptr, [5 x i8], i8, i8, i8 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr }
%union.anon.68 = type { i32 }
%struct.seqcount = type { i32 }
%union.anon.69 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.71 = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.51 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_functionfs_event = type { %union.anon.74, i8, [3 x i8] }
%union.anon.74 = type { %struct.usb_ctrlrequest }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.usb_descriptor_header = type { i8, i8 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_os_desc_header = type <{ i8, i32, i16, i16, %union.anon.75 }>
%union.anon.75 = type { i16 }
%struct.usb_ext_compat_desc = type { i8, i8, [8 x i8], [8 x i8], [6 x i8] }
%struct.usb_ext_prop_desc = type <{ i32, i32, i16 }>
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }
%struct.ffs_io_data = type { i8, i8, ptr, %struct.iov_iter, ptr, ptr, ptr, %struct.work_struct, ptr, ptr, %struct.sg_table, i8, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.57, %union.anon.58 }
%union.anon.57 = type { ptr }
%union.anon.58 = type { i64 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.ffs_ep = type { ptr, ptr, [3 x ptr], i8, i32 }
%struct.ffs_buffer = type { i32, ptr, [0 x i8] }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.usb_composite_dev = type <{ ptr, ptr, ptr, ptr, [14 x i8], i8, i8, ptr, i8, %struct.usb_device_descriptor, i8, %struct.list_head, %struct.list_head, ptr, i8, [3 x i8], ptr, i32, i32, %struct.spinlock, i8, [3 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_os_desc_table = type { i32, ptr }
%struct.usb_os_desc = type { ptr, %struct.list_head, i32, i32, ptr, %struct.config_group, ptr }
%struct.usb_os_desc_ext_prop = type { %struct.list_head, i8, i32, ptr, i32, ptr, %struct.config_item }

@ffs_lock = dso_local global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ffs_lock, i64 12), ptr getelementptr (i8, ptr @ffs_lock, i64 12) } }, align 4
@__kstrtab_ffs_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_ffs_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_ffs_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ffs_lock to i32), ptr @__kstrtab_ffs_lock, ptr @__kstrtabns_ffs_lock }, section "___ksymtab_gpl+ffs_lock", align 4
@__UNIQUE_ID_alias268 = internal constant [20 x i8] c"alias=fs-functionfs\00", section ".modinfo", align 1
@__kstrtab_ffs_name_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_ffs_name_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_ffs_name_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ffs_name_dev to i32), ptr @__kstrtab_ffs_name_dev, ptr @__kstrtabns_ffs_name_dev }, section "___ksymtab_gpl+ffs_name_dev", align 4
@ffs_devices = internal global %struct.list_head { ptr @ffs_devices, ptr @ffs_devices }, align 4
@__kstrtab_ffs_single_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_ffs_single_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_ffs_single_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ffs_single_dev to i32), ptr @__kstrtab_ffs_single_dev, ptr @__kstrtabns_ffs_single_dev }, section "___ksymtab_gpl+ffs_single_dev", align 4
@__UNIQUE_ID_alias269 = internal constant [18 x i8] c"alias=usbfunc:ffs\00", section ".modinfo", align 1
@__UNIQUE_ID_license270 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author271 = internal constant [25 x i8] c"author=Michal Nazarewicz\00", section ".modinfo", align 1
@ffsusb_func = internal global %struct.usb_function_driver { ptr @.str, ptr @__this_module, %struct.list_head zeroinitializer, ptr @ffs_alloc_inst, ptr @ffs_alloc }, align 4
@.str = private unnamed_addr constant [4 x i8] c"ffs\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ffs_func_type = internal constant %struct.config_item_type { ptr @__this_module, ptr @ffs_item_ops, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"\016unloading\0A\00", align 1
@ffs_fs_type = internal global %struct.file_system_type { ptr @.str.3, i32 0, ptr @ffs_fs_init_fs_context, ptr @ffs_fs_fs_parameters, ptr null, ptr @ffs_fs_kill_sb, ptr @__this_module, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"functionfs\00", align 1
@ffs_fs_fs_parameters = internal constant [7 x %struct.fs_parameter_spec] [%struct.fs_parameter_spec { ptr @.str.26, ptr @fs_param_is_bool, i8 0, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.27, ptr @fs_param_is_u32, i8 1, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.28, ptr @fs_param_is_u32, i8 2, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.29, ptr @fs_param_is_u32, i8 3, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.30, ptr @fs_param_is_u32, i8 4, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.31, ptr @fs_param_is_u32, i8 5, i16 0, ptr null }, %struct.fs_parameter_spec zeroinitializer], align 4
@ffs_fs_context_ops = internal constant %struct.fs_context_operations { ptr @ffs_fs_free_fc, ptr null, ptr @ffs_fs_parse_param, ptr null, ptr @ffs_fs_get_tree, ptr null }, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"\016%s(): freeing\0A\00", align 1
@__func__.ffs_data_put = private unnamed_addr constant [13 x i8] c"ffs_data_put\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"%s: unmapped value: %u\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"No source specified\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ffs_data_new.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"&ffs->mutex\00", align 1
@ffs_data_new.__key.9 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"&ffs->ev.waitq\00", align 1
@ffs_data_new.__key.11 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"&ffs->wait\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@ffs_sb_operations = internal constant %struct.super_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_delete_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@simple_dir_operations = external dso_local constant %struct.file_operations, align 4
@simple_dir_inode_operations = external dso_local constant %struct.inode_operations, align 64
@.str.14 = private unnamed_addr constant [4 x i8] c"ep0\00", align 1
@ffs_ep0_operations = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @ffs_ep0_read, ptr @ffs_ep0_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ffs_ep0_poll, ptr @ffs_ep0_ioctl, ptr null, ptr null, i32 0, ptr @ffs_ep0_open, ptr null, ptr @ffs_ep0_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"\016read descriptors\0A\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"\016read strings\0A\00", align 1
@ffs_epfiles_create.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"&epfile->mutex\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"ep%02x\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"ep%u\00", align 1
@ffs_epfile_operations = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr null, ptr @ffs_epfile_read_iter, ptr @ffs_epfile_write_iter, ptr null, ptr null, ptr null, ptr null, ptr @ffs_epfile_ioctl, ptr null, ptr null, i32 0, ptr @ffs_epfile_open, ptr null, ptr @ffs_epfile_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.22 = private unnamed_addr constant [35 x i8] c"drivers/usb/gadget/function/f_fs.c\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"%s: data_len == -EINVAL\0A\00", align 1
@__func__.ffs_epfile_io = private unnamed_addr constant [14 x i8] c"ffs_epfile_io\00", align 1
@.str.24 = private unnamed_addr constant [87 x i8] c"\014functionfs read size %d > requested size %zd, splitting request into multiple reads.\00", align 1
@.str.25 = private unnamed_addr constant [135 x i8] c"\013functionfs read size %d > requested size %zd, dropping excess data. Align read buffer size to max packet size to avoid the problem.\0A\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"no_disconnect\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"rmode\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"fmode\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"gid\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"\016file system registered\0A\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"\013failed registering file system (%d)\0A\00", align 1
@ffs_item_ops = internal global %struct.configfs_item_operations { ptr @ffs_attr_release, ptr null, ptr null }, align 4
@.str.34 = private unnamed_addr constant [19 x i8] c"Function FS Gadget\00", align 1
@__ffs_func_bind_do_descs.speed_names = internal unnamed_addr constant [3 x ptr] [ptr @.str.35, ptr @.str.36, ptr @.str.37], align 4
@.str.35 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"super\00", align 1
@.str.38 = private unnamed_addr constant [37 x i8] c"\013two %sspeed descriptors for EP %d\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.40 = private unnamed_addr constant [42 x i8] c"\013%s: config_ep_by_speed(%s) returned %d\0A\00", align 1
@__func__.ffs_func_eps_enable = private unnamed_addr constant [20 x i8] c"ffs_func_eps_enable\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_alias268, ptr @__UNIQUE_ID_alias269, ptr @__UNIQUE_ID_author271, ptr @__UNIQUE_ID_license270, ptr @__ksymtab_ffs_lock, ptr @__ksymtab_ffs_name_dev, ptr @__ksymtab_ffs_single_dev], section "llvm.metadata"
@switch.table.ffs_epfile_ioctl = private unnamed_addr constant [4 x i32] [i32 1, i32 0, i32 2, i32 2], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ffs_name_dev(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @ffs_lock) #15
  %3 = icmp eq ptr %1, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %6, %8 ], [ @ffs_devices, %2 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, @ffs_devices
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %6, i32 8
  %10 = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull %1) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %4

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %6, i32 -8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %4, %2
  %16 = getelementptr inbounds %struct.ffs_dev, ptr %0, i32 0, i32 3
  %17 = tail call i32 @strlcpy(ptr noundef %16, ptr noundef %1, i32 noundef 41) #15
  br label %21

18:                                               ; preds = %12
  %19 = icmp eq ptr %13, %0
  %20 = select i1 %19, i32 0, i32 -16
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi i32 [ 0, %15 ], [ %20, %18 ]
  tail call void @mutex_unlock(ptr noundef nonnull @ffs_lock) #15
  ret i32 %22
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ffs_single_dev(ptr nocapture noundef writeonly %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @ffs_lock) #15
  %2 = load volatile ptr, ptr @ffs_devices, align 4
  %3 = icmp eq ptr %2, @ffs_devices
  %4 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ffs_devices, i32 0, i32 1), align 4
  %5 = icmp ne ptr %2, %4
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ffs_dev, ptr %0, i32 0, i32 6
  store i8 1, ptr %8, align 1
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ 0, %7 ], [ -16, %1 ]
  tail call void @mutex_unlock(ptr noundef nonnull @ffs_lock) #15
  ret i32 %10
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #3 section ".init.text" {
  %1 = tail call i32 @usb_function_register(ptr noundef nonnull @ffsusb_func) #15
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #3 section ".exit.text" {
  tail call void @usb_function_unregister(ptr noundef nonnull @ffsusb_func) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ffs_alloc_inst() #0 {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 112) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %50, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.usb_function_instance, ptr %2, i32 0, i32 3
  store ptr @ffs_set_inst_name, ptr %5, align 4
  %6 = getelementptr inbounds %struct.usb_function_instance, ptr %2, i32 0, i32 4
  store ptr @ffs_free_inst, ptr %6, align 8
  tail call void @mutex_lock(ptr noundef nonnull @ffs_lock) #15
  %7 = load volatile ptr, ptr @ffs_devices, align 4
  %8 = icmp eq ptr %7, @ffs_devices
  %9 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ffs_devices, i32 0, i32 1), align 4
  %10 = icmp ne ptr %7, %9
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %19, label %12

12:                                               ; preds = %4
  %13 = getelementptr i8, ptr %7, i32 51
  %14 = load i8, ptr %13, align 1, !range !8
  %15 = icmp eq i8 %14, 0
  %16 = getelementptr i8, ptr %7, i32 -8
  %17 = icmp eq ptr %16, null
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %12, %4
  %20 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 76) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %40, label %23

23:                                               ; preds = %19
  %24 = load volatile ptr, ptr @ffs_devices, align 4
  %25 = icmp eq ptr %24, @ffs_devices
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = tail call i32 @register_filesystem(ptr noundef nonnull @ffs_fs_type) #15
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #17
  %31 = load ptr, ptr @ffs_devices, align 4
  br label %35

32:                                               ; preds = %26
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %27) #17
  tail call void @kfree(ptr noundef nonnull %21) #15
  %34 = inttoptr i32 %27 to ptr
  br label %42

35:                                               ; preds = %29, %23
  %36 = phi ptr [ %31, %29 ], [ %24, %23 ]
  %37 = getelementptr inbounds %struct.ffs_dev, ptr %21, i32 0, i32 2
  %38 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  store ptr %37, ptr %38, align 4
  store ptr %36, ptr %37, align 8
  %39 = getelementptr inbounds %struct.ffs_dev, ptr %21, i32 0, i32 2, i32 1
  store ptr @ffs_devices, ptr %39, align 4
  store volatile ptr %37, ptr @ffs_devices, align 4
  br label %42

40:                                               ; preds = %19, %12
  %41 = phi ptr [ inttoptr (i32 -16 to ptr), %12 ], [ inttoptr (i32 -12 to ptr), %19 ]
  tail call void @mutex_unlock(ptr noundef nonnull @ffs_lock) #15
  br label %45

42:                                               ; preds = %35, %32
  %43 = phi ptr [ %34, %32 ], [ %21, %35 ]
  tail call void @mutex_unlock(ptr noundef nonnull @ffs_lock) #15
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %45, label %47

45:                                               ; preds = %42, %40
  %46 = phi ptr [ %41, %40 ], [ %43, %42 ]
  tail call void @kfree(ptr noundef nonnull %2) #15
  br label %50

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.f_fs_opts, ptr %2, i32 0, i32 1
  store ptr %43, ptr %48, align 4
  %49 = getelementptr inbounds %struct.ffs_dev, ptr %43, i32 0, i32 1
  store ptr %2, ptr %49, align 4
  tail call void @config_group_init_type_name(ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @ffs_func_type) #15
  br label %50

50:                                               ; preds = %47, %45, %0
  %51 = phi ptr [ %46, %45 ], [ %2, %47 ], [ inttoptr (i32 -12 to ptr), %0 ]
  ret ptr %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ffs_alloc(ptr nocapture noundef readnone %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 144) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ffs_function, ptr %3, i32 0, i32 6
  store ptr @.str.34, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ffs_function, ptr %3, i32 0, i32 6, i32 9
  store ptr @ffs_func_bind, ptr %7, align 8
  %8 = getelementptr inbounds %struct.ffs_function, ptr %3, i32 0, i32 6, i32 10
  store ptr @ffs_func_unbind, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ffs_function, ptr %3, i32 0, i32 6, i32 13
  store ptr @ffs_func_set_alt, ptr %9, align 8
  %10 = getelementptr inbounds %struct.ffs_function, ptr %3, i32 0, i32 6, i32 15
  store ptr @ffs_func_disable, ptr %10, align 8
  %11 = getelementptr inbounds %struct.ffs_function, ptr %3, i32 0, i32 6, i32 16
  store ptr @ffs_func_setup, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ffs_function, ptr %3, i32 0, i32 6, i32 17
  store ptr @ffs_func_req_match, ptr %12, align 8
  %13 = getelementptr inbounds %struct.ffs_function, ptr %3, i32 0, i32 6, i32 18
  store ptr @ffs_func_suspend, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ffs_function, ptr %3, i32 0, i32 6, i32 19
  store ptr @ffs_func_resume, ptr %14, align 8
  %15 = getelementptr inbounds %struct.ffs_function, ptr %3, i32 0, i32 6, i32 11
  store ptr @ffs_free, ptr %15, align 8
  br label %16

16:                                               ; preds = %5, %1
  %17 = phi ptr [ %6, %5 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ffs_set_inst_name(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = tail call i32 @strlen(ptr noundef %1)
  %4 = icmp ugt i32 %3, 40
  br i1 %4, label %28, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.f_fs_opts, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void @mutex_lock(ptr noundef nonnull @ffs_lock) #15
  %8 = icmp eq ptr %1, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %13, %5
  %10 = phi ptr [ %11, %13 ], [ @ffs_devices, %5 ]
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @ffs_devices
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %11, i32 8
  %15 = tail call i32 @strcmp(ptr noundef %14, ptr noundef nonnull %1) #15
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %9

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %11, i32 -8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17, %9, %5
  %21 = getelementptr inbounds %struct.ffs_dev, ptr %7, i32 0, i32 3
  %22 = tail call i32 @strlcpy(ptr noundef %21, ptr noundef %1, i32 noundef 41) #15
  br label %26

23:                                               ; preds = %17
  %24 = icmp eq ptr %18, %7
  %25 = select i1 %24, i32 0, i32 -16
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i32 [ 0, %20 ], [ %25, %23 ]
  tail call void @mutex_unlock(ptr noundef nonnull @ffs_lock) #15
  br label %28

28:                                               ; preds = %26, %2
  %29 = phi i32 [ %27, %26 ], [ -36, %2 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ffs_free_inst(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.f_fs_opts, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @mutex_lock(ptr noundef nonnull @ffs_lock) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ffs_dev, ptr %3, i32 0, i32 4
  %7 = load i8, ptr %6, align 1, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  store i8 0, ptr %6, align 1
  %10 = load ptr, ptr %3, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ffs_data, ptr %10, i32 0, i32 14
  store ptr null, ptr %13, align 4
  store ptr null, ptr %3, align 4
  br label %14

14:                                               ; preds = %12, %9
  %15 = getelementptr inbounds %struct.ffs_dev, ptr %3, i32 0, i32 10
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void %16(ptr noundef nonnull %3) #15
  br label %19

19:                                               ; preds = %18, %14, %5, %1
  tail call void @mutex_unlock(ptr noundef nonnull @ffs_lock) #15
  tail call void @mutex_lock(ptr noundef nonnull @ffs_lock) #15
  %20 = load ptr, ptr %2, align 4
  %21 = getelementptr inbounds %struct.ffs_dev, ptr %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.ffs_dev, ptr %20, i32 0, i32 2, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %21, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %23, ptr %25, align 4
  store volatile ptr %24, ptr %23, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %21, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %22, align 4
  tail call void @kfree(ptr noundef %20) #15
  %26 = load volatile ptr, ptr @ffs_devices, align 4
  %27 = icmp eq ptr %26, @ffs_devices
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #17
  %30 = tail call i32 @unregister_filesystem(ptr noundef nonnull @ffs_fs_type) #15
  br label %31

31:                                               ; preds = %28, %19
  tail call void @mutex_unlock(ptr noundef nonnull @ffs_lock) #15
  tail call void @kfree(ptr noundef %0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ffs_fs_init_fs_context(ptr nocapture noundef writeonly %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 28) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  store i16 -32384, ptr %3, align 8
  %6 = getelementptr inbounds %struct.ffs_file_perms, ptr %3, i32 0, i32 1
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ffs_file_perms, ptr %3, i32 0, i32 2
  store i32 0, ptr %7, align 8
  %8 = getelementptr inbounds %struct.ffs_sb_fill_data, ptr %3, i32 0, i32 1
  store i16 16704, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ffs_sb_fill_data, ptr %3, i32 0, i32 3
  store i8 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  store ptr %3, ptr %10, align 4
  store ptr @ffs_fs_context_ops, ptr %0, align 4
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i32 [ 0, %5 ], [ -12, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ffs_fs_kill_sb(ptr noundef %0) #0 {
  tail call void @kill_litter_super(ptr noundef %0) #15
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call fastcc void @ffs_data_closed(ptr noundef nonnull %3)
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ffs_fs_free_fc(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ffs_sb_fill_data, ptr %3, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call fastcc void @ffs_data_put(ptr noundef nonnull %7)
  br label %10

10:                                               ; preds = %9, %5
  tail call void @kfree(ptr noundef nonnull %3) #15
  br label %11

11:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ffs_fs_parse_param(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.fs_parse_result, align 8
  %4 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9
  %7 = call i32 @__fs_parse(ptr noundef %6, ptr noundef nonnull @ffs_fs_fs_parameters, ptr noundef %1, ptr noundef nonnull %3) #15
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %52, label %9

9:                                                ; preds = %2
  switch i32 %7, label %52 [
    i32 0, label %10
    i32 1, label %14
    i32 2, label %21
    i32 3, label %27
    i32 4, label %36
    i32 5, label %41
  ]

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  %12 = load i8, ptr %11, align 8, !range !8
  %13 = getelementptr inbounds %struct.ffs_sb_fill_data, ptr %5, i32 0, i32 3
  store i8 %12, ptr %13, align 4
  br label %52

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  %16 = load i32, ptr %15, align 8
  %17 = trunc i32 %16 to i16
  %18 = and i16 %17, 365
  %19 = or i16 %18, 16384
  %20 = getelementptr inbounds %struct.ffs_sb_fill_data, ptr %5, i32 0, i32 1
  store i16 %19, ptr %20, align 4
  br label %52

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  %23 = load i32, ptr %22, align 8
  %24 = trunc i32 %23 to i16
  %25 = and i16 %24, 438
  %26 = or i16 %25, -32768
  store i16 %26, ptr %5, align 4
  br label %52

27:                                               ; preds = %9
  %28 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  %29 = load i32, ptr %28, align 8
  %30 = trunc i32 %29 to i16
  %31 = and i16 %30, 365
  %32 = or i16 %31, 16384
  %33 = getelementptr inbounds %struct.ffs_sb_fill_data, ptr %5, i32 0, i32 1
  store i16 %32, ptr %33, align 4
  %34 = and i16 %30, 438
  %35 = or i16 %34, -32768
  store i16 %35, ptr %5, align 4
  br label %52

36:                                               ; preds = %9
  %37 = getelementptr inbounds %struct.ffs_file_perms, ptr %5, i32 0, i32 1
  %38 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  %39 = load i32, ptr %38, align 8
  store i32 %39, ptr %37, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %46, label %52

41:                                               ; preds = %9
  %42 = getelementptr inbounds %struct.ffs_file_perms, ptr %5, i32 0, i32 2
  %43 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  %44 = load i32, ptr %43, align 8
  store i32 %44, ptr %42, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %52

46:                                               ; preds = %41, %36
  %47 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %1, align 4
  %50 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  %51 = load i32, ptr %50, align 8
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %48, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.5, ptr noundef %49, i32 noundef %51) #15
  br label %52

52:                                               ; preds = %46, %41, %36, %27, %21, %14, %10, %9, %2
  %53 = phi i32 [ -22, %46 ], [ %7, %2 ], [ -519, %9 ], [ 0, %41 ], [ 0, %36 ], [ 0, %27 ], [ 0, %21 ], [ 0, %14 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ffs_fs_get_tree(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %9, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.6) #15
  br label %82

10:                                               ; preds = %1
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 272) #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %82, label %14

14:                                               ; preds = %10
  %15 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.7, i32 noundef 655362, i32 noundef 1, ptr noundef nonnull %5) #15
  %16 = getelementptr inbounds %struct.ffs_data, ptr %12, i32 0, i32 39
  store ptr %15, ptr %16, align 4
  %17 = icmp eq ptr %15, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call void @kfree(ptr noundef nonnull %12) #15
  br label %82

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ffs_data, ptr %12, i32 0, i32 5
  store volatile i32 1, ptr %20, align 8
  %21 = getelementptr inbounds %struct.ffs_data, ptr %12, i32 0, i32 6
  store volatile i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.ffs_data, ptr %12, i32 0, i32 7
  store i32 0, ptr %22, align 8
  %23 = getelementptr inbounds %struct.ffs_data, ptr %12, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %23, ptr noundef nonnull @.str.8, ptr noundef nonnull @ffs_data_new.__key) #15
  %24 = getelementptr inbounds %struct.ffs_data, ptr %12, i32 0, i32 2
  store i32 0, ptr %24, align 8
  %25 = getelementptr inbounds %struct.ffs_data, ptr %12, i32 0, i32 9, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %25, ptr noundef nonnull @.str.10, ptr noundef nonnull @ffs_data_new.__key.9) #15
  %26 = getelementptr inbounds %struct.ffs_data, ptr %12, i32 0, i32 11
  tail call void @__init_waitqueue_head(ptr noundef %26, ptr noundef nonnull @.str.12, ptr noundef nonnull @ffs_data_new.__key.11) #15
  %27 = getelementptr inbounds %struct.ffs_data, ptr %12, i32 0, i32 4
  store i32 0, ptr %27, align 8
  %28 = getelementptr inbounds %struct.ffs_data, ptr %12, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %28, ptr noundef nonnull @.str.13, ptr noundef nonnull @init_completion.__key) #15
  %29 = getelementptr inbounds %struct.ffs_data, ptr %12, i32 0, i32 9, i32 2
  store i16 1, ptr %29, align 2
  %30 = getelementptr inbounds %struct.ffs_data, ptr %12, i32 0, i32 37
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %30, ptr noundef align 4 dereferenceable(12) %3, i32 12, i1 false)
  %31 = getelementptr inbounds %struct.ffs_sb_fill_data, ptr %3, i32 0, i32 3
  %32 = load i8, ptr %31, align 4, !range !8
  %33 = getelementptr inbounds %struct.ffs_data, ptr %12, i32 0, i32 40
  store i8 %32, ptr %33, align 8
  %34 = load ptr, ptr %4, align 4
  %35 = tail call noalias ptr @kstrdup(ptr noundef %34, i32 noundef 3264) #15
  %36 = getelementptr inbounds %struct.ffs_data, ptr %12, i32 0, i32 13
  store ptr %35, ptr %36, align 8
  %37 = icmp eq ptr %35, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %19
  tail call fastcc void @ffs_data_put(ptr noundef nonnull %12)
  br label %82

39:                                               ; preds = %19
  tail call void @mutex_lock(ptr noundef nonnull @ffs_lock) #15
  %40 = load volatile ptr, ptr @ffs_devices, align 4
  %41 = icmp eq ptr %40, @ffs_devices
  %42 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ffs_devices, i32 0, i32 1), align 4
  %43 = icmp ne ptr %40, %42
  %44 = select i1 %41, i1 true, i1 %43
  br i1 %44, label %52, label %45

45:                                               ; preds = %39
  %46 = getelementptr i8, ptr %40, i32 51
  %47 = load i8, ptr %46, align 1, !range !8
  %48 = icmp eq i8 %47, 0
  %49 = getelementptr i8, ptr %40, i32 -8
  %50 = icmp eq ptr %49, null
  %51 = select i1 %48, i1 true, i1 %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %45, %39
  br i1 %41, label %76, label %53

53:                                               ; preds = %58, %52
  %54 = phi ptr [ %59, %58 ], [ %40, %52 ]
  %55 = getelementptr i8, ptr %54, i32 8
  %56 = tail call i32 @strcmp(ptr noundef %55, ptr noundef nonnull %35) #15
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load ptr, ptr %54, align 4
  %60 = icmp eq ptr %59, @ffs_devices
  br i1 %60, label %76, label %53

61:                                               ; preds = %53
  %62 = getelementptr i8, ptr %54, i32 -8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %76, label %64

64:                                               ; preds = %61, %45
  %65 = phi ptr [ %62, %61 ], [ %49, %45 ]
  %66 = getelementptr inbounds %struct.ffs_dev, ptr %65, i32 0, i32 4
  %67 = load i8, ptr %66, align 1, !range !8
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.ffs_dev, ptr %65, i32 0, i32 9
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %69
  %74 = tail call ptr %71(ptr noundef nonnull %65) #15
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %73, %64, %61, %58, %52
  %77 = phi i32 [ -2, %52 ], [ -2, %73 ], [ -16, %64 ], [ -2, %61 ], [ -2, %58 ]
  tail call void @mutex_unlock(ptr noundef nonnull @ffs_lock) #15
  tail call fastcc void @ffs_data_put(ptr noundef nonnull %12)
  br label %82

78:                                               ; preds = %73, %69
  store i8 1, ptr %66, align 1
  store ptr %12, ptr %65, align 4
  %79 = getelementptr inbounds %struct.ffs_data, ptr %12, i32 0, i32 14
  store ptr %65, ptr %79, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ffs_lock) #15
  %80 = getelementptr inbounds %struct.ffs_sb_fill_data, ptr %3, i32 0, i32 4
  store ptr %12, ptr %80, align 4
  %81 = tail call i32 @get_tree_nodev(ptr noundef %0, ptr noundef nonnull @ffs_sb_fill) #15
  br label %82

82:                                               ; preds = %78, %76, %38, %18, %10, %7
  %83 = phi i32 [ %77, %76 ], [ %81, %78 ], [ -12, %38 ], [ -22, %7 ], [ -12, %18 ], [ -12, %10 ]
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ffs_data_put(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #15, !srcloc !11
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #15, !srcloc !12
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %46, label %8, !prof !13

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #15
  br label %46

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !14
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ffs_data_put) #17
  tail call fastcc void @ffs_data_clear(ptr noundef %0)
  %11 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 14
  %12 = load ptr, ptr %11, align 4
  tail call void @mutex_lock(ptr noundef nonnull @ffs_lock) #15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ffs_dev, ptr %12, i32 0, i32 4
  %16 = load i8, ptr %15, align 1, !range !8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %14
  store i8 0, ptr %15, align 1
  %19 = load ptr, ptr %12, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.ffs_data, ptr %19, i32 0, i32 14
  store ptr null, ptr %22, align 4
  store ptr null, ptr %12, align 4
  br label %23

23:                                               ; preds = %21, %18
  %24 = getelementptr inbounds %struct.ffs_dev, ptr %12, i32 0, i32 10
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void %25(ptr noundef nonnull %12) #15
  br label %28

28:                                               ; preds = %27, %23, %14, %9
  tail call void @mutex_unlock(ptr noundef nonnull @ffs_lock) #15
  %29 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 9, i32 4, i32 1
  %30 = load volatile ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %32, label %40, !prof !13

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 4, i32 1, i32 1
  %34 = load volatile ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %33
  br i1 %35, label %36, label %40, !prof !13

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 11, i32 1
  %38 = load volatile ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %37
  br i1 %39, label %41, label %40, !prof !13

40:                                               ; preds = %36, %32, %28
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/function/f_fs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1705, 0\0A.popsection", ""() #15, !srcloc !15
  unreachable

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 39
  %43 = load ptr, ptr %42, align 4
  tail call void @destroy_workqueue(ptr noundef %43) #15
  %44 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 13
  %45 = load ptr, ptr %44, align 4
  tail call void @kfree(ptr noundef %45) #15
  tail call void @kfree(ptr noundef %0) #15
  br label %46

46:                                               ; preds = %41, %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ffs_data_clear(ptr noundef %0) unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @ffs_lock) #15
  %2 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %38, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ffs_dev, ptr %3, i32 0, i32 5
  store i8 0, ptr %6, align 2
  %7 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 10
  %8 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %7) #15
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ffs_dev, ptr %3, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void %12(ptr noundef %0) #15
  br label %15

15:                                               ; preds = %14, %10, %5
  %16 = getelementptr inbounds %struct.ffs_dev, ptr %3, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.f_fs_opts, ptr %17, i32 0, i32 3
  %21 = load i8, ptr %20, align 4, !range !8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.config_item, ptr %17, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.config_item, ptr %17, i32 0, i32 2
  %29 = load volatile i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.config_item, ptr %25, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ffs_lock) #15
  %34 = load volatile i32, ptr %7, align 4
  %35 = and i32 %34, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %31
  tail call void @unregister_gadget_item(ptr noundef %33) #15
  br label %39

38:                                               ; preds = %27, %23, %19, %15, %1
  tail call void @mutex_unlock(ptr noundef nonnull @ffs_lock) #15
  br label %39

39:                                               ; preds = %38, %37, %31
  %40 = load ptr, ptr %0, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42, !prof !13

42:                                               ; preds = %39
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/function/f_fs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1785, 0\0A.popsection", ""() #15, !srcloc !16
  unreachable

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 2
  %45 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %44) #15
  %46 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 42
  %47 = load ptr, ptr %46, align 4
  store ptr null, ptr %46, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %44, i32 noundef %45) #15
  %48 = icmp eq ptr %47, null
  br i1 %48, label %71, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 32
  %51 = load i16, ptr %50, align 4
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %70, label %53

53:                                               ; preds = %49
  %54 = zext i16 %51 to i32
  br label %55

55:                                               ; preds = %66, %53
  %56 = phi ptr [ %68, %66 ], [ %47, %53 ]
  %57 = phi i32 [ %67, %66 ], [ %54, %53 ]
  %58 = tail call zeroext i1 @mutex_is_locked(ptr noundef %56) #15
  br i1 %58, label %59, label %60, !prof !17

59:                                               ; preds = %55
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/function/f_fs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1933, 0\0A.popsection", ""() #15, !srcloc !18
  unreachable

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.ffs_epfile, ptr %56, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  tail call void @d_delete(ptr noundef nonnull %62) #15
  %65 = load ptr, ptr %61, align 4
  tail call void @dput(ptr noundef %65) #15
  store ptr null, ptr %61, align 4
  br label %66

66:                                               ; preds = %64, %60
  %67 = add nsw i32 %57, -1
  %68 = getelementptr %struct.ffs_epfile, ptr %56, i32 1
  %69 = icmp eq i32 %67, 0
  br i1 %69, label %70, label %55

70:                                               ; preds = %66, %49
  tail call void @kfree(ptr noundef nonnull %47) #15
  store ptr null, ptr %46, align 4
  br label %71

71:                                               ; preds = %70, %43
  %72 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 38
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  tail call void @eventfd_ctx_put(ptr noundef nonnull %73) #15
  store ptr null, ptr %72, align 4
  br label %76

76:                                               ; preds = %75, %71
  %77 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 15
  %78 = load ptr, ptr %77, align 4
  tail call void @kfree(ptr noundef %78) #15
  %79 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 34
  %80 = load ptr, ptr %79, align 4
  tail call void @kfree(ptr noundef %80) #15
  %81 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 35
  %82 = load ptr, ptr %81, align 4
  tail call void @kfree(ptr noundef %82) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @eventfd_ctx_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_gadget_item(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_delete(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fs_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_tree_nodev(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ffs_sb_fill(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.timespec64, align 8
  %4 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ffs_sb_fill_data, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ffs_data, ptr %7, i32 0, i32 36
  store ptr %0, ptr %8, align 4
  store ptr null, ptr %6, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  store ptr %7, ptr %9, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  store i32 4096, ptr %10, align 16
  %11 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  store i8 12, ptr %11, align 4
  %12 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 12
  store i32 174355297, ptr %12, align 4
  %13 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 6
  store ptr @ffs_sb_operations, ptr %13, align 4
  %14 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 28
  store i32 1, ptr %14, align 32
  %15 = getelementptr inbounds %struct.ffs_sb_fill_data, ptr %5, i32 0, i32 1
  %16 = load i16, ptr %15, align 4
  store i16 %16, ptr %5, align 4
  %17 = tail call ptr @new_inode(ptr noundef %0) #15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #15, !annotation !9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %3, ptr noundef nonnull %17) #15
  %20 = call i32 @get_next_ino() #15
  %21 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 10
  store i32 %20, ptr %21, align 4
  %22 = load i16, ptr %5, align 4
  store i16 %22, ptr %17, align 8
  %23 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 2
  %24 = getelementptr inbounds %struct.ffs_file_perms, ptr %5, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %23, align 4
  %26 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 3
  %27 = getelementptr inbounds %struct.ffs_file_perms, ptr %5, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %26, align 8
  %29 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false) #15
  %30 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false) #15
  %31 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false) #15
  %32 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 47
  store ptr null, ptr %32, align 4
  %33 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 39
  store ptr @simple_dir_operations, ptr %33, align 8
  %34 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 7
  store ptr @simple_dir_inode_operations, ptr %34, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  br label %35

35:                                               ; preds = %19, %2
  %36 = call ptr @d_make_root(ptr noundef %17) #15
  %37 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 13
  store ptr %36, ptr %37, align 64
  %38 = icmp eq ptr %36, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = call fastcc ptr @ffs_sb_create_file(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef %7, ptr noundef nonnull @ffs_ep0_operations)
  %41 = icmp eq ptr %40, null
  %42 = select i1 %41, i32 -12, i32 0
  br label %43

43:                                               ; preds = %39, %35
  %44 = phi i32 [ -12, %35 ], [ %42, %39 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ffs_sb_create_file(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.timespec64, align 8
  %6 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 13
  %9 = load ptr, ptr %8, align 64
  %10 = tail call ptr @d_alloc_name(ptr noundef %9, ptr noundef %1) #15
  %11 = icmp eq ptr %10, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %4
  %13 = tail call ptr @new_inode(ptr noundef %0) #15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %33, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.ffs_data, ptr %7, i32 0, i32 37
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false) #15, !annotation !9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %5, ptr noundef nonnull %13) #15
  %17 = call i32 @get_next_ino() #15
  %18 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 10
  store i32 %17, ptr %18, align 4
  %19 = load i16, ptr %16, align 4
  store i16 %19, ptr %13, align 8
  %20 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 2
  %21 = getelementptr inbounds %struct.ffs_data, ptr %7, i32 0, i32 37, i32 1
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %20, align 4
  %23 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 3
  %24 = getelementptr inbounds %struct.ffs_data, ptr %7, i32 0, i32 37, i32 2
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %23, align 8
  %26 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false) #15
  %27 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false) #15
  %28 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false) #15
  %29 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 47
  store ptr %2, ptr %29, align 4
  %30 = icmp eq ptr %3, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %15
  %32 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 39
  store ptr %3, ptr %32, align 8
  br label %34

33:                                               ; preds = %12
  tail call void @dput(ptr noundef nonnull %10) #15
  br label %35

34:                                               ; preds = %31, %15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @d_add(ptr noundef nonnull %10, ptr noundef nonnull %13) #15
  br label %35

35:                                               ; preds = %34, %33, %4
  %36 = phi ptr [ %10, %34 ], [ null, %33 ], [ null, %4 ]
  ret ptr %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_delete_inode(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_ino() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_alloc_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ffs_ep0_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ffs_data, ptr %7, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #15, !srcloc !11
  br label %9

9:                                                ; preds = %9, %4
  %10 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %8, i32 2, i32 0) #15, !srcloc !20
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %9

13:                                               ; preds = %9
  %14 = extractvalue { i32, i32 } %10, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %144, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.ffs_data, ptr %7, i32 0, i32 1
  %18 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 2048
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = tail call i32 @mutex_trylock(ptr noundef %17) #15
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %144, label %28

25:                                               ; preds = %16
  %26 = tail call i32 @mutex_lock_interruptible(ptr noundef %17) #15
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %144, label %28

28:                                               ; preds = %25, %22
  %29 = getelementptr inbounds %struct.ffs_data, ptr %7, i32 0, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %141

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ffs_data, ptr %7, i32 0, i32 9, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %33) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #15, !srcloc !11
  br label %34

34:                                               ; preds = %34, %32
  %35 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %8, i32 2, i32 0) #15, !srcloc !20
  %36 = extractvalue { i32, i32 } %35, 0
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %34

38:                                               ; preds = %34
  %39 = extractvalue { i32, i32 } %35, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  switch i32 %39, label %135 [
    i32 2, label %136
    i32 0, label %40
    i32 1, label %82
  ]

40:                                               ; preds = %38
  %41 = udiv i32 %2, 12
  %42 = icmp ult i32 %2, 12
  br i1 %42, label %136, label %43

43:                                               ; preds = %40
  %44 = load i32, ptr %18, align 4
  %45 = and i32 %44, 2048
  %46 = icmp eq i32 %45, 0
  %47 = getelementptr inbounds %struct.ffs_data, ptr %7, i32 0, i32 9, i32 1
  %48 = load i16, ptr %47, align 4
  br i1 %46, label %51, label %49

49:                                               ; preds = %43
  %50 = icmp eq i16 %48, 0
  br i1 %50, label %136, label %77

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.ffs_data, ptr %7, i32 0, i32 9, i32 1
  %53 = icmp eq i16 %48, 0
  br i1 %53, label %54, label %77

54:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #15
  %55 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 1
  %56 = tail call ptr @llvm.thread.pointer() #15
  store ptr %56, ptr %55, align 4
  %57 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 2
  store ptr @autoremove_wake_function, ptr %57, align 4
  %58 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 3
  store ptr %58, ptr %58, align 4
  %59 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 3, i32 1
  store ptr %58, ptr %59, align 4
  store i32 1, ptr %5, align 4
  br label %60

60:                                               ; preds = %63, %54
  %61 = call i32 @do_wait_intr_irq(ptr noundef %33, ptr noundef nonnull %5) #15
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i16, ptr %52, align 4
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %60, label %71

66:                                               ; preds = %60
  %67 = load ptr, ptr %59, align 4
  %68 = load ptr, ptr %58, align 4
  %69 = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  store ptr %67, ptr %69, align 4
  store volatile ptr %68, ptr %67, align 4
  %70 = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 1
  store volatile i32 0, ptr %70, align 8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #15
  br label %136

71:                                               ; preds = %63
  %72 = load ptr, ptr %59, align 4
  %73 = load ptr, ptr %58, align 4
  %74 = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  store ptr %72, ptr %74, align 4
  store volatile ptr %73, ptr %72, align 4
  %75 = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 1
  store volatile i32 0, ptr %75, align 8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #15
  %76 = load i16, ptr %52, align 4
  br label %77

77:                                               ; preds = %71, %51, %49
  %78 = phi i16 [ %76, %71 ], [ %48, %51 ], [ %48, %49 ]
  %79 = zext i16 %78 to i32
  %80 = call i32 @llvm.umin.i32(i32 %41, i32 %79)
  %81 = call fastcc i32 @__ffs_ep0_read_events(ptr noundef %7, ptr noundef %1, i32 noundef %80)
  br label %144

82:                                               ; preds = %38
  %83 = getelementptr inbounds %struct.ffs_data, ptr %7, i32 0, i32 9, i32 3
  %84 = load i8, ptr %83, align 4
  %85 = icmp sgt i8 %84, -1
  br i1 %85, label %97, label %86

86:                                               ; preds = %82
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !22
  %87 = load i16, ptr %33, align 4
  %88 = add i16 %87, 1
  store i16 %88, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !24
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !26
  %89 = getelementptr inbounds %struct.ffs_data, ptr %7, i32 0, i32 9, i32 2
  %90 = load i16, ptr %89, align 2
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %141, label %92

92:                                               ; preds = %86
  %93 = load ptr, ptr %7, align 4
  %94 = getelementptr inbounds %struct.usb_gadget, ptr %93, i32 0, i32 3
  %95 = load ptr, ptr %94, align 8
  %96 = tail call i32 @usb_ep_set_halt(ptr noundef %95) #15
  store i32 0, ptr %8, align 4
  br label %141

97:                                               ; preds = %82
  %98 = getelementptr inbounds %struct.ffs_data, ptr %7, i32 0, i32 9, i32 3, i32 4
  %99 = load i16, ptr %98, align 2
  %100 = zext i16 %99 to i32
  %101 = tail call i32 @llvm.umin.i32(i32 %100, i32 %2)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !22
  %102 = load i16, ptr %33, align 4
  %103 = add i16 %102, 1
  store i16 %103, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !24
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !26
  %104 = icmp eq i32 %101, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %97
  %106 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %101, i32 noundef 3264) #18
  %107 = icmp eq ptr %106, null
  br i1 %107, label %141, label %108

108:                                              ; preds = %105, %97
  %109 = phi ptr [ %106, %105 ], [ null, %97 ]
  tail call void @_raw_spin_lock_irq(ptr noundef %33) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #15, !srcloc !11
  br label %110

110:                                              ; preds = %110, %108
  %111 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %8, i32 2, i32 0) #15, !srcloc !20
  %112 = extractvalue { i32, i32 } %111, 0
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %110

114:                                              ; preds = %110
  %115 = extractvalue { i32, i32 } %111, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  %116 = icmp eq i32 %115, 2
  br i1 %116, label %136, label %117

117:                                              ; preds = %114
  %118 = tail call fastcc i32 @__ffs_ep0_queue_wait(ptr noundef %7, ptr noundef %109, i32 noundef %101)
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %141

120:                                              ; preds = %117
  %121 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %101, i32 -1090519040) #19, !srcloc !27
  %122 = extractvalue { i32, i32 } %121, 0
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %120
  %125 = tail call ptr @llvm.thread.pointer() #15
  %126 = getelementptr inbounds %struct.thread_info, ptr %125, i32 0, i32 3
  %127 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %126) #20, !srcloc !28
  %128 = and i32 %127, -13
  %129 = or i32 %128, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %129) #15, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  %130 = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %109, i32 noundef %101) #15
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %127) #15, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  br label %131

131:                                              ; preds = %124, %120
  %132 = phi i32 [ %130, %124 ], [ %101, %120 ]
  %133 = icmp eq i32 %132, 0
  %134 = select i1 %133, i32 %118, i32 -14
  br label %141

135:                                              ; preds = %38
  br label %136

136:                                              ; preds = %135, %114, %66, %49, %40, %38
  %137 = phi i32 [ -77, %135 ], [ -4, %66 ], [ -43, %38 ], [ -22, %40 ], [ -11, %49 ], [ -43, %114 ]
  %138 = phi ptr [ null, %135 ], [ null, %66 ], [ null, %38 ], [ null, %40 ], [ null, %49 ], [ %109, %114 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !22
  %139 = load i16, ptr %33, align 4
  %140 = add i16 %139, 1
  store i16 %140, ptr %33, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !24
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !25
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !26
  br label %141

141:                                              ; preds = %136, %131, %117, %105, %92, %86, %28
  %142 = phi i32 [ %137, %136 ], [ %118, %117 ], [ -77, %28 ], [ -12, %105 ], [ -51, %92 ], [ -3, %86 ], [ %134, %131 ]
  %143 = phi ptr [ %138, %136 ], [ %109, %117 ], [ null, %28 ], [ null, %105 ], [ null, %92 ], [ null, %86 ], [ %109, %131 ]
  call void @mutex_unlock(ptr noundef %17) #15
  call void @kfree(ptr noundef %143) #15
  br label %144

144:                                              ; preds = %141, %77, %25, %22, %13
  %145 = phi i32 [ %142, %141 ], [ %81, %77 ], [ -43, %13 ], [ %26, %25 ], [ -11, %22 ]
  ret i32 %145
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ffs_ep0_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ffs_data, ptr %6, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #15, !srcloc !11
  br label %8

8:                                                ; preds = %8, %4
  %9 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %7, i32 2, i32 0) #15, !srcloc !20
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %8

12:                                               ; preds = %8
  %13 = extractvalue { i32, i32 } %9, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %115, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.ffs_data, ptr %6, i32 0, i32 1
  %17 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 2048
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = tail call i32 @mutex_trylock(ptr noundef %16) #15
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %115, label %27

24:                                               ; preds = %15
  %25 = tail call i32 @mutex_lock_interruptible(ptr noundef %16) #15
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %115, label %27

27:                                               ; preds = %24, %21
  %28 = getelementptr inbounds %struct.ffs_data, ptr %6, i32 0, i32 7
  %29 = load i32, ptr %28, align 4
  switch i32 %29, label %113 [
    i32 0, label %30
    i32 1, label %30
    i32 2, label %57
  ]

30:                                               ; preds = %27, %27
  %31 = icmp ult i32 %2, 16
  br i1 %31, label %113, label %32

32:                                               ; preds = %30
  %33 = tail call ptr @memdup_user(ptr noundef %1, i32 noundef %2) #15
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = ptrtoint ptr %33 to i32
  br label %113

37:                                               ; preds = %32
  %38 = load i32, ptr %28, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #17
  %42 = tail call fastcc i32 @__ffs_data_got_descs(ptr noundef %6, ptr noundef %33, i32 noundef %2)
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %113, label %44

44:                                               ; preds = %40
  store i32 1, ptr %28, align 4
  br label %113

45:                                               ; preds = %37
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #17
  %47 = tail call fastcc i32 @__ffs_data_got_strings(ptr noundef %6, ptr noundef %33, i32 noundef %2)
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %113, label %49

49:                                               ; preds = %45
  %50 = tail call fastcc i32 @ffs_epfiles_create(ptr noundef %6)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  store i32 4, ptr %28, align 4
  br label %113

53:                                               ; preds = %49
  store i32 2, ptr %28, align 4
  tail call void @mutex_unlock(ptr noundef %16) #15
  %54 = tail call fastcc i32 @ffs_ready(ptr noundef %6)
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %115

56:                                               ; preds = %53
  store i32 4, ptr %28, align 4
  br label %115

57:                                               ; preds = %27
  %58 = getelementptr inbounds %struct.ffs_data, ptr %6, i32 0, i32 9, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %58) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #15, !srcloc !11
  br label %59

59:                                               ; preds = %59, %57
  %60 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %7, i32 2, i32 0) #15, !srcloc !20
  %61 = extractvalue { i32, i32 } %60, 0
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %59

63:                                               ; preds = %59
  %64 = extractvalue { i32, i32 } %60, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  switch i32 %64, label %66 [
    i32 2, label %103
    i32 0, label %65
  ]

65:                                               ; preds = %63
  br label %103

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.ffs_data, ptr %6, i32 0, i32 9, i32 3
  %68 = load i8, ptr %67, align 4
  %69 = icmp sgt i8 %68, -1
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !22
  %71 = load i16, ptr %58, align 4
  %72 = add i16 %71, 1
  store i16 %72, ptr %58, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !24
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !26
  %73 = getelementptr inbounds %struct.ffs_data, ptr %6, i32 0, i32 9, i32 2
  %74 = load i16, ptr %73, align 2
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %113, label %76

76:                                               ; preds = %70
  %77 = load ptr, ptr %6, align 4
  %78 = getelementptr inbounds %struct.usb_gadget, ptr %77, i32 0, i32 3
  %79 = load ptr, ptr %78, align 8
  %80 = tail call i32 @usb_ep_set_halt(ptr noundef %79) #15
  store i32 0, ptr %7, align 4
  br label %113

81:                                               ; preds = %66
  %82 = getelementptr inbounds %struct.ffs_data, ptr %6, i32 0, i32 9, i32 3, i32 4
  %83 = load i16, ptr %82, align 2
  %84 = zext i16 %83 to i32
  %85 = tail call i32 @llvm.umin.i32(i32 %84, i32 %2)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !22
  %86 = load i16, ptr %58, align 4
  %87 = add i16 %86, 1
  store i16 %87, ptr %58, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !24
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !26
  %88 = icmp eq i32 %85, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %81
  %90 = tail call ptr @memdup_user(ptr noundef %1, i32 noundef %85) #15
  %91 = icmp ugt ptr %90, inttoptr (i32 -4096 to ptr)
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = ptrtoint ptr %90 to i32
  br label %113

94:                                               ; preds = %89, %81
  %95 = phi ptr [ %90, %89 ], [ null, %81 ]
  tail call void @_raw_spin_lock_irq(ptr noundef %58) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #15, !srcloc !11
  br label %96

96:                                               ; preds = %96, %94
  %97 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %7, i32 2, i32 0) #15, !srcloc !20
  %98 = extractvalue { i32, i32 } %97, 0
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %96

100:                                              ; preds = %96
  %101 = extractvalue { i32, i32 } %97, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  %102 = icmp eq i32 %101, 2
  br i1 %102, label %103, label %108

103:                                              ; preds = %100, %65, %63
  %104 = phi ptr [ null, %65 ], [ null, %63 ], [ %95, %100 ]
  %105 = phi i32 [ -3, %65 ], [ -43, %63 ], [ -43, %100 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !22
  %106 = load i16, ptr %58, align 4
  %107 = add i16 %106, 1
  store i16 %107, ptr %58, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !24
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !26
  br label %110

108:                                              ; preds = %100
  %109 = tail call fastcc i32 @__ffs_ep0_queue_wait(ptr noundef %6, ptr noundef %95, i32 noundef %85)
  br label %110

110:                                              ; preds = %108, %103
  %111 = phi ptr [ %104, %103 ], [ %95, %108 ]
  %112 = phi i32 [ %105, %103 ], [ %109, %108 ]
  tail call void @kfree(ptr noundef %111) #15
  br label %113

113:                                              ; preds = %110, %92, %76, %70, %52, %45, %44, %40, %35, %30, %27
  %114 = phi i32 [ %93, %92 ], [ %112, %110 ], [ %36, %35 ], [ %42, %40 ], [ %2, %44 ], [ %47, %45 ], [ %50, %52 ], [ -22, %30 ], [ -77, %27 ], [ -51, %76 ], [ -3, %70 ]
  tail call void @mutex_unlock(ptr noundef %16) #15
  br label %115

115:                                              ; preds = %113, %56, %53, %24, %21, %12
  %116 = phi i32 [ %114, %113 ], [ %54, %56 ], [ -43, %12 ], [ %25, %24 ], [ %2, %53 ], [ -11, %21 ]
  ret i32 %116
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ffs_ep0_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ffs_data, ptr %4, i32 0, i32 9, i32 4
  %6 = icmp eq ptr %1, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 4
  %9 = icmp ne ptr %8, null
  %10 = icmp ne ptr %5, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void %8(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %1) #15
  br label %13

13:                                               ; preds = %12, %7, %2
  %14 = getelementptr inbounds %struct.ffs_data, ptr %4, i32 0, i32 1
  %15 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 2048
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = tail call i32 @mutex_trylock(ptr noundef %14) #15
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %40, label %25

22:                                               ; preds = %13
  %23 = tail call i32 @mutex_lock_interruptible(ptr noundef %14) #15
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %22, %19
  %26 = getelementptr inbounds %struct.ffs_data, ptr %4, i32 0, i32 7
  %27 = load i32, ptr %26, align 4
  switch i32 %27, label %38 [
    i32 0, label %28
    i32 1, label %28
    i32 2, label %29
  ]

28:                                               ; preds = %25, %25
  br label %38

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ffs_data, ptr %4, i32 0, i32 8
  %31 = load i32, ptr %30, align 4
  switch i32 %31, label %38 [
    i32 0, label %32
    i32 1, label %37
    i32 2, label %37
  ]

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.ffs_data, ptr %4, i32 0, i32 9, i32 1
  %34 = load i16, ptr %33, align 4
  %35 = icmp eq i16 %34, 0
  %36 = select i1 %35, i32 256, i32 257
  br label %38

37:                                               ; preds = %29, %29
  br label %38

38:                                               ; preds = %37, %32, %29, %28, %25
  %39 = phi i32 [ 256, %25 ], [ 256, %29 ], [ 261, %37 ], [ 260, %28 ], [ %36, %32 ]
  tail call void @mutex_unlock(ptr noundef %14) #15
  br label %40

40:                                               ; preds = %38, %22, %19
  %41 = phi i32 [ %39, %38 ], [ 256, %22 ], [ 256, %19 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ffs_ep0_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq i32 %1, 26496
  br i1 %7, label %8, label %40

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ffs_data, ptr %5, i32 0, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %50, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ffs_function, ptr %10, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ffs_function, ptr %10, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ffs_data, ptr %16, i32 0, i32 31
  %18 = load i16, ptr %17, align 2
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %50, label %20

20:                                               ; preds = %12
  %21 = zext i16 %18 to i32
  %22 = and i32 %2, 255
  br label %23

23:                                               ; preds = %36, %20
  %24 = phi i32 [ %21, %20 ], [ %37, %36 ]
  %25 = phi ptr [ %14, %20 ], [ %38, %36 ]
  %26 = load i16, ptr %25, align 2
  %27 = icmp sgt i16 %26, -1
  %28 = sext i16 %26 to i32
  %29 = icmp eq i32 %22, %28
  %30 = and i1 %27, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = ptrtoint ptr %25 to i32
  %33 = ptrtoint ptr %14 to i32
  %34 = sub i32 %32, %33
  %35 = ashr exact i32 %34, 1
  br label %50

36:                                               ; preds = %23
  %37 = add nsw i32 %24, -1
  %38 = getelementptr i16, ptr %25, i32 1
  %39 = icmp eq i32 %37, 0
  br i1 %39, label %50, label %23

40:                                               ; preds = %3
  %41 = icmp eq ptr %6, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.usb_gadget, ptr %6, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.usb_gadget_ops, ptr %44, i32 0, i32 6
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %42
  %49 = tail call i32 %46(ptr noundef nonnull %6, i32 noundef %1, i32 noundef %2) #15
  br label %50

50:                                               ; preds = %48, %42, %40, %36, %31, %12, %8
  %51 = phi i32 [ %49, %48 ], [ -19, %8 ], [ -25, %42 ], [ -25, %40 ], [ %35, %31 ], [ -33, %12 ], [ -33, %36 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ffs_ep0_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ffs_data, ptr %4, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %4, ptr %9, align 8
  tail call fastcc void @ffs_data_opened(ptr noundef %4)
  %10 = tail call i32 @stream_open(ptr noundef %0, ptr noundef %1) #15
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i32 [ %10, %8 ], [ -16, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ffs_ep0_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  tail call fastcc void @ffs_data_closed(ptr noundef %4)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_wait_intr_irq(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__ffs_ep0_read_events(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [4 x %struct.usb_functionfs_event], align 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(48) %4, i8 0, i32 48, i1 false), !annotation !9
  %5 = mul i32 %2, 12
  call void @llvm.memset.p0.i32(ptr nonnull align 1 %4, i8 0, i32 %5, i1 false)
  %6 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 9
  %7 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 9, i32 3
  %8 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 8
  %9 = call i32 @llvm.umax.i32(i32 %2, i32 1)
  br label %10

10:                                               ; preds = %19, %3
  %11 = phi i32 [ 0, %3 ], [ %20, %19 ]
  %12 = getelementptr [4 x i8], ptr %6, i32 0, i32 %11
  %13 = load i8, ptr %12, align 1
  %14 = getelementptr [4 x %struct.usb_functionfs_event], ptr %4, i32 0, i32 %11, i32 1
  store i8 %13, ptr %14, align 1
  %15 = icmp eq i8 %13, 4
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = getelementptr [4 x %struct.usb_functionfs_event], ptr %4, i32 0, i32 %11
  %18 = load i64, ptr %7, align 4
  store i64 %18, ptr %17, align 1
  store i32 1, ptr %8, align 4
  br label %19

19:                                               ; preds = %16, %10
  %20 = add nuw i32 %11, 1
  %21 = icmp eq i32 %20, %9
  br i1 %21, label %22, label %10

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 9, i32 1
  %24 = load i16, ptr %23, align 4
  %25 = trunc i32 %2 to i16
  %26 = sub i16 %24, %25
  store i16 %26, ptr %23, align 4
  %27 = icmp eq i16 %24, %25
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = getelementptr i8, ptr %6, i32 %2
  %30 = zext i16 %26 to i32
  tail call void @llvm.memmove.p0.p0.i32(ptr align 4 %6, ptr align 1 %29, i32 %30, i1 false)
  br label %31

31:                                               ; preds = %28, %22
  %32 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 9, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !22
  %33 = load i16, ptr %32, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %32, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !24
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !26
  %35 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %35) #15
  %36 = icmp ugt i32 %5, 48
  br i1 %36, label %37, label %38, !prof !17

37:                                               ; preds = %31
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.16, i32 noundef 48, i32 noundef %5) #15
  br label %53

38:                                               ; preds = %31
  %39 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %5, i32 -1090519040) #19, !srcloc !27
  %40 = extractvalue { i32, i32 } %39, 0
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = tail call ptr @llvm.thread.pointer() #15
  %44 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 3
  %45 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %44) #20, !srcloc !28
  %46 = and i32 %45, -13
  %47 = or i32 %46, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #15, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  %48 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %4, i32 noundef %5) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %45) #15, !srcloc !29
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  br label %49

49:                                               ; preds = %42, %38
  %50 = phi i32 [ %48, %42 ], [ %5, %38 ]
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %51, i32 %5, i32 -14
  br label %53

53:                                               ; preds = %49, %37
  %54 = phi i32 [ -14, %37 ], [ %52, %49 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #15
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__ffs_ep0_queue_wait(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 9, i32 3, i32 4
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = icmp ugt i32 %8, %2
  %10 = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = select i1 %9, i32 262144, i32 0
  %13 = and i32 %11, -262145
  %14 = or i32 %12, %13
  store i32 %14, ptr %10, align 4
  %15 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 9, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !22
  %16 = load i16, ptr %15, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !24
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !26
  store ptr %1, ptr %5, align 4
  %18 = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 1
  store i32 %2, ptr %18, align 4
  %19 = icmp eq ptr %1, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store ptr inttoptr (i32 -559039810 to ptr), ptr %5, align 4
  br label %21

21:                                               ; preds = %20, %3
  %22 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 4
  store i32 0, ptr %22, align 4
  %23 = load ptr, ptr %0, align 4
  %24 = getelementptr inbounds %struct.usb_gadget, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 8
  %26 = tail call i32 @usb_ep_queue(ptr noundef %25, ptr noundef %5, i32 noundef 2592) #15
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %21
  %29 = tail call i32 @wait_for_completion_interruptible(ptr noundef %22) #15
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %0, align 4
  %33 = getelementptr inbounds %struct.usb_gadget, ptr %32, i32 0, i32 3
  %34 = load ptr, ptr %33, align 8
  %35 = tail call i32 @usb_ep_dequeue(ptr noundef %34, ptr noundef %5) #15
  br label %44

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 8
  store i32 0, ptr %37, align 4
  %38 = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 11
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 12
  %43 = load i32, ptr %42, align 4
  br label %44

44:                                               ; preds = %41, %36, %31, %21
  %45 = phi i32 [ -4, %31 ], [ %26, %21 ], [ %43, %41 ], [ %39, %36 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_set_halt(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_dequeue(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__ffs_data_got_descs(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false), !annotation !9
  %5 = getelementptr i8, ptr %1, i32 4
  %6 = load i32, ptr %5, align 1
  %7 = icmp eq i32 %6, %2
  br i1 %7, label %8, label %375

8:                                                ; preds = %3
  %9 = load i32, ptr %1, align 1
  switch i32 %9, label %375 [
    i32 1, label %10
    i32 3, label %13
  ]

10:                                               ; preds = %8
  %11 = getelementptr i8, ptr %1, i32 8
  %12 = add i32 %2, -8
  br label %39

13:                                               ; preds = %8
  %14 = getelementptr i8, ptr %1, i32 8
  %15 = load i32, ptr %14, align 1
  %16 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 28
  store i32 %15, ptr %16, align 4
  %17 = icmp ult i32 %15, 256
  br i1 %17, label %18, label %375

18:                                               ; preds = %13
  %19 = getelementptr i8, ptr %1, i32 12
  %20 = add i32 %2, -12
  %21 = and i32 %15, 32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %18
  %24 = load i32, ptr %19, align 1
  %25 = tail call ptr @eventfd_ctx_fdget(i32 noundef %24) #15
  %26 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 38
  store ptr %25, ptr %26, align 4
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = ptrtoint ptr %25 to i32
  store ptr null, ptr %26, align 4
  br label %375

30:                                               ; preds = %23
  %31 = getelementptr i8, ptr %1, i32 16
  %32 = add i32 %2, -16
  br label %33

33:                                               ; preds = %30, %18
  %34 = phi i32 [ %32, %30 ], [ %20, %18 ]
  %35 = phi ptr [ %31, %30 ], [ %19, %18 ]
  %36 = and i32 %15, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, ptr %4, align 4
  br label %48

39:                                               ; preds = %33, %10
  %40 = phi ptr [ %11, %10 ], [ %35, %33 ]
  %41 = phi i32 [ %12, %10 ], [ %34, %33 ]
  %42 = phi i32 [ 3, %10 ], [ %15, %33 ]
  %43 = icmp ult i32 %41, 4
  br i1 %43, label %375, label %44

44:                                               ; preds = %39
  %45 = load i32, ptr %40, align 1
  store i32 %45, ptr %4, align 4
  %46 = getelementptr i8, ptr %40, i32 4
  %47 = add i32 %41, -4
  br label %48

48:                                               ; preds = %44, %38
  %49 = phi i32 [ %42, %44 ], [ %15, %38 ]
  %50 = phi i32 [ %45, %44 ], [ 0, %38 ]
  %51 = phi i32 [ %47, %44 ], [ %34, %38 ]
  %52 = phi ptr [ %46, %44 ], [ %35, %38 ]
  %53 = and i32 %49, 2
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %48
  %56 = icmp ult i32 %51, 4
  br i1 %56, label %375, label %57

57:                                               ; preds = %55
  %58 = load i32, ptr %52, align 1
  %59 = getelementptr inbounds [3 x i32], ptr %4, i32 0, i32 1
  store i32 %58, ptr %59, align 4
  %60 = getelementptr i8, ptr %52, i32 4
  %61 = add i32 %51, -4
  br label %64

62:                                               ; preds = %48
  %63 = getelementptr inbounds [3 x i32], ptr %4, i32 0, i32 1
  store i32 0, ptr %63, align 4
  br label %64

64:                                               ; preds = %62, %57
  %65 = phi i32 [ %61, %57 ], [ %51, %62 ]
  %66 = phi ptr [ %60, %57 ], [ %52, %62 ]
  %67 = and i32 %49, 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %64
  %70 = icmp ult i32 %65, 4
  br i1 %70, label %375, label %71

71:                                               ; preds = %69
  %72 = load i32, ptr %66, align 1
  %73 = getelementptr inbounds [3 x i32], ptr %4, i32 0, i32 2
  store i32 %72, ptr %73, align 4
  %74 = getelementptr i8, ptr %66, i32 4
  %75 = add i32 %65, -4
  br label %78

76:                                               ; preds = %64
  %77 = getelementptr inbounds [3 x i32], ptr %4, i32 0, i32 2
  store i32 0, ptr %77, align 4
  br label %78

78:                                               ; preds = %76, %71
  %79 = phi i32 [ %75, %71 ], [ %65, %76 ]
  %80 = phi ptr [ %74, %71 ], [ %66, %76 ]
  %81 = and i32 %49, 8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %78
  %84 = icmp ult i32 %79, 4
  br i1 %84, label %375, label %85

85:                                               ; preds = %83
  %86 = load i32, ptr %80, align 1
  %87 = getelementptr i8, ptr %80, i32 4
  %88 = add i32 %79, -4
  br label %89

89:                                               ; preds = %85, %78
  %90 = phi i32 [ %88, %85 ], [ %79, %78 ]
  %91 = phi ptr [ %87, %85 ], [ %80, %78 ]
  %92 = phi i32 [ %86, %85 ], [ 0, %78 ]
  %93 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 32
  %94 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 31
  %95 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 30
  br label %96

96:                                               ; preds = %220, %89
  %97 = phi i32 [ %50, %89 ], [ %222, %220 ]
  %98 = phi i32 [ 0, %89 ], [ %218, %220 ]
  %99 = phi ptr [ %91, %89 ], [ %217, %220 ]
  %100 = phi i32 [ %90, %89 ], [ %216, %220 ]
  %101 = icmp eq i32 %97, 0
  br i1 %101, label %215, label %102

102:                                              ; preds = %96
  %103 = icmp eq ptr %99, null
  br i1 %103, label %191, label %104

104:                                              ; preds = %181, %102
  %105 = phi i32 [ %184, %181 ], [ -1, %102 ]
  %106 = phi i32 [ %185, %181 ], [ %100, %102 ]
  %107 = phi i32 [ %187, %181 ], [ 0, %102 ]
  %108 = phi ptr [ %186, %181 ], [ %99, %102 ]
  %109 = phi i32 [ %183, %181 ], [ 0, %102 ]
  %110 = phi i32 [ %182, %181 ], [ 0, %102 ]
  %111 = icmp ult i32 %106, 2
  br i1 %111, label %375, label %112

112:                                              ; preds = %104
  %113 = load i8, ptr %108, align 1
  %114 = zext i8 %113 to i32
  %115 = icmp ult i32 %106, %114
  br i1 %115, label %375, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.usb_descriptor_header, ptr %108, i32 0, i32 1
  %118 = load i8, ptr %117, align 1
  switch i8 %118, label %375 [
    i8 48, label %179
    i8 11, label %168
    i8 9, label %166
    i8 33, label %161
    i8 4, label %119
    i8 5, label %140
  ]

119:                                              ; preds = %116
  %120 = icmp eq i8 %113, 9
  br i1 %120, label %121, label %375

121:                                              ; preds = %119
  %122 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %108, i32 0, i32 2
  %123 = load i8, ptr %122, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp ugt i32 %110, %124
  %126 = add nuw nsw i32 %124, 1
  %127 = select i1 %125, i32 %110, i32 %126
  %128 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %108, i32 0, i32 8
  %129 = load i8, ptr %128, align 1
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %121
  %132 = load i16, ptr %95, align 4
  %133 = zext i8 %129 to i16
  %134 = icmp ult i16 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  store i16 %133, ptr %95, align 4
  br label %136

136:                                              ; preds = %135, %131, %121
  %137 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %108, i32 0, i32 5
  %138 = load i8, ptr %137, align 1
  %139 = zext i8 %138 to i32
  br label %181

140:                                              ; preds = %116
  switch i8 %113, label %375 [
    i8 9, label %141
    i8 7, label %141
  ]

141:                                              ; preds = %140, %140
  %142 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %108, i32 0, i32 2
  %143 = load i8, ptr %142, align 1
  %144 = and i8 %143, 15
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %375, label %146

146:                                              ; preds = %141
  %147 = add i32 %109, 1
  %148 = icmp ugt i32 %147, 30
  br i1 %148, label %375, label %149

149:                                              ; preds = %146
  %150 = load i16, ptr %93, align 4
  %151 = icmp eq i16 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %149
  %153 = load i16, ptr %94, align 2
  %154 = icmp eq i16 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = getelementptr %struct.ffs_data, ptr %0, i32 0, i32 29, i32 %147
  store i8 %143, ptr %156, align 1
  br label %181

157:                                              ; preds = %152, %149
  %158 = getelementptr %struct.ffs_data, ptr %0, i32 0, i32 29, i32 %147
  %159 = load i8, ptr %158, align 1
  %160 = icmp eq i8 %159, %143
  br i1 %160, label %181, label %375

161:                                              ; preds = %116
  switch i32 %105, label %375 [
    i32 3, label %162
    i32 11, label %164
  ]

162:                                              ; preds = %161
  %163 = icmp eq i8 %113, 9
  br i1 %163, label %181, label %375

164:                                              ; preds = %161
  %165 = icmp eq i8 %113, 54
  br i1 %165, label %181, label %375

166:                                              ; preds = %116
  %167 = icmp eq i8 %113, 3
  br i1 %167, label %181, label %375

168:                                              ; preds = %116
  %169 = icmp eq i8 %113, 8
  br i1 %169, label %170, label %375

170:                                              ; preds = %168
  %171 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %108, i32 0, i32 7
  %172 = load i8, ptr %171, align 1
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %181, label %174

174:                                              ; preds = %170
  %175 = load i16, ptr %95, align 4
  %176 = zext i8 %172 to i16
  %177 = icmp ult i16 %175, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %174
  store i16 %176, ptr %95, align 4
  br label %181

179:                                              ; preds = %116
  %180 = icmp eq i8 %113, 6
  br i1 %180, label %181, label %375

181:                                              ; preds = %179, %178, %174, %170, %166, %164, %162, %157, %155, %136
  %182 = phi i32 [ %127, %136 ], [ %110, %164 ], [ %110, %162 ], [ %110, %166 ], [ %110, %170 ], [ %110, %179 ], [ %110, %155 ], [ %110, %157 ], [ %110, %174 ], [ %110, %178 ]
  %183 = phi i32 [ %109, %136 ], [ %109, %164 ], [ %109, %162 ], [ %109, %166 ], [ %109, %170 ], [ %109, %179 ], [ %147, %155 ], [ %147, %157 ], [ %109, %174 ], [ %109, %178 ]
  %184 = phi i32 [ %139, %136 ], [ 11, %164 ], [ 3, %162 ], [ %105, %166 ], [ %105, %170 ], [ %105, %179 ], [ %105, %155 ], [ %105, %157 ], [ %105, %174 ], [ %105, %178 ]
  %185 = sub i32 %106, %114
  %186 = getelementptr i8, ptr %108, i32 %114
  %187 = add i32 %107, 1
  %188 = icmp eq i32 %187, %97
  %189 = icmp eq ptr %186, null
  %190 = select i1 %188, i1 true, i1 %189
  br i1 %190, label %191, label %104

191:                                              ; preds = %181, %102
  %192 = phi i32 [ 0, %102 ], [ %182, %181 ]
  %193 = phi i32 [ 0, %102 ], [ %183, %181 ]
  %194 = phi i32 [ %100, %102 ], [ %185, %181 ]
  %195 = sub i32 %100, %194
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %375, label %197

197:                                              ; preds = %191
  %198 = load i16, ptr %93, align 4
  %199 = icmp eq i16 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %197
  %201 = load i16, ptr %94, align 2
  %202 = icmp eq i16 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %200
  %204 = trunc i32 %193 to i16
  store i16 %204, ptr %93, align 4
  %205 = trunc i32 %192 to i16
  store i16 %205, ptr %94, align 2
  br label %213

206:                                              ; preds = %200, %197
  %207 = zext i16 %198 to i32
  %208 = icmp eq i32 %193, %207
  br i1 %208, label %209, label %375

209:                                              ; preds = %206
  %210 = load i16, ptr %94, align 2
  %211 = zext i16 %210 to i32
  %212 = icmp eq i32 %192, %211
  br i1 %212, label %213, label %375

213:                                              ; preds = %209, %203
  %214 = getelementptr i8, ptr %99, i32 %195
  br label %215

215:                                              ; preds = %213, %96
  %216 = phi i32 [ %194, %213 ], [ %100, %96 ]
  %217 = phi ptr [ %214, %213 ], [ %99, %96 ]
  %218 = add nuw nsw i32 %98, 1
  %219 = icmp eq i32 %218, 3
  br i1 %219, label %223, label %220

220:                                              ; preds = %215
  %221 = getelementptr [3 x i32], ptr %4, i32 0, i32 %218
  %222 = load i32, ptr %221, align 4
  br label %96

223:                                              ; preds = %215
  %224 = icmp eq i32 %92, 0
  br i1 %224, label %353, label %225

225:                                              ; preds = %223
  %226 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 22
  %227 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 23
  %228 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 24
  br label %229

229:                                              ; preds = %344, %225
  %230 = phi ptr [ %345, %344 ], [ %217, %225 ]
  %231 = phi i32 [ %346, %344 ], [ 0, %225 ]
  %232 = phi i32 [ %341, %344 ], [ %216, %225 ]
  %233 = icmp ult i32 %232, 11
  br i1 %233, label %375, label %234

234:                                              ; preds = %229
  %235 = getelementptr inbounds %struct.usb_os_desc_header, ptr %230, i32 0, i32 1
  %236 = load i32, ptr %235, align 1
  %237 = icmp ugt i32 %236, %232
  br i1 %237, label %375, label %238

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.usb_os_desc_header, ptr %230, i32 0, i32 2
  %240 = load i16, ptr %239, align 1
  %241 = icmp eq i16 %240, 1
  br i1 %241, label %242, label %375

242:                                              ; preds = %238
  %243 = getelementptr inbounds %struct.usb_os_desc_header, ptr %230, i32 0, i32 3
  %244 = load i16, ptr %243, align 1
  switch i16 %244, label %375 [
    i16 4, label %248
    i16 5, label %245
  ]

245:                                              ; preds = %242
  %246 = getelementptr inbounds %struct.usb_os_desc_header, ptr %230, i32 0, i32 4
  %247 = load i16, ptr %246, align 1
  br label %252

248:                                              ; preds = %242
  %249 = getelementptr inbounds %struct.usb_os_desc_header, ptr %230, i32 0, i32 4
  %250 = load i16, ptr %249, align 1
  %251 = icmp ugt i16 %250, 255
  br i1 %251, label %375, label %252

252:                                              ; preds = %248, %245
  %253 = phi i16 [ %247, %245 ], [ %250, %248 ]
  %254 = phi i1 [ false, %245 ], [ true, %248 ]
  %255 = add i32 %232, -11
  %256 = getelementptr i8, ptr %230, i32 11
  %257 = icmp eq i16 %253, 0
  br i1 %257, label %340, label %258

258:                                              ; preds = %334, %252
  %259 = phi i16 [ %336, %334 ], [ %253, %252 ]
  %260 = phi ptr [ %337, %334 ], [ %256, %252 ]
  %261 = phi i32 [ %338, %334 ], [ %255, %252 ]
  br i1 %254, label %262, label %298

262:                                              ; preds = %258
  %263 = icmp ult i32 %261, 24
  br i1 %263, label %375, label %264

264:                                              ; preds = %262
  %265 = load i8, ptr %260, align 1
  %266 = load i16, ptr %94, align 2
  %267 = zext i8 %265 to i16
  %268 = icmp ugt i16 %266, %267
  br i1 %268, label %269, label %375

269:                                              ; preds = %264
  %270 = getelementptr inbounds %struct.usb_ext_compat_desc, ptr %260, i32 0, i32 1
  %271 = load i8, ptr %270, align 1
  %272 = icmp eq i8 %271, 1
  br i1 %272, label %274, label %273

273:                                              ; preds = %269
  store i8 1, ptr %270, align 1
  br label %274

274:                                              ; preds = %273, %269
  %275 = getelementptr %struct.usb_ext_compat_desc, ptr %260, i32 0, i32 4, i32 0
  %276 = load i8, ptr %275, align 1
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %278, label %375

278:                                              ; preds = %274
  %279 = getelementptr %struct.usb_ext_compat_desc, ptr %260, i32 0, i32 4, i32 1
  %280 = load i8, ptr %279, align 1
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %282, label %375

282:                                              ; preds = %278
  %283 = getelementptr %struct.usb_ext_compat_desc, ptr %260, i32 0, i32 4, i32 2
  %284 = load i8, ptr %283, align 1
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %286, label %375

286:                                              ; preds = %282
  %287 = getelementptr %struct.usb_ext_compat_desc, ptr %260, i32 0, i32 4, i32 3
  %288 = load i8, ptr %287, align 1
  %289 = icmp eq i8 %288, 0
  br i1 %289, label %290, label %375

290:                                              ; preds = %286
  %291 = getelementptr %struct.usb_ext_compat_desc, ptr %260, i32 0, i32 4, i32 4
  %292 = load i8, ptr %291, align 1
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %294, label %375

294:                                              ; preds = %290
  %295 = getelementptr %struct.usb_ext_compat_desc, ptr %260, i32 0, i32 4, i32 5
  %296 = load i8, ptr %295, align 1
  %297 = icmp eq i8 %296, 0
  br i1 %297, label %334, label %375

298:                                              ; preds = %258
  %299 = icmp ult i32 %261, 10
  br i1 %299, label %375, label %300

300:                                              ; preds = %298
  %301 = load i8, ptr %230, align 1
  %302 = load i16, ptr %94, align 2
  %303 = zext i8 %301 to i16
  %304 = icmp ugt i16 %302, %303
  br i1 %304, label %305, label %375

305:                                              ; preds = %300
  %306 = load i32, ptr %260, align 1
  %307 = and i32 %306, 255
  %308 = icmp ugt i32 %307, %261
  br i1 %308, label %375, label %309

309:                                              ; preds = %305
  %310 = getelementptr inbounds %struct.usb_ext_prop_desc, ptr %260, i32 0, i32 1
  %311 = load i32, ptr %310, align 1
  %312 = add i32 %311, -8
  %313 = icmp ult i32 %312, -7
  br i1 %313, label %375, label %314

314:                                              ; preds = %309
  %315 = getelementptr inbounds %struct.usb_ext_prop_desc, ptr %260, i32 0, i32 2
  %316 = load i16, ptr %315, align 1
  %317 = zext i16 %316 to i32
  %318 = add nuw nsw i32 %317, 14
  %319 = icmp ult i32 %307, %318
  br i1 %319, label %375, label %320

320:                                              ; preds = %314
  %321 = getelementptr i8, ptr %260, i32 10
  %322 = getelementptr i8, ptr %321, i32 %317
  %323 = load i32, ptr %322, align 4
  %324 = add i32 %323, %318
  %325 = icmp eq i32 %307, %324
  br i1 %325, label %326, label %375

326:                                              ; preds = %320
  %327 = load i32, ptr %226, align 4
  %328 = add i32 %327, 1
  store i32 %328, ptr %226, align 4
  %329 = shl nuw nsw i32 %317, 1
  %330 = load i32, ptr %227, align 4
  %331 = add i32 %330, %329
  store i32 %331, ptr %227, align 4
  %332 = load i32, ptr %228, align 4
  %333 = add i32 %332, %323
  store i32 %333, ptr %228, align 4
  br label %334

334:                                              ; preds = %326, %294
  %335 = phi i32 [ %307, %326 ], [ 24, %294 ]
  %336 = add i16 %259, -1
  %337 = getelementptr i8, ptr %260, i32 %335
  %338 = sub i32 %261, %335
  %339 = icmp eq i16 %336, 0
  br i1 %339, label %340, label %258

340:                                              ; preds = %334, %252
  %341 = phi i32 [ %255, %252 ], [ %338, %334 ]
  %342 = sub i32 %255, %341
  %343 = icmp slt i32 %342, 0
  br i1 %343, label %375, label %344

344:                                              ; preds = %340
  %345 = getelementptr i8, ptr %256, i32 %342
  %346 = add nuw i32 %231, 1
  %347 = icmp eq i32 %346, %92
  br i1 %347, label %348, label %229

348:                                              ; preds = %344
  %349 = sub i32 %216, %341
  %350 = icmp slt i32 %349, 0
  br i1 %350, label %375, label %351

351:                                              ; preds = %348
  %352 = getelementptr i8, ptr %217, i32 %349
  br label %353

353:                                              ; preds = %351, %223
  %354 = phi i32 [ %341, %351 ], [ %216, %223 ]
  %355 = phi ptr [ %352, %351 ], [ %217, %223 ]
  %356 = icmp eq ptr %91, %355
  %357 = icmp ne i32 %354, 0
  %358 = select i1 %356, i1 true, i1 %357
  br i1 %358, label %375, label %359

359:                                              ; preds = %353
  %360 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 15
  store ptr %1, ptr %360, align 4
  %361 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 16
  store ptr %91, ptr %361, align 4
  %362 = ptrtoint ptr %355 to i32
  %363 = ptrtoint ptr %91 to i32
  %364 = sub i32 %362, %363
  %365 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 17
  store i32 %364, ptr %365, align 4
  %366 = load i32, ptr %4, align 4
  %367 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 18
  store i32 %366, ptr %367, align 4
  %368 = getelementptr inbounds [3 x i32], ptr %4, i32 0, i32 1
  %369 = load i32, ptr %368, align 4
  %370 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 19
  store i32 %369, ptr %370, align 4
  %371 = getelementptr inbounds [3 x i32], ptr %4, i32 0, i32 2
  %372 = load i32, ptr %371, align 4
  %373 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 20
  store i32 %372, ptr %373, align 4
  %374 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 21
  store i32 %92, ptr %374, align 4
  br label %377

375:                                              ; preds = %353, %348, %340, %320, %314, %309, %305, %300, %298, %294, %290, %286, %282, %278, %274, %264, %262, %248, %242, %238, %234, %229, %209, %206, %191, %179, %168, %166, %164, %162, %161, %157, %146, %141, %140, %119, %116, %112, %104, %83, %69, %55, %39, %28, %13, %8, %3
  %376 = phi i32 [ -22, %3 ], [ -22, %8 ], [ %29, %28 ], [ -22, %83 ], [ %349, %348 ], [ -38, %13 ], [ -22, %353 ], [ -22, %69 ], [ -22, %55 ], [ -22, %39 ], [ -22, %294 ], [ -22, %290 ], [ -22, %286 ], [ -22, %282 ], [ -22, %278 ], [ -22, %274 ], [ -22, %320 ], [ -22, %314 ], [ -22, %309 ], [ -22, %305 ], [ -22, %298 ], [ -22, %300 ], [ -22, %262 ], [ -22, %264 ], [ %342, %340 ], [ -22, %248 ], [ -22, %234 ], [ -22, %229 ], [ -22, %238 ], [ -22, %242 ], [ -22, %104 ], [ -22, %112 ], [ -22, %161 ], [ -22, %116 ], [ -22, %168 ], [ -22, %140 ], [ -22, %119 ], [ -22, %162 ], [ -22, %164 ], [ -22, %166 ], [ -22, %179 ], [ -22, %141 ], [ -22, %146 ], [ -22, %157 ], [ -22, %209 ], [ -22, %206 ], [ %195, %191 ]
  tail call void @kfree(ptr noundef %1) #15
  br label %377

377:                                              ; preds = %375, %359
  %378 = phi i32 [ %376, %375 ], [ 0, %359 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #15
  ret i32 %378
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__ffs_data_got_strings(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load i32, ptr %1, align 1
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %121

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %1, i32 4
  %8 = load i32, ptr %7, align 1
  %9 = icmp eq i32 %8, %2
  br i1 %9, label %10, label %121

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %1, i32 8
  %12 = load i32, ptr %11, align 1
  %13 = getelementptr i8, ptr %1, i32 12
  %14 = load i32, ptr %13, align 1
  %15 = icmp ne i32 %12, 0
  %16 = icmp eq i32 %14, 0
  %17 = xor i1 %15, %16
  br i1 %17, label %18, label %121

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 30
  %20 = load i16, ptr %19, align 4
  %21 = zext i16 %20 to i32
  %22 = icmp ult i32 %12, %21
  br i1 %22, label %121, label %23

23:                                               ; preds = %18
  %24 = icmp eq i16 %20, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %23
  tail call void @kfree(ptr noundef %1) #15
  br label %122

26:                                               ; preds = %23
  %27 = add i32 %14, 1
  %28 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %27, i32 4) #15
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %54, label %30

30:                                               ; preds = %26
  %31 = extractvalue { i32, i1 } %28, 0
  %32 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %14, i32 8) #15
  %33 = extractvalue { i32, i1 } %32, 1
  %34 = extractvalue { i32, i1 } %32, 0
  %35 = select i1 %33, i32 -1, i32 %34
  %36 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %31, i32 %35)
  %37 = extractvalue { i32, i1 } %36, 1
  %38 = extractvalue { i32, i1 } %36, 0
  br i1 %37, label %54, label %39

39:                                               ; preds = %30
  %40 = icmp eq i32 %38, -1
  br i1 %40, label %54, label %41

41:                                               ; preds = %39
  %42 = add nuw nsw i32 %21, 1
  %43 = mul i32 %42, %14
  %44 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %43, i32 8) #15
  %45 = extractvalue { i32, i1 } %44, 1
  %46 = extractvalue { i32, i1 } %44, 0
  %47 = select i1 %45, i32 -1, i32 %46
  %48 = add i32 %38, 3
  %49 = and i32 %48, -4
  %50 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %49, i32 %47)
  %51 = extractvalue { i32, i1 } %50, 1
  %52 = tail call i32 @llvm.uadd.sat.i32(i32 %49, i32 %47)
  %53 = select i1 %51, i32 0, i32 %49
  br label %54

54:                                               ; preds = %41, %39, %30, %26
  %55 = phi i32 [ %31, %41 ], [ %31, %39 ], [ 0, %30 ], [ 0, %26 ]
  %56 = phi i32 [ %52, %41 ], [ -1, %39 ], [ -1, %30 ], [ -1, %26 ]
  %57 = phi i32 [ %53, %41 ], [ 0, %39 ], [ 0, %30 ], [ 0, %26 ]
  %58 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %56, i32 noundef 3264) #18
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  tail call void @kfree(ptr noundef %1) #15
  br label %122

61:                                               ; preds = %54
  %62 = getelementptr i8, ptr %58, i32 %55
  br label %63

63:                                               ; preds = %63, %61
  %64 = phi i32 [ %14, %61 ], [ %69, %63 ]
  %65 = phi ptr [ %62, %61 ], [ %67, %63 ]
  %66 = phi ptr [ %58, %61 ], [ %68, %63 ]
  %67 = getelementptr %struct.usb_gadget_strings, ptr %65, i32 1
  %68 = getelementptr ptr, ptr %66, i32 1
  store ptr %65, ptr %66, align 4
  %69 = add i32 %64, -1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %63

71:                                               ; preds = %63
  store ptr null, ptr %68, align 4
  %72 = getelementptr i8, ptr %58, i32 %57
  %73 = getelementptr i8, ptr %1, i32 16
  %74 = add i32 %2, -16
  br label %75

75:                                               ; preds = %110, %71
  %76 = phi ptr [ %72, %71 ], [ %112, %110 ]
  %77 = phi ptr [ %73, %71 ], [ %106, %110 ]
  %78 = phi ptr [ %62, %71 ], [ %85, %110 ]
  %79 = phi i32 [ %14, %71 ], [ %113, %110 ]
  %80 = phi i32 [ %74, %71 ], [ %107, %110 ]
  %81 = icmp ult i32 %80, 3
  br i1 %81, label %120, label %82

82:                                               ; preds = %75
  %83 = load i16, ptr %77, align 1
  store i16 %83, ptr %78, align 4
  %84 = getelementptr inbounds %struct.usb_gadget_strings, ptr %78, i32 0, i32 1
  store ptr %76, ptr %84, align 4
  %85 = getelementptr %struct.usb_gadget_strings, ptr %78, i32 1
  %86 = getelementptr i8, ptr %77, i32 2
  %87 = add i32 %80, -2
  br label %88

88:                                               ; preds = %102, %82
  %89 = phi ptr [ %76, %82 ], [ %103, %102 ]
  %90 = phi ptr [ %86, %82 ], [ %106, %102 ]
  %91 = phi i32 [ %87, %82 ], [ %107, %102 ]
  %92 = phi i32 [ %21, %82 ], [ %104, %102 ]
  %93 = phi i32 [ %12, %82 ], [ %108, %102 ]
  %94 = tail call i32 @strnlen(ptr noundef %90, i32 noundef %91)
  %95 = icmp eq i32 %94, %91
  br i1 %95, label %120, label %96

96:                                               ; preds = %88
  %97 = icmp eq i32 %92, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %96
  %99 = getelementptr inbounds %struct.usb_string, ptr %89, i32 0, i32 1
  store ptr %90, ptr %99, align 4
  %100 = add i32 %92, -1
  %101 = getelementptr %struct.usb_string, ptr %89, i32 1
  br label %102

102:                                              ; preds = %98, %96
  %103 = phi ptr [ %101, %98 ], [ %89, %96 ]
  %104 = phi i32 [ %100, %98 ], [ 0, %96 ]
  %105 = add i32 %94, 1
  %106 = getelementptr i8, ptr %90, i32 %105
  %107 = sub i32 %91, %105
  %108 = add i32 %93, -1
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %88

110:                                              ; preds = %102
  store i8 0, ptr %103, align 4
  %111 = getelementptr inbounds %struct.usb_string, ptr %103, i32 0, i32 1
  store ptr null, ptr %111, align 4
  %112 = getelementptr %struct.usb_string, ptr %103, i32 1
  %113 = add i32 %79, -1
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %75

115:                                              ; preds = %110
  %116 = icmp eq i32 %107, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %115
  %118 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 35
  store ptr %58, ptr %118, align 4
  %119 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 34
  store ptr %1, ptr %119, align 4
  br label %122

120:                                              ; preds = %115, %88, %75
  tail call void @kfree(ptr noundef nonnull %58) #15
  br label %121

121:                                              ; preds = %120, %18, %10, %6, %3
  tail call void @kfree(ptr noundef %1) #15
  br label %122

122:                                              ; preds = %121, %117, %60, %25
  %123 = phi i32 [ -22, %121 ], [ 0, %117 ], [ 0, %25 ], [ -12, %60 ]
  ret i32 %123
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ffs_epfiles_create(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 32
  %3 = load i16, ptr %2, align 4
  %4 = zext i16 %3 to i32
  %5 = mul nuw nsw i32 %4, 44
  %6 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %59, label %8

8:                                                ; preds = %1
  %9 = icmp eq i16 %3, 0
  br i1 %9, label %57, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 28
  %12 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 36
  br label %13

13:                                               ; preds = %53, %10
  %14 = phi i32 [ 1, %10 ], [ %54, %53 ]
  %15 = phi ptr [ %6, %10 ], [ %55, %53 ]
  %16 = getelementptr inbounds %struct.ffs_epfile, ptr %15, i32 0, i32 1
  store ptr %0, ptr %16, align 4
  tail call void @__mutex_init(ptr noundef %15, ptr noundef nonnull @.str.19, ptr noundef nonnull @ffs_epfiles_create.__key) #15
  %17 = load i32, ptr %11, align 4
  %18 = and i32 %17, 16
  %19 = icmp eq i32 %18, 0
  %20 = getelementptr inbounds %struct.ffs_epfile, ptr %15, i32 0, i32 5
  br i1 %19, label %26, label %21

21:                                               ; preds = %13
  %22 = getelementptr %struct.ffs_data, ptr %0, i32 0, i32 29, i32 %14
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %20, ptr noundef nonnull @.str.20, i32 noundef %24)
  br label %28

26:                                               ; preds = %13
  %27 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %20, ptr noundef nonnull @.str.21, i32 noundef %14)
  br label %28

28:                                               ; preds = %26, %21
  %29 = load ptr, ptr %12, align 4
  %30 = getelementptr inbounds %struct.ffs_epfile, ptr %15, i32 0, i32 5
  %31 = tail call fastcc ptr @ffs_sb_create_file(ptr noundef %29, ptr noundef %30, ptr noundef %15, ptr noundef nonnull @ffs_epfile_operations)
  %32 = getelementptr inbounds %struct.ffs_epfile, ptr %15, i32 0, i32 3
  store ptr %31, ptr %32, align 4
  %33 = icmp eq ptr %31, null
  br i1 %33, label %34, label %53

34:                                               ; preds = %28
  %35 = add nsw i32 %14, -1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %48, %34
  %38 = phi ptr [ %50, %48 ], [ %6, %34 ]
  %39 = phi i32 [ %49, %48 ], [ %35, %34 ]
  %40 = tail call zeroext i1 @mutex_is_locked(ptr noundef %38) #15
  br i1 %40, label %41, label %42, !prof !17

41:                                               ; preds = %37
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/function/f_fs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1933, 0\0A.popsection", ""() #15, !srcloc !18
  unreachable

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.ffs_epfile, ptr %38, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  tail call void @d_delete(ptr noundef nonnull %44) #15
  %47 = load ptr, ptr %43, align 4
  tail call void @dput(ptr noundef %47) #15
  store ptr null, ptr %43, align 4
  br label %48

48:                                               ; preds = %46, %42
  %49 = add nsw i32 %39, -1
  %50 = getelementptr %struct.ffs_epfile, ptr %38, i32 1
  %51 = icmp eq i32 %49, 0
  br i1 %51, label %52, label %37

52:                                               ; preds = %48, %34
  tail call void @kfree(ptr noundef nonnull %6) #15
  br label %59

53:                                               ; preds = %28
  %54 = add nuw nsw i32 %14, 1
  %55 = getelementptr %struct.ffs_epfile, ptr %15, i32 1
  %56 = icmp eq i32 %14, %4
  br i1 %56, label %57, label %13

57:                                               ; preds = %53, %8
  %58 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 42
  store ptr %6, ptr %58, align 4
  br label %59

59:                                               ; preds = %57, %52, %1
  %60 = phi i32 [ -12, %52 ], [ 0, %57 ], [ -12, %1 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ffs_ready(ptr noundef %0) unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @ffs_lock) #15
  %2 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ffs_dev, ptr %3, i32 0, i32 5
  %7 = load i8, ptr %6, align 2, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9, !prof !13

9:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 3790, i32 noundef 9, ptr noundef null) #15
  br label %19

10:                                               ; preds = %5
  store i8 1, ptr %6, align 2
  %11 = getelementptr inbounds %struct.ffs_dev, ptr %3, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = tail call i32 %12(ptr noundef %0) #15
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %10
  %18 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %18) #15
  br label %19

19:                                               ; preds = %17, %14, %9, %1
  %20 = phi i32 [ -16, %9 ], [ %15, %14 ], [ 0, %17 ], [ -22, %1 ]
  tail call void @mutex_unlock(ptr noundef nonnull @ffs_lock) #15
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @eventfd_ctx_fdget(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #12

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ffs_epfile_read_iter(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.ffs_io_data, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %3, i8 0, i32 88, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 88) #16
  %10 = getelementptr inbounds %struct.ffs_io_data, ptr %9, i32 0, i32 6
  %11 = icmp eq ptr %9, null
  br i1 %11, label %50, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ffs_io_data, ptr %9, i32 0, i32 1
  %14 = getelementptr inbounds %struct.ffs_io_data, ptr %9, i32 0, i32 2
  store i8 1, ptr %9, align 8
  store i8 1, ptr %13, align 1
  store ptr %0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ffs_io_data, ptr %9, i32 0, i32 3
  %16 = tail call ptr @dup_iter(ptr noundef %15, ptr noundef %1, i32 noundef 3264) #15
  %17 = getelementptr inbounds %struct.ffs_io_data, ptr %9, i32 0, i32 4
  store ptr %16, ptr %17, align 8
  %18 = icmp eq ptr %16, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %12
  tail call void @kfree(ptr noundef nonnull %9) #15
  br label %50

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.ffs_io_data, ptr %3, i32 0, i32 6
  %22 = getelementptr inbounds %struct.ffs_io_data, ptr %3, i32 0, i32 1
  %23 = getelementptr inbounds %struct.ffs_io_data, ptr %3, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %3, i8 0, i64 88, i1 false)
  store i8 1, ptr %22, align 1
  store ptr %0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.ffs_io_data, ptr %3, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %24, ptr noundef align 8 dereferenceable(24) %1, i32 24, i1 false)
  %25 = tail call ptr @llvm.thread.pointer() #15
  %26 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 37
  %27 = load ptr, ptr %26, align 4
  store ptr %27, ptr %21, align 8
  %28 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 3
  store ptr %3, ptr %28, align 4
  br label %37

29:                                               ; preds = %12
  %30 = load i8, ptr %9, align 8, !range !8
  %31 = icmp eq i8 %30, 0
  %32 = tail call ptr @llvm.thread.pointer() #15
  %33 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 37
  %34 = load ptr, ptr %33, align 4
  store ptr %34, ptr %10, align 8
  %35 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 3
  store ptr %9, ptr %35, align 4
  br i1 %31, label %37, label %36

36:                                               ; preds = %29
  call void @kiocb_set_cancel_fn(ptr noundef %0, ptr noundef nonnull @ffs_aio_cancel) #15
  br label %37

37:                                               ; preds = %36, %29, %20
  %38 = phi ptr [ %3, %20 ], [ %9, %36 ], [ %9, %29 ]
  %39 = load ptr, ptr %0, align 8
  %40 = call fastcc i32 @ffs_epfile_io(ptr noundef %39, ptr noundef nonnull %38)
  %41 = icmp eq i32 %40, -529
  br i1 %41, label %50, label %42

42:                                               ; preds = %37
  %43 = load i8, ptr %38, align 8, !range !8
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.ffs_io_data, ptr %38, i32 0, i32 4
  %47 = load ptr, ptr %46, align 8
  call void @kfree(ptr noundef %47) #15
  call void @kfree(ptr noundef nonnull %38) #15
  br label %50

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.ffs_io_data, ptr %38, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %1, ptr noundef align 8 dereferenceable(24) %49, i32 24, i1 false)
  br label %50

50:                                               ; preds = %48, %45, %37, %19, %7
  %51 = phi i32 [ -12, %19 ], [ -12, %7 ], [ -529, %37 ], [ %40, %48 ], [ %40, %45 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #15
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ffs_epfile_write_iter(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.ffs_io_data, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %3, i8 0, i32 88, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 88) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %34, label %11

11:                                               ; preds = %7
  store i8 1, ptr %9, align 8
  br label %13

12:                                               ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %3, i8 0, i64 88, i1 false)
  br label %13

13:                                               ; preds = %12, %11
  %14 = phi ptr [ %3, %12 ], [ %9, %11 ]
  %15 = getelementptr inbounds %struct.ffs_io_data, ptr %14, i32 0, i32 6
  %16 = getelementptr inbounds %struct.ffs_io_data, ptr %14, i32 0, i32 3
  %17 = getelementptr inbounds %struct.ffs_io_data, ptr %14, i32 0, i32 2
  %18 = getelementptr inbounds %struct.ffs_io_data, ptr %14, i32 0, i32 1
  store i8 0, ptr %18, align 1
  store ptr %0, ptr %17, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %16, ptr noundef align 8 dereferenceable(24) %1, i32 24, i1 false)
  %19 = tail call ptr @llvm.thread.pointer() #15
  %20 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 37
  %21 = load ptr, ptr %20, align 4
  store ptr %21, ptr %15, align 8
  %22 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 3
  store ptr %14, ptr %22, align 4
  br i1 %6, label %24, label %23

23:                                               ; preds = %13
  call void @kiocb_set_cancel_fn(ptr noundef %0, ptr noundef nonnull @ffs_aio_cancel) #15
  br label %24

24:                                               ; preds = %23, %13
  %25 = load ptr, ptr %0, align 8
  %26 = call fastcc i32 @ffs_epfile_io(ptr noundef %25, ptr noundef nonnull %14)
  %27 = icmp eq i32 %26, -529
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = load i8, ptr %14, align 8, !range !8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  call void @kfree(ptr noundef nonnull %14) #15
  br label %34

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ffs_io_data, ptr %14, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %1, ptr noundef align 8 dereferenceable(24) %33, i32 24, i1 false)
  br label %34

34:                                               ; preds = %32, %31, %24, %7
  %35 = phi i32 [ -12, %7 ], [ -529, %24 ], [ %26, %32 ], [ %26, %31 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #15
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ffs_epfile_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.wait_queue_entry, align 4
  %5 = alloca %struct.usb_endpoint_descriptor, align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ffs_epfile, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ffs_data, ptr %9, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %14, label %13, !prof !13

13:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 1289, i32 noundef 9, ptr noundef null) #15
  br label %116

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.ffs_epfile, ptr %7, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %44

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 2048
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %116

23:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %4, i32 noundef 0) #15
  %24 = load ptr, ptr %8, align 4
  %25 = getelementptr inbounds %struct.ffs_data, ptr %24, i32 0, i32 11
  %26 = call i32 @prepare_to_wait_event(ptr noundef %25, ptr noundef nonnull %4, i32 noundef 1) #15
  %27 = load ptr, ptr %15, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %32, %23
  %30 = phi i32 [ %35, %32 ], [ %26, %23 ]
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  call void @schedule() #15
  %33 = load ptr, ptr %8, align 4
  %34 = getelementptr inbounds %struct.ffs_data, ptr %33, i32 0, i32 11
  %35 = call i32 @prepare_to_wait_event(ptr noundef %34, ptr noundef nonnull %4, i32 noundef 1) #15
  %36 = load ptr, ptr %15, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %29, label %38

38:                                               ; preds = %32, %23
  %39 = phi ptr [ %27, %23 ], [ %36, %32 ]
  %40 = load ptr, ptr %8, align 4
  %41 = getelementptr inbounds %struct.ffs_data, ptr %40, i32 0, i32 11
  call void @finish_wait(ptr noundef %41, ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #15
  %42 = load ptr, ptr %8, align 4
  br label %44

43:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #15
  br label %116

44:                                               ; preds = %38, %14
  %45 = phi ptr [ %9, %14 ], [ %42, %38 ]
  %46 = phi ptr [ %16, %14 ], [ %39, %38 ]
  %47 = getelementptr inbounds %struct.ffs_data, ptr %45, i32 0, i32 2
  call void @_raw_spin_lock_irq(ptr noundef %47) #15
  %48 = load ptr, ptr %15, align 4
  %49 = icmp eq ptr %48, %46
  br i1 %49, label %55, label %50

50:                                               ; preds = %44
  %51 = load ptr, ptr %8, align 4
  %52 = getelementptr inbounds %struct.ffs_data, ptr %51, i32 0, i32 2
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !22
  %53 = load i16, ptr %52, align 4
  %54 = add i16 %53, 1
  store i16 %54, ptr %52, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !24
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !25
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !26
  br label %116

55:                                               ; preds = %44
  switch i32 %1, label %110 [
    i32 26369, label %56
    i32 26370, label %59
    i32 26371, label %61
    i32 26497, label %64
    i32 -2146867326, label %68
  ]

56:                                               ; preds = %55
  %57 = load ptr, ptr %46, align 4
  %58 = call i32 @usb_ep_fifo_status(ptr noundef %57) #15
  br label %110

59:                                               ; preds = %55
  %60 = load ptr, ptr %46, align 4
  call void @usb_ep_fifo_flush(ptr noundef %60) #15
  br label %110

61:                                               ; preds = %55
  %62 = load ptr, ptr %46, align 4
  %63 = call i32 @usb_ep_clear_halt(ptr noundef %62) #15
  br label %110

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.ffs_ep, ptr %46, i32 0, i32 3
  %66 = load i8, ptr %65, align 4
  %67 = zext i8 %66 to i32
  br label %110

68:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(9) %5, i8 0, i32 9, i1 false), !annotation !9
  %69 = load ptr, ptr %8, align 4
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.usb_gadget, ptr %70, i32 0, i32 5
  %72 = load i32, ptr %71, align 4
  %73 = add i32 %72, -3
  %74 = icmp ult i32 %73, 4
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = getelementptr inbounds [4 x i32], ptr @switch.table.ffs_epfile_ioctl, i32 0, i32 %73
  %77 = load i32, ptr %76, align 4
  br label %78

78:                                               ; preds = %75, %68
  %79 = phi i32 [ %77, %75 ], [ 0, %68 ]
  %80 = getelementptr %struct.ffs_ep, ptr %46, i32 0, i32 2, i32 %79
  %81 = load ptr, ptr %80, align 4
  %82 = load i8, ptr %81, align 1
  %83 = zext i8 %82 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %5, ptr align 1 %81, i32 %83, i1 false)
  %84 = load ptr, ptr %8, align 4
  %85 = getelementptr inbounds %struct.ffs_data, ptr %84, i32 0, i32 2
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !22
  %86 = load i16, ptr %85, align 4
  %87 = add i16 %86, 1
  store i16 %87, ptr %85, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !24
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !25
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !26
  %88 = inttoptr i32 %2 to ptr
  %89 = load i8, ptr %5, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp ugt i8 %89, 9
  br i1 %91, label %92, label %93, !prof !17

92:                                               ; preds = %78
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.16, i32 noundef 9, i32 noundef %90) #15
  br label %108

93:                                               ; preds = %78
  %94 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %88, i32 %90, i32 -1090519040) #19, !srcloc !27
  %95 = extractvalue { i32, i32 } %94, 0
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %93
  %98 = tail call ptr @llvm.thread.pointer() #15
  %99 = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 3
  %100 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %99) #20, !srcloc !28
  %101 = and i32 %100, -13
  %102 = or i32 %101, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %102) #15, !srcloc !29
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  %103 = call i32 @arm_copy_to_user(ptr noundef %88, ptr noundef nonnull %5, i32 noundef %90) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %100) #15, !srcloc !29
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  br label %104

104:                                              ; preds = %97, %93
  %105 = phi i32 [ %103, %97 ], [ %90, %93 ]
  %106 = icmp eq i32 %105, 0
  %107 = select i1 %106, i32 0, i32 -14
  br label %108

108:                                              ; preds = %104, %92
  %109 = phi i32 [ -14, %92 ], [ %107, %104 ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %5) #15
  br label %116

110:                                              ; preds = %64, %61, %59, %56, %55
  %111 = phi i32 [ %67, %64 ], [ %63, %61 ], [ 0, %59 ], [ %58, %56 ], [ -25, %55 ]
  %112 = load ptr, ptr %8, align 4
  %113 = getelementptr inbounds %struct.ffs_data, ptr %112, i32 0, i32 2
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !22
  %114 = load i16, ptr %113, align 4
  %115 = add i16 %114, 1
  store i16 %115, ptr %113, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !24
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !25
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !26
  br label %116

116:                                              ; preds = %110, %108, %50, %43, %18, %13
  %117 = phi i32 [ -19, %13 ], [ -108, %50 ], [ %111, %110 ], [ %109, %108 ], [ -11, %18 ], [ -4, %43 ]
  ret i32 %117
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ffs_epfile_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ffs_epfile, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ffs_data, ptr %6, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %11, label %10, !prof !13

10:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 1151, i32 noundef 9, ptr noundef null) #15
  br label %15

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %4, ptr %12, align 8
  %13 = load ptr, ptr %5, align 4
  tail call fastcc void @ffs_data_opened(ptr noundef %13)
  %14 = tail call i32 @stream_open(ptr noundef %0, ptr noundef %1) #15
  br label %15

15:                                               ; preds = %11, %10
  %16 = phi i32 [ -19, %10 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ffs_epfile_release(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ffs_epfile, ptr %4, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !31
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #15, !srcloc !11
  %6 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 -108, ptr %5) #15, !srcloc !32
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = inttoptr i32 %7 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !33
  %9 = icmp eq i32 %7, 0
  %10 = icmp eq ptr %8, inttoptr (i32 -108 to ptr)
  %11 = or i1 %9, %10
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  tail call void @kfree(ptr noundef nonnull %8) #15
  br label %13

13:                                               ; preds = %12, %2
  %14 = getelementptr inbounds %struct.ffs_epfile, ptr %4, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call fastcc void @ffs_data_closed(ptr noundef %15)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dup_iter(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kiocb_set_cancel_fn(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ffs_aio_cancel(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ffs_epfile, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ffs_data, ptr %8, i32 0, i32 2
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #15
  %11 = icmp eq ptr %3, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ffs_io_data, ptr %3, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ffs_io_data, ptr %3, i32 0, i32 9
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @usb_ep_dequeue(ptr noundef nonnull %14, ptr noundef nonnull %18) #15
  br label %22

22:                                               ; preds = %20, %16, %12, %1
  %23 = phi i32 [ %21, %20 ], [ -22, %16 ], [ -22, %12 ], [ -22, %1 ]
  %24 = load ptr, ptr %7, align 4
  %25 = getelementptr inbounds %struct.ffs_data, ptr %24, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %10) #15
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ffs_epfile_io(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = alloca %struct.completion, align 8
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ffs_epfile, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ffs_data, ptr %8, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %13, label %12, !prof !13

12:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 951, i32 noundef 9, ptr noundef null) #15
  br label %337

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ffs_epfile, ptr %6, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %42

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 2048
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %337

22:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #15
  %23 = load ptr, ptr %7, align 4
  %24 = getelementptr inbounds %struct.ffs_data, ptr %23, i32 0, i32 11
  %25 = call i32 @prepare_to_wait_event(ptr noundef %24, ptr noundef nonnull %3, i32 noundef 1) #15
  %26 = load ptr, ptr %14, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %31, %22
  %29 = phi i32 [ %34, %31 ], [ %25, %22 ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  call void @schedule() #15
  %32 = load ptr, ptr %7, align 4
  %33 = getelementptr inbounds %struct.ffs_data, ptr %32, i32 0, i32 11
  %34 = call i32 @prepare_to_wait_event(ptr noundef %33, ptr noundef nonnull %3, i32 noundef 1) #15
  %35 = load ptr, ptr %14, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %28, label %37

37:                                               ; preds = %31, %22
  %38 = phi ptr [ %26, %22 ], [ %35, %31 ]
  %39 = load ptr, ptr %7, align 4
  %40 = getelementptr inbounds %struct.ffs_data, ptr %39, i32 0, i32 11
  call void @finish_wait(ptr noundef %40, ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #15
  br label %42

41:                                               ; preds = %28
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #15
  br label %337

42:                                               ; preds = %37, %13
  %43 = phi ptr [ %15, %13 ], [ %38, %37 ]
  %44 = getelementptr inbounds %struct.ffs_io_data, ptr %1, i32 0, i32 1
  %45 = load i8, ptr %44, align 1, !range !8
  %46 = xor i8 %45, 1
  %47 = getelementptr inbounds %struct.ffs_epfile, ptr %6, i32 0, i32 6
  %48 = load i8, ptr %47, align 1
  %49 = icmp eq i8 %48, 0
  %50 = zext i1 %49 to i8
  %51 = icmp eq i8 %46, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct.ffs_epfile, ptr %6, i32 0, i32 7
  %54 = load i8, ptr %53, align 2
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %337

56:                                               ; preds = %52, %42
  %57 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, 2048
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = call i32 @mutex_trylock(ptr noundef %6) #15
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %324, label %67

64:                                               ; preds = %56
  %65 = call i32 @mutex_lock_interruptible(ptr noundef %6) #15
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %321

67:                                               ; preds = %64, %61
  br i1 %51, label %211, label %68

68:                                               ; preds = %67
  %69 = load i8, ptr %1, align 8, !range !8
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %121

71:                                               ; preds = %68
  %72 = load i8, ptr %44, align 1, !range !8
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %121, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.ffs_io_data, ptr %1, i32 0, i32 3
  %76 = getelementptr inbounds %struct.ffs_epfile, ptr %6, i32 0, i32 4
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !34
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %76) #15, !srcloc !11
  %77 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %76) #15, !srcloc !32
  %78 = extractvalue { i32, i32 } %77, 0
  %79 = inttoptr i32 %78 to ptr
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !35
  %80 = icmp eq i32 %78, 0
  %81 = icmp eq ptr %79, inttoptr (i32 -108 to ptr)
  %82 = or i1 %80, %81
  br i1 %82, label %121, label %83

83:                                               ; preds = %74
  %84 = getelementptr inbounds %struct.ffs_buffer, ptr %79, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = load i32, ptr %79, align 4
  %87 = icmp slt i32 %86, 0
  %88 = load i1, ptr @check_copy_size.__already_done, align 1
  %89 = xor i1 %88, true
  %90 = select i1 %87, i1 %89, i1 false
  br i1 %90, label %91, label %92, !prof !17

91:                                               ; preds = %83
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %92

92:                                               ; preds = %91, %83
  br i1 %87, label %95, label %93, !prof !17

93:                                               ; preds = %92
  %94 = call i32 @_copy_to_iter(ptr noundef %85, i32 noundef %86, ptr noundef %75) #15
  br label %95

95:                                               ; preds = %93, %92
  %96 = phi i32 [ %94, %93 ], [ 0, %92 ]
  %97 = load i32, ptr %79, align 4
  %98 = icmp eq i32 %97, %96
  br i1 %98, label %116, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.ffs_io_data, ptr %1, i32 0, i32 3, i32 4
  %101 = load i32, ptr %100, align 8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = sub i32 %97, %96
  store i32 %104, ptr %79, align 4
  %105 = load ptr, ptr %84, align 4
  %106 = getelementptr i8, ptr %105, i32 %96
  store ptr %106, ptr %84, align 4
  br label %107

107:                                              ; preds = %103, %99
  %108 = phi i32 [ %96, %103 ], [ -14, %99 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !36
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %76) #15, !srcloc !11
  br label %109

109:                                              ; preds = %109, %107
  %110 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %76, i32 0, i32 %78) #15, !srcloc !20
  %111 = extractvalue { i32, i32 } %110, 0
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %109

113:                                              ; preds = %109
  %114 = extractvalue { i32, i32 } %110, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !37
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %113, %95
  %117 = phi i32 [ %96, %95 ], [ %108, %113 ]
  call void @kfree(ptr noundef nonnull %79) #15
  br label %118

118:                                              ; preds = %116, %113
  %119 = phi i32 [ %108, %113 ], [ %117, %116 ]
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %319

121:                                              ; preds = %118, %74, %71, %68
  %122 = load ptr, ptr %7, align 4
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr inbounds %struct.ffs_data, ptr %122, i32 0, i32 2
  call void @_raw_spin_lock_irq(ptr noundef %124) #15
  %125 = load ptr, ptr %14, align 4
  %126 = icmp eq ptr %125, %43
  br i1 %126, label %127, label %313

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.ffs_io_data, ptr %1, i32 0, i32 3
  %129 = getelementptr inbounds %struct.ffs_io_data, ptr %1, i32 0, i32 3, i32 4
  %130 = load i32, ptr %129, align 8
  %131 = load i8, ptr %44, align 1, !range !8
  %132 = icmp eq i8 %131, 0
  %133 = getelementptr inbounds %struct.usb_gadget, ptr %123, i32 0, i32 17
  %134 = load i32, ptr %133, align 4
  %135 = and i32 %134, 256
  %136 = icmp eq i32 %135, 0
  %137 = select i1 %132, i1 true, i1 %136
  br i1 %137, label %150, label %138

138:                                              ; preds = %127
  %139 = load ptr, ptr %43, align 4
  %140 = getelementptr inbounds %struct.usb_ep, ptr %139, i32 0, i32 9
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %141, i32 0, i32 4
  %143 = load i16, ptr %142, align 1
  %144 = and i16 %143, 2047
  %145 = zext i16 %144 to i32
  %146 = add i32 %130, -1
  %147 = add nsw i32 %145, -1
  %148 = or i32 %147, %146
  %149 = add i32 %148, 1
  br label %150

150:                                              ; preds = %138, %127
  %151 = phi i32 [ %149, %138 ], [ %130, %127 ]
  %152 = and i32 %134, 1
  %153 = icmp ne i32 %152, 0
  %154 = icmp ugt i32 %151, 4096
  %155 = select i1 %153, i1 %154, i1 false
  %156 = getelementptr inbounds %struct.ffs_io_data, ptr %1, i32 0, i32 11
  %157 = zext i1 %155 to i8
  store i8 %157, ptr %156, align 8
  %158 = load ptr, ptr %7, align 4
  %159 = getelementptr inbounds %struct.ffs_data, ptr %158, i32 0, i32 2
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !22
  %160 = load i16, ptr %159, align 4
  %161 = add i16 %160, 1
  store i16 %161, ptr %159, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !24
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !25
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !26
  %162 = load i8, ptr %156, align 8, !range !8
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %190, label %164

164:                                              ; preds = %150
  %165 = getelementptr inbounds %struct.ffs_io_data, ptr %1, i32 0, i32 10
  %166 = call noalias ptr @vmalloc(i32 noundef %151) #18
  %167 = icmp eq ptr %166, null
  br i1 %167, label %319, label %168

168:                                              ; preds = %164
  %169 = add i32 %151, 4095
  %170 = lshr i32 %169, 12
  %171 = shl nuw nsw i32 %170, 2
  %172 = call noalias ptr @kvmalloc_node(i32 noundef %171, i32 noundef 3264, i32 noundef -1) #18
  %173 = icmp eq ptr %172, null
  br i1 %173, label %189, label %174

174:                                              ; preds = %168
  %175 = icmp ult i32 %169, 4096
  br i1 %175, label %186, label %176

176:                                              ; preds = %174
  %177 = call i32 @llvm.umax.i32(i32 %170, i32 1) #15
  br label %178

178:                                              ; preds = %178, %176
  %179 = phi i32 [ %183, %178 ], [ 0, %176 ]
  %180 = phi ptr [ %184, %178 ], [ %166, %176 ]
  %181 = call ptr @vmalloc_to_page(ptr noundef %180) #15
  %182 = getelementptr ptr, ptr %172, i32 %179
  store ptr %181, ptr %182, align 4
  %183 = add nuw nsw i32 %179, 1
  %184 = getelementptr i8, ptr %180, i32 4096
  %185 = icmp eq i32 %183, %177
  br i1 %185, label %186, label %178

186:                                              ; preds = %178, %174
  %187 = call i32 @sg_alloc_table_from_pages_segment(ptr noundef %165, ptr noundef nonnull %172, i32 noundef %170, i32 noundef 0, i32 noundef %151, i32 noundef -1, i32 noundef 3264) #15
  %188 = icmp eq i32 %187, 0
  call void @kvfree(ptr noundef nonnull %172) #15
  br i1 %188, label %192, label %189

189:                                              ; preds = %186, %168
  call void @vfree(ptr noundef nonnull %166) #15
  br label %319

190:                                              ; preds = %150
  %191 = call noalias align 64 ptr @__kmalloc(i32 noundef %151, i32 noundef 3264) #18
  br label %192

192:                                              ; preds = %190, %186
  %193 = phi ptr [ %166, %186 ], [ %191, %190 ]
  %194 = icmp eq ptr %193, null
  br i1 %194, label %319, label %195

195:                                              ; preds = %192
  %196 = load i8, ptr %44, align 1, !range !8
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %198, label %211

198:                                              ; preds = %195
  %199 = icmp slt i32 %151, 0
  %200 = load i1, ptr @check_copy_size.__already_done, align 1
  %201 = xor i1 %200, true
  %202 = select i1 %199, i1 %201, i1 false
  br i1 %202, label %203, label %204, !prof !17

203:                                              ; preds = %198
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %204

204:                                              ; preds = %203, %198
  br i1 %199, label %207, label %205, !prof !17

205:                                              ; preds = %204
  %206 = call i32 @_copy_from_iter(ptr noundef nonnull %193, i32 noundef %151, ptr noundef %128) #15
  br label %207

207:                                              ; preds = %205, %204
  %208 = phi i32 [ %206, %205 ], [ 0, %204 ]
  %209 = icmp eq i32 %208, %151
  br i1 %209, label %211, label %210, !prof !13

210:                                              ; preds = %207
  call void @iov_iter_revert(ptr noundef %128, i32 noundef %208) #15
  br label %319

211:                                              ; preds = %207, %195, %67
  %212 = phi ptr [ null, %67 ], [ %193, %195 ], [ %193, %207 ]
  %213 = phi i32 [ -22, %67 ], [ %151, %195 ], [ %151, %207 ]
  %214 = load ptr, ptr %7, align 4
  %215 = getelementptr inbounds %struct.ffs_data, ptr %214, i32 0, i32 2
  call void @_raw_spin_lock_irq(ptr noundef %215) #15
  %216 = load ptr, ptr %14, align 4
  %217 = icmp eq ptr %216, %43
  br i1 %217, label %218, label %313

218:                                              ; preds = %211
  br i1 %51, label %219, label %224

219:                                              ; preds = %218
  %220 = load ptr, ptr %43, align 4
  %221 = call i32 @usb_ep_set_halt(ptr noundef %220) #15
  %222 = icmp eq i32 %221, 0
  %223 = select i1 %222, i32 -74, i32 %221
  br label %313

224:                                              ; preds = %218
  %225 = icmp eq i32 %213, -22
  br i1 %225, label %226, label %227

226:                                              ; preds = %224
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 1050, i32 noundef 9, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.ffs_epfile_io) #15
  br label %313

227:                                              ; preds = %224
  %228 = load i8, ptr %1, align 8, !range !8
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %230, label %281

230:                                              ; preds = %227
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  %231 = getelementptr inbounds %struct.completion, ptr %4, i32 0, i32 1, i32 1
  store i64 0, ptr %4, align 8
  store ptr %231, ptr %231, align 8
  %232 = getelementptr inbounds %struct.completion, ptr %4, i32 0, i32 1, i32 1, i32 1
  store ptr %231, ptr %232, align 4
  %233 = getelementptr inbounds %struct.ffs_ep, ptr %43, i32 0, i32 1
  %234 = load ptr, ptr %233, align 4
  %235 = getelementptr inbounds %struct.ffs_io_data, ptr %1, i32 0, i32 11
  %236 = load i8, ptr %235, align 8, !range !8
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %244, label %238

238:                                              ; preds = %230
  store ptr null, ptr %234, align 4
  %239 = getelementptr inbounds %struct.ffs_io_data, ptr %1, i32 0, i32 10
  %240 = load ptr, ptr %239, align 4
  %241 = getelementptr inbounds %struct.usb_request, ptr %234, i32 0, i32 3
  store ptr %240, ptr %241, align 4
  %242 = getelementptr inbounds %struct.ffs_io_data, ptr %1, i32 0, i32 10, i32 1
  %243 = load i32, ptr %242, align 4
  br label %245

244:                                              ; preds = %230
  store ptr %212, ptr %234, align 4
  br label %245

245:                                              ; preds = %244, %238
  %246 = phi i32 [ 0, %244 ], [ %243, %238 ]
  %247 = getelementptr inbounds %struct.usb_request, ptr %234, i32 0, i32 4
  store i32 %246, ptr %247, align 4
  %248 = getelementptr inbounds %struct.usb_request, ptr %234, i32 0, i32 1
  store i32 %213, ptr %248, align 4
  %249 = getelementptr inbounds %struct.ffs_io_data, ptr %1, i32 0, i32 5
  store ptr %212, ptr %249, align 4
  %250 = getelementptr inbounds %struct.usb_request, ptr %234, i32 0, i32 8
  store ptr %4, ptr %250, align 4
  %251 = getelementptr inbounds %struct.usb_request, ptr %234, i32 0, i32 7
  store ptr @ffs_epfile_io_complete, ptr %251, align 4
  %252 = load ptr, ptr %43, align 4
  %253 = call i32 @usb_ep_queue(ptr noundef %252, ptr noundef %234, i32 noundef 2592) #15
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %280, label %255

255:                                              ; preds = %245
  %256 = load ptr, ptr %7, align 4
  %257 = getelementptr inbounds %struct.ffs_data, ptr %256, i32 0, i32 2
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !22
  %258 = load i16, ptr %257, align 4
  %259 = add i16 %258, 1
  store i16 %259, ptr %257, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !24
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !25
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !26
  %260 = call i32 @wait_for_completion_interruptible(ptr noundef nonnull %4) #15
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %268, label %262

262:                                              ; preds = %255
  %263 = load ptr, ptr %43, align 4
  %264 = call i32 @usb_ep_dequeue(ptr noundef %263, ptr noundef %234) #15
  call void @wait_for_completion(ptr noundef nonnull %4) #15
  %265 = getelementptr inbounds %struct.ffs_ep, ptr %43, i32 0, i32 4
  %266 = load i32, ptr %265, align 4
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %278, label %268

268:                                              ; preds = %262, %255
  %269 = load i8, ptr %44, align 1, !range !8
  %270 = icmp ne i8 %269, 0
  %271 = getelementptr inbounds %struct.ffs_ep, ptr %43, i32 0, i32 4
  %272 = load i32, ptr %271, align 4
  %273 = icmp sgt i32 %272, 0
  %274 = select i1 %270, i1 %273, i1 false
  br i1 %274, label %275, label %278

275:                                              ; preds = %268
  %276 = getelementptr inbounds %struct.ffs_io_data, ptr %1, i32 0, i32 3
  %277 = call fastcc i32 @__ffs_epfile_read_data(ptr noundef %6, ptr noundef %212, i32 noundef %272, ptr noundef %276)
  br label %278

278:                                              ; preds = %275, %268, %262
  %279 = phi i32 [ -4, %262 ], [ %277, %275 ], [ %272, %268 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  br label %319

280:                                              ; preds = %245
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  br label %313

281:                                              ; preds = %227
  %282 = load ptr, ptr %43, align 4
  %283 = call ptr @usb_ep_alloc_request(ptr noundef %282, i32 noundef 2592) #15
  %284 = icmp eq ptr %283, null
  br i1 %284, label %313, label %285

285:                                              ; preds = %281
  %286 = getelementptr inbounds %struct.ffs_io_data, ptr %1, i32 0, i32 11
  %287 = load i8, ptr %286, align 8, !range !8
  %288 = icmp eq i8 %287, 0
  br i1 %288, label %295, label %289

289:                                              ; preds = %285
  store ptr null, ptr %283, align 4
  %290 = getelementptr inbounds %struct.ffs_io_data, ptr %1, i32 0, i32 10
  %291 = load ptr, ptr %290, align 4
  %292 = getelementptr inbounds %struct.usb_request, ptr %283, i32 0, i32 3
  store ptr %291, ptr %292, align 4
  %293 = getelementptr inbounds %struct.ffs_io_data, ptr %1, i32 0, i32 10, i32 1
  %294 = load i32, ptr %293, align 4
  br label %296

295:                                              ; preds = %285
  store ptr %212, ptr %283, align 4
  br label %296

296:                                              ; preds = %295, %289
  %297 = phi i32 [ 0, %295 ], [ %294, %289 ]
  %298 = getelementptr inbounds %struct.usb_request, ptr %283, i32 0, i32 4
  store i32 %297, ptr %298, align 4
  %299 = getelementptr inbounds %struct.usb_request, ptr %283, i32 0, i32 1
  store i32 %213, ptr %299, align 4
  %300 = getelementptr inbounds %struct.ffs_io_data, ptr %1, i32 0, i32 5
  store ptr %212, ptr %300, align 4
  %301 = load ptr, ptr %43, align 4
  %302 = getelementptr inbounds %struct.ffs_io_data, ptr %1, i32 0, i32 8
  store ptr %301, ptr %302, align 4
  %303 = getelementptr inbounds %struct.ffs_io_data, ptr %1, i32 0, i32 9
  store ptr %283, ptr %303, align 8
  %304 = load ptr, ptr %7, align 4
  %305 = getelementptr inbounds %struct.ffs_io_data, ptr %1, i32 0, i32 12
  store ptr %304, ptr %305, align 4
  %306 = getelementptr inbounds %struct.usb_request, ptr %283, i32 0, i32 8
  store ptr %1, ptr %306, align 4
  %307 = getelementptr inbounds %struct.usb_request, ptr %283, i32 0, i32 7
  store ptr @ffs_epfile_async_io_complete, ptr %307, align 4
  %308 = load ptr, ptr %43, align 4
  %309 = call i32 @usb_ep_queue(ptr noundef %308, ptr noundef nonnull %283, i32 noundef 2592) #15
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %313, label %311

311:                                              ; preds = %296
  store ptr null, ptr %303, align 8
  %312 = load ptr, ptr %43, align 4
  call void @usb_ep_free_request(ptr noundef %312, ptr noundef nonnull %283) #15
  br label %313

313:                                              ; preds = %311, %296, %281, %280, %226, %219, %211, %121
  %314 = phi i32 [ %223, %219 ], [ -22, %226 ], [ %309, %311 ], [ %253, %280 ], [ -108, %211 ], [ -12, %281 ], [ -529, %296 ], [ -108, %121 ]
  %315 = load ptr, ptr %7, align 4
  %316 = getelementptr inbounds %struct.ffs_data, ptr %315, i32 0, i32 2
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !22
  %317 = load i16, ptr %316, align 4
  %318 = add i16 %317, 1
  store i16 %318, ptr %316, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !24
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !25
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !26
  br label %319

319:                                              ; preds = %313, %278, %210, %192, %189, %164, %118
  %320 = phi i32 [ %314, %313 ], [ %279, %278 ], [ -14, %210 ], [ -12, %192 ], [ %119, %118 ], [ -12, %164 ], [ -12, %189 ]
  call void @mutex_unlock(ptr noundef %6) #15
  br label %321

321:                                              ; preds = %319, %64
  %322 = phi i32 [ %65, %64 ], [ %320, %319 ]
  %323 = icmp eq i32 %322, -529
  br i1 %323, label %337, label %324

324:                                              ; preds = %321, %61
  %325 = phi i32 [ %322, %321 ], [ -11, %61 ]
  %326 = getelementptr inbounds %struct.ffs_io_data, ptr %1, i32 0, i32 5
  %327 = load ptr, ptr %326, align 4
  %328 = icmp eq ptr %327, null
  br i1 %328, label %337, label %329

329:                                              ; preds = %324
  %330 = getelementptr inbounds %struct.ffs_io_data, ptr %1, i32 0, i32 11
  %331 = load i8, ptr %330, align 8, !range !8
  %332 = icmp eq i8 %331, 0
  br i1 %332, label %336, label %333

333:                                              ; preds = %329
  %334 = getelementptr inbounds %struct.ffs_io_data, ptr %1, i32 0, i32 10
  call void @sg_free_table(ptr noundef %334) #15
  %335 = load ptr, ptr %326, align 4
  call void @vfree(ptr noundef %335) #15
  br label %337

336:                                              ; preds = %329
  call void @kfree(ptr noundef nonnull %327) #15
  br label %337

337:                                              ; preds = %336, %333, %324, %321, %52, %41, %17, %12
  %338 = phi i32 [ -19, %12 ], [ -11, %17 ], [ -4, %41 ], [ -22, %52 ], [ -529, %321 ], [ %325, %324 ], [ %325, %333 ], [ %325, %336 ]
  ret i32 %338
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ffs_epfile_io_complete(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  %13 = load i32, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %6
  %15 = phi i32 [ %13, %11 ], [ %9, %6 ]
  %16 = getelementptr inbounds %struct.ffs_ep, ptr %7, i32 0, i32 4
  store i32 %15, ptr %16, align 4
  %17 = load ptr, ptr %3, align 4
  tail call void @complete(ptr noundef %17) #15
  br label %18

18:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__ffs_epfile_read_data(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = icmp slt i32 %2, 0
  %6 = load i1, ptr @check_copy_size.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !17

9:                                                ; preds = %4
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %10

10:                                               ; preds = %9, %4
  br i1 %5, label %13, label %11, !prof !17

11:                                               ; preds = %10
  %12 = tail call i32 @_copy_to_iter(ptr noundef %1, i32 noundef %2, ptr noundef %3) #15
  br label %13

13:                                               ; preds = %11, %10
  %14 = phi i32 [ %12, %11 ], [ 0, %10 ]
  %15 = icmp eq i32 %14, %2
  br i1 %15, label %40, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.iov_iter, ptr %3, i32 0, i32 4
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %16
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %2, i32 noundef %14) #17
  %22 = sub i32 %2, %14
  %23 = add i32 %22, 8
  %24 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %23, i32 noundef 3264) #18
  %25 = icmp eq ptr %24, null
  br i1 %25, label %40, label %26

26:                                               ; preds = %20
  store i32 %22, ptr %24, align 64
  %27 = getelementptr inbounds %struct.ffs_buffer, ptr %24, i32 0, i32 2
  %28 = getelementptr inbounds %struct.ffs_buffer, ptr %24, i32 0, i32 1
  store ptr %27, ptr %28, align 4
  %29 = getelementptr i8, ptr %1, i32 %14
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %27, ptr align 1 %29, i32 %22, i1 false)
  %30 = getelementptr inbounds %struct.ffs_epfile, ptr %0, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !38
  %31 = ptrtoint ptr %24 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #15, !srcloc !11
  br label %32

32:                                               ; preds = %32, %26
  %33 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %30, i32 0, i32 %31) #15, !srcloc !20
  %34 = extractvalue { i32, i32 } %33, 0
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %32

36:                                               ; preds = %32
  %37 = extractvalue { i32, i32 } %33, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !39
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  tail call void @kfree(ptr noundef nonnull %24) #15
  br label %40

40:                                               ; preds = %39, %36, %20, %16, %13
  %41 = phi i32 [ %2, %13 ], [ -14, %16 ], [ -12, %20 ], [ %14, %39 ], [ %14, %36 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_alloc_request(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ffs_epfile_async_io_complete(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ffs_io_data, ptr %4, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ffs_io_data, ptr %4, i32 0, i32 7
  store i32 -32, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ffs_io_data, ptr %4, i32 0, i32 7, i32 1
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ffs_io_data, ptr %4, i32 0, i32 7, i32 1, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ffs_io_data, ptr %4, i32 0, i32 7, i32 2
  store ptr @ffs_user_copy_worker, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ffs_data, ptr %6, i32 0, i32 39
  %12 = load ptr, ptr %11, align 4
  %13 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %12, ptr noundef %7) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table_from_pages_segment(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ffs_user_copy_worker(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 20
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_request, ptr %3, i32 0, i32 11
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.usb_request, ptr %3, i32 0, i32 12
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi i32 [ %9, %7 ], [ %5, %1 ]
  %12 = getelementptr i8, ptr %0, i32 -40
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.kiocb, ptr %13, i32 0, i32 4
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65536
  %17 = icmp ne i32 %16, 0
  %18 = getelementptr i8, ptr %0, i32 -43
  %19 = load i8, ptr %18, align 1, !range !8
  %20 = icmp ne i8 %19, 0
  %21 = icmp sgt i32 %11, 0
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %41

23:                                               ; preds = %10
  %24 = getelementptr i8, ptr %0, i32 -4
  %25 = load ptr, ptr %24, align 8
  tail call void @kthread_use_mm(ptr noundef %25) #15
  %26 = getelementptr i8, ptr %0, i32 -8
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %0, i32 -36
  %29 = tail call i32 @_copy_to_iter(ptr noundef %27, i32 noundef %11, ptr noundef %28) #15
  %30 = icmp eq i32 %29, %11
  br i1 %30, label %37, label %31

31:                                               ; preds = %23
  %32 = getelementptr i8, ptr %0, i32 -28
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %11, i32 noundef %29) #17
  br label %37

37:                                               ; preds = %35, %31, %23
  %38 = phi i32 [ %29, %35 ], [ %11, %23 ], [ -14, %31 ]
  %39 = load ptr, ptr %24, align 8
  tail call void @kthread_unuse_mm(ptr noundef %39) #15
  %40 = load ptr, ptr %12, align 4
  br label %41

41:                                               ; preds = %37, %10
  %42 = phi ptr [ %40, %37 ], [ %13, %10 ]
  %43 = phi i32 [ %38, %37 ], [ %11, %10 ]
  %44 = getelementptr inbounds %struct.kiocb, ptr %42, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8
  tail call void %45(ptr noundef %42, i32 noundef %43) #15
  %46 = getelementptr i8, ptr %0, i32 40
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.ffs_data, ptr %47, i32 0, i32 38
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  %51 = select i1 %50, i1 true, i1 %17
  br i1 %51, label %54, label %52

52:                                               ; preds = %41
  %53 = tail call i64 @eventfd_signal(ptr noundef nonnull %49, i64 noundef 1) #15
  br label %54

54:                                               ; preds = %52, %41
  %55 = getelementptr i8, ptr %0, i32 16
  %56 = load ptr, ptr %55, align 4
  %57 = load ptr, ptr %2, align 8
  tail call void @usb_ep_free_request(ptr noundef %56, ptr noundef %57) #15
  %58 = load i8, ptr %18, align 1, !range !8
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = getelementptr i8, ptr %0, i32 -12
  %62 = load ptr, ptr %61, align 8
  tail call void @kfree(ptr noundef %62) #15
  br label %63

63:                                               ; preds = %60, %54
  %64 = getelementptr i8, ptr %0, i32 -8
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %75, label %67

67:                                               ; preds = %63
  %68 = getelementptr i8, ptr %0, i32 36
  %69 = load i8, ptr %68, align 8, !range !8
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = getelementptr i8, ptr %0, i32 24
  tail call void @sg_free_table(ptr noundef %72) #15
  %73 = load ptr, ptr %64, align 4
  tail call void @vfree(ptr noundef %73) #15
  br label %75

74:                                               ; preds = %67
  tail call void @kfree(ptr noundef nonnull %65) #15
  br label %75

75:                                               ; preds = %74, %71, %63
  %76 = getelementptr i8, ptr %0, i32 -44
  tail call void @kfree(ptr noundef %76) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_use_mm(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_unuse_mm(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @eventfd_signal(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_fifo_status(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_fifo_flush(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_clear_halt(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ffs_data_opened(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #15, !srcloc !11
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #15, !srcloc !40
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !17

6:                                                ; preds = %1
  %7 = add i32 %4, 1
  %8 = or i32 %7, %4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %12, label %10, !prof !13

10:                                               ; preds = %6, %1
  %11 = phi i32 [ 2, %1 ], [ 1, %6 ]
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef %11) #15
  br label %12

12:                                               ; preds = %10, %6
  %13 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !41
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #15, !srcloc !11
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #15, !srcloc !42
  %15 = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !43
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %34

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  store i32 4, ptr %18, align 4
  tail call fastcc void @ffs_data_clear(ptr noundef %0) #15
  %22 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 15
  %23 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 34
  store ptr null, ptr %23, align 4
  %24 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 35
  store ptr null, ptr %24, align 4
  %25 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 30
  store i16 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 31
  store i16 0, ptr %26, align 2
  %27 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 32
  store i16 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 9, i32 1
  store i16 0, ptr %28, align 4
  store i32 0, ptr %18, align 4
  %29 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 8
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 10
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 22
  store i32 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 23
  store i32 0, ptr %32, align 4
  %33 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 24
  store i32 0, ptr %33, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %22, i8 0, i64 24, i1 false) #15
  br label %34

34:                                               ; preds = %21, %17, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ffs_data_closed(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !44
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #15, !srcloc !11
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #15, !srcloc !45
  %4 = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !46
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %65

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 40
  %8 = load i8, ptr %7, align 4, !range !8
  %9 = icmp eq i8 %8, 0
  %10 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 7
  br i1 %9, label %52, label %11

11:                                               ; preds = %6
  store i32 3, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 2
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #15
  %14 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 42
  %15 = load ptr, ptr %14, align 4
  store ptr null, ptr %14, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %39, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 32
  %19 = load i16, ptr %18, align 4
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %17
  %22 = zext i16 %19 to i32
  br label %23

23:                                               ; preds = %34, %21
  %24 = phi ptr [ %36, %34 ], [ %15, %21 ]
  %25 = phi i32 [ %35, %34 ], [ %22, %21 ]
  %26 = tail call zeroext i1 @mutex_is_locked(ptr noundef %24) #15
  br i1 %26, label %27, label %28, !prof !17

27:                                               ; preds = %23
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/function/f_fs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1933, 0\0A.popsection", ""() #15, !srcloc !18
  unreachable

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.ffs_epfile, ptr %24, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  tail call void @d_delete(ptr noundef nonnull %30) #15
  %33 = load ptr, ptr %29, align 4
  tail call void @dput(ptr noundef %33) #15
  store ptr null, ptr %29, align 4
  br label %34

34:                                               ; preds = %32, %28
  %35 = add nsw i32 %25, -1
  %36 = getelementptr %struct.ffs_epfile, ptr %24, i32 1
  %37 = icmp eq i32 %35, 0
  br i1 %37, label %38, label %23

38:                                               ; preds = %34, %17
  tail call void @kfree(ptr noundef nonnull %15) #15
  br label %39

39:                                               ; preds = %38, %11
  %40 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 8
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %65

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 9, i32 2
  %45 = load i16, ptr %44, align 2
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %65, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %0, align 4
  %49 = getelementptr inbounds %struct.usb_gadget, ptr %48, i32 0, i32 3
  %50 = load ptr, ptr %49, align 8
  %51 = tail call i32 @usb_ep_set_halt(ptr noundef %50) #15
  store i32 0, ptr %40, align 4
  br label %65

52:                                               ; preds = %6
  store i32 4, ptr %10, align 4
  tail call fastcc void @ffs_data_clear(ptr noundef %0) #15
  %53 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 15
  %54 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 34
  store ptr null, ptr %54, align 4
  %55 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 35
  store ptr null, ptr %55, align 4
  %56 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 30
  store i16 0, ptr %56, align 4
  %57 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 31
  store i16 0, ptr %57, align 2
  %58 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 32
  store i16 0, ptr %58, align 4
  %59 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 9, i32 1
  store i16 0, ptr %59, align 4
  store i32 0, ptr %10, align 4
  %60 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 8
  store i32 0, ptr %60, align 4
  %61 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 10
  store i32 0, ptr %61, align 4
  %62 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 22
  store i32 0, ptr %62, align 4
  %63 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 23
  store i32 0, ptr %63, align 4
  %64 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 24
  store i32 0, ptr %64, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %53, i8 0, i64 24, i1 false) #15
  br label %65

65:                                               ; preds = %52, %47, %43, %39, %1
  %66 = load volatile i32, ptr %2, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 7
  store i32 4, ptr %69, align 4
  tail call fastcc void @ffs_data_clear(ptr noundef %0) #15
  %70 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 15
  %71 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 34
  store ptr null, ptr %71, align 4
  %72 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 35
  store ptr null, ptr %72, align 4
  %73 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 30
  store i16 0, ptr %73, align 4
  %74 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 31
  store i16 0, ptr %74, align 2
  %75 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 32
  store i16 0, ptr %75, align 4
  %76 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 9, i32 1
  store i16 0, ptr %76, align 4
  store i32 0, ptr %69, align 4
  %77 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 8
  store i32 0, ptr %77, align 4
  %78 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 10
  store i32 0, ptr %78, align 4
  %79 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 22
  store i32 0, ptr %79, align 4
  %80 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 23
  store i32 0, ptr %80, align 4
  %81 = getelementptr inbounds %struct.ffs_data, ptr %0, i32 0, i32 24
  store i32 0, ptr %81, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %70, i8 0, i64 24, i1 false) #15
  br label %82

82:                                               ; preds = %68, %65
  tail call fastcc void @ffs_data_put(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_bool(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_u32(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_litter_super(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ffs_attr_release(ptr noundef %0) #0 {
  tail call void @usb_put_function_instance(ptr noundef %0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ffs_func_bind(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 -36
  %4 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 24
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.f_fs_opts, ptr %5, i32 0, i32 3
  %7 = load i8, ptr %6, align 4, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.f_fs_opts, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ffs_dev, ptr %11, i32 0, i32 5
  %13 = load i8, ptr %12, align 2, !range !8
  %14 = icmp eq i8 %13, 0
  %15 = load ptr, ptr %11, align 4
  br i1 %14, label %116, label %27

16:                                               ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @ffs_lock) #15
  %17 = load i8, ptr %6, align 4, !range !8
  %18 = getelementptr inbounds %struct.f_fs_opts, ptr %5, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ffs_dev, ptr %19, i32 0, i32 5
  %21 = load i8, ptr %20, align 2, !range !8
  %22 = icmp eq i8 %21, 0
  %23 = load ptr, ptr %19, align 4
  %24 = icmp eq i8 %17, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  tail call void @mutex_unlock(ptr noundef nonnull @ffs_lock) #15
  br i1 %22, label %116, label %27

26:                                               ; preds = %16
  br i1 %22, label %116, label %27

27:                                               ; preds = %26, %25, %9
  %28 = phi ptr [ %15, %9 ], [ %23, %26 ], [ %23, %25 ]
  %29 = getelementptr i8, ptr %1, i32 -28
  store ptr %28, ptr %29, align 4
  store ptr %0, ptr %3, align 4
  %30 = getelementptr inbounds %struct.usb_configuration, ptr %0, i32 0, i32 9
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %1, i32 -32
  store ptr %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.f_fs_opts, ptr %5, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %106

37:                                               ; preds = %27
  %38 = load ptr, ptr %30, align 4
  %39 = getelementptr inbounds %struct.ffs_data, ptr %28, i32 0, i32 7
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.ffs_data, ptr %28, i32 0, i32 10
  %44 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %43) #15
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46, !prof !13

46:                                               ; preds = %42, %37
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 1852, i32 noundef 9, ptr noundef null) #15
  br label %103

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.ffs_data, ptr %28, i32 0, i32 30
  %49 = load i16, ptr %48, align 4
  %50 = zext i16 %49 to i32
  %51 = tail call i32 @usb_string_ids_n(ptr noundef %38, i32 noundef %50) #15
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %103, label %53

53:                                               ; preds = %47
  %54 = load ptr, ptr %38, align 4
  %55 = getelementptr inbounds %struct.usb_gadget, ptr %54, i32 0, i32 3
  %56 = load ptr, ptr %55, align 8
  %57 = tail call ptr @usb_ep_alloc_request(ptr noundef %56, i32 noundef 3264) #15
  %58 = getelementptr inbounds %struct.ffs_data, ptr %28, i32 0, i32 3
  store ptr %57, ptr %58, align 4
  %59 = icmp eq ptr %57, null
  br i1 %59, label %103, label %60

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.usb_request, ptr %57, i32 0, i32 7
  store ptr @ffs_ep0_complete, ptr %61, align 4
  %62 = load ptr, ptr %58, align 4
  %63 = getelementptr inbounds %struct.usb_request, ptr %62, i32 0, i32 8
  store ptr %28, ptr %63, align 4
  %64 = getelementptr inbounds %struct.ffs_data, ptr %28, i32 0, i32 35
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %91, label %67

67:                                               ; preds = %60
  %68 = load ptr, ptr %65, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %91, label %70

70:                                               ; preds = %87, %67
  %71 = phi ptr [ %89, %87 ], [ %68, %67 ]
  %72 = phi ptr [ %88, %87 ], [ %65, %67 ]
  %73 = getelementptr inbounds %struct.usb_gadget_strings, ptr %71, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.usb_string, ptr %74, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %87, label %78

78:                                               ; preds = %78, %70
  %79 = phi i32 [ %82, %78 ], [ %51, %70 ]
  %80 = phi ptr [ %83, %78 ], [ %74, %70 ]
  %81 = trunc i32 %79 to i8
  store i8 %81, ptr %80, align 4
  %82 = add i32 %79, 1
  %83 = getelementptr %struct.usb_string, ptr %80, i32 1
  %84 = getelementptr %struct.usb_string, ptr %80, i32 1, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %78

87:                                               ; preds = %78, %70
  %88 = getelementptr ptr, ptr %72, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %70

91:                                               ; preds = %87, %67, %60
  %92 = load ptr, ptr %38, align 4
  store ptr %92, ptr %28, align 4
  %93 = getelementptr inbounds %struct.ffs_data, ptr %28, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %93) #15, !srcloc !11
  %94 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %93, ptr %93, i32 1, ptr elementtype(i32) %93) #15, !srcloc !40
  %95 = extractvalue { i32, i32, i32 } %94, 0
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %101, label %97, !prof !17

97:                                               ; preds = %91
  %98 = add i32 %95, 1
  %99 = or i32 %98, %95
  %100 = icmp sgt i32 %99, -1
  br i1 %100, label %106, label %101, !prof !13

101:                                              ; preds = %97, %91
  %102 = phi i32 [ 2, %91 ], [ 1, %97 ]
  tail call void @refcount_warn_saturate(ptr noundef %93, i32 noundef %102) #15
  br label %106

103:                                              ; preds = %53, %47, %46
  %104 = phi i32 [ -12, %53 ], [ %51, %47 ], [ -77, %46 ]
  %105 = inttoptr i32 %104 to ptr
  br label %113

106:                                              ; preds = %101, %97, %27
  %107 = load i32, ptr %34, align 4
  %108 = add i32 %107, 1
  store i32 %108, ptr %34, align 4
  %109 = load ptr, ptr %29, align 4
  %110 = getelementptr inbounds %struct.ffs_data, ptr %109, i32 0, i32 35
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr i8, ptr %1, i32 4
  store ptr %111, ptr %112, align 4
  br label %113

113:                                              ; preds = %106, %103
  %114 = phi ptr [ %5, %106 ], [ %105, %103 ]
  %115 = icmp ugt ptr %114, inttoptr (i32 -4096 to ptr)
  br i1 %115, label %116, label %119

116:                                              ; preds = %113, %26, %25, %9
  %117 = phi ptr [ %114, %113 ], [ inttoptr (i32 -19 to ptr), %26 ], [ inttoptr (i32 -19 to ptr), %9 ], [ inttoptr (i32 -19 to ptr), %25 ]
  %118 = ptrtoint ptr %117 to i32
  br label %876

119:                                              ; preds = %113
  %120 = load ptr, ptr %29, align 4
  %121 = getelementptr inbounds %struct.ffs_data, ptr %120, i32 0, i32 18
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %122, 0
  %124 = getelementptr inbounds %struct.ffs_data, ptr %120, i32 0, i32 19
  %125 = load i32, ptr %124, align 4
  %126 = icmp eq i32 %125, 0
  %127 = getelementptr inbounds %struct.ffs_data, ptr %120, i32 0, i32 20
  %128 = load i32, ptr %127, align 4
  %129 = icmp eq i32 %128, 0
  %130 = getelementptr inbounds %struct.ffs_data, ptr %120, i32 0, i32 32
  %131 = add i32 %122, 1
  %132 = select i1 %123, i32 0, i32 %131
  %133 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %132, i32 4) #15
  %134 = extractvalue { i32, i1 } %133, 1
  %135 = extractvalue { i32, i1 } %133, 0
  %136 = select i1 %134, i32 -1, i32 %135
  %137 = load i16, ptr %130, align 4
  %138 = zext i16 %137 to i32
  %139 = mul nuw nsw i32 %138, 28
  %140 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %139, i32 %136) #15
  %141 = extractvalue { i32, i1 } %140, 1
  %142 = tail call i32 @llvm.uadd.sat.i32(i32 %139, i32 %136) #15
  %143 = select i1 %141, i32 0, i32 %139
  %144 = icmp eq i32 %142, -1
  br i1 %144, label %171, label %145

145:                                              ; preds = %119
  %146 = add i32 %125, 1
  %147 = select i1 %126, i32 0, i32 %146
  %148 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %147, i32 4) #15
  %149 = extractvalue { i32, i1 } %148, 1
  %150 = extractvalue { i32, i1 } %148, 0
  %151 = select i1 %149, i32 -1, i32 %150
  %152 = add i32 %142, 3
  %153 = and i32 %152, -4
  %154 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %153, i32 %151) #15
  %155 = extractvalue { i32, i1 } %154, 1
  %156 = tail call i32 @llvm.uadd.sat.i32(i32 %153, i32 %151) #15
  %157 = select i1 %155, i32 0, i32 %153
  %158 = icmp eq i32 %156, -1
  br i1 %158, label %171, label %159

159:                                              ; preds = %145
  %160 = add i32 %128, 1
  %161 = select i1 %129, i32 0, i32 %160
  %162 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %161, i32 4) #15
  %163 = extractvalue { i32, i1 } %162, 1
  %164 = extractvalue { i32, i1 } %162, 0
  %165 = select i1 %163, i32 -1, i32 %164
  %166 = add i32 %156, 3
  %167 = and i32 %166, -4
  %168 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %167, i32 %165) #15
  %169 = extractvalue { i32, i1 } %168, 1
  %170 = extractvalue { i32, i1 } %168, 0
  br i1 %169, label %171, label %177

171:                                              ; preds = %159, %145, %119
  %172 = phi i32 [ %157, %145 ], [ %157, %159 ], [ 0, %119 ]
  %173 = getelementptr inbounds %struct.ffs_data, ptr %120, i32 0, i32 31
  %174 = load i16, ptr %173, align 2
  %175 = zext i16 %174 to i32
  %176 = shl nuw nsw i32 %175, 1
  br label %183

177:                                              ; preds = %159
  %178 = getelementptr inbounds %struct.ffs_data, ptr %120, i32 0, i32 31
  %179 = load i16, ptr %178, align 2
  %180 = zext i16 %179 to i32
  %181 = shl nuw nsw i32 %180, 1
  %182 = icmp eq i32 %170, -1
  br i1 %182, label %183, label %194

183:                                              ; preds = %177, %171
  %184 = phi i32 [ %172, %171 ], [ %157, %177 ]
  %185 = phi i32 [ %176, %171 ], [ %181, %177 ]
  %186 = phi i32 [ %175, %171 ], [ %180, %177 ]
  %187 = phi ptr [ %173, %171 ], [ %178, %177 ]
  %188 = phi i32 [ 0, %171 ], [ %167, %177 ]
  %189 = load ptr, ptr %30, align 4
  %190 = getelementptr inbounds %struct.usb_composite_dev, ptr %189, i32 0, i32 8
  %191 = load i8, ptr %190, align 4
  %192 = and i8 %191, 1
  %193 = icmp eq i8 %192, 0
  br label %216

194:                                              ; preds = %177
  %195 = add nuw i32 %170, 1
  %196 = and i32 %195, -2
  %197 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %196, i32 %181) #15
  %198 = extractvalue { i32, i1 } %197, 1
  %199 = tail call i32 @llvm.uadd.sat.i32(i32 %196, i32 %181) #15
  %200 = select i1 %198, i32 0, i32 %196
  %201 = load ptr, ptr %30, align 4
  %202 = getelementptr inbounds %struct.usb_composite_dev, ptr %201, i32 0, i32 8
  %203 = load i8, ptr %202, align 4
  %204 = and i8 %203, 1
  %205 = icmp eq i8 %204, 0
  %206 = icmp eq i32 %199, -1
  br i1 %206, label %216, label %207

207:                                              ; preds = %194
  %208 = shl nuw nsw i32 %180, 3
  %209 = select i1 %205, i32 0, i32 %208
  %210 = add i32 %199, 3
  %211 = and i32 %210, -4
  %212 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %211, i32 %209) #15
  %213 = extractvalue { i32, i1 } %212, 1
  %214 = tail call i32 @llvm.uadd.sat.i32(i32 %211, i32 %209) #15
  %215 = select i1 %213, i32 0, i32 %211
  br label %216

216:                                              ; preds = %207, %194, %183
  %217 = phi i1 [ %205, %207 ], [ %205, %194 ], [ %193, %183 ]
  %218 = phi i32 [ %200, %207 ], [ %200, %194 ], [ 0, %183 ]
  %219 = phi i32 [ %167, %207 ], [ %167, %194 ], [ %188, %183 ]
  %220 = phi ptr [ %178, %207 ], [ %178, %194 ], [ %187, %183 ]
  %221 = phi i32 [ %180, %207 ], [ %180, %194 ], [ %186, %183 ]
  %222 = phi i32 [ %181, %207 ], [ %181, %194 ], [ %185, %183 ]
  %223 = phi i32 [ %157, %207 ], [ %157, %194 ], [ %184, %183 ]
  %224 = phi i32 [ %214, %207 ], [ -1, %194 ], [ -1, %183 ]
  %225 = phi i32 [ %215, %207 ], [ 0, %194 ], [ 0, %183 ]
  %226 = shl nuw nsw i32 %221, 4
  %227 = select i1 %217, i32 0, i32 %226
  %228 = icmp eq i32 %224, -1
  %229 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %224, i32 %227) #15
  %230 = extractvalue { i32, i1 } %229, 1
  %231 = tail call i32 @llvm.uadd.sat.i32(i32 %224, i32 %227) #15
  %232 = select i1 %228, i1 true, i1 %230
  %233 = select i1 %232, i32 0, i32 %224
  %234 = icmp eq i32 %231, -1
  %235 = select i1 %228, i1 true, i1 %234
  br i1 %235, label %270, label %236

236:                                              ; preds = %216
  %237 = mul nuw nsw i32 %221, 108
  %238 = select i1 %217, i32 0, i32 %237
  %239 = add i32 %231, 3
  %240 = and i32 %239, -4
  %241 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %240, i32 %238) #15
  %242 = extractvalue { i32, i1 } %241, 1
  %243 = extractvalue { i32, i1 } %241, 0
  br i1 %242, label %270, label %244

244:                                              ; preds = %236
  %245 = getelementptr inbounds %struct.ffs_data, ptr %120, i32 0, i32 22
  %246 = load i32, ptr %245, align 4
  %247 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %246, i32 80) #15
  %248 = extractvalue { i32, i1 } %247, 1
  %249 = extractvalue { i32, i1 } %247, 0
  %250 = select i1 %248, i32 -1, i32 %249
  %251 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %243, i32 %250) #15
  %252 = extractvalue { i32, i1 } %251, 1
  %253 = extractvalue { i32, i1 } %251, 0
  br i1 %252, label %270, label %254

254:                                              ; preds = %244
  %255 = icmp eq i32 %253, -1
  br i1 %255, label %270, label %256

256:                                              ; preds = %254
  %257 = getelementptr inbounds %struct.ffs_data, ptr %120, i32 0, i32 23
  %258 = load i32, ptr %257, align 4
  %259 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %253, i32 %258) #15
  %260 = extractvalue { i32, i1 } %259, 1
  %261 = extractvalue { i32, i1 } %259, 0
  br i1 %260, label %270, label %262

262:                                              ; preds = %256
  %263 = icmp eq i32 %261, -1
  br i1 %263, label %270, label %264

264:                                              ; preds = %262
  %265 = getelementptr inbounds %struct.ffs_data, ptr %120, i32 0, i32 24
  %266 = load i32, ptr %265, align 4
  %267 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %261, i32 %266) #15
  %268 = extractvalue { i32, i1 } %267, 1
  %269 = extractvalue { i32, i1 } %267, 0
  br i1 %268, label %270, label %276

270:                                              ; preds = %264, %262, %256, %254, %244, %236, %216
  %271 = phi i32 [ %253, %262 ], [ 0, %254 ], [ 0, %216 ], [ 0, %236 ], [ 0, %244 ], [ 0, %256 ], [ %253, %264 ]
  %272 = phi i32 [ %240, %262 ], [ %240, %254 ], [ 0, %216 ], [ 0, %236 ], [ %240, %244 ], [ %240, %256 ], [ %240, %264 ]
  %273 = phi i32 [ %243, %262 ], [ %243, %254 ], [ 0, %216 ], [ 0, %236 ], [ 0, %244 ], [ %243, %256 ], [ %243, %264 ]
  %274 = getelementptr inbounds %struct.ffs_data, ptr %120, i32 0, i32 17
  %275 = load i32, ptr %274, align 4
  br label %285

276:                                              ; preds = %264
  %277 = getelementptr inbounds %struct.ffs_data, ptr %120, i32 0, i32 17
  %278 = load i32, ptr %277, align 4
  %279 = icmp eq i32 %269, -1
  br i1 %279, label %285, label %280

280:                                              ; preds = %276
  %281 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %269, i32 %278) #15
  %282 = extractvalue { i32, i1 } %281, 1
  %283 = tail call i32 @llvm.uadd.sat.i32(i32 %269, i32 %278) #15
  %284 = select i1 %282, i32 0, i32 %269
  br label %285

285:                                              ; preds = %280, %276, %270
  %286 = phi i32 [ %278, %280 ], [ %278, %276 ], [ %275, %270 ]
  %287 = phi ptr [ %277, %280 ], [ %277, %276 ], [ %274, %270 ]
  %288 = phi i32 [ %261, %280 ], [ %261, %276 ], [ 0, %270 ]
  %289 = phi i32 [ %243, %280 ], [ %243, %276 ], [ %273, %270 ]
  %290 = phi i32 [ %240, %280 ], [ %240, %276 ], [ %272, %270 ]
  %291 = phi i32 [ %253, %280 ], [ %253, %276 ], [ %271, %270 ]
  %292 = phi i32 [ %283, %280 ], [ -1, %276 ], [ -1, %270 ]
  %293 = phi i32 [ %284, %280 ], [ 0, %276 ], [ 0, %270 ]
  %294 = or i32 %125, %122
  %295 = or i32 %294, %128
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %859, label %297

297:                                              ; preds = %285
  %298 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %292, i32 noundef 3520) #18
  %299 = icmp eq ptr %298, null
  br i1 %299, label %859, label %300

300:                                              ; preds = %297
  %301 = load i32, ptr %287, align 4
  %302 = getelementptr i8, ptr %298, i32 %289
  %303 = getelementptr inbounds %struct.ffs_data, ptr %120, i32 0, i32 25
  store ptr %302, ptr %303, align 4
  %304 = getelementptr i8, ptr %298, i32 %291
  %305 = getelementptr inbounds %struct.ffs_data, ptr %120, i32 0, i32 26
  store ptr %304, ptr %305, align 4
  %306 = getelementptr i8, ptr %298, i32 %288
  %307 = getelementptr inbounds %struct.ffs_data, ptr %120, i32 0, i32 27
  store ptr %306, ptr %307, align 4
  %308 = getelementptr i8, ptr %298, i32 %293
  %309 = getelementptr inbounds %struct.ffs_data, ptr %120, i32 0, i32 16
  %310 = load ptr, ptr %309, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %308, ptr align 1 %310, i32 %301, i1 false) #15
  %311 = getelementptr i8, ptr %298, i32 %218
  tail call void @llvm.memset.p0.i32(ptr align 1 %311, i8 -1, i32 %222, i1 false) #15
  %312 = load i16, ptr %130, align 4
  %313 = icmp eq i16 %312, 0
  br i1 %313, label %321, label %314

314:                                              ; preds = %314, %300
  %315 = phi i32 [ %317, %314 ], [ 0, %300 ]
  %316 = getelementptr %struct.ffs_ep, ptr %298, i32 %315, i32 3
  store i8 -1, ptr %316, align 4
  %317 = add nuw nsw i32 %315, 1
  %318 = load i16, ptr %130, align 4
  %319 = zext i16 %318 to i32
  %320 = icmp ult i32 %317, %319
  br i1 %320, label %314, label %321

321:                                              ; preds = %314, %300
  %322 = getelementptr i8, ptr %1, i32 -24
  store ptr %298, ptr %322, align 4
  %323 = getelementptr i8, ptr %1, i32 -4
  store ptr %311, ptr %323, align 4
  br i1 %123, label %383, label %324

324:                                              ; preds = %321
  %325 = getelementptr i8, ptr %298, i32 %143
  %326 = getelementptr i8, ptr %1, i32 8
  store ptr %325, ptr %326, align 4
  %327 = load i32, ptr %121, align 4
  %328 = icmp eq i32 %327, 0
  %329 = select i1 %328, ptr null, ptr %308
  %330 = tail call fastcc i32 @__ffs_func_bind_do_descs(i32 noundef 0, ptr noundef null, ptr noundef %329, ptr noundef %3) #15, !callees !47
  %331 = icmp slt i32 %330, 0
  br i1 %331, label %859, label %332

332:                                              ; preds = %370, %324
  %333 = phi ptr [ %376, %370 ], [ %329, %324 ]
  %334 = phi i32 [ %374, %370 ], [ 0, %324 ]
  %335 = phi i32 [ %372, %370 ], [ %286, %324 ]
  %336 = phi i32 [ %371, %370 ], [ -1, %324 ]
  %337 = icmp eq ptr %333, null
  br i1 %337, label %380, label %338

338:                                              ; preds = %332
  %339 = icmp ult i32 %335, 2
  br i1 %339, label %859, label %340

340:                                              ; preds = %338
  %341 = load i8, ptr %333, align 1
  %342 = zext i8 %341 to i32
  %343 = icmp ult i32 %335, %342
  br i1 %343, label %859, label %344

344:                                              ; preds = %340
  %345 = getelementptr inbounds %struct.usb_descriptor_header, ptr %333, i32 0, i32 1
  %346 = load i8, ptr %345, align 1
  switch i8 %346, label %859 [
    i8 48, label %368
    i8 11, label %366
    i8 9, label %364
    i8 33, label %359
    i8 4, label %347
    i8 5, label %353
  ]

347:                                              ; preds = %344
  %348 = icmp eq i8 %341, 9
  br i1 %348, label %349, label %859

349:                                              ; preds = %347
  %350 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %333, i32 0, i32 5
  %351 = load i8, ptr %350, align 1
  %352 = zext i8 %351 to i32
  br label %370

353:                                              ; preds = %344
  switch i8 %341, label %859 [
    i8 9, label %354
    i8 7, label %354
  ]

354:                                              ; preds = %353, %353
  %355 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %333, i32 0, i32 2
  %356 = load i8, ptr %355, align 1
  %357 = and i8 %356, 15
  %358 = icmp eq i8 %357, 0
  br i1 %358, label %859, label %370

359:                                              ; preds = %344
  switch i32 %336, label %859 [
    i32 3, label %360
    i32 11, label %362
  ]

360:                                              ; preds = %359
  %361 = icmp eq i8 %341, 9
  br i1 %361, label %370, label %859

362:                                              ; preds = %359
  %363 = icmp eq i8 %341, 54
  br i1 %363, label %370, label %859

364:                                              ; preds = %344
  %365 = icmp eq i8 %341, 3
  br i1 %365, label %370, label %859

366:                                              ; preds = %344
  %367 = icmp eq i8 %341, 8
  br i1 %367, label %370, label %859

368:                                              ; preds = %344
  %369 = icmp eq i8 %341, 6
  br i1 %369, label %370, label %859

370:                                              ; preds = %368, %366, %364, %362, %360, %354, %349
  %371 = phi i32 [ %352, %349 ], [ 11, %362 ], [ 3, %360 ], [ %336, %364 ], [ %336, %368 ], [ %336, %354 ], [ %336, %366 ]
  %372 = sub i32 %335, %342
  %373 = getelementptr i8, ptr %333, i32 %342
  %374 = add i32 %334, 1
  %375 = icmp eq i32 %374, %327
  %376 = select i1 %375, ptr null, ptr %373
  %377 = inttoptr i32 %374 to ptr
  %378 = tail call fastcc i32 @__ffs_func_bind_do_descs(i32 noundef 0, ptr noundef %377, ptr noundef %376, ptr noundef %3) #15, !callees !47
  %379 = icmp slt i32 %378, 0
  br i1 %379, label %859, label %332

380:                                              ; preds = %332
  %381 = sub i32 %286, %335
  %382 = icmp slt i32 %381, 0
  br i1 %382, label %859, label %383

383:                                              ; preds = %380, %321
  %384 = phi i32 [ %381, %380 ], [ 0, %321 ]
  br i1 %126, label %446, label %385

385:                                              ; preds = %383
  %386 = getelementptr i8, ptr %298, i32 %223
  %387 = getelementptr i8, ptr %1, i32 12
  store ptr %386, ptr %387, align 4
  %388 = load i32, ptr %124, align 4
  %389 = getelementptr i8, ptr %308, i32 %384
  %390 = sub i32 %286, %384
  %391 = icmp eq i32 %388, 0
  %392 = select i1 %391, ptr null, ptr %389
  %393 = tail call fastcc i32 @__ffs_func_bind_do_descs(i32 noundef 0, ptr noundef null, ptr noundef %392, ptr noundef %3) #15, !callees !47
  %394 = icmp slt i32 %393, 0
  br i1 %394, label %859, label %395

395:                                              ; preds = %433, %385
  %396 = phi ptr [ %439, %433 ], [ %392, %385 ]
  %397 = phi i32 [ %437, %433 ], [ 0, %385 ]
  %398 = phi i32 [ %435, %433 ], [ %390, %385 ]
  %399 = phi i32 [ %434, %433 ], [ -1, %385 ]
  %400 = icmp eq ptr %396, null
  br i1 %400, label %443, label %401

401:                                              ; preds = %395
  %402 = icmp ult i32 %398, 2
  br i1 %402, label %859, label %403

403:                                              ; preds = %401
  %404 = load i8, ptr %396, align 1
  %405 = zext i8 %404 to i32
  %406 = icmp ult i32 %398, %405
  br i1 %406, label %859, label %407

407:                                              ; preds = %403
  %408 = getelementptr inbounds %struct.usb_descriptor_header, ptr %396, i32 0, i32 1
  %409 = load i8, ptr %408, align 1
  switch i8 %409, label %859 [
    i8 48, label %431
    i8 11, label %429
    i8 9, label %427
    i8 33, label %422
    i8 4, label %410
    i8 5, label %416
  ]

410:                                              ; preds = %407
  %411 = icmp eq i8 %404, 9
  br i1 %411, label %412, label %859

412:                                              ; preds = %410
  %413 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %396, i32 0, i32 5
  %414 = load i8, ptr %413, align 1
  %415 = zext i8 %414 to i32
  br label %433

416:                                              ; preds = %407
  switch i8 %404, label %859 [
    i8 9, label %417
    i8 7, label %417
  ]

417:                                              ; preds = %416, %416
  %418 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %396, i32 0, i32 2
  %419 = load i8, ptr %418, align 1
  %420 = and i8 %419, 15
  %421 = icmp eq i8 %420, 0
  br i1 %421, label %859, label %433

422:                                              ; preds = %407
  switch i32 %399, label %859 [
    i32 3, label %423
    i32 11, label %425
  ]

423:                                              ; preds = %422
  %424 = icmp eq i8 %404, 9
  br i1 %424, label %433, label %859

425:                                              ; preds = %422
  %426 = icmp eq i8 %404, 54
  br i1 %426, label %433, label %859

427:                                              ; preds = %407
  %428 = icmp eq i8 %404, 3
  br i1 %428, label %433, label %859

429:                                              ; preds = %407
  %430 = icmp eq i8 %404, 8
  br i1 %430, label %433, label %859

431:                                              ; preds = %407
  %432 = icmp eq i8 %404, 6
  br i1 %432, label %433, label %859

433:                                              ; preds = %431, %429, %427, %425, %423, %417, %412
  %434 = phi i32 [ %415, %412 ], [ 11, %425 ], [ 3, %423 ], [ %399, %427 ], [ %399, %431 ], [ %399, %417 ], [ %399, %429 ]
  %435 = sub i32 %398, %405
  %436 = getelementptr i8, ptr %396, i32 %405
  %437 = add i32 %397, 1
  %438 = icmp eq i32 %437, %388
  %439 = select i1 %438, ptr null, ptr %436
  %440 = inttoptr i32 %437 to ptr
  %441 = tail call fastcc i32 @__ffs_func_bind_do_descs(i32 noundef 0, ptr noundef %440, ptr noundef %439, ptr noundef %3) #15, !callees !47
  %442 = icmp slt i32 %441, 0
  br i1 %442, label %859, label %395

443:                                              ; preds = %395
  %444 = sub i32 %390, %398
  %445 = icmp slt i32 %444, 0
  br i1 %445, label %859, label %446

446:                                              ; preds = %443, %383
  %447 = phi i32 [ %444, %443 ], [ 0, %383 ]
  br i1 %129, label %512, label %448

448:                                              ; preds = %446
  %449 = getelementptr i8, ptr %298, i32 %219
  %450 = getelementptr i8, ptr %1, i32 20
  store ptr %449, ptr %450, align 4
  %451 = getelementptr i8, ptr %1, i32 16
  store ptr %449, ptr %451, align 4
  %452 = load i32, ptr %127, align 4
  %453 = getelementptr i8, ptr %308, i32 %384
  %454 = getelementptr i8, ptr %453, i32 %447
  %455 = add i32 %384, %447
  %456 = sub i32 %286, %455
  %457 = icmp eq i32 %452, 0
  %458 = select i1 %457, ptr null, ptr %454
  %459 = tail call fastcc i32 @__ffs_func_bind_do_descs(i32 noundef 0, ptr noundef null, ptr noundef %458, ptr noundef %3) #15, !callees !47
  %460 = icmp slt i32 %459, 0
  br i1 %460, label %859, label %461

461:                                              ; preds = %499, %448
  %462 = phi ptr [ %505, %499 ], [ %458, %448 ]
  %463 = phi i32 [ %503, %499 ], [ 0, %448 ]
  %464 = phi i32 [ %501, %499 ], [ %456, %448 ]
  %465 = phi i32 [ %500, %499 ], [ -1, %448 ]
  %466 = icmp eq ptr %462, null
  br i1 %466, label %509, label %467

467:                                              ; preds = %461
  %468 = icmp ult i32 %464, 2
  br i1 %468, label %859, label %469

469:                                              ; preds = %467
  %470 = load i8, ptr %462, align 1
  %471 = zext i8 %470 to i32
  %472 = icmp ult i32 %464, %471
  br i1 %472, label %859, label %473

473:                                              ; preds = %469
  %474 = getelementptr inbounds %struct.usb_descriptor_header, ptr %462, i32 0, i32 1
  %475 = load i8, ptr %474, align 1
  switch i8 %475, label %859 [
    i8 48, label %497
    i8 11, label %495
    i8 9, label %493
    i8 33, label %488
    i8 4, label %476
    i8 5, label %482
  ]

476:                                              ; preds = %473
  %477 = icmp eq i8 %470, 9
  br i1 %477, label %478, label %859

478:                                              ; preds = %476
  %479 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %462, i32 0, i32 5
  %480 = load i8, ptr %479, align 1
  %481 = zext i8 %480 to i32
  br label %499

482:                                              ; preds = %473
  switch i8 %470, label %859 [
    i8 9, label %483
    i8 7, label %483
  ]

483:                                              ; preds = %482, %482
  %484 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %462, i32 0, i32 2
  %485 = load i8, ptr %484, align 1
  %486 = and i8 %485, 15
  %487 = icmp eq i8 %486, 0
  br i1 %487, label %859, label %499

488:                                              ; preds = %473
  switch i32 %465, label %859 [
    i32 3, label %489
    i32 11, label %491
  ]

489:                                              ; preds = %488
  %490 = icmp eq i8 %470, 9
  br i1 %490, label %499, label %859

491:                                              ; preds = %488
  %492 = icmp eq i8 %470, 54
  br i1 %492, label %499, label %859

493:                                              ; preds = %473
  %494 = icmp eq i8 %470, 3
  br i1 %494, label %499, label %859

495:                                              ; preds = %473
  %496 = icmp eq i8 %470, 8
  br i1 %496, label %499, label %859

497:                                              ; preds = %473
  %498 = icmp eq i8 %470, 6
  br i1 %498, label %499, label %859

499:                                              ; preds = %497, %495, %493, %491, %489, %483, %478
  %500 = phi i32 [ %481, %478 ], [ 11, %491 ], [ 3, %489 ], [ %465, %493 ], [ %465, %497 ], [ %465, %483 ], [ %465, %495 ]
  %501 = sub i32 %464, %471
  %502 = getelementptr i8, ptr %462, i32 %471
  %503 = add i32 %463, 1
  %504 = icmp eq i32 %503, %452
  %505 = select i1 %504, ptr null, ptr %502
  %506 = inttoptr i32 %503 to ptr
  %507 = tail call fastcc i32 @__ffs_func_bind_do_descs(i32 noundef 0, ptr noundef %506, ptr noundef %505, ptr noundef %3) #15, !callees !47
  %508 = icmp slt i32 %507, 0
  br i1 %508, label %859, label %461

509:                                              ; preds = %461
  %510 = sub i32 %456, %464
  %511 = icmp slt i32 %510, 0
  br i1 %511, label %859, label %512

512:                                              ; preds = %509, %446
  %513 = phi i32 [ %510, %509 ], [ 0, %446 ]
  %514 = load i32, ptr %121, align 4
  br i1 %126, label %517, label %515

515:                                              ; preds = %512
  %516 = load i32, ptr %124, align 4
  br label %517

517:                                              ; preds = %515, %512
  %518 = phi i32 [ %516, %515 ], [ 0, %512 ]
  %519 = add i32 %518, %514
  br i1 %129, label %522, label %520

520:                                              ; preds = %517
  %521 = load i32, ptr %127, align 4
  br label %522

522:                                              ; preds = %520, %517
  %523 = phi i32 [ %521, %520 ], [ 0, %517 ]
  %524 = add i32 %519, %523
  %525 = icmp eq i32 %524, 0
  %526 = icmp eq ptr %308, null
  %527 = select i1 %525, i1 true, i1 %526
  br i1 %527, label %624, label %528

528:                                              ; preds = %616, %522
  %529 = phi i32 [ %617, %616 ], [ -1, %522 ]
  %530 = phi i32 [ %618, %616 ], [ %286, %522 ]
  %531 = phi i32 [ %620, %616 ], [ 0, %522 ]
  %532 = phi ptr [ %619, %616 ], [ %308, %522 ]
  %533 = icmp ult i32 %530, 2
  br i1 %533, label %859, label %534

534:                                              ; preds = %528
  %535 = load i8, ptr %532, align 1
  %536 = zext i8 %535 to i32
  %537 = icmp ult i32 %530, %536
  br i1 %537, label %859, label %538

538:                                              ; preds = %534
  %539 = getelementptr inbounds %struct.usb_descriptor_header, ptr %532, i32 0, i32 1
  %540 = load i8, ptr %539, align 1
  switch i8 %540, label %859 [
    i8 48, label %614
    i8 11, label %597
    i8 9, label %595
    i8 33, label %590
    i8 4, label %541
    i8 5, label %584
  ]

541:                                              ; preds = %538
  %542 = icmp eq i8 %535, 9
  br i1 %542, label %543, label %859

543:                                              ; preds = %541
  %544 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %532, i32 0, i32 2
  %545 = load i8, ptr %544, align 1
  %546 = zext i8 %545 to i32
  %547 = load ptr, ptr %323, align 4
  %548 = getelementptr i16, ptr %547, i32 %546
  %549 = load i16, ptr %548, align 2
  %550 = icmp slt i16 %549, 0
  %551 = trunc i16 %549 to i8
  br i1 %550, label %552, label %564

552:                                              ; preds = %543
  %553 = load ptr, ptr %3, align 4
  %554 = tail call i32 @usb_interface_id(ptr noundef %553, ptr noundef %1) #15
  %555 = icmp slt i32 %554, 0
  br i1 %555, label %859, label %556

556:                                              ; preds = %552
  %557 = trunc i32 %554 to i16
  %558 = load ptr, ptr %323, align 4
  %559 = getelementptr i16, ptr %558, i32 %546
  store i16 %557, ptr %559, align 2
  %560 = load ptr, ptr %323, align 4
  %561 = getelementptr i16, ptr %560, i32 %546
  %562 = load i16, ptr %561, align 2
  %563 = trunc i16 %562 to i8
  br label %564

564:                                              ; preds = %556, %543
  %565 = phi i8 [ %563, %556 ], [ %551, %543 ]
  store i8 %565, ptr %544, align 1
  %566 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %532, i32 0, i32 8
  %567 = load i8, ptr %566, align 1
  %568 = icmp eq i8 %567, 0
  br i1 %568, label %580, label %569

569:                                              ; preds = %564
  %570 = load ptr, ptr %29, align 4
  %571 = getelementptr inbounds %struct.ffs_data, ptr %570, i32 0, i32 35
  %572 = load ptr, ptr %571, align 4
  %573 = load ptr, ptr %572, align 4
  %574 = getelementptr inbounds %struct.usb_gadget_strings, ptr %573, i32 0, i32 1
  %575 = load ptr, ptr %574, align 4
  %576 = zext i8 %567 to i32
  %577 = add nsw i32 %576, -1
  %578 = getelementptr %struct.usb_string, ptr %575, i32 %577
  %579 = load i8, ptr %578, align 4
  store i8 %579, ptr %566, align 1
  br label %580

580:                                              ; preds = %569, %564
  %581 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %532, i32 0, i32 5
  %582 = load i8, ptr %581, align 1
  %583 = zext i8 %582 to i32
  br label %616

584:                                              ; preds = %538
  switch i8 %535, label %859 [
    i8 9, label %585
    i8 7, label %585
  ]

585:                                              ; preds = %584, %584
  %586 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %532, i32 0, i32 2
  %587 = load i8, ptr %586, align 1
  %588 = and i8 %587, 15
  %589 = icmp eq i8 %588, 0
  br i1 %589, label %859, label %616

590:                                              ; preds = %538
  switch i32 %529, label %859 [
    i32 3, label %591
    i32 11, label %593
  ]

591:                                              ; preds = %590
  %592 = icmp eq i8 %535, 9
  br i1 %592, label %616, label %859

593:                                              ; preds = %590
  %594 = icmp eq i8 %535, 54
  br i1 %594, label %616, label %859

595:                                              ; preds = %538
  %596 = icmp eq i8 %535, 3
  br i1 %596, label %616, label %859

597:                                              ; preds = %538
  %598 = icmp eq i8 %535, 8
  br i1 %598, label %599, label %859

599:                                              ; preds = %597
  %600 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %532, i32 0, i32 7
  %601 = load i8, ptr %600, align 1
  %602 = icmp eq i8 %601, 0
  br i1 %602, label %616, label %603

603:                                              ; preds = %599
  %604 = load ptr, ptr %29, align 4
  %605 = getelementptr inbounds %struct.ffs_data, ptr %604, i32 0, i32 35
  %606 = load ptr, ptr %605, align 4
  %607 = load ptr, ptr %606, align 4
  %608 = getelementptr inbounds %struct.usb_gadget_strings, ptr %607, i32 0, i32 1
  %609 = load ptr, ptr %608, align 4
  %610 = zext i8 %601 to i32
  %611 = add nsw i32 %610, -1
  %612 = getelementptr %struct.usb_string, ptr %609, i32 %611
  %613 = load i8, ptr %612, align 4
  store i8 %613, ptr %600, align 1
  br label %616

614:                                              ; preds = %538
  %615 = icmp eq i8 %535, 6
  br i1 %615, label %616, label %859

616:                                              ; preds = %614, %603, %599, %595, %593, %591, %585, %580
  %617 = phi i32 [ %583, %580 ], [ 11, %593 ], [ 3, %591 ], [ %529, %595 ], [ %529, %599 ], [ %529, %603 ], [ %529, %614 ], [ %529, %585 ]
  %618 = sub i32 %530, %536
  %619 = getelementptr i8, ptr %532, i32 %536
  %620 = add nuw i32 %531, 1
  %621 = icmp eq i32 %620, %524
  %622 = icmp eq ptr %619, null
  %623 = select i1 %621, i1 true, i1 %622
  br i1 %623, label %624, label %528

624:                                              ; preds = %616, %522
  %625 = phi i32 [ %286, %522 ], [ %618, %616 ]
  %626 = sub i32 %286, %625
  %627 = icmp slt i32 %626, 0
  br i1 %627, label %859, label %628

628:                                              ; preds = %624
  %629 = getelementptr i8, ptr %298, i32 %225
  %630 = getelementptr i8, ptr %1, i32 28
  store ptr %629, ptr %630, align 4
  %631 = load ptr, ptr %30, align 4
  %632 = getelementptr inbounds %struct.usb_composite_dev, ptr %631, i32 0, i32 8
  %633 = load i8, ptr %632, align 4
  %634 = and i8 %633, 1
  %635 = icmp eq i8 %634, 0
  br i1 %635, label %814, label %636

636:                                              ; preds = %628
  %637 = load i16, ptr %220, align 2
  %638 = icmp eq i16 %637, 0
  br i1 %638, label %661, label %639

639:                                              ; preds = %636
  %640 = getelementptr i8, ptr %298, i32 %290
  %641 = getelementptr i8, ptr %298, i32 %233
  %642 = getelementptr %struct.usb_os_desc_table, ptr %629, i32 0, i32 1
  store ptr %640, ptr %642, align 4
  store ptr %641, ptr %640, align 4
  %643 = getelementptr inbounds %struct.usb_os_desc, ptr %640, i32 0, i32 1
  store volatile ptr %643, ptr %643, align 4
  %644 = getelementptr inbounds %struct.list_head, ptr %643, i32 0, i32 1
  store ptr %643, ptr %644, align 4
  %645 = load i16, ptr %220, align 2
  %646 = icmp ugt i16 %645, 1
  br i1 %646, label %647, label %661

647:                                              ; preds = %647, %639
  %648 = phi i32 [ %657, %647 ], [ 1, %639 ]
  %649 = load ptr, ptr %630, align 4
  %650 = mul nuw nsw i32 %648, 108
  %651 = getelementptr i8, ptr %640, i32 %650
  %652 = getelementptr %struct.usb_os_desc_table, ptr %649, i32 %648, i32 1
  store ptr %651, ptr %652, align 4
  %653 = shl i32 %648, 4
  %654 = getelementptr i8, ptr %641, i32 %653
  store ptr %654, ptr %651, align 4
  %655 = getelementptr inbounds %struct.usb_os_desc, ptr %651, i32 0, i32 1
  store volatile ptr %655, ptr %655, align 4
  %656 = getelementptr inbounds %struct.list_head, ptr %655, i32 0, i32 1
  store ptr %655, ptr %656, align 4
  %657 = add nuw nsw i32 %648, 1
  %658 = load i16, ptr %220, align 2
  %659 = zext i16 %658 to i32
  %660 = icmp ult i32 %657, %659
  br i1 %660, label %647, label %661

661:                                              ; preds = %647, %639, %636
  %662 = getelementptr inbounds %struct.ffs_data, ptr %120, i32 0, i32 21
  %663 = load i32, ptr %662, align 4
  %664 = add i32 %384, %447
  %665 = add i32 %664, %513
  %666 = sub i32 %286, %665
  %667 = icmp eq i32 %663, 0
  br i1 %667, label %801, label %668

668:                                              ; preds = %661
  %669 = getelementptr i8, ptr %308, i32 %384
  %670 = getelementptr i8, ptr %669, i32 %447
  %671 = getelementptr i8, ptr %670, i32 %513
  br label %672

672:                                              ; preds = %797, %668
  %673 = phi ptr [ %798, %797 ], [ %671, %668 ]
  %674 = phi i32 [ %799, %797 ], [ 0, %668 ]
  %675 = phi i32 [ %794, %797 ], [ %666, %668 ]
  %676 = icmp ult i32 %675, 11
  br i1 %676, label %859, label %677

677:                                              ; preds = %672
  %678 = getelementptr inbounds %struct.usb_os_desc_header, ptr %673, i32 0, i32 1
  %679 = load i32, ptr %678, align 1
  %680 = icmp ugt i32 %679, %675
  br i1 %680, label %859, label %681

681:                                              ; preds = %677
  %682 = getelementptr inbounds %struct.usb_os_desc_header, ptr %673, i32 0, i32 2
  %683 = load i16, ptr %682, align 1
  %684 = icmp eq i16 %683, 1
  br i1 %684, label %685, label %859

685:                                              ; preds = %681
  %686 = getelementptr inbounds %struct.usb_os_desc_header, ptr %673, i32 0, i32 3
  %687 = load i16, ptr %686, align 1
  switch i16 %687, label %859 [
    i16 4, label %691
    i16 5, label %688
  ]

688:                                              ; preds = %685
  %689 = getelementptr inbounds %struct.usb_os_desc_header, ptr %673, i32 0, i32 4
  %690 = load i16, ptr %689, align 1
  br label %695

691:                                              ; preds = %685
  %692 = getelementptr inbounds %struct.usb_os_desc_header, ptr %673, i32 0, i32 4
  %693 = load i16, ptr %692, align 1
  %694 = icmp ugt i16 %693, 255
  br i1 %694, label %859, label %695

695:                                              ; preds = %691, %688
  %696 = phi i16 [ %690, %688 ], [ %693, %691 ]
  %697 = phi i32 [ 2, %688 ], [ 1, %691 ]
  %698 = add i32 %675, -11
  %699 = getelementptr i8, ptr %673, i32 11
  %700 = icmp eq i16 %696, 0
  br i1 %700, label %793, label %701

701:                                              ; preds = %787, %695
  %702 = phi i16 [ %789, %787 ], [ %696, %695 ]
  %703 = phi ptr [ %790, %787 ], [ %699, %695 ]
  %704 = phi i32 [ %791, %787 ], [ %698, %695 ]
  switch i32 %697, label %787 [
    i32 1, label %705
    i32 2, label %718
  ]

705:                                              ; preds = %701
  %706 = load ptr, ptr %630, align 4
  %707 = load i8, ptr %703, align 1
  %708 = zext i8 %707 to i32
  %709 = getelementptr %struct.usb_os_desc_table, ptr %706, i32 %708
  %710 = load ptr, ptr %323, align 4
  %711 = getelementptr i16, ptr %710, i32 %708
  %712 = load i16, ptr %711, align 2
  %713 = sext i16 %712 to i32
  store i32 %713, ptr %709, align 4
  %714 = getelementptr %struct.usb_os_desc_table, ptr %706, i32 %708, i32 1
  %715 = load ptr, ptr %714, align 4
  %716 = load ptr, ptr %715, align 4
  %717 = getelementptr inbounds %struct.usb_ext_compat_desc, ptr %703, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %716, ptr noundef align 1 dereferenceable(16) %717, i32 16, i1 false) #15
  br label %787

718:                                              ; preds = %701
  %719 = load ptr, ptr %630, align 4
  %720 = load i8, ptr %673, align 1
  %721 = zext i8 %720 to i32
  %722 = getelementptr %struct.usb_os_desc_table, ptr %719, i32 %721
  %723 = load ptr, ptr %323, align 4
  %724 = getelementptr i16, ptr %723, i32 %721
  %725 = load i16, ptr %724, align 2
  %726 = sext i16 %725 to i32
  store i32 %726, ptr %722, align 4
  %727 = load ptr, ptr %29, align 4
  %728 = getelementptr inbounds %struct.ffs_data, ptr %727, i32 0, i32 25
  %729 = load ptr, ptr %728, align 4
  %730 = getelementptr i8, ptr %729, i32 80
  store ptr %730, ptr %728, align 4
  %731 = getelementptr inbounds %struct.usb_ext_prop_desc, ptr %703, i32 0, i32 1
  %732 = load i32, ptr %731, align 1
  %733 = trunc i32 %732 to i8
  %734 = getelementptr inbounds %struct.usb_os_desc_ext_prop, ptr %729, i32 0, i32 1
  store i8 %733, ptr %734, align 4
  %735 = getelementptr inbounds %struct.usb_ext_prop_desc, ptr %703, i32 0, i32 2
  %736 = load i16, ptr %735, align 1
  %737 = zext i16 %736 to i32
  %738 = getelementptr inbounds %struct.usb_os_desc_ext_prop, ptr %729, i32 0, i32 2
  store i32 %737, ptr %738, align 4
  %739 = add nuw nsw i32 %737, 10
  %740 = getelementptr i8, ptr %703, i32 %739
  %741 = load i32, ptr %740, align 4
  %742 = getelementptr inbounds %struct.usb_os_desc_ext_prop, ptr %729, i32 0, i32 4
  store i32 %741, ptr %742, align 4
  %743 = add nuw nsw i32 %737, 14
  %744 = add i32 %743, %741
  %745 = load ptr, ptr %29, align 4
  %746 = getelementptr inbounds %struct.ffs_data, ptr %745, i32 0, i32 26
  %747 = load ptr, ptr %746, align 4
  %748 = getelementptr i8, ptr %747, i32 %737
  store ptr %748, ptr %746, align 4
  %749 = load ptr, ptr %29, align 4
  %750 = getelementptr inbounds %struct.ffs_data, ptr %749, i32 0, i32 27
  %751 = load ptr, ptr %750, align 4
  %752 = load i32, ptr %742, align 4
  %753 = getelementptr i8, ptr %751, i32 %752
  store ptr %753, ptr %750, align 4
  %754 = load i32, ptr %738, align 4
  %755 = add i32 %754, 14
  %756 = getelementptr i8, ptr %703, i32 %755
  %757 = load i32, ptr %742, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %751, ptr align 1 %756, i32 %757, i1 false) #15
  %758 = load i8, ptr %734, align 4
  switch i8 %758, label %762 [
    i8 1, label %759
    i8 2, label %759
    i8 6, label %759
    i8 7, label %759
  ]

759:                                              ; preds = %718, %718, %718, %718
  %760 = load i32, ptr %742, align 4
  %761 = shl i32 %760, 1
  store i32 %761, ptr %742, align 4
  br label %762

762:                                              ; preds = %759, %718
  %763 = getelementptr inbounds %struct.usb_os_desc_ext_prop, ptr %729, i32 0, i32 5
  store ptr %751, ptr %763, align 4
  %764 = getelementptr i8, ptr %703, i32 10
  %765 = load i32, ptr %738, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %747, ptr align 1 %764, i32 %765, i1 false) #15
  %766 = load i32, ptr %738, align 4
  %767 = shl i32 %766, 1
  store i32 %767, ptr %738, align 4
  %768 = getelementptr inbounds %struct.usb_os_desc_ext_prop, ptr %729, i32 0, i32 3
  store ptr %747, ptr %768, align 4
  %769 = load i32, ptr %742, align 4
  %770 = getelementptr %struct.usb_os_desc_table, ptr %719, i32 %721, i32 1
  %771 = load ptr, ptr %770, align 4
  %772 = getelementptr inbounds %struct.usb_os_desc, ptr %771, i32 0, i32 2
  %773 = load i32, ptr %772, align 4
  %774 = add i32 %767, 14
  %775 = add i32 %774, %769
  %776 = add i32 %775, %773
  store i32 %776, ptr %772, align 4
  %777 = load ptr, ptr %770, align 4
  %778 = getelementptr inbounds %struct.usb_os_desc, ptr %777, i32 0, i32 3
  %779 = load i32, ptr %778, align 4
  %780 = add i32 %779, 1
  store i32 %780, ptr %778, align 4
  %781 = load ptr, ptr %770, align 4
  %782 = getelementptr inbounds %struct.usb_os_desc, ptr %781, i32 0, i32 1
  %783 = getelementptr inbounds %struct.usb_os_desc, ptr %781, i32 0, i32 1, i32 1
  %784 = load ptr, ptr %783, align 4
  store ptr %729, ptr %783, align 4
  store ptr %782, ptr %729, align 4
  %785 = getelementptr inbounds %struct.list_head, ptr %729, i32 0, i32 1
  store ptr %784, ptr %785, align 4
  store volatile ptr %729, ptr %784, align 4
  %786 = and i32 %744, 255
  br label %787

787:                                              ; preds = %762, %705, %701
  %788 = phi i32 [ 0, %701 ], [ %786, %762 ], [ 24, %705 ]
  %789 = add i16 %702, -1
  %790 = getelementptr i8, ptr %703, i32 %788
  %791 = sub i32 %704, %788
  %792 = icmp eq i16 %789, 0
  br i1 %792, label %793, label %701

793:                                              ; preds = %787, %695
  %794 = phi i32 [ %698, %695 ], [ %791, %787 ]
  %795 = sub i32 %698, %794
  %796 = icmp slt i32 %795, 0
  br i1 %796, label %859, label %797

797:                                              ; preds = %793
  %798 = getelementptr i8, ptr %699, i32 %795
  %799 = add nuw i32 %674, 1
  %800 = icmp eq i32 %799, %663
  br i1 %800, label %801, label %672

801:                                              ; preds = %797, %661
  %802 = phi i32 [ %666, %661 ], [ %794, %797 ]
  %803 = sub i32 %666, %802
  %804 = icmp slt i32 %803, 0
  br i1 %804, label %859, label %805

805:                                              ; preds = %801
  %806 = load ptr, ptr %30, align 4
  %807 = getelementptr inbounds %struct.usb_composite_dev, ptr %806, i32 0, i32 8
  %808 = load i8, ptr %807, align 4
  %809 = and i8 %808, 1
  %810 = icmp eq i8 %809, 0
  br i1 %810, label %814, label %811

811:                                              ; preds = %805
  %812 = load i16, ptr %220, align 2
  %813 = zext i16 %812 to i32
  br label %814

814:                                              ; preds = %811, %805, %628
  %815 = phi i32 [ %813, %811 ], [ 0, %805 ], [ 0, %628 ]
  %816 = getelementptr i8, ptr %1, i32 32
  store i32 %815, ptr %816, align 4
  %817 = getelementptr inbounds %struct.ffs_data, ptr %120, i32 0, i32 9, i32 4
  %818 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %817) #15
  %819 = getelementptr inbounds %struct.ffs_data, ptr %120, i32 0, i32 8
  %820 = load i32, ptr %819, align 4
  %821 = icmp eq i32 %820, 1
  br i1 %821, label %822, label %823

822:                                              ; preds = %814
  store i32 2, ptr %819, align 4
  br label %823

823:                                              ; preds = %822, %814
  %824 = getelementptr inbounds %struct.ffs_data, ptr %120, i32 0, i32 9
  %825 = getelementptr inbounds %struct.ffs_data, ptr %120, i32 0, i32 9, i32 1
  %826 = load i16, ptr %825, align 4
  %827 = icmp eq i16 %826, 0
  br i1 %827, label %844, label %828

828:                                              ; preds = %823
  %829 = zext i16 %826 to i32
  br label %830

830:                                              ; preds = %839, %828
  %831 = phi i32 [ %841, %839 ], [ %829, %828 ]
  %832 = phi ptr [ %840, %839 ], [ %824, %828 ]
  %833 = phi ptr [ %842, %839 ], [ %824, %828 ]
  %834 = load i8, ptr %833, align 1
  %835 = add i8 %834, -5
  %836 = icmp ult i8 %835, 2
  br i1 %836, label %837, label %839

837:                                              ; preds = %830
  %838 = getelementptr i8, ptr %832, i32 1
  store i8 %834, ptr %832, align 1
  br label %839

839:                                              ; preds = %837, %830
  %840 = phi ptr [ %838, %837 ], [ %832, %830 ]
  %841 = add nsw i32 %831, -1
  %842 = getelementptr i8, ptr %833, i32 1
  %843 = icmp eq i32 %841, 0
  br i1 %843, label %844, label %830

844:                                              ; preds = %839, %823
  %845 = phi ptr [ %824, %823 ], [ %840, %839 ]
  %846 = ptrtoint ptr %845 to i32
  %847 = ptrtoint ptr %824 to i32
  %848 = sub i32 %846, %847
  %849 = trunc i32 %848 to i16
  %850 = add i16 %849, 1
  store i16 %850, ptr %825, align 4
  %851 = and i32 %848, 65535
  %852 = getelementptr [4 x i8], ptr %824, i32 0, i32 %851
  store i8 0, ptr %852, align 1
  tail call void @__wake_up_locked(ptr noundef %817, i32 noundef 3, i32 noundef 1) #15
  %853 = getelementptr inbounds %struct.ffs_data, ptr %120, i32 0, i32 38
  %854 = load ptr, ptr %853, align 4
  %855 = icmp eq ptr %854, null
  br i1 %855, label %858, label %856

856:                                              ; preds = %844
  %857 = tail call i64 @eventfd_signal(ptr noundef nonnull %854, i64 noundef 1) #15
  br label %858

858:                                              ; preds = %856, %844
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %817, i32 noundef %818) #15
  br label %876

859:                                              ; preds = %801, %793, %691, %685, %681, %677, %672, %624, %614, %597, %595, %593, %591, %590, %585, %584, %552, %541, %538, %534, %528, %509, %499, %497, %495, %493, %491, %489, %488, %483, %482, %476, %473, %469, %467, %448, %443, %433, %431, %429, %427, %425, %423, %422, %417, %416, %410, %407, %403, %401, %385, %380, %370, %368, %366, %364, %362, %360, %359, %354, %353, %347, %344, %340, %338, %324, %297, %285
  %860 = phi i32 [ %459, %448 ], [ %393, %385 ], [ %330, %324 ], [ %510, %509 ], [ %444, %443 ], [ %381, %380 ], [ %803, %801 ], [ %626, %624 ], [ -12, %297 ], [ -524, %285 ], [ -22, %685 ], [ -22, %681 ], [ -22, %672 ], [ -22, %677 ], [ -22, %691 ], [ %795, %793 ], [ %554, %552 ], [ -22, %528 ], [ -22, %534 ], [ -22, %590 ], [ -22, %538 ], [ -22, %597 ], [ -22, %584 ], [ -22, %541 ], [ -22, %591 ], [ -22, %593 ], [ -22, %595 ], [ -22, %614 ], [ -22, %585 ], [ %507, %499 ], [ -22, %467 ], [ -22, %469 ], [ -22, %488 ], [ -22, %473 ], [ -22, %495 ], [ -22, %482 ], [ -22, %476 ], [ -22, %489 ], [ -22, %491 ], [ -22, %493 ], [ -22, %497 ], [ -22, %483 ], [ %441, %433 ], [ -22, %401 ], [ -22, %403 ], [ -22, %422 ], [ -22, %407 ], [ -22, %429 ], [ -22, %416 ], [ -22, %410 ], [ -22, %423 ], [ -22, %425 ], [ -22, %427 ], [ -22, %431 ], [ -22, %417 ], [ %378, %370 ], [ -22, %338 ], [ -22, %340 ], [ -22, %359 ], [ -22, %344 ], [ -22, %366 ], [ -22, %353 ], [ -22, %347 ], [ -22, %360 ], [ -22, %362 ], [ -22, %364 ], [ -22, %368 ], [ -22, %354 ]
  %861 = getelementptr inbounds %struct.f_fs_opts, ptr %114, i32 0, i32 2
  %862 = load i32, ptr %861, align 4
  %863 = add i32 %862, -1
  store i32 %863, ptr %861, align 4
  %864 = icmp eq i32 %863, 0
  br i1 %864, label %865, label %876

865:                                              ; preds = %859
  %866 = load ptr, ptr %29, align 4
  %867 = load ptr, ptr %866, align 4
  %868 = icmp eq ptr %867, null
  br i1 %868, label %869, label %870, !prof !17

869:                                              ; preds = %865
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 1884, i32 noundef 9, ptr noundef null) #15
  br label %876

870:                                              ; preds = %865
  %871 = getelementptr inbounds %struct.usb_gadget, ptr %867, i32 0, i32 3
  %872 = load ptr, ptr %871, align 8
  %873 = getelementptr inbounds %struct.ffs_data, ptr %866, i32 0, i32 3
  %874 = load ptr, ptr %873, align 4
  tail call void @usb_ep_free_request(ptr noundef %872, ptr noundef %874) #15
  store ptr null, ptr %873, align 4
  store ptr null, ptr %866, align 4
  %875 = getelementptr inbounds %struct.ffs_data, ptr %866, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %875) #15
  tail call fastcc void @ffs_data_put(ptr noundef %866) #15
  br label %876

876:                                              ; preds = %870, %869, %859, %858, %116
  %877 = phi i32 [ %118, %116 ], [ %860, %859 ], [ 0, %858 ], [ %860, %869 ], [ %860, %870 ]
  ret i32 %877
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ffs_func_unbind(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 -36
  %4 = getelementptr i8, ptr %1, i32 -28
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 24
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %1, i32 -24
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ffs_data, ptr %5, i32 0, i32 32
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.ffs_data, ptr %5, i32 0, i32 12
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %3
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  tail call fastcc void @ffs_func_eps_disable(ptr noundef %3)
  store ptr null, ptr %13, align 4
  br label %17

17:                                               ; preds = %16, %2
  %18 = getelementptr inbounds %struct.ffs_data, ptr %5, i32 0, i32 39
  %19 = load ptr, ptr %18, align 4
  tail call void @drain_workqueue(ptr noundef %19) #15
  %20 = getelementptr inbounds %struct.f_fs_opts, ptr %7, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, -1
  store i32 %22, ptr %20, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %17
  %25 = load ptr, ptr %5, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28, !prof !17

27:                                               ; preds = %24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 1884, i32 noundef 9, ptr noundef null) #15
  br label %34

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.usb_gadget, ptr %25, i32 0, i32 3
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.ffs_data, ptr %5, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  tail call void @usb_ep_free_request(ptr noundef %30, ptr noundef %32) #15
  store ptr null, ptr %31, align 4
  store ptr null, ptr %5, align 4
  %33 = getelementptr inbounds %struct.ffs_data, ptr %5, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %33) #15
  tail call fastcc void @ffs_data_put(ptr noundef %5) #15
  br label %34

34:                                               ; preds = %28, %27, %17
  %35 = load ptr, ptr %4, align 4
  %36 = getelementptr inbounds %struct.ffs_data, ptr %35, i32 0, i32 2
  %37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %36) #15
  %38 = icmp eq i16 %11, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %50, %34
  %40 = phi i32 [ %42, %50 ], [ %12, %34 ]
  %41 = phi ptr [ %52, %50 ], [ %9, %34 ]
  %42 = add nsw i32 %40, -1
  %43 = load ptr, ptr %41, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.ffs_ep, ptr %41, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void @usb_ep_free_request(ptr noundef nonnull %43, ptr noundef nonnull %47) #15
  br label %50

50:                                               ; preds = %49, %45, %39
  %51 = getelementptr inbounds %struct.ffs_ep, ptr %41, i32 0, i32 1
  store ptr null, ptr %51, align 4
  %52 = getelementptr %struct.ffs_ep, ptr %41, i32 1
  %53 = icmp eq i32 %42, 0
  br i1 %53, label %54, label %39

54:                                               ; preds = %50, %34
  %55 = load ptr, ptr %4, align 4
  %56 = getelementptr inbounds %struct.ffs_data, ptr %55, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %56, i32 noundef %37) #15
  %57 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %57) #15
  store ptr null, ptr %8, align 4
  %58 = getelementptr i8, ptr %1, i32 8
  %59 = getelementptr i8, ptr %1, i32 -4
  store ptr null, ptr %59, align 4
  %60 = getelementptr inbounds %struct.ffs_data, ptr %5, i32 0, i32 9, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %58, i8 0, i64 16, i1 false)
  %61 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %60) #15
  %62 = getelementptr inbounds %struct.ffs_data, ptr %5, i32 0, i32 8
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  store i32 2, ptr %62, align 4
  br label %66

66:                                               ; preds = %65, %54
  %67 = getelementptr inbounds %struct.ffs_data, ptr %5, i32 0, i32 9
  %68 = getelementptr inbounds %struct.ffs_data, ptr %5, i32 0, i32 9, i32 1
  %69 = load i16, ptr %68, align 4
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %87, label %71

71:                                               ; preds = %66
  %72 = zext i16 %69 to i32
  br label %73

73:                                               ; preds = %82, %71
  %74 = phi i32 [ %84, %82 ], [ %72, %71 ]
  %75 = phi ptr [ %83, %82 ], [ %67, %71 ]
  %76 = phi ptr [ %85, %82 ], [ %67, %71 ]
  %77 = load i8, ptr %76, align 1
  %78 = add i8 %77, -5
  %79 = icmp ult i8 %78, 2
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = getelementptr i8, ptr %75, i32 1
  store i8 %77, ptr %75, align 1
  br label %82

82:                                               ; preds = %80, %73
  %83 = phi ptr [ %81, %80 ], [ %75, %73 ]
  %84 = add nsw i32 %74, -1
  %85 = getelementptr i8, ptr %76, i32 1
  %86 = icmp eq i32 %84, 0
  br i1 %86, label %87, label %73

87:                                               ; preds = %82, %66
  %88 = phi ptr [ %67, %66 ], [ %83, %82 ]
  %89 = ptrtoint ptr %88 to i32
  %90 = ptrtoint ptr %67 to i32
  %91 = sub i32 %89, %90
  %92 = trunc i32 %91 to i16
  %93 = add i16 %92, 1
  store i16 %93, ptr %68, align 4
  %94 = and i32 %91, 65535
  %95 = getelementptr [4 x i8], ptr %67, i32 0, i32 %94
  store i8 1, ptr %95, align 1
  tail call void @__wake_up_locked(ptr noundef %60, i32 noundef 3, i32 noundef 1) #15
  %96 = getelementptr inbounds %struct.ffs_data, ptr %5, i32 0, i32 38
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %87
  %100 = tail call i64 @eventfd_signal(ptr noundef nonnull %97, i64 noundef 1) #15
  br label %101

101:                                              ; preds = %99, %87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %60, i32 noundef %61) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ffs_func_set_alt(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -36
  %5 = getelementptr i8, ptr %0, i32 -28
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq i32 %2, -1
  br i1 %7, label %35, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ffs_data, ptr %6, i32 0, i32 31
  %12 = load i16, ptr %11, align 2
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %196, label %14

14:                                               ; preds = %8
  %15 = zext i16 %12 to i32
  %16 = and i32 %1, 255
  br label %17

17:                                               ; preds = %25, %14
  %18 = phi i32 [ %15, %14 ], [ %26, %25 ]
  %19 = phi ptr [ %10, %14 ], [ %27, %25 ]
  %20 = load i16, ptr %19, align 2
  %21 = icmp sgt i16 %20, -1
  %22 = sext i16 %20 to i32
  %23 = icmp eq i32 %16, %22
  %24 = and i1 %21, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %17
  %26 = add nsw i32 %18, -1
  %27 = getelementptr i16, ptr %19, i32 1
  %28 = icmp eq i32 %26, 0
  br i1 %28, label %196, label %17

29:                                               ; preds = %17
  %30 = ptrtoint ptr %19 to i32
  %31 = ptrtoint ptr %10 to i32
  %32 = sub i32 %30, %31
  %33 = ashr exact i32 %32, 1
  %34 = icmp slt i32 %32, 0
  br i1 %34, label %196, label %35

35:                                               ; preds = %29, %3
  %36 = getelementptr inbounds %struct.ffs_data, ptr %6, i32 0, i32 12
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call fastcc void @ffs_func_eps_disable(ptr noundef nonnull %37)
  br label %40

40:                                               ; preds = %39, %35
  %41 = getelementptr inbounds %struct.ffs_data, ptr %6, i32 0, i32 7
  %42 = load i32, ptr %41, align 4
  switch i32 %42, label %196 [
    i32 3, label %43
    i32 2, label %50
  ]

43:                                               ; preds = %40
  store i32 4, ptr %41, align 4
  %44 = getelementptr inbounds %struct.ffs_data, ptr %6, i32 0, i32 41
  store i32 -32, ptr %44, align 4
  %45 = getelementptr inbounds %struct.ffs_data, ptr %6, i32 0, i32 41, i32 1
  store volatile ptr %45, ptr %45, align 4
  %46 = getelementptr inbounds %struct.ffs_data, ptr %6, i32 0, i32 41, i32 1, i32 1
  store ptr %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.ffs_data, ptr %6, i32 0, i32 41, i32 2
  store ptr @ffs_reset_work, ptr %47, align 4
  %48 = load ptr, ptr @system_wq, align 4
  %49 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %48, ptr noundef %44) #15
  br label %196

50:                                               ; preds = %40
  br i1 %7, label %51, label %94

51:                                               ; preds = %50
  store ptr null, ptr %36, align 4
  %52 = getelementptr inbounds %struct.ffs_data, ptr %6, i32 0, i32 9, i32 4
  %53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %52) #15
  %54 = getelementptr inbounds %struct.ffs_data, ptr %6, i32 0, i32 8
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 2, ptr %54, align 4
  br label %58

58:                                               ; preds = %57, %51
  %59 = getelementptr inbounds %struct.ffs_data, ptr %6, i32 0, i32 9
  %60 = getelementptr inbounds %struct.ffs_data, ptr %6, i32 0, i32 9, i32 1
  %61 = load i16, ptr %60, align 4
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %79, label %63

63:                                               ; preds = %58
  %64 = zext i16 %61 to i32
  br label %65

65:                                               ; preds = %74, %63
  %66 = phi i32 [ %76, %74 ], [ %64, %63 ]
  %67 = phi ptr [ %75, %74 ], [ %59, %63 ]
  %68 = phi ptr [ %77, %74 ], [ %59, %63 ]
  %69 = load i8, ptr %68, align 1
  %70 = add i8 %69, -5
  %71 = icmp ult i8 %70, 2
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = getelementptr i8, ptr %67, i32 1
  store i8 %69, ptr %67, align 1
  br label %74

74:                                               ; preds = %72, %65
  %75 = phi ptr [ %73, %72 ], [ %67, %65 ]
  %76 = add nsw i32 %66, -1
  %77 = getelementptr i8, ptr %68, i32 1
  %78 = icmp eq i32 %76, 0
  br i1 %78, label %79, label %65

79:                                               ; preds = %74, %58
  %80 = phi ptr [ %59, %58 ], [ %75, %74 ]
  %81 = ptrtoint ptr %80 to i32
  %82 = ptrtoint ptr %59 to i32
  %83 = sub i32 %81, %82
  %84 = trunc i32 %83 to i16
  %85 = add i16 %84, 1
  store i16 %85, ptr %60, align 4
  %86 = and i32 %83, 65535
  %87 = getelementptr [4 x i8], ptr %59, i32 0, i32 %86
  store i8 3, ptr %87, align 1
  tail call void @__wake_up_locked(ptr noundef %52, i32 noundef 3, i32 noundef 1) #15
  %88 = getelementptr inbounds %struct.ffs_data, ptr %6, i32 0, i32 38
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %79
  %92 = tail call i64 @eventfd_signal(ptr noundef nonnull %89, i64 noundef 1) #15
  br label %93

93:                                               ; preds = %91, %79
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %52, i32 noundef %53) #15
  br label %196

94:                                               ; preds = %50
  store ptr %4, ptr %36, align 4
  %95 = load ptr, ptr %5, align 4
  %96 = getelementptr inbounds %struct.ffs_data, ptr %95, i32 0, i32 2
  %97 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %96) #15
  %98 = load ptr, ptr %5, align 4
  %99 = getelementptr inbounds %struct.ffs_data, ptr %98, i32 0, i32 32
  %100 = load i16, ptr %99, align 4
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %147, label %102

102:                                              ; preds = %94
  %103 = getelementptr inbounds %struct.ffs_data, ptr %98, i32 0, i32 42
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr i8, ptr %0, i32 -24
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr i8, ptr %0, i32 -32
  br label %108

108:                                              ; preds = %126, %102
  %109 = phi i16 [ %100, %102 ], [ %112, %126 ]
  %110 = phi ptr [ %106, %102 ], [ %144, %126 ]
  %111 = phi ptr [ %104, %102 ], [ %145, %126 ]
  %112 = add i16 %109, -1
  %113 = load ptr, ptr %110, align 4
  store ptr %110, ptr %113, align 4
  %114 = load ptr, ptr %107, align 4
  %115 = load ptr, ptr %110, align 4
  %116 = tail call i32 @config_ep_by_speed(ptr noundef %114, ptr noundef %0, ptr noundef %115) #15
  %117 = icmp eq i32 %116, 0
  %118 = load ptr, ptr %110, align 4
  br i1 %117, label %123, label %119

119:                                              ; preds = %108
  %120 = getelementptr inbounds %struct.usb_ep, ptr %118, i32 0, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.ffs_func_eps_enable, ptr noundef %121, i32 noundef %116) #17
  br label %147

123:                                              ; preds = %108
  %124 = tail call i32 @usb_ep_enable(ptr noundef %118) #15
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %147

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.ffs_epfile, ptr %111, i32 0, i32 2
  store ptr %110, ptr %127, align 4
  %128 = load ptr, ptr %110, align 4
  %129 = getelementptr inbounds %struct.usb_ep, ptr %128, i32 0, i32 9
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %130, i32 0, i32 2
  %132 = load i8, ptr %131, align 1
  %133 = lshr i8 %132, 7
  %134 = getelementptr inbounds %struct.ffs_epfile, ptr %111, i32 0, i32 6
  store i8 %133, ptr %134, align 1
  %135 = load ptr, ptr %110, align 4
  %136 = getelementptr inbounds %struct.usb_ep, ptr %135, i32 0, i32 9
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %137, i32 0, i32 3
  %139 = load i8, ptr %138, align 1
  %140 = and i8 %139, 3
  %141 = icmp eq i8 %140, 1
  %142 = zext i1 %141 to i8
  %143 = getelementptr inbounds %struct.ffs_epfile, ptr %111, i32 0, i32 7
  store i8 %142, ptr %143, align 2
  %144 = getelementptr %struct.ffs_ep, ptr %110, i32 1
  %145 = getelementptr %struct.ffs_epfile, ptr %111, i32 1
  %146 = icmp eq i16 %112, 0
  br i1 %146, label %147, label %108

147:                                              ; preds = %126, %123, %119, %94
  %148 = phi i32 [ %116, %119 ], [ 0, %94 ], [ %124, %123 ], [ 0, %126 ]
  %149 = getelementptr inbounds %struct.ffs_data, ptr %98, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %149, i32 noundef 1, i32 noundef 1, ptr noundef null) #15
  %150 = load ptr, ptr %5, align 4
  %151 = getelementptr inbounds %struct.ffs_data, ptr %150, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %151, i32 noundef %97) #15
  %152 = icmp sgt i32 %148, -1
  br i1 %152, label %153, label %196

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.ffs_data, ptr %6, i32 0, i32 9, i32 4
  %155 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %154) #15
  %156 = getelementptr inbounds %struct.ffs_data, ptr %6, i32 0, i32 8
  %157 = load i32, ptr %156, align 4
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  store i32 2, ptr %156, align 4
  br label %160

160:                                              ; preds = %159, %153
  %161 = getelementptr inbounds %struct.ffs_data, ptr %6, i32 0, i32 9
  %162 = getelementptr inbounds %struct.ffs_data, ptr %6, i32 0, i32 9, i32 1
  %163 = load i16, ptr %162, align 4
  %164 = icmp eq i16 %163, 0
  br i1 %164, label %181, label %165

165:                                              ; preds = %160
  %166 = zext i16 %163 to i32
  br label %167

167:                                              ; preds = %176, %165
  %168 = phi i32 [ %178, %176 ], [ %166, %165 ]
  %169 = phi ptr [ %177, %176 ], [ %161, %165 ]
  %170 = phi ptr [ %179, %176 ], [ %161, %165 ]
  %171 = load i8, ptr %170, align 1
  %172 = add i8 %171, -5
  %173 = icmp ult i8 %172, 2
  br i1 %173, label %174, label %176

174:                                              ; preds = %167
  %175 = getelementptr i8, ptr %169, i32 1
  store i8 %171, ptr %169, align 1
  br label %176

176:                                              ; preds = %174, %167
  %177 = phi ptr [ %175, %174 ], [ %169, %167 ]
  %178 = add nsw i32 %168, -1
  %179 = getelementptr i8, ptr %170, i32 1
  %180 = icmp eq i32 %178, 0
  br i1 %180, label %181, label %167

181:                                              ; preds = %176, %160
  %182 = phi ptr [ %161, %160 ], [ %177, %176 ]
  %183 = ptrtoint ptr %182 to i32
  %184 = ptrtoint ptr %161 to i32
  %185 = sub i32 %183, %184
  %186 = trunc i32 %185 to i16
  %187 = add i16 %186, 1
  store i16 %187, ptr %162, align 4
  %188 = and i32 %185, 65535
  %189 = getelementptr [4 x i8], ptr %161, i32 0, i32 %188
  store i8 2, ptr %189, align 1
  tail call void @__wake_up_locked(ptr noundef %154, i32 noundef 3, i32 noundef 1) #15
  %190 = getelementptr inbounds %struct.ffs_data, ptr %6, i32 0, i32 38
  %191 = load ptr, ptr %190, align 4
  %192 = icmp eq ptr %191, null
  br i1 %192, label %195, label %193

193:                                              ; preds = %181
  %194 = tail call i64 @eventfd_signal(ptr noundef nonnull %191, i64 noundef 1) #15
  br label %195

195:                                              ; preds = %193, %181
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %154, i32 noundef %155) #15
  br label %196

196:                                              ; preds = %195, %147, %93, %43, %40, %29, %25, %8
  %197 = phi i32 [ -19, %43 ], [ 0, %93 ], [ %33, %29 ], [ -19, %40 ], [ %148, %195 ], [ %148, %147 ], [ -33, %8 ], [ -33, %25 ]
  ret i32 %197
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ffs_func_disable(ptr noundef %0) #0 {
  %2 = tail call i32 @ffs_func_set_alt(ptr noundef %0, i32 noundef 0, i32 noundef -1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ffs_func_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -36
  %4 = getelementptr i8, ptr %0, i32 -28
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ffs_data, ptr %5, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %120

9:                                                ; preds = %2
  %10 = load i8, ptr %1, align 1
  %11 = and i8 %10, 31
  %12 = zext i8 %11 to i32
  switch i32 %12, label %60 [
    i32 1, label %13
    i32 2, label %41
  ]

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %0, i32 -4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ffs_data, ptr %5, i32 0, i32 31
  %17 = load i16, ptr %16, align 2
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %120, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 3
  %21 = load i16, ptr %20, align 1
  %22 = zext i16 %17 to i32
  %23 = and i16 %21, 255
  br label %24

24:                                               ; preds = %31, %19
  %25 = phi i32 [ %22, %19 ], [ %32, %31 ]
  %26 = phi ptr [ %15, %19 ], [ %33, %31 ]
  %27 = load i16, ptr %26, align 2
  %28 = icmp sgt i16 %27, -1
  %29 = icmp eq i16 %27, %23
  %30 = and i1 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %24
  %32 = add nsw i32 %25, -1
  %33 = getelementptr i16, ptr %26, i32 1
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %120, label %24

35:                                               ; preds = %24
  %36 = ptrtoint ptr %26 to i32
  %37 = ptrtoint ptr %15 to i32
  %38 = sub i32 %36, %37
  %39 = ashr exact i32 %38, 1
  %40 = icmp slt i32 %38, 0
  br i1 %40, label %120, label %69

41:                                               ; preds = %9
  %42 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 3
  %43 = load i16, ptr %42, align 1
  %44 = and i16 %43, 15
  %45 = zext i16 %44 to i32
  %46 = getelementptr %struct.ffs_function, ptr %3, i32 0, i32 4, i32 %45
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i8 %47, 0
  %50 = select i1 %49, i32 -33, i32 %48
  br i1 %49, label %120, label %51

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.ffs_data, ptr %5, i32 0, i32 28
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 16
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %51
  %57 = getelementptr %struct.ffs_data, ptr %5, i32 0, i32 29, i32 %50
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  br label %69

60:                                               ; preds = %9
  %61 = getelementptr inbounds %struct.ffs_data, ptr %5, i32 0, i32 28
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, 64
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %120, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 3
  %67 = load i16, ptr %66, align 1
  %68 = zext i16 %67 to i32
  br label %69

69:                                               ; preds = %65, %56, %51, %35
  %70 = phi i32 [ %68, %65 ], [ %59, %56 ], [ %48, %51 ], [ %39, %35 ]
  %71 = getelementptr inbounds %struct.ffs_data, ptr %5, i32 0, i32 9, i32 4
  %72 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %71) #15
  %73 = getelementptr inbounds %struct.ffs_data, ptr %5, i32 0, i32 9, i32 3
  %74 = load i64, ptr %1, align 1
  store i64 %74, ptr %73, align 4
  %75 = trunc i32 %70 to i16
  %76 = getelementptr inbounds %struct.ffs_data, ptr %5, i32 0, i32 9, i32 3, i32 3
  store i16 %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.ffs_data, ptr %5, i32 0, i32 8
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  store i32 2, ptr %77, align 4
  br label %81

81:                                               ; preds = %80, %69
  %82 = getelementptr inbounds %struct.ffs_data, ptr %5, i32 0, i32 9
  %83 = getelementptr inbounds %struct.ffs_data, ptr %5, i32 0, i32 9, i32 1
  %84 = load i16, ptr %83, align 4
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %101, label %86

86:                                               ; preds = %81
  %87 = zext i16 %84 to i32
  br label %88

88:                                               ; preds = %96, %86
  %89 = phi i32 [ %98, %96 ], [ %87, %86 ]
  %90 = phi ptr [ %97, %96 ], [ %82, %86 ]
  %91 = phi ptr [ %99, %96 ], [ %82, %86 ]
  %92 = load i8, ptr %91, align 1
  %93 = icmp eq i8 %92, 4
  br i1 %93, label %96, label %94

94:                                               ; preds = %88
  %95 = getelementptr i8, ptr %90, i32 1
  store i8 %92, ptr %90, align 1
  br label %96

96:                                               ; preds = %94, %88
  %97 = phi ptr [ %95, %94 ], [ %90, %88 ]
  %98 = add nsw i32 %89, -1
  %99 = getelementptr i8, ptr %91, i32 1
  %100 = icmp eq i32 %98, 0
  br i1 %100, label %101, label %88

101:                                              ; preds = %96, %81
  %102 = phi ptr [ %82, %81 ], [ %97, %96 ]
  %103 = ptrtoint ptr %102 to i32
  %104 = ptrtoint ptr %82 to i32
  %105 = sub i32 %103, %104
  %106 = trunc i32 %105 to i16
  %107 = add i16 %106, 1
  store i16 %107, ptr %83, align 4
  %108 = and i32 %105, 65535
  %109 = getelementptr [4 x i8], ptr %82, i32 0, i32 %108
  store i8 4, ptr %109, align 1
  tail call void @__wake_up_locked(ptr noundef %71, i32 noundef 3, i32 noundef 1) #15
  %110 = getelementptr inbounds %struct.ffs_data, ptr %5, i32 0, i32 38
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %101
  %114 = tail call i64 @eventfd_signal(ptr noundef nonnull %111, i64 noundef 1) #15
  br label %115

115:                                              ; preds = %113, %101
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %71, i32 noundef %72) #15
  %116 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 4
  %117 = load i16, ptr %116, align 1
  %118 = icmp eq i16 %117, 0
  %119 = select i1 %118, i32 32767, i32 0
  br label %120

120:                                              ; preds = %115, %60, %41, %35, %31, %13, %2
  %121 = phi i32 [ %119, %115 ], [ -19, %2 ], [ %39, %35 ], [ -33, %41 ], [ -95, %60 ], [ -33, %13 ], [ -33, %31 ]
  ret i32 %121
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal zeroext i1 @ffs_func_req_match(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #14 {
  %4 = getelementptr i8, ptr %0, i32 -36
  br i1 %2, label %5, label %12

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 -28
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ffs_data, ptr %7, i32 0, i32 28
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 128
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %60, label %12

12:                                               ; preds = %5, %3
  %13 = load i8, ptr %1, align 1
  %14 = and i8 %13, 31
  %15 = zext i8 %14 to i32
  switch i32 %15, label %53 [
    i32 1, label %16
    i32 2, label %45
  ]

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %0, i32 -4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %0, i32 -28
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ffs_data, ptr %20, i32 0, i32 31
  %22 = load i16, ptr %21, align 2
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %60, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 3
  %26 = load i16, ptr %25, align 1
  %27 = zext i16 %22 to i32
  %28 = and i16 %26, 255
  br label %29

29:                                               ; preds = %41, %24
  %30 = phi i32 [ %27, %24 ], [ %42, %41 ]
  %31 = phi ptr [ %18, %24 ], [ %43, %41 ]
  %32 = load i16, ptr %31, align 2
  %33 = icmp sgt i16 %32, -1
  %34 = icmp eq i16 %32, %28
  %35 = and i1 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = ptrtoint ptr %31 to i32
  %38 = ptrtoint ptr %18 to i32
  %39 = sub i32 %37, %38
  %40 = icmp sgt i32 %39, -1
  br label %60

41:                                               ; preds = %29
  %42 = add nsw i32 %30, -1
  %43 = getelementptr i16, ptr %31, i32 1
  %44 = icmp eq i32 %42, 0
  br i1 %44, label %60, label %29

45:                                               ; preds = %12
  %46 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 3
  %47 = load i16, ptr %46, align 1
  %48 = and i16 %47, 15
  %49 = zext i16 %48 to i32
  %50 = getelementptr %struct.ffs_function, ptr %4, i32 0, i32 4, i32 %49
  %51 = load i8, ptr %50, align 1
  %52 = icmp ne i8 %51, 0
  br label %60

53:                                               ; preds = %12
  %54 = getelementptr i8, ptr %0, i32 -28
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.ffs_data, ptr %55, i32 0, i32 28
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, 64
  %59 = icmp ne i32 %58, 0
  br label %60

60:                                               ; preds = %53, %45, %41, %36, %16, %5
  %61 = phi i1 [ %59, %53 ], [ %52, %45 ], [ false, %5 ], [ %40, %36 ], [ false, %16 ], [ false, %41 ]
  ret i1 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ffs_func_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -28
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ffs_data, ptr %3, i32 0, i32 9, i32 4
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #15
  %6 = getelementptr inbounds %struct.ffs_data, ptr %3, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 2, ptr %6, align 4
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.ffs_data, ptr %3, i32 0, i32 9
  %12 = getelementptr inbounds %struct.ffs_data, ptr %3, i32 0, i32 9, i32 1
  %13 = load i16, ptr %12, align 4
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %10
  %16 = zext i16 %13 to i32
  br label %17

17:                                               ; preds = %25, %15
  %18 = phi i32 [ %27, %25 ], [ %16, %15 ]
  %19 = phi ptr [ %26, %25 ], [ %11, %15 ]
  %20 = phi ptr [ %28, %25 ], [ %11, %15 ]
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 5
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = getelementptr i8, ptr %19, i32 1
  store i8 %21, ptr %19, align 1
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi ptr [ %24, %23 ], [ %19, %17 ]
  %27 = add nsw i32 %18, -1
  %28 = getelementptr i8, ptr %20, i32 1
  %29 = icmp eq i32 %27, 0
  br i1 %29, label %30, label %17

30:                                               ; preds = %25, %10
  %31 = phi ptr [ %11, %10 ], [ %26, %25 ]
  %32 = ptrtoint ptr %31 to i32
  %33 = ptrtoint ptr %11 to i32
  %34 = sub i32 %32, %33
  %35 = trunc i32 %34 to i16
  %36 = add i16 %35, 1
  store i16 %36, ptr %12, align 4
  %37 = and i32 %34, 65535
  %38 = getelementptr [4 x i8], ptr %11, i32 0, i32 %37
  store i8 5, ptr %38, align 1
  tail call void @__wake_up_locked(ptr noundef %4, i32 noundef 3, i32 noundef 1) #15
  %39 = getelementptr inbounds %struct.ffs_data, ptr %3, i32 0, i32 38
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %30
  %43 = tail call i64 @eventfd_signal(ptr noundef nonnull %40, i64 noundef 1) #15
  br label %44

44:                                               ; preds = %42, %30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ffs_func_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -28
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ffs_data, ptr %3, i32 0, i32 9, i32 4
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #15
  %6 = getelementptr inbounds %struct.ffs_data, ptr %3, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 2, ptr %6, align 4
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.ffs_data, ptr %3, i32 0, i32 9
  %12 = getelementptr inbounds %struct.ffs_data, ptr %3, i32 0, i32 9, i32 1
  %13 = load i16, ptr %12, align 4
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %10
  %16 = zext i16 %13 to i32
  br label %17

17:                                               ; preds = %26, %15
  %18 = phi i32 [ %28, %26 ], [ %16, %15 ]
  %19 = phi ptr [ %27, %26 ], [ %11, %15 ]
  %20 = phi ptr [ %29, %26 ], [ %11, %15 ]
  %21 = load i8, ptr %20, align 1
  %22 = add i8 %21, -7
  %23 = icmp ult i8 %22, -2
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = getelementptr i8, ptr %19, i32 1
  store i8 %21, ptr %19, align 1
  br label %26

26:                                               ; preds = %24, %17
  %27 = phi ptr [ %25, %24 ], [ %19, %17 ]
  %28 = add nsw i32 %18, -1
  %29 = getelementptr i8, ptr %20, i32 1
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %31, label %17

31:                                               ; preds = %26, %10
  %32 = phi ptr [ %11, %10 ], [ %27, %26 ]
  %33 = ptrtoint ptr %32 to i32
  %34 = ptrtoint ptr %11 to i32
  %35 = sub i32 %33, %34
  %36 = trunc i32 %35 to i16
  %37 = add i16 %36, 1
  store i16 %37, ptr %12, align 4
  %38 = and i32 %35, 65535
  %39 = getelementptr [4 x i8], ptr %11, i32 0, i32 %38
  store i8 6, ptr %39, align 1
  tail call void @__wake_up_locked(ptr noundef %4, i32 noundef 3, i32 noundef 1) #15
  %40 = getelementptr inbounds %struct.ffs_data, ptr %3, i32 0, i32 38
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %31
  %44 = tail call i64 @eventfd_signal(ptr noundef nonnull %41, i64 noundef 1) #15
  br label %45

45:                                               ; preds = %43, %31
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ffs_free(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -36
  tail call void @kfree(ptr noundef %2) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string_ids_n(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ffs_ep0_complete(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ffs_data, ptr %4, i32 0, i32 4
  tail call void @complete(ptr noundef %5) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__ffs_func_bind_do_descs(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %6, label %96

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ffs_function, ptr %3, i32 0, i32 6, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ffs_function, ptr %3, i32 0, i32 6, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ffs_function, ptr %3, i32 0, i32 6, i32 2
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %10, %6
  %18 = phi ptr [ %16, %14 ], [ %8, %6 ], [ %12, %10 ]
  %19 = phi i32 [ 0, %14 ], [ 2, %6 ], [ 1, %10 ]
  %20 = ptrtoint ptr %1 to i32
  %21 = getelementptr ptr, ptr %18, i32 %20
  store ptr %2, ptr %21, align 4
  %22 = icmp eq ptr %2, null
  br i1 %22, label %96, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.usb_descriptor_header, ptr %2, i32 0, i32 1
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, 5
  br i1 %26, label %27, label %96

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ffs_function, ptr %3, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %2, i32 0, i32 2
  %31 = load i8, ptr %30, align 1
  br label %32

32:                                               ; preds = %37, %27
  %33 = phi i32 [ 1, %27 ], [ %38, %37 ]
  %34 = getelementptr %struct.ffs_data, ptr %29, i32 0, i32 29, i32 %33
  %35 = load i8, ptr %34, align 1
  %36 = icmp eq i8 %35, %31
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = add nuw nsw i32 %33, 1
  %39 = icmp eq i32 %38, 31
  br i1 %39, label %96, label %32

40:                                               ; preds = %32
  %41 = add nsw i32 %33, -1
  %42 = getelementptr inbounds %struct.ffs_function, ptr %3, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr %struct.ffs_ep, ptr %43, i32 %41
  %45 = getelementptr %struct.ffs_ep, ptr %43, i32 %41, i32 2
  %46 = getelementptr %struct.ffs_ep, ptr %43, i32 %41, i32 2, i32 %19
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %40
  %50 = getelementptr [3 x ptr], ptr @__ffs_func_bind_do_descs.speed_names, i32 0, i32 %19
  %51 = load ptr, ptr %50, align 4
  %52 = and i8 %31, 15
  %53 = zext i8 %52 to i32
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %51, i32 noundef %53) #17
  br label %96

55:                                               ; preds = %40
  store ptr %2, ptr %46, align 4
  %56 = load ptr, ptr %44, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %69, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %45, align 4
  %60 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %59, i32 0, i32 2
  %61 = load i8, ptr %60, align 1
  store i8 %61, ptr %30, align 1
  %62 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %2, i32 0, i32 4
  %63 = load i16, ptr %62, align 1
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %65, label %96

65:                                               ; preds = %58
  %66 = load ptr, ptr %45, align 4
  %67 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %66, i32 0, i32 4
  %68 = load i16, ptr %67, align 1
  store i16 %68, ptr %62, align 1
  br label %96

69:                                               ; preds = %55
  %70 = load i8, ptr %30, align 1
  %71 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %2, i32 0, i32 4
  %72 = load i16, ptr %71, align 1
  %73 = getelementptr inbounds %struct.ffs_function, ptr %3, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = tail call ptr @usb_ep_autoconfig(ptr noundef %74, ptr noundef nonnull %2) #15
  %76 = icmp eq ptr %75, null
  br i1 %76, label %96, label %77

77:                                               ; preds = %69
  %78 = load ptr, ptr %42, align 4
  %79 = getelementptr %struct.ffs_ep, ptr %78, i32 %41
  store ptr %79, ptr %75, align 4
  %80 = tail call ptr @usb_ep_alloc_request(ptr noundef nonnull %75, i32 noundef 3264) #15
  %81 = icmp eq ptr %80, null
  br i1 %81, label %96, label %82

82:                                               ; preds = %77
  store ptr %75, ptr %44, align 4
  %83 = getelementptr %struct.ffs_ep, ptr %43, i32 %41, i32 1
  store ptr %80, ptr %83, align 4
  %84 = trunc i32 %33 to i8
  %85 = load i8, ptr %30, align 1
  %86 = and i8 %85, 15
  %87 = zext i8 %86 to i32
  %88 = getelementptr %struct.ffs_function, ptr %3, i32 0, i32 4, i32 %87
  store i8 %84, ptr %88, align 1
  %89 = load ptr, ptr %28, align 4
  %90 = getelementptr inbounds %struct.ffs_data, ptr %89, i32 0, i32 28
  %91 = load i32, ptr %90, align 4
  %92 = and i32 %91, 16
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %82
  store i8 %70, ptr %30, align 1
  br label %95

95:                                               ; preds = %94, %82
  store i16 %72, ptr %71, align 1
  br label %96

96:                                               ; preds = %95, %77, %69, %65, %58, %49, %37, %23, %17, %4
  %97 = phi i32 [ -22, %49 ], [ 0, %4 ], [ 0, %23 ], [ 0, %17 ], [ 0, %95 ], [ 0, %65 ], [ 0, %58 ], [ -12, %77 ], [ -524, %69 ], [ -3, %37 ]
  ret i32 %97
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_autoconfig(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interface_id(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_locked(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ffs_func_eps_disable(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ffs_function, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ffs_data, ptr %3, i32 0, i32 2
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #15
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr inbounds %struct.ffs_data, ptr %6, i32 0, i32 32
  %8 = load i16, ptr %7, align 4
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %44, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ffs_function, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ffs_data, ptr %6, i32 0, i32 42
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %39, %10
  %16 = phi i16 [ %19, %39 ], [ %8, %10 ]
  %17 = phi ptr [ %25, %39 ], [ %12, %10 ]
  %18 = phi ptr [ %40, %39 ], [ %14, %10 ]
  %19 = add i16 %16, -1
  %20 = load ptr, ptr %17, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = tail call i32 @usb_ep_disable(ptr noundef nonnull %20) #15
  br label %24

24:                                               ; preds = %22, %15
  %25 = getelementptr %struct.ffs_ep, ptr %17, i32 1
  %26 = icmp eq ptr %18, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.ffs_epfile, ptr %18, i32 0, i32 2
  store ptr null, ptr %28, align 4
  %29 = getelementptr inbounds %struct.ffs_epfile, ptr %18, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !31
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #15, !srcloc !11
  %30 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 -108, ptr %29) #15, !srcloc !32
  %31 = extractvalue { i32, i32 } %30, 0
  %32 = inttoptr i32 %31 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !33
  %33 = icmp eq i32 %31, 0
  %34 = icmp eq ptr %32, inttoptr (i32 -108 to ptr)
  %35 = or i1 %33, %34
  br i1 %35, label %37, label %36

36:                                               ; preds = %27
  tail call void @kfree(ptr noundef nonnull %32) #15
  br label %37

37:                                               ; preds = %36, %27
  %38 = getelementptr %struct.ffs_epfile, ptr %18, i32 1
  br label %39

39:                                               ; preds = %37, %24
  %40 = phi ptr [ %38, %37 ], [ null, %24 ]
  %41 = icmp eq i16 %19, 0
  br i1 %41, label %42, label %15

42:                                               ; preds = %39
  %43 = load ptr, ptr %2, align 4
  br label %44

44:                                               ; preds = %42, %1
  %45 = phi ptr [ %43, %42 ], [ %6, %1 ]
  %46 = getelementptr inbounds %struct.ffs_data, ptr %45, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %46, i32 noundef %5) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drain_workqueue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ffs_reset_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -252
  tail call fastcc void @ffs_data_clear(ptr noundef %2) #15
  %3 = getelementptr i8, ptr %0, i32 -132
  %4 = getelementptr i8, ptr %0, i32 -36
  store ptr null, ptr %4, align 4
  %5 = getelementptr i8, ptr %0, i32 -32
  store ptr null, ptr %5, align 4
  %6 = getelementptr i8, ptr %0, i32 -44
  store i16 0, ptr %6, align 4
  %7 = getelementptr i8, ptr %0, i32 -42
  store i16 0, ptr %7, align 2
  %8 = getelementptr i8, ptr %0, i32 -40
  store i16 0, ptr %8, align 4
  %9 = getelementptr i8, ptr %0, i32 -184
  store i16 0, ptr %9, align 4
  %10 = getelementptr i8, ptr %0, i32 -196
  store i32 0, ptr %10, align 4
  %11 = getelementptr i8, ptr %0, i32 -192
  store i32 0, ptr %11, align 4
  %12 = getelementptr i8, ptr %0, i32 -160
  store i32 0, ptr %12, align 4
  %13 = getelementptr i8, ptr %0, i32 -104
  store i32 0, ptr %13, align 4
  %14 = getelementptr i8, ptr %0, i32 -100
  store i32 0, ptr %14, align 4
  %15 = getelementptr i8, ptr %0, i32 -96
  store i32 0, ptr %15, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %3, i8 0, i64 24, i1 false) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_ep_by_speed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_function_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind readnone }
attributes #20 = { nounwind readonly }

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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
!10 = !{i64 2148313333}
!11 = !{i64 646825, i64 2148148391, i64 2148148417, i64 2148148464, i64 2148148486, i64 2148148514, i64 2148148534}
!12 = !{i64 2148215468, i64 2148215500, i64 2148215529, i64 2148215563, i64 2148215594, i64 2148215617}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2149368569}
!15 = !{i64 2153722130, i64 2153722630, i64 2153722167, i64 2153722223, i64 2153722257, i64 2153722281, i64 2153722322, i64 2153722343, i64 2153722371, i64 2153722405}
!16 = !{i64 2153724936, i64 2153725436, i64 2153724973, i64 2153725029, i64 2153725063, i64 2153725087, i64 2153725128, i64 2153725149, i64 2153725177, i64 2153725211}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2153728561, i64 2153729061, i64 2153728598, i64 2153728654, i64 2153728688, i64 2153728712, i64 2153728753, i64 2153728774, i64 2153728802, i64 2153728836}
!19 = !{i64 2153677649}
!20 = !{i64 721641, i64 721662, i64 721685, i64 721704, i64 721723}
!21 = !{i64 2153678053}
!22 = !{i64 2149294654}
!23 = !{i64 2149290478}
!24 = !{i64 2149290553, i64 2149290580, i64 2149290627, i64 2149290649, i64 2149290677, i64 2149290697}
!25 = !{i64 675817}
!26 = !{i64 2149318798}
!27 = !{i64 2151138637, i64 2151138662}
!28 = !{i64 3634171}
!29 = !{i64 3634368}
!30 = !{i64 2151119647}
!31 = !{i64 2153696989}
!32 = !{i64 718917, i64 718934, i64 718958, i64 718984, i64 719002}
!33 = !{i64 2153697343}
!34 = !{i64 2153702322}
!35 = !{i64 2153702649}
!36 = !{i64 2153703666}
!37 = !{i64 2153704053}
!38 = !{i64 2153705958}
!39 = !{i64 2153706345}
!40 = !{i64 2148213111, i64 2148213143, i64 2148213172, i64 2148213206, i64 2148213237, i64 2148213260}
!41 = !{i64 2148309499}
!42 = !{i64 2148212337, i64 2148212369, i64 2148212398, i64 2148212432, i64 2148212463, i64 2148212486}
!43 = !{i64 2148309702}
!44 = !{i64 2148312332}
!45 = !{i64 2148214694, i64 2148214726, i64 2148214755, i64 2148214789, i64 2148214820, i64 2148214843}
!46 = !{i64 2148312535}
!47 = distinct !{null, ptr @__ffs_func_bind_do_descs, null}
